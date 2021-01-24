<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="categories" scope="request" type="java.util.List<beans.Category>"/>

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
                            <h4 style="font-weight: 700" class="d-flex align-item-center justify-content-between p-3 ">Categories

                                <a style="font-size: 10px" class="btn btn-outline-success p-3" href="${pageContext.request.contextPath}/Admin/Category/Add" role="button">
                                    <i class="fa fa-plus" aria-hidden="true"></i>
                                    Add Category
                                </a>


                            </h4>
                        </div>
                        <c:choose>
                            <c:when test="${categories.size() == 0}">
                                <div class="card-body">
                                    <p class="card-text">Không có dữ liệu.</p>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="card-body">
                                    <table class="table table-hover">
                                        <thead style="font-weight: 700" >
                                        <tr style="font-size: 20px">
                                            <th scope="col">#</th>
                                            <th class="" scope="col">Category</th>
                                            <th scope="col">&nbsp;</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="c" items="${categories}">
                                            <tr>
                                                <th scope="row">${c.catID}</th>
                                                <td>${c.catName}</td>
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Admin/Category/Edit?id=${c.catID}" role="button">
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