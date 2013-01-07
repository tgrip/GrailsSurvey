package com.tgrip.survey

class Choice {
    Integer value
    String text

    static belongsTo = [question: Question]

    static constraints = {
    }
}
