<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="course" scope="request" type="beans.Course"/>

<t:main2>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h4>${course.courseName}</h4>
            </div>
            <div class="card-body">
                <img alt="${course.courseName}" title="${course.courseName}" src="${pageContext.request.contextPath}/public/imgs/sp/${course.courseID}/main_thumbs.jpg">
                <p class="card-text mt-3">
                    Giá bán:
                    <span class="text-danger font-weight-bold">
            <fmt:formatNumber value="${course.price}" type="number"/>
          </span>
                </p>
<%--                <p class="card-text">Tồn kho: ${course.quantity}</p>--%>
                <p class="card-text">${course.fullDes}</p>
            </div>
        </div>
    </jsp:body>
</t:main2>