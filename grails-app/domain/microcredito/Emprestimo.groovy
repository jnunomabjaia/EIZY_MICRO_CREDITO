package microcredito

class Emprestimo {
    Double valorPedido, taxaJuros, valorApagar
    Integer nrPrestacoes
    Date prazoPagamento, dataInicioPagamento
    String destinoCredito, tipoNegocio, localNegocio, experienciaNegocio, instituicoescredito, bancos, estado, nrProcesso,relecaoBens
    Boolean outroCredito, contaBancaria
    Cliente cliente
    ModalidadePagamento modalidadePagamento
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif

    static  hasMany = [prestacoes: Prestacao, garantias: Garantia]
    static belongsTo = [cliente:Cliente, modalidadePagamento:ModalidadePagamento]

    static constraints = {
        valorPedido(blank: false)
        taxaJuros (blank: false)
        cliente(nullable: false)
        destinoCredito(blank: true, maxSize: 45, inList: ['Negocio','Consumo'])
        tipoNegocio(blank: true, maxSize: 45)
        localNegocio(blank: true, maxSize: 45)
        experienciaNegocio(blank: true,nullable: true, maxSize: 100)
        instituicoescredito(blank: true,nullable: true, maxSize: 500)
        bancos(blank: true, nullable: true, maxSize: 500)
        estado(inList: ["Aberto", "Suspenso", "Fechado"])
        dataInicioPagamento(nullable: true, blank: true)
        nrProcesso(nullable: false)
        relecaoBens(nullable: true, maxSize: 500)
    }

    static mapping = {
        relecaoBens type: "text"
    }
}