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
        valor(nullable: true)
        descricao (nullable: false, blank: false, maxSize: 45, unique: true)
        localizacao (nullable: true, blank: false, maxSize: 45)
        foto(nullable: true, blank: false, maxSize: 300)
        tipoGarantia(nullable: false)
    }
}
