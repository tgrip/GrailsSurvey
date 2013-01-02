
<%@ page import="com.tgrip.survey.Survey" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'survey.label', default: 'Survey')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-survey" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-survey" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list survey">
			
				<g:if test="${surveyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="survey.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${surveyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${surveyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="survey.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${surveyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${surveyInstance?.welcomeMessage}">
				<li class="fieldcontain">
					<span id="welcomeMessage-label" class="property-label"><g:message code="survey.welcomeMessage.label" default="Welcome Message" /></span>
					
						<span class="property-value" aria-labelledby="welcomeMessage-label"><g:fieldValue bean="${surveyInstance}" field="welcomeMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${surveyInstance?.exitMessage}">
				<li class="fieldcontain">
					<span id="exitMessage-label" class="property-label"><g:message code="survey.exitMessage.label" default="Exit Message" /></span>
					
						<span class="property-value" aria-labelledby="exitMessage-label"><g:fieldValue bean="${surveyInstance}" field="exitMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${surveyInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="survey.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${surveyInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${surveyInstance?.expirationDate}">
				<li class="fieldcontain">
					<span id="expirationDate-label" class="property-label"><g:message code="survey.expirationDate.label" default="Expiration Date" /></span>
					
						<span class="property-value" aria-labelledby="expirationDate-label"><g:formatDate date="${surveyInstance?.expirationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${surveyInstance?.publicationDate}">
				<li class="fieldcontain">
					<span id="publicationDate-label" class="property-label"><g:message code="survey.publicationDate.label" default="Publication Date" /></span>
					
						<span class="property-value" aria-labelledby="publicationDate-label"><g:formatDate date="${surveyInstance?.publicationDate}" /></span>
					
				</li>
				</g:if>

                <fieldset name="questions">
                    <g:render template="/question/list" model="[questionInstanceList: surveyInstance.questions]"/>
                    <div class="nav" role="navigation">
                        <ul>
                            <li><g:link class="create" controller="question" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                        </ul>
                    </div>
                </fieldset>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${surveyInstance?.id}" />
					<g:link class="edit" action="edit" id="${surveyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
