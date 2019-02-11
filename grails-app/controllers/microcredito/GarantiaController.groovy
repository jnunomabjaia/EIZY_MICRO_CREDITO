package microcredito

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class GarantiaController {

    GarantiaService garantiaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond garantiaService.list(params), model:[garantiaCount: garantiaService.count()]
    }

    def show(Long id) {
        respond garantiaService.get(id)
    }

    def create() {
        respond new Garantia(params)
    }

    def save(Garantia garantia) {
        if (garantia == null) {
            notFound()
            return
        }

        try {
            garantiaService.save(garantia)
        } catch (ValidationException e) {
            respond garantia.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'garantia.label', default: 'Garantia'), garantia.id])
                redirect garantia
            }
            '*' { respond garantia, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond garantiaService.get(id)
    }

    def update(Garantia garantia) {
        if (garantia == null) {
            notFound()
            return
        }

        try {
            garantiaService.save(garantia)
        } catch (ValidationException e) {
            respond garantia.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'garantia.label', default: 'Garantia'), garantia.id])
                redirect garantia
            }
            '*'{ respond garantia, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        garantiaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'garantia.label', default: 'Garantia'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'garantia.label', default: 'Garantia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
