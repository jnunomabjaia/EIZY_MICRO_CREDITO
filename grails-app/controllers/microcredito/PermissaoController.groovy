package microcredito

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PermissaoController {

    PermissaoService permissaoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond permissaoService.list(params), model:[permissaoCount: permissaoService.count()]
    }

    def show(Long id) {
        respond permissaoService.get(id)
    }

    def create() {
        respond new Permissao(params)
    }

    def save(Permissao permissao) {
        if (permissao == null) {
            notFound()
            return
        }

        try {
            permissaoService.save(permissao)
        } catch (ValidationException e) {
            respond permissao.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'permissao.label', default: 'Permissao'), permissao.id])
                redirect permissao
            }
            '*' { respond permissao, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond permissaoService.get(id)
    }

    def update(Permissao permissao) {
        if (permissao == null) {
            notFound()
            return
        }

        try {
            permissaoService.save(permissao)
        } catch (ValidationException e) {
            respond permissao.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'permissao.label', default: 'Permissao'), permissao.id])
                redirect permissao
            }
            '*'{ respond permissao, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        permissaoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'permissao.label', default: 'Permissao'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'permissao.label', default: 'Permissao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
