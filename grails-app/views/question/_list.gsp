<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />


<div id="list-question" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'question.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="text" title="${message(code: 'question.text.label', default: 'Text')}" />
					
						<g:sortableColumn property="type" title="Type" />

                        <g:sortableColumn property="answerRequired" title="${message(code: 'question.answerRequired.label', default: 'Answer Required')}" />

						<th>Order</th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link controller="question" action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: questionInstance, field: "text")}</td>
						<td>${fieldValue(bean: questionInstance, field: "type")}</td>

						<td><g:formatBoolean boolean="${questionInstance.answerRequired}" /></td>
					
						<td>${fieldValue(bean: questionInstance, field: "surveyOrder")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			%{--<div class="pagination">--}%
				%{--<g:paginate total="${questionInstanceTotal}" />--}%
			%{--</div>--}%
		</div>

