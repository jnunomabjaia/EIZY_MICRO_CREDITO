package microcredito

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PrestacaoController {

    PrestacaoService prestacaoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond prestacaoService.list(params), model:[prestacaoCount: prestacaoService.count()]
    }

    def show(Long id) {
        respond prestacaoService.get(id)
    }

    def create() {
        respond new Prestacao(params)
    }

    def save(Prestacao prestacao) {
        if (prestacao == null) {
            notFound()
            return
        }

        try {
            prestacaoService.save(prestacao)
        } catch (ValidationException e) {
            respond prestacao.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prestacao.label', default: 'Prestacao'), prestacao.id])
                redirect prestacao
            }
            '*' { respond prestacao, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond prestacaoService.get(id)
    }

    def update(Prestacao prestacao) {
        if (prestacao == null) {
            notFound()
            return
        }

        try {
            prestacaoService.save(prestacao)
        } catch (ValidationException e) {
            respond prestacao.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'prestacao.label', default: 'Prestacao'), prestacao.id])
                redirect prestacao
            }
            '*'{ respond prestacao, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        prestacaoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'prestacao.label', default: 'Prestacao'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prestacao.label', default: 'Prestacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
