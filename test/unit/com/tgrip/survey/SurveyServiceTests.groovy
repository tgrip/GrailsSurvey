package com.tgrip.survey



import grails.test.mixin.*
import org.junit.*
import grails.buildtestdata.mixin.Build

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(SurveyService)
@Mock(Survey)
@Build(Survey)
class SurveyServiceTests {

    void testValidSurveys() {
        def tomorrow = new Date() + 1
        def survey = Survey.build(expirationDate: tomorrow)
        def surveyInvalid = Survey.build(startDate: tomorrow)
        def surveyExpired = Survey.build()

        def surveys = service.validSurveys()

        assert surveys
        assert 1 == surveys.size()
        assert surveys.contains(survey)
    }
}
