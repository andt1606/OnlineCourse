<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<t:main>



    <jsp:body>

            <div class="container mt-4">
                <div class="card">
                    <div class="card-header display-4">
                        <h4 style="font-weight: bold">Courses</h4>
                    </div>

                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Course</th>
                                <th scope="col">Description</th>
                                <th scope="col" class="text-right">Price</th>

                                <th scope="col">&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <th scope="row">1</th>
                                <td>A</td>
                                <td>B</td>
                                <td class="text-right">
                                    $999
                                </td>


                            </tr>

                            </tbody>
                        </table>
                    </div>

                </div>
            </div>




    </jsp:body>


</t:main>