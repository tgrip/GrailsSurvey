package com.tgrip.survey

class ChoiceService {

    List byQuestion(Question question) {
        Choice.findAllByQuestion(question, [sort: 'id'])
    }
}
