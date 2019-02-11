package microcredito

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PerfilPermissaoController {

    PerfilPermissaoService perfilPermissaoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond perfilPermissaoService.list(params), model:[perfilPermissaoCount: perfilPermissaoService.count()]
    }

    def show(Long id) {
        respond perfilPermissaoService.get(id)
    }

    def create() {
        respond new PerfilPermissao(params)
    }

    def save(PerfilPermissao perfilPermissao) {
        if (perfilPermissao == null) {
            notFound()
            return
        }

        try {
            perfilPermissaoService.save(perfilPermissao)
        } catch (ValidationException e) {
            respond perfilPermissao.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'perfilPermissao.label', default: 'PerfilPermissao'), perfilPermissao.id])
                redirect perfilPermissao
            }
            '*' { respond perfilPermissao, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond perfilPermissaoService.get(id)
    }

    def update(PerfilPermissao perfilPermissao) {
        if (perfilPermissao == null) {
            notFound()
            return
        }

        try {
            perfilPermissaoService.save(perfilPermissao)
        } catch (ValidationException e) {
            respond perfilPermissao.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'perfilPermissao.label', default: 'PerfilPermissao'), perfilPermissao.id])
                redirect perfilPermissao
            }
            '*'{ respond perfilPermissao, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        perfilPermissaoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'perfilPermissao.label', default: 'PerfilPermissao'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'perfilPermissao.label', default: 'PerfilPermissao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
