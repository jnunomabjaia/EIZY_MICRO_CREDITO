package microcredito

class Garantia {
    Double valor
    String descricao
    String localizacao
    String foto
    TipoGarantia tipoGarantia
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif

    static belongsTo = [emprestimo: Emprestimo, tipoGarantia: TipoGarantia]

    static constraints = {
        valor(blank: false, min: 0.0)
        descricao (nullable: false, blank: false, maxSize: 45)
        localizacao (nullable: false, blank: false, maxSize: 45)
        foto(nullable: false, blank: false, maxSize: 200)
        tipoGarantia(nullable: false)
    }
}
