package com.tgrip.survey

class QuestionService {

    Question saveQuestion(Map params) {
        def question = new Question(params)
        def survey = Survey.get(params.surveyId)
        if (survey) {
            question.survey = survey
            question.surveyOrder = survey.questions.size()
            survey.addToQuestions(question)
            question.save()
        }
        question
    }

    void addChoice(ChoiceCommand command) {
        def choice = new Choice(question: Question.get(command.questionId))
        command.fillChoice(choice)
        choice.save()
    }
}
