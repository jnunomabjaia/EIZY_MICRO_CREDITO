package microcredito

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ModalidadePagamentoController {

    ModalidadePagamentoService modalidadePagamentoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond modalidadePagamentoService.list(params), model:[modalidadePagamentoCount: modalidadePagamentoService.count()]
    }

    def show(Long id) {
        respond modalidadePagamentoService.get(id)
    }

    def create() {
        respond new ModalidadePagamento(params)
    }

    def save(ModalidadePagamento modalidadePagamento) {
        if (modalidadePagamento == null) {
            notFound()
            return
        }

        try {
            modalidadePagamentoService.save(modalidadePagamento)
        } catch (ValidationException e) {
            respond modalidadePagamento.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'modalidadePagamento.label', default: 'ModalidadePagamento'), modalidadePagamento.id])
                redirect modalidadePagamento
            }
            '*' { respond modalidadePagamento, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond modalidadePagamentoService.get(id)
    }

    def update(ModalidadePagamento modalidadePagamento) {
        if (modalidadePagamento == null) {
            notFound()
            return
        }

        try {
            modalidadePagamentoService.save(modalidadePagamento)
        } catch (ValidationException e) {
            respond modalidadePagamento.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'modalidadePagamento.label', default: 'ModalidadePagamento'), modalidadePagamento.id])
                redirect modalidadePagamento
            }
            '*'{ respond modalidadePagamento, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        modalidadePagamentoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'modalidadePagamento.label', default: 'ModalidadePagamento'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'modalidadePagamento.label', default: 'ModalidadePagamento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
