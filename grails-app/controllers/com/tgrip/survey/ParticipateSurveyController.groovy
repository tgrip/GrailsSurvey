package com.tgrip.survey

class ParticipateSurveyController {
    static defaultAction = "showSurveys"

    def surveyService

    def showSurveys() {
        [surveys: surveyService.validSurveys()]
    }
}
