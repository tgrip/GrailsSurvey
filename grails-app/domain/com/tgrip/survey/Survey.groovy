package com.tgrip.survey

class Survey {
    String name
    String description
    String welcomeMessage
    String exitMessage
    Date startDate
    Date publicationDate
    Date expirationDate

    static hasMany = [questions: Question]

    static constraints = {
        name()
        description()
        welcomeMessage()
        exitMessage()
        startDate()
        expirationDate()
    }
}
