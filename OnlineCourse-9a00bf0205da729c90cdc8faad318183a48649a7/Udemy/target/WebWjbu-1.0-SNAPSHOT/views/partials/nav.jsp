<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="authUser" scope="session" type="beans.User"/>
<jsp:useBean id="categoriesWithDetails" scope="request" type="java.util.List<beans.Category>"/>

<section style="" class="nav">

    <!-- <div class="nav__logo"> -->
    <a href="${pageContext.request.contextPath}/Home/ByCat?id=1"><img  src="${pageContext.request.contextPath}/views/vwHome/imgs/udemy-2-logo-png-transparent.jpg" alt="" class="nav__image"></a>
    <!-- </div> -->


    <div class="nav-categories">
        <!-- <span class="nav-categories__text">Categories</span> -->

        <!-- <span>Categories</span> -->
        <h5 class="nav__text"><a href="${pageContext.request.contextPath}/Course/ByCat?id=1" style="text-decoration: none">Categories</a></h5>


        <ul class="nav-categories__list " style="font-size: 14px">
            <li class="nav-categories__item">
                <span class="nav-categories__text">Development</span>
                <i class="fa fa-caret-right nav-categories__caret" aria-hidden="true"></i>
            </li>
            <li class="nav-categories__item">
                <span class="nav-categories__text">Business</span>
                <i class=" fa fa-caret-right nav-categories__caret" aria-hidden="true"></i>
            </li>
            <li class="nav-categories__item">
                <span class="nav-categories__text">Finance & Accounting</span>
                <i class="fa fa-caret-right nav-categories__caret" aria-hidden="true"></i>
            </li>
            <li class="nav-categories__item">
                <span class="nav-categories__text">IT & Software</span>
                <i class="fa fa-caret-right nav-categories__caret" aria-hidden="true"></i>
            </li>
        </ul>
        <ul class="nav-categories__list2" style="font-size: 14px">


<%--            <li class="nav-categories__item">--%>
<%--                <span  class="nav-categories__text">Development</span>--%>
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


            <c:forEach var="c" items="${categoriesWithDetails}">
                <li class="nav-categories__item">
                    <a  style="text-decoration: none;" href="${pageContext.request.contextPath}/Course/ByCat?id=${c.catID}"><span  class="nav-categories__text">${c.catName}</span></a>
                </li>
            </c:forEach>
        </ul>



    </div>

    <form  class="nav-search" action="${pageContext.request.contextPath}/Course/Search">

        <div class="nav-search__group">
            <i style="font-size: 15px" class="fa fa-search nav-search__icon" aria-hidden="true"></i>

            <input name="search"  type="search" class="nav-search__input" id="name" placeholder="Search for anything" >
            <!-- <label for="name" class="nav-search__label" >Search for anything</label> -->

            <%--<button class="btn  my-2 my-sm-0" type="submit" style="border: none">
                <i class="fa fa-search" aria-hidden="true"></i>
                Submit
            </button>--%>

        </div>

    </form>


    <div class="nav-business">
        <span class="nav__text">Udemy for business</span>


        <div class="nav-business__group">
            <p class="nav-business__text">Get your team access to over 5,000 top Udemy courses, anytime, anywhere.</p>
            <div class="nav-business__link">Try Udemy for Business</div>
        </div>

    </div>
    <div class="nav-teach">
        <span class="nav__text">Teach on Udemy</span>


        <div class="nav-teach__group">
            <p class="nav-teach__text">Turn what you know into an opportunity and reach millions around the world.</p>
            <div class="nav-teach__link">Learn more</div>
        </div>
    </div>


    <i style="font-size: 20px" class="fa fa-shopping-cart nav__cart" aria-hidden="true"></i>

<%--    <a href="${pageContext.request.contextPath}/Account/Login" class="nav__login" style="font-size: 14px">Login </a>--%>
<%--    <a  href="${pageContext.request.contextPath}/Account/Register" class="nav__signup" style="font-size: 14px ">Sign up </a>--%>
    <ul class="d-flex ">
        <c:choose>
            <c:when test="${auth}">
                <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
                <li class="nav-item dropdown ml-6">
                    <a style="font-size: 14px" class="nav-link dropdown-toggle ml-5" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        Hi, <b>${authUser.name}</b>!
                    </a>

                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a style="font-size: 15px" class="dropdown-item p-2" href="${pageContext.request.contextPath}/Account/Profile">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            Profile
                        </a>
                        <div class="dropdown-divider"></div>
                        <a style="font-size: 15px" class="dropdown-item p-2 " href="javascript: $('#frmLogout').submit();">
                            <i class="fa fa-sign-out" aria-hidden="true"></i>
                            Logout
                        </a>
                    </div>
                </li>
            </c:when>
            <c:otherwise>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/Account/Login" class="nav__login" style="font-size: 14px">Login </a>
                </li>
                <li class="nav-item">
                    <a  href="${pageContext.request.contextPath}/Account/Register" class="nav__signup" style="font-size: 14px ">Sign up </a>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>

</section>