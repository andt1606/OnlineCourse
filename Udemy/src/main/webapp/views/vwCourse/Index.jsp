<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="courses" scope="request" type="java.util.List<beans.Course>"/>

<t:main2>
    <jsp:body>
        <div class="card min-vw-100">
            <div class="card-header">
                <h4>Courses</h4>
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
                            <thead>
                            <tr>
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
                                <tr>
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
                                        <a class="btn btn-sm btn-outline-primary" href="#" role="button">
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
    </jsp:body>
</t:main2>