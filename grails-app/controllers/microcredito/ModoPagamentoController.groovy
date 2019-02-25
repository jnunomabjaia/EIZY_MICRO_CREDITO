package microcredito

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ModoPagamentoController {

    ModoPagamentoService modoPagamentoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond modoPagamentoService.list(params), model:[modoPagamentoCount: modoPagamentoService.count()]
    }

    def show(Long id) {
        respond modoPagamentoService.get(id)
    }

    def create() {
        respond new ModoPagamento(params)
    }

    def save(ModoPagamento modoPagamento) {
        if (modoPagamento == null) {
            notFound()
            return
        }

        try {
            modoPagamentoService.save(modoPagamento)
        } catch (ValidationException e) {
            respond modoPagamento.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'modoPagamento.label', default: 'ModoPagamento'), modoPagamento.id])
                redirect modoPagamento
            }
            '*' { respond modoPagamento, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond modoPagamentoService.get(id)
    }

    def update(ModoPagamento modoPagamento) {
        if (modoPagamento == null) {
            notFound()
            return
        }

        try {
            modoPagamentoService.save(modoPagamento)
        } catch (ValidationException e) {
            respond modoPagamento.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'modoPagamento.label', default: 'ModoPagamento'), modoPagamento.id])
                redirect modoPagamento
            }
            '*'{ respond modoPagamento, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        modoPagamentoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'modoPagamento.label', default: 'ModoPagamento'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'modoPagamento.label', default: 'ModoPagamento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
