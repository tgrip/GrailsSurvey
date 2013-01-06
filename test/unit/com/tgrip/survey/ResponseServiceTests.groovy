package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*
import grails.buildtestdata.mixin.Build

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(ResponseService)
@Mock([Response, Question, TextResponse, DateResponse])
@Build(Question)
class ResponseServiceTests {

    void testSaveResponses() {
        Question.build(type: QuestionType.FreeText)
        Question.build(type: QuestionType.Date)

        def responses = [1: 'Alice', 2: 'Sat Jan 05 00:00:00 CST 2013']
        service.saveResponses(responses)

        assert 1 == DateResponse.count
        assert 1 == TextResponse.count
        assert 2 == Response.count
    }
}
