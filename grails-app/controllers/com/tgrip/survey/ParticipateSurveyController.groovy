package com.tgrip.survey

class ParticipateSurveyController {
    static defaultAction = "showSurveys"

    def surveyService

    def showSurveys() {
        [surveys: surveyService.validSurveys()]
    }

    def viewDetail(Long id) {
        [survey: Survey.get(id)]
    }
}
