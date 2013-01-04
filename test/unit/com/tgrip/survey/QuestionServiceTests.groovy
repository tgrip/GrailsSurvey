package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(QuestionService)
@Mock(Survey)
class QuestionServiceTests {

    void testSave() {
        def params = [text:'Question text', name:'Name of the question', surveyId:1, type:'FreeText']
        assert service.saveQuestion(params)
    }
}
