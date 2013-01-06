package com.tgrip.survey

class ResponseService {

    void saveResponses(Map responses) {
        responses.each { questionId, userResponse ->
            //see what to do when no user response
            def question = Question.get(questionId)
            if(question){
                new TextResponse(value: userResponse, survey: question.survey).save()
            }
        }
    }
}
