package com.tgrip.survey

class SurveyService {

    List validSurveys() {
        def now = new Date()
        Survey.findAllByStartDateLessThanAndExpirationDateGreaterThan(now, now)
    }
}
