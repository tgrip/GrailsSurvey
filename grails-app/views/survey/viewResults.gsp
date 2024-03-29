
<%@ page import="com.tgrip.survey.TextResponse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'textResponse.label', default: 'TextResponse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-textResponse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-textResponse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'textResponse.dateCreated.label', default: 'Date Created')}" />

						<g:sortableColumn property="value" title="${message(code: 'textResponse.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${responseInstanceList}" status="i" var="textResponseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${textResponseInstance.dateCreated.dateTimeString}</td>

						<td>${fieldValue(bean: textResponseInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${responseInstanceTotal}" id="${surveyId}"/>
			</div>
		</div>
	</body>
</html>
