package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*
import grails.buildtestdata.mixin.Build

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(ResponseService)
@Mock([Response, Question, TextResponse])
@Build(Question)
class ResponseServiceTests {

    void testSaveResponses() {
        2.times {
            Question.build()
        }
        def responses = ['1': 'Alice', '2': 'Bob']
        service.saveResponses(responses)

        assert 2 == Response.count
    }
}
