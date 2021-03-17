<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <title>FACEBOOK</title>
    <%@include file="templates/head.jsp" %>

</head>

<body>

<div class="container-fluid">
    <%@include file="templates/navbar.jsp" %>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <form action="/users" method="get">
                    IIN: <input name="IIN" />
            </form>
        </div>
    </div>
</div>

</body>

</html>