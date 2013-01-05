package com.tgrip.survey

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

    def participate(Long id) {
        [survey: Survey.get(id)]
    }

    def answerQuestions(Long id) {
        [survey: Survey.get(id)]
    }

    def saveResults() {
        responseService.saveResponses(params.q)
        [survey: Survey.get(params.surveyId)]
    }
}
