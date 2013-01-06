package com.tgrip.survey

import org.joda.time.LocalDate

class ResponseService {

    void saveResponses(Map responses) {
        responses.each { questionId, userResponse ->
            //see what to do when no user response
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
                def date = new LocalDate(userResponse._year, userResponse._month, userResponse._day)
                response = new DateResponse(dateValue: date.toDate())
                break
        }
        response.survey = question.survey
        response.save()
    }
}
