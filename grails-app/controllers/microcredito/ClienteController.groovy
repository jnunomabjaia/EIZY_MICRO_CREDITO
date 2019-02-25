package microcredito

import grails.converters.JSON
import grails.validation.ValidationException
import groovy.json.JsonSlurper
import org.grails.web.json.JSONObject

import java.lang.annotation.Target

import static org.springframework.http.HttpStatus.*

class ClienteController {

    ClienteService clienteService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {

        def obj = new JsonSlurper().parseText(Cliente.get(6).testemunhas)
        println obj.Nome

        params.max = Math.min(max ?: 10, 100)
        respond clienteService.list(params), model:[clienteCount: clienteService.count(), munhas:obj]
    }

    def show(Long id) {
        respond clienteService.get(id)
    }

    def create() {
        respond new Cliente(params)
    }

    def save(Cliente cliente) {
        if (cliente == null) {
            notFound()
            return
        }

        try {
            clienteService.save(cliente)
        } catch (ValidationException e) {
            respond cliente.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cliente.label', default: 'Cliente'), cliente.id])
                redirect cliente
            }
            '*' { respond cliente, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond clienteService.get(id)
    }

    def update(Cliente cliente) {
        if (cliente == null) {
            notFound()
            return
        }

        try {
            clienteService.save(cliente)
        } catch (ValidationException e) {
            respond cliente.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'cliente.label', default: 'Cliente'), cliente.id])
                redirect cliente
            }
            '*'{ respond cliente, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        clienteService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'cliente.label', default: 'Cliente'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cliente.label', default: 'Cliente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def retornaInt(def input){
        if(input == null || input == ""){
            return 0
        }else{
            return input.toInteger()
        }
    }

    def retornaDouble(def input){
        if(input == null || input == ""){
            return 0
        }else{
            return input.toDouble()
        }
    }

    def salvarCliente(){
        def cliente = new Cliente()
        cliente.nome = params.nomeCompleto
        cliente.codigo = "codigo"
        cliente.estadoCivil = params.estadoCivil
        cliente.nomeConjuge = params.nomeConjuge
        cliente.tipoContrato = params.tipoContrato
        cliente.anoAdmissao = params.anoAdmissao
        cliente.nrDependentes = retornaInt(params.nrDependentes)
        cliente.nrFilhos = retornaInt(params.nrFihos)
        cliente.estado = "Activo"
        cliente.nrDocumento = params.nrDocumento
        cliente.localEmissao = params.localEmissao
        cliente.dataEmissao =  Date.parse("yyyy-MM-dd", params.dataEmissao)
        cliente.dataValidade = Date.parse("yyyy-MM-dd", params.dataValidade)
        cliente.contacto1 = params.contacto1
        cliente.contacto2 = params.contacto2
        cliente.email = params.email
        cliente.endereco = params.endereco
        cliente.tipoCasa = params.tipoCasa
        cliente.amplitude = retornaDouble(params.amplitude)
        cliente.longitude = retornaDouble(params.longitude)
        def tipoDocumento = TipoDocumento.get(params.tipoDocumento)
        cliente.tipoDocumento = tipoDocumento

        def distrito = Distrito.get(params.distrito)
        cliente.distrito = distrito

        def user = User.get(1)
        cliente.userModif = user
        cliente.userRegisto = user
        cliente.dataRegisto = new Date()
        cliente.dataModif = new Date()

        if(!cliente.hasErrors()) {
            cliente.save()
        }
        return  cliente
    }

    def salvarAvalista(){
        salvarCliente()
        render(template: "avalistaCombo", model: ['cliente': Cliente])
    }
}