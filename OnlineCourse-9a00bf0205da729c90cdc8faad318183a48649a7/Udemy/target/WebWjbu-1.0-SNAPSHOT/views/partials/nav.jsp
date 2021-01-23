<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<section class="nav">
    <!-- <div class="nav__logo"> -->
    <img src="${pageContext.request.contextPath}/views/vwHome/imgs/udemy-2-logo-png-transparent.jpg" alt="" class="nav__image">
    <!-- </div> -->


    <div class="nav-categories">
        <!-- <span class="nav-categories__text">Categories</span> -->

        <!-- <span>Categories</span> -->
        <h5 class="nav__text">Categories</h5>


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
            <li class="nav-categories__item">
                <span  class="nav-categories__text">Development</span>
            </li>
            <li class="nav-categories__item">
                <span class="nav-categories__text">Business</span>
            </li>
            <li class="nav-categories__item">
                <span class="nav-categories__text">Finance & Accounting</span>
            </li>
            <li class="nav-categories__item">
                <span class="nav-categories__text">IT & Software</span>
            </li>
        </ul>



    </div>

    <form  class="nav-search">

        <div class="nav-search__group">
            <i  class="fa fa-search nav-search__icon" aria-hidden="true"></i>

            <input type="text" class="nav-search__input" id="name" placeholder="Search for anything" >
            <!-- <label for="name" class="nav-search__label" >Search for anything</label> -->
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

<%--    <div class="nav__login" style="font-size: 14px">Login</div>--%>
    <a href="${pageContext.request.contextPath}/Account/Login" class="nav__login" style="font-size: 14px">Login </a>
<%--    <div class="nav__signup" style="font-size: 14px">Sign up</div>--%>
    <a  href="${pageContext.request.contextPath}/Account/Register" class="nav__signup" style="font-size: 14px ">Sign up </a>
</section>