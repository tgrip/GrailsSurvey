package com.tgrip.survey

class SingleChoiceResponse extends Response {
    Choice choice

    static constraints = {
    }

    def getValue() {
        choice.value
    }
}
