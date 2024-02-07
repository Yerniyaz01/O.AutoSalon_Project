<%@page import="model.User" %>
<%
    User user = (User) request.getSession().getAttribute("currentUser");
%>


<nav class="navbar navbar-expand-lg bg-secondary">
    <div class="container-fluid">
        <a class="navbar-brand " href="main-eng"><img src="/photo/AUTOSALON-removebg-preview.png" width="100px"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link" href="#">ALL CARS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">NEWS</a>
                </li>

                <%
                    if (user!=null){
                %>
                <li class="nav-item">
                    <a class="nav-link"><%=user.getNick()%></a>
                </li>
                <%
                } else {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="login-eng">LOGIN</a>
                </li>

                <% } %>
            </ul>
        </div>
        <div class="justify-content-end">
            <ul class="navbar-nav nav-tabs">
                <li class="nav-item">
                    <form action="RUS" method="post">
                    <button class="btn nav-link" name="RUS">RUS</button>
                    </form>
                </li>
                <li class="nav-item">
                    <form action="ENG" method="post">
                    <button class="btn nav-link" name="ENG">ENG</button>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>