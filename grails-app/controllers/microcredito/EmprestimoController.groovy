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
                    'modoPagamentoList':ModalidadePagamento.list(),
                    'tipoCasaList':TipoCasa.list(),
                    'destinoCredito':DestinoCredito.list()
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

//        Emprestimo emprestimo = salvarEmprestimo()
//        def dataInicial = Date.parse('yyyy-MM-dd', params.dataInicioPagamento)
        def rs = [:], cont = 0, nrDias = 0
//
//        while (cont < emprestimo.nrPrestacoes){
//            Prestacao prestacao = new Prestacao()
//            prestacao.valor = params.valorPorPrestacao.toDouble()
//            prestacao.estado = "Pendente"
//            prestacao.numero = "PreNow"+cont+""
//            prestacao.emprestimo = emprestimo
//            prestacao.dataRegisto = new Date()
//            prestacao.dataModif = new Date()
//            prestacao.userRegisto = emprestimo.userRegisto
//            prestacao.userModif = emprestimo.userRegisto
////            prestacao.tipoPrestacao = TipoPrestacao.get(1)
////            prestacao.meioPagamento = MeioPagamento.get(1)
//            prestacao.dataLimite = Date.parse("yyyy-MM-dd", (dataInicial+nrDias).format("yyyy-MM-dd"));
//            prestacao.save()
//            cont+=1                                             //incrmenta o contador
//            nrDias+= emprestimo.modalidadePagamento.nrDias      //adicoona dia diferenca
//            emprestimo.prazoPagamento = prestacao.dataLimite
//        }
//        emprestimo.dataInicioPagamento = dataInicial
//        emprestimo.nrProcesso =  numeroProcesso(emprestimo)
//        emprestimo.save(flush:true)

//        rs["msg"]=tipoCasa.size()
        rs["msg"]="done".toUpperCase()
//        rs["a"]=dataInicial
//        rs["b"]=dataInicial+21
        render rs as JSON
    }

    def salvarEmprestimo(){
//        ClienteController clienteController = new ClienteController();
//        Cliente cliente = clienteController.salvarCliente()
        Cliente cliente = Cliente.get(1)
        ModalidadePagamento modalidadePagamento = ModalidadePagamento.findByDescricao(params.modalidadePagamento)
        Emprestimo emprestimo1 = new Emprestimo()
        emprestimo1.nrProcesso = "nr"
        emprestimo1.valorPedido=params.valorPedido.toDouble()
        emprestimo1.taxaJuros=params.taxaJuros.toDouble()
        emprestimo1.valorApagar = params.valorApagar.toDouble()
        emprestimo1.nrPrestacoes = params.nrPrestacoes.toInteger()
        emprestimo1.userRegisto = cliente.userRegisto
        emprestimo1.userModif = cliente.userModif
        emprestimo1.dataInicioPagamento = Date.parse('yyyy-MM-dd', params.dataInicioPagamento)
        emprestimo1.prazoPagamento = Date.parse('yyyy-MM-dd', params.dataInicioPagamento)
        emprestimo1.dataModif = new Date()
        emprestimo1.dataRegisto = new Date()
        emprestimo1.contaBancaria = params.contaBancaria.toBoolean()
        emprestimo1.outroCredito = params.outroCredito.toBoolean()
        emprestimo1.instituicoescredito = params.instituicoescredito
        emprestimo1.bancos = params.bancos
        emprestimo1.experienciaNegocio = params.experienciaNegocio
        emprestimo1.destinoCredito = params.destinoCredito
        emprestimo1.localNegocio = params.localNegocio
        emprestimo1.tipoNegocio = params.tipoNegocio
        emprestimo1.estado = "Aberto"
        emprestimo1.cliente = cliente
        emprestimo1.modalidadePagamento = modalidadePagamento

        if(!emprestimo1.hasErrors()){
            emprestimo1.save()
        }
        return emprestimo1
    }

    def numeroProcesso(Emprestimo emp){
        def letraInicial= emp.modalidadePagamento.descricao.toUpperCase().take(1)
        return letraInicial+emp.cliente.id+letraInicial+emp.nrPrestacoes
    }
}


//        rs["dataNow"]= new Date().format("yyyy-MM-dd")
//        rs["dataAmanha"]=(new Date()+17).format("yyyy-MM-dd")

//        rs["dataInicia"]=dataInicial.format("yyyy-MM-dd");
//        rs["dataDepois"]=(dataInicial+3).format("yyyy-MM-dd");