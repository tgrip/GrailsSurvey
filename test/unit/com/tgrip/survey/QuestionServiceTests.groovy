package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*
import grails.buildtestdata.mixin.Build

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(QuestionService)
@Mock([Survey, Choice])
@Build(Question)
class QuestionServiceTests {

    void testSave() {
        def params = [text:'Question text', name:'Name of the question', surveyId:1, type:'FreeText']
        assert service.saveQuestion(params)
    }

    void testAddChoice(){
        Question.build()
        def command = new ChoiceCommand(questionId: 1, text: 'hi', value: 1)

        service.addChoice(command)

        assert 1 == Choice.count
    }
}
