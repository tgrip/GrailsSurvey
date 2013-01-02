package com.tgrip.survey

class Question {
    String name
    String text
    boolean answerRequired
    QuestionType type

    static belongsTo = [survey: Survey]

    static constraints = {
        name()
        text()
        type()
        answerRequired()
    }
}
