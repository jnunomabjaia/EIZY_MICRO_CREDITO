package microcredito

class Emprestimo {
    Double valorPedido, taxaJuros, valorApagar
    Integer nrPrestacoes
    Date prazoPagamento, dataInicioPagamento
    String destinoCredito, tipoNegocio, localNegocio, experienciaNegocio, instituicoescredito, bancos, estado, nrProcesso,relecaoBens, testemunhas,observacao
    Boolean outroCredito, contaBancaria
    Cliente cliente, avalista
    ModoPagamento modoPagamento
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif

    static  hasMany = [prestacoes: Prestacao, garantias: Garantia]
    static belongsTo = [cliente:Cliente, modoPagamento:ModoPagamento]

    static constraints = {
        destinoCredito(blank: true, maxSize: 45, inList: ['Negocio','Consumo'])
        tipoNegocio(blank: true, nullable: true, maxSize: 45)
        localNegocio(blank: true,nullable: true, maxSize: 45)
        experienciaNegocio(blank: true,nullable: true, maxSize: 100)
        instituicoescredito(blank: true,nullable: true)
        bancos(blank: true, nullable: true)
        estado(inList: ["Aberto", "Suspenso", "Fechado"])
        dataInicioPagamento(nullable: true, blank: true)
        relecaoBens(nullable: true)
        observacao(nullable: true)
        avalista(blank:true,nullable: true)
    }

    static mapping = {
        relecaoBens type: "text"
        instituicoescredito type: "text"
        bancos type: "text"
        testemunhas type: "text"
    }
}