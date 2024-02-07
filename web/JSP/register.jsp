<%--
  Created by IntelliJ IDEA.
  User: madinanussipbekova
  Date: 26.01.2024
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%@include file="/links/link.jsp" %>

</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container-fluid mt-2">
    <form action="/register" method="post">
        <div class="row justify-content-center">
            <div class="col-6">
                <div class="mt-2">
                    EMAIL:
                </div>
                <div class="mt-2">
                    <input type="email" placeholder="INSERT EMAIL:" name="email" class="form-control">
                </div>
                <div class="mt-2">
                    PASSWORD:
                </div>
                <div class="mt-2">
                    <input type="password" placeholder="INSERT PASSWORD:" name="password" class="form-control">
                </div>
                <div class="mt-2">
                    FULL NAME:
                </div>
                <div class="mt-2">
                    <input type="text" placeholder="INSERT NICK NAME:" name="nick" class="form-control">
                </div>
                <div class="mt-2">
                    <button class="btn btn-success btn-sm">REGISTER</button>
                </div>
            </div>
        </div>
    </form>

</div>


</body>
</html>
