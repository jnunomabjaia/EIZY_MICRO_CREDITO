package microcredito

class Emprestimo {
    Double valorPedido, taxaJuros
    Date prazoPagamento
    String destinoCredito, tipoNegocio, localNegocio, experienciaNegocio, instituicoescredito, bancos, estado
    Boolean outroCredito, contaBancaria
    Cliente cliente
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif

    static  hasMany = [prestacoes: Prestacao, garantias: Garantia]
    static belongsTo = [cliente:Cliente]

    static constraints = {
        valorPedido(blank: false, min: 0.0)
        taxaJuros (blank: false, min: 0.0)
        prazoPagamento (min: new Date())
        cliente(nullable: false)
        destinoCredito(blank: true, maxSize: 45)
        tipoNegocio(blank: true, maxSize: 45)
        localNegocio(blank: true, maxSize: 45)
        experienciaNegocio(blank: true, maxSize: 100)
        instituicoescredito(blank: true, maxSize: 500)
        bancos(blank: true, maxSize: 500)
        estado(inList: ["Aberto", "Suspenso", "Fechado"])
    }

    static mapping = {
        dataRegisto defaultValue: "now()"
    }
}
