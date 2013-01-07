<div id="list-choice" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="['Choice']"/></h1>
    <table>
        <thead>
        <tr>

            <th><g:message code="choice.question.label" default="Question"/></th>

            <g:sortableColumn property="text" title="${message(code: 'choice.text.label', default: 'Text')}"/>

            <g:sortableColumn property="value" title="${message(code: 'choice.value.label', default: 'Value')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${choiceInstanceList}" status="i" var="choiceInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${choiceInstance.id}">${fieldValue(bean: choiceInstance, field: "question")}</g:link></td>

                <td>${fieldValue(bean: choiceInstance, field: "text")}</td>

                <td>${fieldValue(bean: choiceInstance, field: "value")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <g:form action="save">
        <fieldset class="form">
            <g:render template="/choice/form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>

