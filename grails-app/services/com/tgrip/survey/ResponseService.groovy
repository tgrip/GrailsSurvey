package com.tgrip.survey

import org.joda.time.LocalDate

class ResponseService {

    void saveResponses(Person person, Map responses) {
        responses.each { questionId, userResponse ->
            if (questionId.isLong()) {
                def question = Question.get(questionId)
                if(question){
                    saveResponse(person, question, userResponse)
                }
            }
        }
    }

    private void saveResponse(Person person, Question question, userResponse) {
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
            case QuestionType.MultipleChoice:
                response = new MultipleChoiceResponse()
                userResponse.each { key, ignore ->
                    if (key.isLong())  {
                        def choiceResponse = new ChoiceMultipleChoiceResponse(choice: Choice.get(key))
                        choiceResponse.save()
                        response.addToChoices(choiceResponse)
                    }
                }
                break
        }
        response.survey = question.survey
        response.person = person
        response.save()
    }
}
