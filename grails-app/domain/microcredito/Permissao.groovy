package microcredito

class Permissao {
    String designacao

    static hasMany = [perfisPermissao: PerfilPermissao]

    static constraints = {
        designacao(blank: false, maxSize: 45)
    }
}
