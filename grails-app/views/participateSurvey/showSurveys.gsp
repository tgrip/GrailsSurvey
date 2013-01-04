<%--
  Created by IntelliJ IDEA.
  User: Theo
  Date: 3/01/13
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:each in="${surveys}" var="survey">
        <div style="width: 400px; float: left">
            ${survey.name}
        </div>
        <div><g:link action="viewDetail" id="${survey.id}">View detail</g:link> </div>
    </g:each>
</body>
</html>