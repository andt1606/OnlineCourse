<%@tag pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Web Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/vwHome/reset.css">
    <%--    <link rel="stylesheet" href="./style.css">--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/vwHome/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/vwHome/slick.css">

</head>

<body >
<jsp:include page="../../views/partials/nav.jsp"/>
<div class="container-fluid mt-3 w-auto">
    <div class="row ">
        <div class="col-sm-3">
            <jsp:include page="../../views/partials/left.jsp"/>
        </div>
        <div class="col-sm-9 ">
            <jsp:doBody />
        </div>
    </div>
</div>
<jsp:include page="../../views/partials/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%--        <script src="./js/slick.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/views/vwHome/js/slick.min.js"></script>
<%--        <script src="./js/index.js"></script>--%>
<script src="${pageContext.request.contextPath}/views/vwHome/js/index.js"></script>
</body>

</html>