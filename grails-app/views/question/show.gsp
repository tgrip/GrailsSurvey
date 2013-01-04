
<%@ page import="com.tgrip.survey.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-question" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list question">
			
				<g:if test="${questionInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="question.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${questionInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.text}">
				<li class="fieldcontain">
					<span id="text-label" class="property-label"><g:message code="question.text.label" default="Text" /></span>
					
						<span class="property-value" aria-labelledby="text-label"><g:fieldValue bean="${questionInstance}" field="text"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="question.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${questionInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<li class="fieldcontain">
					<span id="surveyOrder-label" class="property-label"><g:message code="question.surveyOrder.label" default="Survey Order" /></span>
					
						<span class="property-value" aria-labelledby="surveyOrder-label"><g:fieldValue bean="${questionInstance}" field="surveyOrder"/></span>
				</li>

				<g:if test="${questionInstance?.answerRequired}">
				<li class="fieldcontain">
					<span id="answerRequired-label" class="property-label"><g:message code="question.answerRequired.label" default="Answer Required" /></span>
					
						<span class="property-value" aria-labelledby="answerRequired-label"><g:formatBoolean boolean="${questionInstance?.answerRequired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.survey}">
				<li class="fieldcontain">
					<span id="survey-label" class="property-label"><g:message code="question.survey.label" default="Survey" /></span>
					
						<span class="property-value" aria-labelledby="survey-label"><g:link controller="survey" action="show" id="${questionInstance?.survey?.id}">${questionInstance?.survey?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${questionInstance?.id}" />
					<g:link class="edit" action="edit" id="${questionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
