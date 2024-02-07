<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/links/link.jsp" %>
</head>
<body>

<%@include file="navbar.jsp" %>


<div class="container text-center">
    <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">

        <%
            ArrayList <Car> car = (ArrayList<Car>) request.getAttribute("list");

            for (Car el: car) {
        %>

        <div class="col">
            <div class="p-3">
                <h3><%=el.getBrand()%></h3>
                <h1><%=el.getModel()%></h1>
                <p><%=el.getVolume()%></p>
                <p><%=el.getPrice()%></p>
            </div>
        </div>

        <% } %>

    </div>
</div>



<%@include file="navbar_end.jsp"%>
</body>
</html>
