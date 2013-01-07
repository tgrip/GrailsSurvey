package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Question)
class QuestionTests {

    void testIsChoice() {
        def question = new Question()
        assert !question.isChoice()

        question.type = QuestionType.SingleChoice
        assert question.isChoice()
    }
}
