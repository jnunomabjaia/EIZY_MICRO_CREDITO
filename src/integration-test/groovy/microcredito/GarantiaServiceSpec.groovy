package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class GarantiaServiceSpec extends Specification {

    GarantiaService garantiaService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Garantia(...).save(flush: true, failOnError: true)
        //new Garantia(...).save(flush: true, failOnError: true)
        //Garantia garantia = new Garantia(...).save(flush: true, failOnError: true)
        //new Garantia(...).save(flush: true, failOnError: true)
        //new Garantia(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //garantia.id
    }

    void "test get"() {
        setupData()

        expect:
        garantiaService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Garantia> garantiaList = garantiaService.list(max: 2, offset: 2)

        then:
        garantiaList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        garantiaService.count() == 5
    }

    void "test delete"() {
        Long garantiaId = setupData()

        expect:
        garantiaService.count() == 5

        when:
        garantiaService.delete(garantiaId)
        sessionFactory.currentSession.flush()

        then:
        garantiaService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Garantia garantia = new Garantia()
        garantiaService.save(garantia)

        then:
        garantia.id != null
    }
}
