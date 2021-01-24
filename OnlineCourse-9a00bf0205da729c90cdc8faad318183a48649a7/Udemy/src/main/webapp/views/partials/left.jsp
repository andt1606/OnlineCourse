<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="categoriesWithDetails" scope="request" type="java.util.List<beans.Category>"/>
<div class="card mb-3">
    <div class="card-header">
        <h4 style="font-weight: 700" class="p-3">Categories</h4>
    </div>
    <div class="list-group list-group-flush">
        <c:forEach var="c" items="${categoriesWithDetails}">
            <a href="${pageContext.request.contextPath}/Course/ByCat?id=${c.catID}" class="list-group-item list-group-item-action p-4">
                <i class="fa fa-caret-right" aria-hidden="true"></i>
                    ${c.catName}
            </a>
        </c:forEach>
        <%--    <a href="#" class="list-group-item list-group-item-action active">--%>
        <%--      Cras justo odio--%>
        <%--    </a>--%>
    </div>
</div>
<div class="card">
    <div class="card-header">
        <h4 style="font-weight: 700" class="p-3">Featured</h4>
    </div>
    <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p style="line-height: normal" class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a style="font-size: x-small" href="#" class="btn btn-primary mt-4">Go somewhere</a>
    </div>
</div>