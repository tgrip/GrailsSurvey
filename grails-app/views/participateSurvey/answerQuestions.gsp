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
  <title>Survey - Answer</title>
    <meta name="layout" content="main">
  <r:require module="question"/>
</head>
<body>
    <g:form action="saveResults" name="questionForm">
        <g:hiddenField name="surveyId" value="${survey.id}"/>
        <g:each in="${survey.questions.sort {it.surveyOrder}}" var="question">
            <g:render template="/questionType/question${question.type}" bean="${question}"/>
            <br/>
        </g:each>
        <p/>
        <g:submitButton name="save"/>
    </g:form>
</body>
</html>