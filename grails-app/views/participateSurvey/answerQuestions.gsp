<%--
  Created by IntelliJ IDEA.
  User: Theo
  Date: 3/01/13
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:form action="saveResults">
        <g:hiddenField name="surveyId" value="${survey.id}"/>
        <g:each in="${survey.questions.sort {it.surveyOrder}}" var="question">
            <g:render template="/questionType/textQuestion" bean="${question}"/>
            <br/>
        </g:each>
        <p/>
        <g:submitButton name="save"/>
    </g:form>
</body>
</html>