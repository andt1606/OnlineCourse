<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



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
                            <div class="card-header p-4" style="font-size: 15px">
                                <h4 style="font-weight: 700" >New Category</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Category</label>
                                    <input style="font-size: 20px" type="text" class="form-control" id="txtCatName" name="CatName" autofocus>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a style="font-size: 14px" class="btn btn-primary p-2 mr-3" href="${pageContext.request.contextPath}/Admin/Category/" role="button">
                                    <i class="fa fa-backward" aria-hidden="true"></i>
                                    List
                                </a>
                                <button style="font-size: 14px" type="submit" class="btn btn-primary p-2">
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