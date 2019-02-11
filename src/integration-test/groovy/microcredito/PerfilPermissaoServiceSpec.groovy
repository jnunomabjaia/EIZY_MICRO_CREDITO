package microcredito

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PerfilPermissaoServiceSpec extends Specification {

    PerfilPermissaoService perfilPermissaoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new PerfilPermissao(...).save(flush: true, failOnError: true)
        //new PerfilPermissao(...).save(flush: true, failOnError: true)
        //PerfilPermissao perfilPermissao = new PerfilPermissao(...).save(flush: true, failOnError: true)
        //new PerfilPermissao(...).save(flush: true, failOnError: true)
        //new PerfilPermissao(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //perfilPermissao.id
    }

    void "test get"() {
        setupData()

        expect:
        perfilPermissaoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<PerfilPermissao> perfilPermissaoList = perfilPermissaoService.list(max: 2, offset: 2)

        then:
        perfilPermissaoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        perfilPermissaoService.count() == 5
    }

    void "test delete"() {
        Long perfilPermissaoId = setupData()

        expect:
        perfilPermissaoService.count() == 5

        when:
        perfilPermissaoService.delete(perfilPermissaoId)
        sessionFactory.currentSession.flush()

        then:
        perfilPermissaoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        PerfilPermissao perfilPermissao = new PerfilPermissao()
        perfilPermissaoService.save(perfilPermissao)

        then:
        perfilPermissao.id != null
    }
}
