package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PrestacaoServiceSpec extends Specification {

    PrestacaoService prestacaoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Prestacao(...).save(flush: true, failOnError: true)
        //new Prestacao(...).save(flush: true, failOnError: true)
        //Prestacao prestacao = new Prestacao(...).save(flush: true, failOnError: true)
        //new Prestacao(...).save(flush: true, failOnError: true)
        //new Prestacao(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //prestacao.id
    }

    void "test get"() {
        setupData()

        expect:
        prestacaoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Prestacao> prestacaoList = prestacaoService.list(max: 2, offset: 2)

        then:
        prestacaoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        prestacaoService.count() == 5
    }

    void "test delete"() {
        Long prestacaoId = setupData()

        expect:
        prestacaoService.count() == 5

        when:
        prestacaoService.delete(prestacaoId)
        sessionFactory.currentSession.flush()

        then:
        prestacaoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Prestacao prestacao = new Prestacao()
        prestacaoService.save(prestacao)

        then:
        prestacao.id != null
    }
}
