<%--
  Created by IntelliJ IDEA.
  User: madinanussipbekova
  Date: 26.01.2024
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/links/link.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="justify-content-center">
    <h1>
        Hello <%=user.getNick()%>
    </h1>
</div>



<%@include file="navbar_end.jsp"%>

</body>
</html>
