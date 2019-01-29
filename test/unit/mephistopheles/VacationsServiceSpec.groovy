package mephistopheles

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(VacationsService)
class VacationsServiceSpec extends Specification {
    def "test for attempting to query a nonexistent user"(){

        given:
        def userId

        when:
        userId = 0

        then:
        service.calculateVacations(userId) == 'usuario no encontrado'

    }
}
