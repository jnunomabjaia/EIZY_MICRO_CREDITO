package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TipoGarantiaServiceSpec extends Specification {

    TipoGarantiaService tipoGarantiaService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TipoGarantia(...).save(flush: true, failOnError: true)
        //new TipoGarantia(...).save(flush: true, failOnError: true)
        //TipoGarantia tipoGarantia = new TipoGarantia(...).save(flush: true, failOnError: true)
        //new TipoGarantia(...).save(flush: true, failOnError: true)
        //new TipoGarantia(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //tipoGarantia.id
    }

    void "test get"() {
        setupData()

        expect:
        tipoGarantiaService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TipoGarantia> tipoGarantiaList = tipoGarantiaService.list(max: 2, offset: 2)

        then:
        tipoGarantiaList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        tipoGarantiaService.count() == 5
    }

    void "test delete"() {
        Long tipoGarantiaId = setupData()

        expect:
        tipoGarantiaService.count() == 5

        when:
        tipoGarantiaService.delete(tipoGarantiaId)
        sessionFactory.currentSession.flush()

        then:
        tipoGarantiaService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TipoGarantia tipoGarantia = new TipoGarantia()
        tipoGarantiaService.save(tipoGarantia)

        then:
        tipoGarantia.id != null
    }
}
