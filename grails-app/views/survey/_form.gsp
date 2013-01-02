<%@ page import="com.tgrip.survey.Survey" %>



<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="survey.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${surveyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="survey.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${surveyInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'welcomeMessage', 'error')} ">
	<label for="welcomeMessage">
		<g:message code="survey.welcomeMessage.label" default="Welcome Message" />
		
	</label>
	<g:textField name="welcomeMessage" value="${surveyInstance?.welcomeMessage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'exitMessage', 'error')} ">
	<label for="exitMessage">
		<g:message code="survey.exitMessage.label" default="Exit Message" />
		
	</label>
	<g:textField name="exitMessage" value="${surveyInstance?.exitMessage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="survey.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${surveyInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'expirationDate', 'error')} required">
	<label for="expirationDate">
		<g:message code="survey.expirationDate.label" default="Expiration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expirationDate" precision="day"  value="${surveyInstance?.expirationDate}"  />
</div>

