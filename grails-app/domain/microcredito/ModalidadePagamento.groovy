package microcredito

class ModalidadePagamento {

    String descricao
    Integer nrDias
    static constraints = {
        descricao(blank: false, nullable: false)
        nrDias(blank: false, nullable: false)
    }

    static hasMany = [emprestimos: Emprestimo]
}
