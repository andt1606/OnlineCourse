<%@tag pageEncoding="utf-8" %>
<!DOCTYPE html>


<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Udemy</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/vwHome/reset.css">
    <%--    <link rel="stylesheet" href="./style.css">--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/vwHome/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/vwHome/slick.css">


</head>
<body>




<%--<section class="nav">--%>
<%--    <!-- <div class="nav__logo"> -->--%>
<%--    <img src="${pageContext.request.contextPath}/views/vwHome/imgs/udemy-2-logo-png-transparent.jpg" alt="" class="nav__image">--%>
<%--    <!-- </div> -->--%>


<%--    <div class="nav-categories">--%>
<%--        <!-- <span class="nav-categories__text">Categories</span> -->--%>

<%--        <!-- <span>Categories</span> -->--%>
<%--        <h5 class="nav__text">Categories</h5>--%>


<%--        <ul class="nav-categories__list">--%>
<%--            <li class="nav-categories__item">--%>
<%--                <span class="nav-categories__text">Development</span>--%>
<%--                <i class="fa fa-caret-right nav-categories__caret" aria-hidden="true"></i>--%>
<%--            </li>--%>
<%--            <li class="nav-categories__item">--%>
<%--                <span class="nav-categories__text">Business</span>--%>
<%--                <i class=" fa fa-caret-right nav-categories__caret" aria-hidden="true"></i>--%>
<%--            </li>--%>
<%--            <li class="nav-categories__item">--%>
<%--                <span class="nav-categories__text">Finance & Accounting</span>--%>
<%--                <i class="fa fa-caret-right nav-categories__caret" aria-hidden="true"></i>--%>
<%--            </li>--%>
<%--            <li class="nav-categories__item">--%>
<%--                <span class="nav-categories__text">IT & Software</span>--%>
<%--                <i class="fa fa-caret-right nav-categories__caret" aria-hidden="true"></i>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <ul class="nav-categories__list2">--%>
<%--            <li class="nav-categories__item">--%>
<%--                <span class="nav-categories__text">Development</span>--%>
<%--            </li>--%>
<%--            <li class="nav-categories__item">--%>
<%--                <span class="nav-categories__text">Business</span>--%>
<%--            </li>--%>
<%--            <li class="nav-categories__item">--%>
<%--                <span class="nav-categories__text">Finance & Accounting</span>--%>
<%--            </li>--%>
<%--            <li class="nav-categories__item">--%>
<%--                <span class="nav-categories__text">IT & Software</span>--%>
<%--            </li>--%>
<%--        </ul>--%>



<%--    </div>--%>

<%--    <form  class="nav-search">--%>

<%--        <div class="nav-search__group">--%>
<%--            <i  class="fa fa-search nav-search__icon" aria-hidden="true"></i>--%>

<%--            <input type="text" class="nav-search__input" id="name" placeholder="Search for anything" >--%>
<%--            <!-- <label for="name" class="nav-search__label" >Search for anything</label> -->--%>
<%--        </div>--%>

<%--    </form>--%>


<%--    <div class="nav-business">--%>
<%--        <span class="nav__text">Udemy for business</span>--%>


<%--        <div class="nav-business__group">--%>
<%--            <p class="nav-business__text">Get your team access to over 5,000 top Udemy courses, anytime, anywhere.</p>--%>
<%--            <div class="nav-business__link">Try Udemy for Business</div>--%>
<%--        </div>--%>

<%--    </div>--%>
<%--    <div class="nav-teach">--%>
<%--        <span class="nav__text">Teach on Udemy</span>--%>


<%--        <div class="nav-teach__group">--%>
<%--            <p class="nav-teach__text">Turn what you know into an opportunity and reach millions around the world.</p>--%>
<%--            <div class="nav-teach__link">Learn more</div>--%>
<%--        </div>--%>
<%--    </div>--%>


<%--    <i class="fa fa-shopping-cart nav__cart" aria-hidden="true"></i>--%>

<%--    <div class="nav__login">Login</div>--%>
<%--    <div class="nav__signup">Sign up</div>--%>
<%--</section>--%>
<%--</div>--%>

<jsp:include page="../../views/partials/nav.jsp"/>

<jsp:doBody/>

<jsp:include page="../../views/partials/footer.jsp"/>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%--        <script src="./js/slick.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/views/vwHome/js/slick.min.js"></script>
<%--        <script src="./js/index.js"></script>--%>
<script src="${pageContext.request.contextPath}/views/vwHome/js/index.js"></script>
</body>
</html>