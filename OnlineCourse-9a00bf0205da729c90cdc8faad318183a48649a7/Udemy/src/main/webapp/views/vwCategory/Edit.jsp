<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="category" scope="request" type="beans.Category"/>
<t:main>
    <jsp:body>

        <div class="container-fluid mt-3 w-auto">
            <div class="row ">
                <div class="col-sm-3">
                    <jsp:include page="../../views/partials/left.jsp"/>
                </div>
                <div class="col-sm-9 ">
                    <form method="post">
                        <div class="card">
                            <div class="card-header">
                                <h4>Category</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txtCatID">#</label>
                                    <input type="text" class="form-control" id="txtCatID" name="CatID" readonly value="${category.catID}">
                                </div>
                                <div class="form-group">
                                    <label for="txtCatName">Category</label>
                                    <input type="text" class="form-control" id="txtCatName" name="CatName" autofocus value="${category.catName}">
                                </div>
                            </div>
                            <div class="card-footer">
                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/Category/" role="button">
                                    <i class="fa fa-backward" aria-hidden="true"></i>
                                    List
                                </a>
                                <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/Category/Delete">
                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                    Delete
                                </button>
                                <button type="submit" class="btn btn-outline-success" formaction="${pageContext.request.contextPath}/Admin/Category/Update">
                                    <i class="fa fa-check" aria-hidden="true"></i>
                                    Save
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>


    </jsp:body>
</t:main>