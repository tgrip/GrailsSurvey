
<%@ page import="com.tgrip.survey.Survey" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'survey.label', default: 'Survey')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-survey" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-survey" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'survey.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'survey.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="welcomeMessage" title="${message(code: 'survey.welcomeMessage.label', default: 'Welcome Message')}" />
					
						<g:sortableColumn property="exitMessage" title="${message(code: 'survey.exitMessage.label', default: 'Exit Message')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'survey.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="expirationDate" title="${message(code: 'survey.expirationDate.label', default: 'Expiration Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${surveyInstanceList}" status="i" var="surveyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${surveyInstance.id}">${fieldValue(bean: surveyInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: surveyInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: surveyInstance, field: "welcomeMessage")}</td>
					
						<td>${fieldValue(bean: surveyInstance, field: "exitMessage")}</td>
					
						<td><g:formatDate date="${surveyInstance.startDate}" /></td>
					
						<td><g:formatDate date="${surveyInstance.expirationDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${surveyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
