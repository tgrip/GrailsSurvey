package com.tgrip.survey

class MultipleChoiceResponse extends Response {
    static hasMany = [choices: ChoiceMultipleChoiceResponse]

    static constraints = {
    }

    def getValue() {
       choices.choice.value.join(',')
    }
}
