package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TipoPrestacaoServiceSpec extends Specification {

    TipoPrestacaoService tipoPrestacaoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TipoPrestacao(...).save(flush: true, failOnError: true)
        //new TipoPrestacao(...).save(flush: true, failOnError: true)
        //TipoPrestacao tipoPrestacao = new TipoPrestacao(...).save(flush: true, failOnError: true)
        //new TipoPrestacao(...).save(flush: true, failOnError: true)
        //new TipoPrestacao(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //tipoPrestacao.id
    }

    void "test get"() {
        setupData()

        expect:
        tipoPrestacaoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TipoPrestacao> tipoPrestacaoList = tipoPrestacaoService.list(max: 2, offset: 2)

        then:
        tipoPrestacaoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        tipoPrestacaoService.count() == 5
    }

    void "test delete"() {
        Long tipoPrestacaoId = setupData()

        expect:
        tipoPrestacaoService.count() == 5

        when:
        tipoPrestacaoService.delete(tipoPrestacaoId)
        sessionFactory.currentSession.flush()

        then:
        tipoPrestacaoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TipoPrestacao tipoPrestacao = new TipoPrestacao()
        tipoPrestacaoService.save(tipoPrestacao)

        then:
        tipoPrestacao.id != null
    }
}
