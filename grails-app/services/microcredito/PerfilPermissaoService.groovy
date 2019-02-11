package microcredito

import grails.gorm.services.Service

@Service(PerfilPermissao)
interface PerfilPermissaoService {

    PerfilPermissao get(Serializable id)

    List<PerfilPermissao> list(Map args)

    Long count()

    void delete(Serializable id)

    PerfilPermissao save(PerfilPermissao perfilPermissao)

}