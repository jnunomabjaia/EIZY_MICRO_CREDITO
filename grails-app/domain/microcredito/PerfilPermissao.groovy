package microcredito

class PerfilPermissao {
    Perfil perfil
    Permissao permissao

    static belongsTo = [perfil: Perfil, permissao: Permissao]

    static constraints = {
        perfil(nullable: false)
        permissao(nullable: false)
    }
}
