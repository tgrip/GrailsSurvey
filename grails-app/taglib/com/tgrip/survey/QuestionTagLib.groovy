package com.tgrip.survey

class QuestionTagLib {
    static namespace = "survey"

    def choiceService

    def singleChoice = { attrs ->
        Question question = attrs.question
        def choices = choiceService.byQuestion(question)
        out << g.radioGroup(name: "q.${question.id}", labels: choices.text, values: choices.id){
            "<p>${it.radio} ${it.label}</p>"
        }
    }

    def multipleChoice = { attrs ->
        Question question = attrs.question
        choiceService.byQuestion(question).each { choice ->
            out << g.checkBox(name: "q.${question.id}.${choice.id}")
            out << choice.text
            out << '<br/>'
        }

    }

}
