package com.tgrip.survey

class QuestionService {

    Question saveQuestion(Map params) {
        def question = new Question(params)
        def survey = Survey.get(params.surveyId)
        if (survey) {
            question.survey = survey
            survey.addToQuestions(question)
            question.save()
        }
        question
    }
}
