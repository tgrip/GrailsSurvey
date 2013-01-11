package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*
import grails.buildtestdata.mixin.Build

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(ResponseService)
@Mock([Response, Question, TextResponse, DateResponse, YesNoResponse, SingleChoiceResponse, MultipleChoiceResponse, ChoiceMultipleChoiceResponse])
@Build([Question, Choice, Person])
class ResponseServiceTests {

    void testSaveResponses() {
        [QuestionType.FreeText, QuestionType.Date, QuestionType.YesNo, QuestionType.SingleChoice, QuestionType.MultipleChoice].each {
            Question.build(type: it)
        }
        3.times {
            Choice.build()
        }

        def responses = ['1': 'Alice', '2._year':2013, '2':[_year:2013, _month:1, _day:6], '3':'on', '4': '1',
                '5': [_2:'', _3: '', '2': 'on']]
        def person = Person.build()
        service.saveResponses(person, responses)

        assert 1 == DateResponse.count
        assert 1 == TextResponse.count
        assert 1 == SingleChoiceResponse.count
        assert 1 == MultipleChoiceResponse.count
        assert 5 == Response.count

        def dateResponse = DateResponse.all.first()
        assert person.id == dateResponse.person.id
    }
}
