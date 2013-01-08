package com.tgrip.survey

class QuestionTagLib {
    static namespace = "survey"

    def choiceService

    def singleChoice = { attrs ->
        Question question = attrs.question
        def choices = choiceService.byQuestion(question)
        out << g.radioGroup(name: "q.${question.id}", labels: choices.text, values: choices.value){
            "<p>${it.radio} ${it.label} </p>"
        }
    }

}
