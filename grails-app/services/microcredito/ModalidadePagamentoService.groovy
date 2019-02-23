package microcredito

import grails.gorm.services.Service

@Service(ModoPagamento)
interface ModalidadePagamentoService {

    ModoPagamento get(Serializable id)

    List<ModoPagamento> list(Map args)

    Long count()

    void delete(Serializable id)

    ModoPagamento save(ModoPagamento modalidadePagamento)

}