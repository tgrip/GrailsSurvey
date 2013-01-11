modules = {
    application {
        resource url:'js/application.js'
    }

    validate {
        dependsOn('jquery')
        resource url: 'js/jquery/jquery.validate.js'
    }

    question {
        dependsOn('validate')
        resource url: 'js/question.js'
    }
}