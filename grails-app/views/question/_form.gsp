<%@ page import="com.tgrip.survey.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="question.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${questionInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'text', 'error')} ">
	<label for="text">
		<g:message code="question.text.label" default="Text" />
		
	</label>
	<g:textField name="text" value="${questionInstance?.text}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="question.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${com.tgrip.survey.QuestionType?.values()}" keys="${com.tgrip.survey.QuestionType.values()*.name()}" required="" value="${questionInstance?.type?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answerRequired', 'error')} ">
	<label for="answerRequired">
		<g:message code="question.answerRequired.label" default="Answer Required" />
		
	</label>
	<g:checkBox name="answerRequired" value="${questionInstance?.answerRequired}" />
</div>

<g:hiddenField name="surveyId" value="${surveyId}"/>
