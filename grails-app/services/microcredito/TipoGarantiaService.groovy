package microcredito

import grails.gorm.services.Service

@Service(TipoGarantia)
interface TipoGarantiaService {

    TipoGarantia get(Serializable id)

    List<TipoGarantia> list(Map args)

    Long count()

    void delete(Serializable id)

    TipoGarantia save(TipoGarantia tipoGarantia)

}