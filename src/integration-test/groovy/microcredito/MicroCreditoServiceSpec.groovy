package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class MicroCreditoServiceSpec extends Specification {

    MicroCreditoService microCreditoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new MicroCredito(...).save(flush: true, failOnError: true)
        //new MicroCredito(...).save(flush: true, failOnError: true)
        //MicroCredito microCredito = new MicroCredito(...).save(flush: true, failOnError: true)
        //new MicroCredito(...).save(flush: true, failOnError: true)
        //new MicroCredito(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //microCredito.id
    }

    void "test get"() {
        setupData()

        expect:
        microCreditoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<MicroCredito> microCreditoList = microCreditoService.list(max: 2, offset: 2)

        then:
        microCreditoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        microCreditoService.count() == 5
    }

    void "test delete"() {
        Long microCreditoId = setupData()

        expect:
        microCreditoService.count() == 5

        when:
        microCreditoService.delete(microCreditoId)
        sessionFactory.currentSession.flush()

        then:
        microCreditoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        MicroCredito microCredito = new MicroCredito()
        microCreditoService.save(microCredito)

        then:
        microCredito.id != null
    }
}
