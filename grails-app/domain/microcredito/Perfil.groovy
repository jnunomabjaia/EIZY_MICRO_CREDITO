package microcredito

class Perfil {
    String designacao

    static hasMany = [users: User, perfisPermissao: PerfilPermissao]

    static constraints = {
        designacao(blank: false, maxSize: 45)
    }
}
