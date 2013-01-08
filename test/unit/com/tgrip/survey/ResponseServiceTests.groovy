package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*
import grails.buildtestdata.mixin.Build

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(ResponseService)
@Mock([Response, Question, TextResponse, DateResponse, YesNoResponse, SingleChoiceResponse])
@Build([Question, Choice])
class ResponseServiceTests {

    void testSaveResponses() {
        [QuestionType.FreeText, QuestionType.Date, QuestionType.YesNo, QuestionType.SingleChoice].each {
            Question.build(type: it)
        }
        Choice.build()

        def responses = ['1': 'Alice', '2._year':2013, '2':[_year:2013, _month:1, _day:6], '3':'on', '4': '1']
        service.saveResponses(responses)

        assert 1 == DateResponse.count
        assert 1 == TextResponse.count
        assert 1 == SingleChoiceResponse.count
        assert 4 == Response.count
    }
}
