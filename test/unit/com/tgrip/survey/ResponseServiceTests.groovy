package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*
import grails.buildtestdata.mixin.Build

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(ResponseService)
@Mock([Response, Question, TextResponse, DateResponse, YesNoResponse])
@Build(Question)
class ResponseServiceTests {

    void testSaveResponses() {
        Question.build(type: QuestionType.FreeText)
        Question.build(type: QuestionType.Date)
        Question.build(type: QuestionType.YesNo)

        def responses = ['1': 'Alice', '2._year':2013, '2':[_year:2013, _month:1, _day:6], '3':'on']
        service.saveResponses(responses)

        assert 1 == DateResponse.count
        assert 1 == TextResponse.count
        assert 3 == Response.count
    }
}
