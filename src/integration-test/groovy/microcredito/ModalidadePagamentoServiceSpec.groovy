package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ModalidadePagamentoServiceSpec extends Specification {

    ModalidadePagamentoService modalidadePagamentoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ModalidadePagamento(...).save(flush: true, failOnError: true)
        //new ModalidadePagamento(...).save(flush: true, failOnError: true)
        //ModalidadePagamento modalidadePagamento = new ModalidadePagamento(...).save(flush: true, failOnError: true)
        //new ModalidadePagamento(...).save(flush: true, failOnError: true)
        //new ModalidadePagamento(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //modalidadePagamento.id
    }

    void "test get"() {
        setupData()

        expect:
        modalidadePagamentoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ModalidadePagamento> modalidadePagamentoList = modalidadePagamentoService.list(max: 2, offset: 2)

        then:
        modalidadePagamentoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        modalidadePagamentoService.count() == 5
    }

    void "test delete"() {
        Long modalidadePagamentoId = setupData()

        expect:
        modalidadePagamentoService.count() == 5

        when:
        modalidadePagamentoService.delete(modalidadePagamentoId)
        sessionFactory.currentSession.flush()

        then:
        modalidadePagamentoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ModalidadePagamento modalidadePagamento = new ModalidadePagamento()
        modalidadePagamentoService.save(modalidadePagamento)

        then:
        modalidadePagamento.id != null
    }
}
