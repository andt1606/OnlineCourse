<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<html>
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
    <style>
        <%@include file="/views/vwHome/slick.css"%>
        <%@include file="/views/vwHome/reset.css"%>
        <%@include file="/views/vwHome/style.css"%>
    </style>


</head>
<body>


<jsp:useBean id="courses" scope="request" type="java.util.List<beans.Course>"/>

<t:main>
    <jsp:body>




        <section class="backgroundd">
            <div class="backgroundd__container">
                <div class="backgroundd__content">
                    <h1>Learn on your schedule</h1>
                    <p>Study any topic, anytime. Choose from thousands of expert-led courses now.</p>
                    <div class="backgroundd__search">
                        <input type="text" class="backgroundd__input" placeholder="What do you want to learn?">
                        <button><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </div>
        </section>


        <section class="info">
            <div class="info__container">
                <div class="info__content">
                    <div class="info__item">
                        <i class="fa fa-video-camera" aria-hidden="true"></i>
                        <div class="info__item__detail">
                            <h5>130000 online courses</h5>
                            <p>Enjoy a variety of fresh topics</p>
                        </div>
                    </div>
                    <div class="info__item">
                        <i class="fa fa-gg-circle " aria-hidden="true"></i>
                        <div class="info__item__detail">
                            <h5>Expert instruction</h5>
                            <p>Find the right instructor for you</p>
                        </div>
                    </div>
                    <div class="info__item">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <div class="info__item__detail">
                            <h5>Lifetime access</h5>
                            <p>Learn on your schedule</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>




        <section class="intro">
            <div class="intro__container">
                <div class="intro__above">
                    <div class="intro__content">
                        <h3>The world’s largest selection of courses</h3>
                        <p>Choose from over 130,000 online video courses with new additions published every month</p>
                    </div>
                </div>
                <div class="intro__course">
                    <div class="intro__top">

                        <ul class="nav nav-tabs"  >

                                <c:forEach var="c" items="${categoriesWithDetails}">

                                    <li class="nav-item" >
                                        <a class="nav-link"   href="${pageContext.request.contextPath}/Home/ByCat?id=${c.catID}">
                                                ${c.catName}</a>
                                    </li>

                                </c:forEach>

                        </ul>


                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active " id="menu1" >
                                <div class="intro__bottom__container">
                                    <div  class="intro__bottom__carousel">
                                        <c:forEach var="c" items="${courses}">
                                                <a role="button" style="text-decoration: none" href="${pageContext.request.contextPath}/Course/Detail?id=${c.courseID}"><div  style="cursor: pointer" class="intro__bottom__content">
                                            <div class="intro__bottom__item">
                                                <img src="${pageContext.request.contextPath}/public/imgs/sp/${c.courseID}/main_thumbs.jpg" />
<%--                                                <img src="${pageContext.request.contextPath}/public/imgs/sp/1/main_thumbs.jpg" />--%>
                                                <h2>${c.courseName}</h2>
                                                <p>Mohsen Hassan, bloom team</p>
                                                <p>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <b>4.5</b> (17,931)
                                                </p>
                                                <p class="students__price"><span>$299.99</span>
                                                    $<fmt:formatNumber value="${c.price}" type="number"/></p>
                                                <div class="students__wrap__label">
                                                    <div class="students__label">BESTSELLER</div>
                                                </div>
                                            </div>
                                        </div></a>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="mid">
            <div class="mid__container">
                <div class="mid__content">
                    <div class="mid__item">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <div class="mid__item__detail mid__item__icon">
                            <h5>Go at your own pace</h5>
                            <p>Enjoy lifetime access to courses on</p>
                            <p>Udemy’s website and app</p>

                        </div>
                    </div>
                    <div class="mid__item">
                        <i class="fas fa-chalkboard-teacher mid__item__icon"></i>
                        <div class="mid__item__detail">
                            <h5>Learn from industry experts</h5>
                            <p>Select from top instructors around the</p>
                            <p>world</p>
                        </div>
                    </div>
                    <div class="mid__item">
                        <i class="fab fa-youtube mid__item__icon"></i>
                        <div class="mid__item__detail">
                            <h5>Find video courses on almost any topic</h5>
                            <p>Build your library for your career and</p>
                            <p>personal growth</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="students">
            <div class="students__title">
                <h2>Students are viewing</h2>
            </div>
            <div class="students__container">
                <div class="students__carousel">

                    <c:forEach var="c" items="${courses}">
                        <a href="${pageContext.request.contextPath}/Course/Detail?id=${c.courseID}" style="text-decoration: none"><div style="cursor: pointer" class="students__content">
                            <div class="students__content__item">
<%--                                <img src="${pageContext.request.contextPath}/views/vwHome/imgs/course.jpg" />--%>
                                <img  src="${pageContext.request.contextPath}/public/imgs/sp/${c.courseID}/main_thumbs.jpg" />
                                <h2>${c.courseName}</h2>
                                <p>Kyle Pew, Office Newb LLC</p>
                                <p>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <b>4.6</b> (143,668)
                                </p>
                                <p class="students__price"><span>$149.99</span>
                                    $<fmt:formatNumber value="${c.price}" type="number"/></p>
                                <div class="students__wrap__label">
                                    <div class="students__label">BESTSELLER</div>
                                </div>
                            </div>
                        </div></a>
                    </c:forEach>
<%--                    --%>


                </div>
            </div>
        </section>


        <section class="banner">
            <div class="banner__container">
                <div class="banner__content">
                    <h3>Get personal learning recommendations</h3>
                    <p>Answer a few questions for your top picks</p>
                    <div class="banner__button">
                        <a href="#" class="banner__button__link">Get Started</a>
                    </div>
                </div>
            </div>
        </section>

        <section class="container">

            <div class="card-deck">
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1512295767273-ac109ac3acfa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Design</h5>
                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1551033406-611cf9a28f67?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title  ">Development</h5>

                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80" class="card-img-top " alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Marketing</h5>

                    </div>
                </div>

                <div class="card">
                    <img src="https://images.unsplash.com/photo-1581090464777-f3220bbe1b8b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">IT and Software</h5>

                    </div>
                </div>
            </div>


            <div class="card-deck">
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Personal Development</h5>
                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title  ">Business</h5>

                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1491796014055-e6835cdcd4c6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=712&q=80" class="card-img-top " alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Photography</h5>

                    </div>
                </div>

                <div class="card">
                    <img src="https://images.unsplash.com/photo-1485278537138-4e8911a13c02?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Music</h5>

                    </div>
                </div>
            </div>

        </section>

        <section class="trusted">
            <div class="trusted__title">
                <p>Trusted by companies of all sizes</p>
            </div>

            <div class="trusted__item">

                <div class="trusted__logo">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/5/50/Booking.com_Logo_Grey.svg" />
                </div>
                <div class="trusted__logo">
                    <img style="height: 5rem;" src="${pageContext.request.contextPath}/views/vwHome/imgs/kisspng-volkswagen-beetle-volkswagen-transporter-decal-vol-logo-audi-5b19eb3b8e7561.9842726815284252755835.jpg" />
                </div>
                <div class="trusted__logo">
                    <img src="${pageContext.request.contextPath}/views/vwHome/imgs/mercedes.jpg" style="height: 6rem;" />
                </div>
                <div class="trusted__logo">
                    <img src="${pageContext.request.contextPath}/views/vwHome/imgs/adidas.jpg"  style="height: 5rem;" />
                </div>
                <div class="trusted__logo">
                    <img src="${pageContext.request.contextPath}/views/vwHome/imgs/eventbrite-logo.svg" />
                </div>
            </div>

        </section>



    </jsp:body>
</t:main>