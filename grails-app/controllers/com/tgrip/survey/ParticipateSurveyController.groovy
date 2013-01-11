package com.tgrip.survey

import grails.plugins.springsecurity.Secured

class ParticipateSurveyController {
    static defaultAction = "showSurveys"

    def surveyService
    def responseService

    def showSurveys() {
        [surveys: surveyService.validSurveys()]
    }

    def viewDetail(Long id) {
        [survey: Survey.get(id)]
    }

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def participate(Long id) {
        [survey: Survey.get(id)]
    }

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def answerQuestions(Long id) {
        [survey: Survey.get(id)]
    }

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def saveResults() {
//        println params.q
        responseService.saveResponses(params.q)
        [survey: Survey.get(params.surveyId)]
    }
}
