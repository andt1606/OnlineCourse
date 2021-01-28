<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="courses" scope="request" type="java.util.List<beans.Course>"/>

<t:main>
    <jsp:body>


        <div class="container-fluid mt-3 w-auto">
            <div class="row ">
                <div class="col-sm-3">
                    <jsp:include page="../../views/partials/left.jsp"/>
                </div>
                <div class="col-sm-9 ">
                    <div class="card min-vw-100">
                        <div style="font-size: 17px" class="d-flex align-item-center  card-header p-4">
                            <h4 style="font-weight: 700">Courses</h4>
                            <a style="font-size: 10px; margin-left: 900px" class="btn btn-outline-success p-3 " href="${pageContext.request.contextPath}/Admin/Course/Add" role="button">
                                <i class="fa fa-plus " aria-hidden="true"></i>
                                Add Course
                            </a>
                        </div>
                        <c:choose>
                            <c:when test="${courses.size() == 0}">
                                <div class="card-body">
                                    <p class="card-text">Không có dữ liệu.</p>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="card-body">
                                    <table class="table table-hover ">
                                        <thead style="font-size: 15px">
                                        <tr style="font-weight: bold">
                                            <th scope="col">#</th>
                                            <th scope="col">Course</th>
                                            <th scope="col">TinyDes</th>
                                            <th scope="col">TeacherID</th>
                                            <th scope="col">WishList</th>
                                            <th scope="col">WhatLearn</th>
                                            <th scope="col">TitleContent</th>
                                            <th scope="col">DesContent</th>
                                            <th scope="col">FullDes</th>
                                            <th scope="col">Comment</th>
                                            <th scope="col">Rating</th>
                                            <th scope="col">Include</th>
                                            <th scope="col">CatID</th>
                                            <th scope="col">Price</th>

                                            <th scope="col">&nbsp;</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="c" items="${courses}">
                                            <tr style="line-height: normal">
                                                <th scope="row">${c.courseID}</th>
                                                <td>${c.courseName}</td>
                                                <td>${c.tinyDes}</td>
                                                <td>${c.teacherID}</td>
                                                <td>${c.wishlist}</td>
                                                <td>${c.whatLearn}</td>
                                                <td>${c.titleContent}</td>
                                                <td>${c.desContent}</td>
                                                <td>${c.fullDes}</td>
                                                <td>${c.comment}</td>
                                                <td>${c.rating}</td>
                                                <td>${c.include}</td>
                                                <td>${c.catID}</td>
                                                <td class="text-right">
                                                    <fmt:formatNumber value="${c.price}" type="number"/>
                                                </td>

                                                <td class="text-right">
                                                    <a style="font-size: 16px" class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Admin/Course/Edit?id=${c.courseID}" role="button">
                                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>


    </jsp:body>
</t:main>