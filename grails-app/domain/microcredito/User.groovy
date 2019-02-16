package microcredito

class User {
    String username, password
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif
    Perfil perfil

    static belongsTo = [perfil: Perfil]

    static constraints = {
        username(blank: false, maxSize: 45, unique: true)
        password(blank: false, maxSize: 500)
        perfil(nullable: false)
        userModif(nullable: true, blank: true)
        userRegisto(nullable: true, blank: true)
        dataRegisto(nullable: true, blank: true)
        dataModif(nullable: true, blank: true)
    }
}
