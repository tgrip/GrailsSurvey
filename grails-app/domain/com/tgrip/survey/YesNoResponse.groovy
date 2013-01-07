package com.tgrip.survey

class YesNoResponse extends Response {
    Boolean yesNoValue

    static constraints = {
    }

    def getValue() {
        yesNoValue
    }
}
