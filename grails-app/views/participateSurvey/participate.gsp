<%--
  Created by IntelliJ IDEA.
  User: Theo
  Date: 3/01/13
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    ${survey.welcomeMessage}
    <p/>
    <g:link action="answerQuestions" id="${survey.id}">Go to the questions</g:link>
</body>
</html>