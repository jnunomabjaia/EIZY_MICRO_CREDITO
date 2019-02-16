package microcredito

class TipoPrestacao {
    String descricao

    List<Prestacao> prestacoes

    static hasMany = [prestacoes: Prestacao]

    static constraints = {
        descricao(blank: false, maxSize: 45)
    }
}
