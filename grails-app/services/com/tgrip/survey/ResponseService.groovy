package com.tgrip.survey

class ResponseService {

    void saveResponses(Map responses) {
        responses.each { questionId, userResponse ->
            def question = Question.get(questionId)
            if(question){
                new TextResponse(value: userResponse, survey: question.survey).save()
            }
        }
    }
}
