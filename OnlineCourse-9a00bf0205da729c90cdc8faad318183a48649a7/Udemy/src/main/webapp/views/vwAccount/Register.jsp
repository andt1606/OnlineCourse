<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<t:main>



    <jsp:attribute name="css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/views/vwAccount/lore.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
  </jsp:attribute>

    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
    <script>
        $('#frmRegister').on('submit', function (e) {
            e.preventDefault();

            const username = $('#txtUsername').val();
            if (username.length === 0) {
                alert('Invalid username.');
                return;
            }

            $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?user=' + username, function (data) {
                if (data === true) {
                    $('#frmRegister').off('submit').submit();
                } else {
                    alert('Not available.');
                }
            });
        });

        $('#txtDOB').datetimepicker({
            format: 'd/m/Y',
            timepicker: false,
            mask: true,
        });

        $('#txtUsername').select();
    </script>
  </jsp:attribute>



    <jsp:body>

        <jsp:include page="../partials/regis.jsp"/>


    </jsp:body>


</t:main>