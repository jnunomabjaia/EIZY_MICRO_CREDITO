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
                    'destinoCreditoList':DestinoCredito.list(),
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

    def salvar() {
//        Emprestimo emprestimo = salvarEmprestimo()
////        Emprestimo emprestimo = Emprestimo.get(1)
//        def dataInicial = Date.parse('yyyy-MM-dd', params.dataInicioPagamento)
        def rs = [:], cont = 0, nrDias = 0
//
//        while (cont < emprestimo.nrPrestacoes){
//            Prestacao prestacao = new Prestacao()
//            prestacao.valor = params.valorPorPrestacao.toDouble()
//            prestacao.estado = "Pendente"
//            prestacao.numero = "Pre_"+emprestimo.id+"_"+cont
//            prestacao.emprestimo = emprestimo
//            prestacao.dataRegisto = new Date()
//            prestacao.dataModif = new Date()
//            prestacao.userRegisto = emprestimo.userRegisto
//            prestacao.userModif = emprestimo.userRegisto
//            prestacao.dataLimite = Date.parse("yyyy-MM-dd", (dataInicial+nrDias).format("yyyy-MM-dd"));
//            prestacao.save()
//            cont+=1                                             //incrmenta o contador
//            nrDias+= emprestimo.modalidadePagamento.nrDias      //adicona dia diferenca
//            emprestimo.prazoPagamento = prestacao.dataLimite
//        }
//        emprestimo.dataInicioPagamento = dataInicial
//        emprestimo.nrProcesso =  numeroProcesso(emprestimo)     //gerar numero de processo
//        emprestimo.cliente.codigo = "00"+emprestimo.cliente.id  //atribui codigod de cliente
//        salvarGarantia(emprestimo)                              //salva as garantias
//        emprestimo.save(flush:true)

        rs["msg"]=params.kkk
        render rs as JSON
    }

    def salvarEmprestimo(){
        Cliente cliente = new ClienteController().salvarCliente()
//        Cliente cliente = Cliente.get(1)
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
        emprestimo1.relecaoBens = params.relacaoBens
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

    def addGarantiaForm(){
        render(template: "/garantia/form", model: ['tipoGarantiaList':TipoGarantia.list()])
    }

    def salvarGarantia(Emprestimo emprestimo){
        def nrGarantia = params.nrGarantias.toInteger()+1
        def index = 1
        while(nrGarantia > index){
            def indexString = index.toString()
            Garantia garantia = new Garantia()
            TipoGarantia tipoGarantia = TipoGarantia.findByDescricao(params.get('tipoGarantia'+indexString).toString())
            garantia.tipoGarantia = tipoGarantia
            garantia.descricao = params.get('descricao'+indexString)
            garantia.localizacao = params.get('localizacao'+indexString)
            garantia.valor = Double.parseDouble(params.get('valor'+indexString).toString())
            garantia.dataRegisto = new Date()
            garantia.dataModif = new Date()
            garantia.userRegisto = emprestimo.userRegisto
            garantia.userModif = emprestimo.userModif
            garantia.emprestimo = emprestimo
            def fileUpload = request.getFile('foto'+indexString)
            if(!fileUpload.empty){
                def fullNameQuebra = fileUpload.originalFilename.toString().split("\\.")                //quebra o nome original comm ..
                def extensao = fullNameQuebra[fullNameQuebra.length-1]                                      //leva a extensao da foto que fica na ultima posicao
                def nomeFoto = 'IMG_' + System.currentTimeMillis()+indexString+'.'+extensao
                File destino = grailsApplication.mainContext.getResource(fileUpload.originalFilename).file  //indica o diretorio dentro do project
//                if(destino.exists()) {
                    fileUpload.transferTo(destino)                                                      //transfere o file para diretorio statico
                    destino.renameTo(new File('grails-app/assets/images/upload/' + nomeFoto))           //transfere o file para diretorio dinamico(especificada por mim)
                    garantia.foto = nomeFoto
//                }
            }
            garantia.save()
            index+=1
        }
    }
}