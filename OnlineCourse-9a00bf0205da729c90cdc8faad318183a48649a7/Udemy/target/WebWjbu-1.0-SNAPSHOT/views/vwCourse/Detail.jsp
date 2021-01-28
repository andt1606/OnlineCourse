<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="course" scope="request" type="beans.Course"/>

<t:main>
    <jsp:body>

<%--        <div class="container-fluid mt-3 w-auto">--%>
<%--            <div class="row ">--%>
<%--                <div class="col-sm-3">--%>
<%--                    <jsp:include page="../../views/partials/left.jsp"/>--%>
<%--                </div>--%>
<%--                <div class="col-sm-9 ">--%>
<%--                    <div class="card">--%>
<%--                        <div class="card-header">--%>
<%--                            <h4>${course.courseName}</h4>--%>
<%--                        </div>--%>
<%--                        <div class="card-body">--%>
<%--                            <img alt="${course.courseName}" title="${course.courseName}" src="${pageContext.request.contextPath}/public/imgs/sp/${course.courseID}/main_thumbs.jpg">--%>
<%--                            <p class="card-text mt-3">--%>
<%--                                Giá bán:--%>
<%--                                <span class="text-danger font-weight-bold">--%>
<%--            <fmt:formatNumber value="${course.price}" type="number"/>--%>
<%--          </span>--%>
<%--                            </p>--%>
<%--                                &lt;%&ndash;                <p class="card-text">Tồn kho: ${course.quantity}</p>&ndash;%&gt;--%>
<%--                            <p class="card-text">${course.fullDes}</p>--%>
<%--                        </div>--%>
<%--                        <div class="card-footer">--%>
<%--                            <button type="button" class="btn btn-outline-danger">Buy This Course</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>



        <div class="course">

            <div class="course__container__list">
                <img alt="${course.courseName}" title="${course.courseName}" src="${pageContext.request.contextPath}/public/imgs/sp/${course.courseID}/main_thumbs.jpg">
                <div class="course__container__list-content">
                    <h2> $<fmt:formatNumber value="${course.price}" type="number"/></h2>
<%--                    <h5 class="card-title text-danger">--%>
<%--                        $<fmt:formatNumber value="${c.price}" type="number"/>--%>
<%--                    </h5>--%>
                    <div class="course__button-add">
                        Add to cart
                    </div>

                    <!-- <div class="course__button-buy">
                        Buy now
                    </div> -->

                    <a href="http://www.google.com" style="display: block; cursor: pointer; text-decoration:none" class="course__button-buy">
                        Buy now
                    </a>


                    <p class="course__text">30-Day Money-Back Guarantee</p>

                    <h4>This course includes:</h4>
                    <ul class="course__include">
                        <li class="course__include__item">
                            <i class="fa fa-television" aria-hidden="true"></i>
                            1.5 hours on-demand video
                        </li>

                        <li  class="course__include__item">
                            <i style="margin-left: 2px;" class="fa fa-file" aria-hidden="true"></i>
                            <span style="margin-left: 2px;">1 article</span>
                        </li>
                        <li class="course__include__item">
                            <i class="fas fa-infinity"></i>
                            <span style="margin-left: -2px;">Full lifetime access</span>

                        </li>
                        <li class="course__include__item">
                            <i style="margin-left: 4px;" class="fas fa-mobile-alt"></i>
                            <span style="margin-left: 2px;">Access on mobile and TV</span>

                        </li>
                        <li class="course__include__item">
                            <i style="margin-left: 1px;" class="fas fa-medal"></i>
                            Certificate of completion
                        </li>

                    </ul>
                    <p class="course__coupon">Apply Coupon</p>
                    <hr style="margin-bottom:3rem;">
                    <h3>Training 5 or more people?</h3>
                    <p style="line-height:1.7rem;">Get your team access to 5,000+ top Udemy courses anytime, anywhere.</p>

                    <a style="display: block; cursor: pointer; text-decoration:none" class="course__button-try">Try Udemy for Business</a>
                    <!-- <div class="course__button-try">
                        Try Udemy for Business
                    </div> -->
                </div>
            </div>


            <div class="course__container-top">
                <div class="course__container-top-content">
                    <div class="course__container-top-content-title">${course.courseName}</div>
                    <p class="course__container-top-content-tinydes">${course.tinyDes}</p>
                    <p class="course__container-top-content-rating">
                        <b>4.6</b>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <span >(636 ratings) 103,090 students</span>
                    </p>
                    <p class="course__container-top-content-create">Created by <a style="color:#8ed1dc">Creating Online School</a></p>

                    <div class="course__update">
                        <div class="course__update__item">
                            <i class="fa fa-info-circle mr-1" aria-hidden="true"></i>
                            <span >Last updated 6/2018</span>
                        </div>
                        <div class="course__update__item">
                            <i class="fa fa-globe mr-1" aria-hidden="true"></i>
                            <span>English</span>
                        </div>
                        <div class="course__update__item">
                            <i class="fa fa-cc mr-1" aria-hidden="true"></i>
                            <span>English [Auto]</span>
                        </div>
                    </div>

                    <div class="course__button">
                        <div class="course__button__item">
                            Wishlist <i class="fa fa-heart" aria-hidden="true"></i>
                        </div>
                        <div class="course__button__item">
                            Share <i class="fa fa-share " aria-hidden="true"></i>
                        </div>
                        <div class="course__button__item">
                            Gift this course
                        </div>
                    </div>
                </div>
            </div>




            <div class="course__container-bottom">

                <div class="course__container-bottom-whatlearn">
                    <div class="course__container-bottom-whatlearn-content">
                        <h2>What you'll learn</h2>
                        <div class="course__container-bottom-whatlearn-content__item">
                            <i class="fa fa-check mr-2" aria-hidden="true"></i>
                            Feel flexbile to work with MongoDB, Perform Basic and Advanced queries in MongoDB
                        </div>
                        <div class="course__container-bottom-whatlearn-content__item">
                            <i class="fa fa-check mr-2" aria-hidden="true"></i>
                            Build real life application using MongoDB and PHP
                        </div>
                        <div class="course__container-bottom-whatlearn-content__item">
                            <i class="fa fa-check mr-2" aria-hidden="true"></i>
                            Understand how MongoDB stores data
                        </div>
                        <div class="course__container-bottom-whatlearn-content__item">
                            <i class="fa fa-check mr-2" aria-hidden="true"></i>
                            Learn Basics of PHP
                        </div>




                    </div>
                </div>

                <div class="course__content">
                    <h2>Course Content</h2>
                </div>
            </div>



        </div>

        <div class="inin">
            <div class="accordion" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button style="font-size: 1.4rem; font-weight: bold" class="btn  btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <i class="fa fa-caret-down mr-4" aria-hidden="true"></i>
                                Introduction + Installation
                            </button>
                        </h2>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">
                            <i class="fa fa-dot-circle-o mr-4 ml-2" aria-hidden="true"></i>    ABCDEFGH
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button style="font-size: 1.4rem; font-weight: bold" class="btn  btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <i class="fa fa-caret-down mr-4" aria-hidden="true"></i>Collapsible Group Item #2
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body ">
                            <i class="fa fa-dot-circle-o mr-4 ml-2" aria-hidden="true"></i>
                            Some placeholder content for the second accordion panel. This panel is hidden by default.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                            <button style="font-size: 1.4rem; font-weight: bold" class="btn  btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <i class="fa fa-caret-down mr-4" aria-hidden="true"></i>Collapsible Group Item #3
                            </button>
                        </h2>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                        <div  class="card-body ">
                            <i class="fa fa-dot-circle-o mr-4 ml-2" aria-hidden="true"></i>
                            And lastly, the placeholder content for the third and final accordion panel. This panel is hidden by default.
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div  class="course__content">
            <h2>Requirements</h2>
        </div>

        <div class="course__no">
            <i class="fa fa-circle" aria-hidden="true"></i>
            <span style="font-size: 1.3rem; margin-left: 2rem;">No prior knowledge required</span>
        </div>

        <div class="course__description">
            <h2>Description</h2>

            <div class="course__description__mess">
                <p >=== Students' reviews' regarding this course ===</p>
                <p style="font-weight: bold;font-style: italic;">"In-depth explanations, good examples, knowledgeable instructor!"&nbsp;-- Gordon Stanley</p>
                <p style="font-weight: bold;font-style: italic;">"Really very good course to start learning Mongodb."&nbsp;<em>-- Saifaldeen</em></p>
                <p style="font-weight: bold;font-style: italic;">"Simply awesome. The instructor is explaining every line of code that he is typing it on the console and explains straight to the point. I got to learn many new things in this course as a beginner."&nbsp;-- Saurabh Mirajkar</p>
                <p style="font-weight: bold;font-style: italic;">"Great course. Loved the style of the instructor and the way things are presented. Cheers"&nbsp;-- Joey Smith</p>
                <p style="font-weight: bold;font-style: italic;">"This is a good course for someone who has worked with json objects and php before, the examples are easy to understand. I&acute;m really enjoying this course"&nbsp;-- Jezer Eduardo Mart&iacute;nez</p>
                <p style="font-weight: bold;font-style: italic;">"So very clear and concise... we learn to build and the instructor is taking us through the major steps to build something"&nbsp;-- Robin McManus</p>
                <p>MongoDB is one of the most powerful NoSQL database in the current world. By completion of this course, you will be able understand the concepts of MongoDB and get working experience on MongoDB. This course gives you hands on and practical experience on MongoDB queries; both basic queries and advanced queries. How to install Also you complete a basic project with PHP and MongoDB.&nbsp;</p>
                <p>Learning NoSQL (here for example, MongoDB) is one of the fastest ways to improve your career. Hope this course will be used as a helping hand for your prospective career. Please dig on free preview videos for more information.&nbsp;</p>
                <p>Along with MongoDB, you will learn PHP Basics and Advanced. Practical work with Git, JSON and XML.</p>
            </div>




        </div>

        <div  class="course__who">
            <h2>Who this course is for:</h2>

        </div>

        <div class="course__for">
            <i class="fa fa-circle" aria-hidden="true"></i>
            <span style="font-size: 1.3rem; margin-left: 2rem;">No prior knowledge required</span>
        </div>
        <div style="margin-bottom: 5rem;" class="course__for">
            <i class="fa fa-circle" aria-hidden="true"></i>
            <span style="font-size: 1.3rem; margin-left: 2rem;">No prior knowledge required</span>
        </div>


    </jsp:body>
</t:main>