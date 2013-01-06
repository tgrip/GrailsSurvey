package com.tgrip.survey

class ResponseService {

    void saveResponses(Map responses) {
        responses.each { questionId, userResponse ->
            //see what to do when no user response
            def question = Question.get(questionId)
            if(question){
                def response
                switch (question.type) {
                    case QuestionType.FreeText:
                        response = new TextResponse(textValue: userResponse)
                        break
                    case QuestionType.Date:
                        response = new DateResponse(dateValue: Date.parseToStringDate(userResponse))
                        break
                }
                response.survey = question.survey
                response.save()
            }
        }
    }
}
