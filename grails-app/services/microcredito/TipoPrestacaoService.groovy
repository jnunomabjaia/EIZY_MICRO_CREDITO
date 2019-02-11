package microcredito

import grails.gorm.services.Service

@Service(TipoPrestacao)
interface TipoPrestacaoService {

    TipoPrestacao get(Serializable id)

    List<TipoPrestacao> list(Map args)

    Long count()

    void delete(Serializable id)

    TipoPrestacao save(TipoPrestacao tipoPrestacao)

}