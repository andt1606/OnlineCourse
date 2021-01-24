<%@tag pageEncoding="utf-8" %>
<%@attribute name="css" fragment="true" required="false" %>
<%@attribute name="js" fragment="true" required="false" %>



<!DOCTYPE html>


<html lang="en" style="font-size: 62.5%"  >
<head>
    <style>
        body{font-size: 2rem}
        p{ font-size: 20px}
    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Udemy</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/vwHome/reset.css">
    <%--    <link rel="stylesheet" href="./style.css">--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/vwHome/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/vwHome/slick.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/vwCourse/style.css">

    <jsp:invoke fragment="css"/>


</head>
<body style="font-family: Poppins">





<jsp:include page="../../views/partials/nav.jsp"/>

<jsp:doBody/>

<jsp:include page="../../views/partials/footer.jsp"/>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%--        <script src="./js/slick.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/views/vwHome/js/slick.min.js"></script>
<%--        <script src="./js/index.js"></script>--%>
<script src="${pageContext.request.contextPath}/views/vwHome/js/index.js"></script>

<jsp:invoke fragment="js"/>
</body>
</html>