package microcredito

class TipoPrestacao {
    String descricao
    Date   dataRegisto
    Date   dataModif
    User   userRegisto
    User   userModif

    List<Prestacao> prestacoes

    static hasMany = [prestacoes: Prestacao]

    static constraints = {
        descricao(blank: false, maxSize: 45)
    }

    static mapping = {
        dataRegisto defaultValue: "now()"
    }
}
