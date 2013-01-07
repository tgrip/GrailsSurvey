<div id="list-choice" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="['Choice']"/></h1>
    <table>
        <thead>
        <tr>
            <g:sortableColumn property="text" title="${message(code: 'choice.text.label', default: 'Text')}"/>

            <g:sortableColumn property="value" title="${message(code: 'choice.value.label', default: 'Value')}"/>
        </tr>
        </thead>
        <tbody>
        <g:each in="${choiceInstanceList}" status="i" var="choiceInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fieldValue(bean: choiceInstance, field: "text")}</td>

                <td>${fieldValue(bean: choiceInstance, field: "value")}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <g:form action="addChoice">
        <g:hiddenField name="questionId" value="${questionInstance.id}"/>
        <fieldset class="form">
            <g:render template="/choice/form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Add choice"/>
        </fieldset>
    </g:form>
</div>

