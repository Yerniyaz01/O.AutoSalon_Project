<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%@include file="/links/link.jsp" %>

</head>
<body>

<%@include file="navbar.jsp"%>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-3">
            <h3 class="mt-2">Hello</h3>
            <p>Hello guys, my name its Yerniyaz.</p>
        </div>
        <div class="col-9">
            <div id="carouselExampleIndicators" class="carousel slide">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/photo/51d2c7e694a656744100001e.jpeg" class="d-block w-100" alt="/photo/2011 Toyota Land Cruiser Prado 150 60th Anniversary (UK) 019.jpeg">
                    </div>
                    <div class="carousel-item">
                        <img src="/photo/2011 Toyota Land Cruiser Prado 150 60th Anniversary (UK) 019.jpeg" class="d-block w-100" alt="/photo/8376aace7af18ea8cafa499d7e69a6ec_XL.jpeg">
                    </div>
                    <div class="carousel-item">
                        <img src="/photo/8376aace7af18ea8cafa499d7e69a6ec_XL.jpeg" class="d-block w-100" alt="/photo/51d2c7e694a656744100001e.jpeg">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
</div>

</body>
</html>
