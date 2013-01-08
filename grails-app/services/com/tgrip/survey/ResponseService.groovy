package com.tgrip.survey

import org.joda.time.LocalDate

class ResponseService {

    void saveResponses(Map responses) {
        responses.each { questionId, userResponse ->
            if (questionId.isLong()) {
                def question = Question.get(questionId)
                if(question){
                    saveResponse(question, userResponse)
                }
            }
        }
    }

    private void saveResponse(Question question, userResponse) {
        def response
        switch (question.type) {
            case QuestionType.FreeText:
                response = new TextResponse(textValue: userResponse)
                break
            case QuestionType.Date:
                def dateString = "${userResponse._year}-${userResponse._month}-${userResponse._day}".toString()
                response = new DateResponse(dateValue: new LocalDate(dateString).toDate())
                break
            case QuestionType.YesNo:
                response = new YesNoResponse(yesNoValue: userResponse)
                break
            case QuestionType.SingleChoice:
                response = new SingleChoiceResponse(choice: Choice.get(userResponse))
                break
        }
        response.survey = question.survey
        response.save()
    }
}
