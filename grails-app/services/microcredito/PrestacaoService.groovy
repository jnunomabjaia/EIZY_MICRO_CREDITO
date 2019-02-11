package microcredito

import grails.gorm.services.Service

@Service(Prestacao)
interface PrestacaoService {

    Prestacao get(Serializable id)

    List<Prestacao> list(Map args)

    Long count()

    void delete(Serializable id)

    Prestacao save(Prestacao prestacao)

}