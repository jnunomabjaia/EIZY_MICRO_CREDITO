package microcredito

class Emprestimo {
    Double valorPedido, taxaJuros
    Date prazoPagamento
    String destinoCredito, tipoNegocio, localNegocio, experienciaNegocio, instituicoescredito, bancos, estado
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
        experienciaNegocio(blank: true, maxSize: 100)
        instituicoescredito(blank: true, maxSize: 500)
        bancos(blank: true, maxSize: 500)
        estado(inList: ["Aberto", "Suspenso", "Fechado"])
        outroCredito(nullable: true)
        contaBancaria(nullable: true)
    }

    static mapping = {
        dataRegisto defaultValue: "now()"
    }
}