package com.tgrip.survey

class TextResponse extends Response {
    String textValue

    static constraints = {
    }

    def getValue() {
        textValue
    }
}
