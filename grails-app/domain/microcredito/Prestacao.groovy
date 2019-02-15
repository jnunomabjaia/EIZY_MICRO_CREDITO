package microcredito

class Prestacao {
    String numero
    Double valor
    Date dataLimite
    Date dataPagamento
    String estado
    Prestacao prestacao
    TipoPrestacao tipoPrestacao
    MeioPagamento meioPagamento
    Emprestimo emprestimo
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif

    static hasMany = [prestacoes: Prestacao]
    static belongsTo = [emprestimo: Emprestimo, tipoPrestacao: TipoPrestacao, meioPagamento: MeioPagamento]

    static constraints = {
        numero(blank: false, maxSize: 45)
        valor(blank: false)
        estado(inList: ["Pendente", "Vencido", "Pago"])
        prestacao(nullable: true)
        tipoPrestacao(nullable: true, blank: true)
        meioPagamento(nullable: true, blank: true)
        emprestimo(nullable: false, blank: false)
        dataPagamento(nullable: true, blank: true)
    }

    static mapping = {
        dataRegisto defaultValue: "now()"
        dataPagamento defaultValue: "now()"
    }

}
