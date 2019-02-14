package microcredito

import grails.converters.JSON
import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class EmprestimoController {

    EmprestimoService emprestimoService
    TipoDocumentoService tipoDocumentoService
    ClienteService clienteService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond emprestimoService.list(params), model:[emprestimoCount: emprestimoService.count()]
    }

    def show(Long id) {
        respond emprestimoService.get(id)
    }

    def create() {
        respond new Emprestimo(params),
            model: ['tipoDocumentoList': TipoDocumento,
                    'provinciaList':Provincia.list(), 'distritoList':Distrito.list(),
                    'modoPagamentoList':ModalidadePagamento.list()
        ]
    }

    def save(Emprestimo emprestimo) {
        if (emprestimo == null) {
            notFound()
            return
        }

        try {
            emprestimoService.save(emprestimo)
        } catch (ValidationException e) {
            respond emprestimo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'emprestimo.label', default: 'Emprestimo'), emprestimo.id])
                redirect emprestimo
            }
            '*' { respond emprestimo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond emprestimoService.get(id)
    }

    def update(Emprestimo emprestimo) {
        if (emprestimo == null) {
            notFound()
            return
        }

        try {
            emprestimoService.save(emprestimo)
        } catch (ValidationException e) {
            respond emprestimo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'emprestimo.label', default: 'Emprestimo'), emprestimo.id])
                redirect emprestimo
            }
            '*'{ respond emprestimo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        emprestimoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'emprestimo.label', default: 'Emprestimo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'emprestimo.label', default: 'Emprestimo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def getDistrito(){
        Provincia provincia = Provincia.get(params.id)
        def distritos = Distrito.findAllByProvincia(provincia)
        render(template: "/distrito/comboDistritos", model: ['distritos': distritos])
    }

    def test(){
        def ret = [:]
        ret["msg"]="Test"
        render ret as JSON
    }

    def salvar(){
        ClienteController clienteController = new ClienteController();
        Cliente cliente = clienteController.salvarCliente()
//        Cliente cliente = Cliente.get(1)

        Emprestimo emprestimo1 = new Emprestimo()

        emprestimo1.userRegisto = cliente.userRegisto
        emprestimo1.userModif = cliente.userModif
        emprestimo1.prazoPagamento = cliente.dataValidade
        emprestimo1.dataModif = cliente.dataModif
        emprestimo1.dataRegisto = cliente.dataRegisto
        emprestimo1.contaBancaria = true
        emprestimo1.outroCredito = true
        emprestimo1.instituicoescredito = "Instituicao 1"
        emprestimo1.bancos ="ABC, BCI"
        emprestimo1.experienciaNegocio = "Nenhuma"
        emprestimo1.destinoCredito = "Negocio"
        emprestimo1.localNegocio ="Masdasdasd"
        emprestimo1.tipoNegocio = "Msnandnasdeasdasde"
        emprestimo1.estado = "Aberto"
        emprestimo1.cliente = cliente
        emprestimo1.valorPedido=params.valorPedido.toDouble()
        emprestimo1.taxaJuros=params.taxaJuros.toDouble()

        ModalidadePagamento modalidadePagamento = ModalidadePagamento.get(params.modalidadePagamento)
        emprestimo1.modalidadePagamento = modalidadePagamento

        def rs = [:]
        if(!emprestimo1.hasErrors()){
            emprestimo1.save()
            rs["msg"]="done"
        }else{
            rs["msg"]="Error"
        }
        render rs as JSON
    }
}























//
//def rs = [:]
//if(!cliente.hasErrors()){
//    cliente.save()
//    rs["msg"]="done"
//}else{
//    rs["msg"]="Error"
//}
//render rs as JSON