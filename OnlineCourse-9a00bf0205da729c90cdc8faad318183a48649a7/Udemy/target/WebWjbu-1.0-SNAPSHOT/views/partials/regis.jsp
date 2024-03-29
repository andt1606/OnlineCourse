<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
    <div class="card card0 border-0">
        <div class="row d-flex">
            <div class="col-lg-6">
                <div class="card1 pb-5">
                    <div  class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img style="margin-top: 180px" src="https://i.imgur.com/uNGdWHi.png" class="image"> </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card2 card border-0 px-4 py-5">
                    <div class="row mb-4 px-3">
                        <h6 class="mb-0 mr-4 mt-2">Sign in with</h6>
                        <div class="facebook text-center mr-3">
                            <div class="fa fa-facebook"></div>
                        </div>
                        <div class="twitter text-center mr-3">
                            <div class="fa fa-twitter"></div>
                        </div>
                        <div class="linkedin text-center mr-3">
                            <div class="fa fa-linkedin"></div>
                        </div>
                    </div>
                    <div class="row px-3 mb-4">
                        <div class="line"></div> <small class="or text-center">Or</small>
                        <div class="line"></div>
                    </div>


                    <form method="post" id="frmRegister">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="font-weight-bold" style="font-size: 20px">Account Registration</h4>
                            </div>
                            <div class="card-body">
<%--                                <h5>Account</h5>--%>
                                <div class="form-group">
                                    <label for="txtUsername" class="mb-4">Username</label>
                                    <input style="font-size: 18px" type="text" class="form-control" id="txtUsername" name="username">
                                </div>
                                <div class="form-group">
                                    <label for="txtPassword" class="mb-4">Password</label>
                                    <input style="font-size: 18px" type="password" class="form-control" id="txtPassword" name="password">
                                </div>
                                <div class="form-group">
                                    <label for="txtConfirm" class="mb-4">Confirm</label>
                                    <input style="font-size: 18px" type="password" class="form-control" id="txtConfirm" name="confirm">
                                </div>

                                <h5 style="font-size: 20px" class="mt-4 mb-6 font-weight-bold" >Personal Information</h5>
                                <div class="form-group">
                                    <label for="txtName" class="mb-4 mt-4">Name</label>
                                    <input style="font-size: 18px" type="text" class="form-control" id="txtName" name="name">
                                </div>
                                <div class="form-group">
                                    <label for="txtEmail" class="mb-4">Email</label>
                                    <input style="font-size: 18px" type="text" class="form-control" id="txtEmail" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="txtDOB" class="mb-4">Date of Birth</label>
                                    <input style="font-size: 18px" type="text" class="form-control" id="txtDOB" name="dob">
                                </div>
                            </div>
                            <div class="card-footer">
                                <button style="font-size: 16px" type="submit" class="btn btn-outline-success display-3">
                                    <i class="fa fa-check" aria-hidden="true"></i>
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>


                </div>

            </div>
        </div>
    </div>
</div>