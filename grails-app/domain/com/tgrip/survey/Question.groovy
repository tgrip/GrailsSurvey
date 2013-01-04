package com.tgrip.survey

class Question {
    String name
    String text
    boolean answerRequired
    QuestionType type
    int surveyOrder

    static belongsTo = [survey: Survey]

    static constraints = {
        name()
        text()
        type()
        surveyOrder()
        answerRequired()
    }
}
