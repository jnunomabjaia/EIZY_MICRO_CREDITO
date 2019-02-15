package microcredito

class User {
    String userName, password
    Date dataRegisto
    Date dataModif
    User userRegisto
    User userModif
    Perfil perfil

    static belongsTo = [perfil: Perfil]

    static constraints = {
        userName(blank: false, maxSize: 45)
        password(blank: false, maxSize: 500)
        perfil(nullable: false)
        userModif(nullable: true, blank: true)
        userRegisto(nullable: true, blank: true)
    }
}
