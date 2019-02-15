package microcredito

class TipoDocumento {
    String descricao
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif

    static  hasMany = [clientes: Cliente]

    static constraints = {
        descricao(blank:false, maxSize: 45)
    }
}