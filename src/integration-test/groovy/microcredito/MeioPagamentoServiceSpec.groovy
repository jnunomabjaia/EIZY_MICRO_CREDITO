package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class MeioPagamentoServiceSpec extends Specification {

    MeioPagamentoService meioPagamentoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new MeioPagamento(...).save(flush: true, failOnError: true)
        //new MeioPagamento(...).save(flush: true, failOnError: true)
        //MeioPagamento meioPagamento = new MeioPagamento(...).save(flush: true, failOnError: true)
        //new MeioPagamento(...).save(flush: true, failOnError: true)
        //new MeioPagamento(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //meioPagamento.id
    }

    void "test get"() {
        setupData()

        expect:
        meioPagamentoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<MeioPagamento> meioPagamentoList = meioPagamentoService.list(max: 2, offset: 2)

        then:
        meioPagamentoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        meioPagamentoService.count() == 5
    }

    void "test delete"() {
        Long meioPagamentoId = setupData()

        expect:
        meioPagamentoService.count() == 5

        when:
        meioPagamentoService.delete(meioPagamentoId)
        sessionFactory.currentSession.flush()

        then:
        meioPagamentoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        MeioPagamento meioPagamento = new MeioPagamento()
        meioPagamentoService.save(meioPagamento)

        then:
        meioPagamento.id != null
    }
}
