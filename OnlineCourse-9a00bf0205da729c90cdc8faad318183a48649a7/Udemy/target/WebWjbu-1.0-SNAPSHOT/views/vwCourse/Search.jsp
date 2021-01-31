<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="courseSearch" scope="request"  type="java.util.List<beans.Course>"/>

<t:main>
    <jsp:body>

        <div class="container-fluid mt-3 w-auto">


            <div class="row ">

                <div class="col-sm-3">
                    <jsp:include page="../../views/partials/left.jsp"/>
                </div>

                <div class="col-sm-9 ">

                    <div class="card">
                        <div class="card-header">
                            <h4 style="font-weight: 700" class="p-3">Courses</h4>
                        </div>

<%--                        <h5>${courseSearch.size()}</h5>--%>
<%--                        <c:forEach var="c" items="${courseSearch}">--%>
<%--                            <div> ${c.courseID} -> ${c.courseName} -> ${c.price} -> ${c.tinyDes} <br> </div>--%>
<%--                        </c:forEach>--%>


                        <%--<div class="card-body">
                            <div class="row">
                                <c:forEach var="c" items="${courseSearch}">
                                    <div class="col-sm-4 mb-3">
                                        <div class="card h-100">
                                            <img style="width: 100%; height: 200px" src="${pageContext.request.contextPath}/public/imgs/sp/${c.courseID}/main_thumbs.jpg" alt="${c.courseName}" title="${c.courseName}" class="card-img-top" />
                                            <div class="card-body">
                                                <h6 class="card-title">${c.courseName}</h6>
                                                <h5 class="card-title text-danger">
                                                    $<fmt:formatNumber value="${c.price}" type="number"/>
                                                </h5>
                                                <p style="line-height: normal" class="card-text">${c.tinyDes}</p>
                                            </div>
                                            <div class="card-footer p-4">
                                                <a style="padding: 5px" class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Course/Detail?id=${c.courseID}" role="button">
                                                    <i style="font-size: 13px" class="fa fa-eye" aria-hidden="true"></i>
                                                    <span style="font-size: 15px">Details</span>
                                                </a>
                                                <a style="padding: 5px" class="btn btn-sm btn-outline-success" href="#" role="button">
                                                    <i style="font-size: 13px" class="fa fa-shopping-cart" aria-hidden="true"></i>

                                                    <span style="font-size: 15px">Add to cart</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>--%>


                        <c:choose>
                            <c:when test="${courseSearch.size() == 0}">
                                <div class="card-body">
                                    <p class="card-text">Không có dữ liệu.</p>
                                </div>
                            </c:when>
                            <c:otherwise>

                                <div class="card-body">

                            <div class="row">

                                <c:forEach var="c" items="${courseSearch}">
                                    <div class="col-sm-4 mb-3">
                                        <div class="card h-100">
                                            <img style="width: 100%; height: 200px" src="${pageContext.request.contextPath}/public/imgs/sp/${c.courseID}/main_thumbs.jpg" alt="${c.courseName}" title="${c.courseName}" class="card-img-top" />
                                            <div class="card-body">
                                                <h6 class="card-title">${c.courseName}</h6>
                                                <h5 class="card-title text-danger">
                                                    $<fmt:formatNumber value="${c.price}" type="number"/>
                                                </h5>
                                                <p style="line-height: normal" class="card-text">${c.tinyDes}</p>
                                            </div>
                                            <div class="card-footer p-4">
                                                <a style="padding: 5px" class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Course/Detail?id=${c.courseID}" role="button">
                                                    <i style="font-size: 13px" class="fa fa-eye" aria-hidden="true"></i>
                                                    <span style="font-size: 15px">Details</span>
                                                </a>
                                                <a style="padding: 5px" class="btn btn-sm btn-outline-success" href="#" role="button">
                                                    <i style="font-size: 13px" class="fa fa-shopping-cart" aria-hidden="true"></i>

                                                    <span style="font-size: 15px">Add to cart</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>

                            </c:otherwise>
                        </c:choose>

                    </div>

                </div>

            </div>


        </div>


    </jsp:body>
</t:main>