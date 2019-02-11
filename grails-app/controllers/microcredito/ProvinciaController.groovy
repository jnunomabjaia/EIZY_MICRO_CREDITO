package microcredito

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ProvinciaController {

    ProvinciaService provinciaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond provinciaService.list(params), model:[provinciaCount: provinciaService.count()]
    }

    def show(Long id) {
        respond provinciaService.get(id)
    }

    def create() {
        respond new Provincia(params)
    }

    def save(Provincia provincia) {
        if (provincia == null) {
            notFound()
            return
        }

        try {
            provinciaService.save(provincia)
        } catch (ValidationException e) {
            respond provincia.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'provincia.label', default: 'Provincia'), provincia.id])
                redirect provincia
            }
            '*' { respond provincia, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond provinciaService.get(id)
    }

    def update(Provincia provincia) {
        if (provincia == null) {
            notFound()
            return
        }

        try {
            provinciaService.save(provincia)
        } catch (ValidationException e) {
            respond provincia.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'provincia.label', default: 'Provincia'), provincia.id])
                redirect provincia
            }
            '*'{ respond provincia, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        provinciaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'provincia.label', default: 'Provincia'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'provincia.label', default: 'Provincia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
