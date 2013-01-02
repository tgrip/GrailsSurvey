package com.tgrip.survey

class Survey {
    String name
    String description
    String welcomeMessage
    String exitMessage
    Date startDate
    Date publicationDate
    Date expirationDate

    static constraints = {
        name()
        description()
        welcomeMessage()
        exitMessage()
        startDate()
        expirationDate()
    }
}
