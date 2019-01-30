package mephistopheles

import grails.test.mixin.*
import grails.test.mixin.TestFor
import spock.lang.*

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(PositionService)
@Mock(Position, User)
class PositionServiceSpec extends Specification {
    @Shared Position position
    def setup() {
        //position = service.listPastPositions(userId)
    }

    def cleanup() {
    }

    void "querying past positions"() {
        
        given:
        def userId

        when:
        userId = 1
        Position position = service.listPastPositions(userId)
        then:
        service.listPastPositions(userId).size()==1


    }
}
