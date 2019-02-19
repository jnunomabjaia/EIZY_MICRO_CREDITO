package microcredito

import grails.gorm.services.Service

@Service(ModalidadePagamento)
interface ModalidadePagamentoService {

    ModalidadePagamento get(Serializable id)

    List<ModalidadePagamento> list(Map args)

    Long count()

    void delete(Serializable id)

    ModalidadePagamento save(ModalidadePagamento modalidadePagamento)

}