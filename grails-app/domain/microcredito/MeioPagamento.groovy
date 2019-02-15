package microcredito

class MeioPagamento {
    String descricao
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif

    static hasMany = [prestacoes: Prestacao]

    static constraints = {
        descricao(blank: false, maxSize: 45)
    }
}
