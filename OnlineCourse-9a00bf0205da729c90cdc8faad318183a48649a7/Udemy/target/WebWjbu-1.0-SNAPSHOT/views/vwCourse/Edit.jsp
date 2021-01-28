<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="courses" scope="request" type="beans.Course"/>

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
                                <h4 style="font-weight: 700">Course Edit</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatID">#</label>
                                    <input style="font-size: 18px" type="text" class="form-control" id="txtCatID" name="CourseID" readonly value="${courses.courseID}">
                                </div>
                                <div class="form-group">
                                    <label style="font-size: 15px" class="mb-4" for="txtCatName">Course Name</label>
                                    <input style="font-size: 18px" type="text" class="form-control" id="txtCatName" name="CourseName" autofocus value="${courses.courseName}">
                                </div>

                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Cat ID</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="CatID" value="${courses.catID}" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Tiny Description</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="TinyDes" value="${courses.tinyDes}" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Teacher ID</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="TeacherID" value="${courses.teacherID}" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">What Learn</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="WhatLearn"  value="${courses.whatLearn}">
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Title Content</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="TitleContent" value="${courses.titleContent}">
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Des Content</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="DesContent" value="${courses.desContent}" >
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Full Des</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="FullDes" value="${courses.fullDes}">
                                </div>
                                <div class="form-group">
                                    <label class="mb-4" for="txtCatName">Price</label>
                                    <input style="font-size: 20px" type="text" class="form-control"  name="Price" value="${courses.price}">
                                </div>

                            </div>






                            <div class="card-footer">
                                <a style="font-size: 15px" class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/Course/" role="button">
                                    <i class="fa fa-backward" aria-hidden="true"></i>
                                    List
                                </a>
                                <button style="font-size: 15px" type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/Course/Delete">
                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                    Delete
                                </button>
                                <button style="font-size: 15px" type="submit" class="btn btn-outline-success" formaction="${pageContext.request.contextPath}/Admin/Course/Update">
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