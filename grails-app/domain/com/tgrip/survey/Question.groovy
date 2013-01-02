package com.tgrip.survey

class Question {
    String name
    String text
    boolean answerRequired

    static belongsTo = [survey: Survey]

    static constraints = {
        name()
        text()
        answerRequired()
    }
}
