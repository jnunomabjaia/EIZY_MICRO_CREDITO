package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TipoDocumentoServiceSpec extends Specification {

    TipoDocumentoService tipoDocumentoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TipoDocumento(...).save(flush: true, failOnError: true)
        //new TipoDocumento(...).save(flush: true, failOnError: true)
        //TipoDocumento tipoDocumento = new TipoDocumento(...).save(flush: true, failOnError: true)
        //new TipoDocumento(...).save(flush: true, failOnError: true)
        //new TipoDocumento(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //tipoDocumento.id
    }

    void "test get"() {
        setupData()

        expect:
        tipoDocumentoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TipoDocumento> tipoDocumentoList = tipoDocumentoService.list(max: 2, offset: 2)

        then:
        tipoDocumentoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        tipoDocumentoService.count() == 5
    }

    void "test delete"() {
        Long tipoDocumentoId = setupData()

        expect:
        tipoDocumentoService.count() == 5

        when:
        tipoDocumentoService.delete(tipoDocumentoId)
        sessionFactory.currentSession.flush()

        then:
        tipoDocumentoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TipoDocumento tipoDocumento = new TipoDocumento()
        tipoDocumentoService.save(tipoDocumento)

        then:
        tipoDocumento.id != null
    }
}
