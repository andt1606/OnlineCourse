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
                                <h4 style="font-weight: 700" >New Course</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Course Name</label>
                                    <input style="font-size: 20px" type="text" class="form-control" id="txtCatName" name="CourseName" autofocus>
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Cat ID</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="CatID" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Tiny Description</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="TinyDes" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Teacher ID</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="TeacherID" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">What Learn</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="WhatLearn" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Title Content</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="TitleContent" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Des Content</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="DesContent" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Full Des</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="FullDes" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Price</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="Price" >
                                </div>
                            </div>
                            <div class="card-footer">
                                <a style="font-size: 14px" class="btn btn-primary p-2 mr-3" href="${pageContext.request.contextPath}/Admin/Course/" role="button">
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