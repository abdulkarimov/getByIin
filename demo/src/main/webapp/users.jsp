<%@ page import="com.example.demo.entity.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>


<body>

<div class="container mt-5">

    <div class="row">

        <table class="table">
            <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">name</th>
                <th scope="col">surname</th>
                <th scope="col">country</th>
                <th scope="col">city</th>
                <th scope="col">iin</th>
            </tr>
            </thead>

            <tbody>
            <%
                //  User u = (User) request.getAttribute("users");

                List<User> userList = (List<User>) request.getAttribute("users");

                for (User u : userList ) {
                    if (u.getIin().equals(request.getParameter("IIN"))) {
            %>
            <tr>
                <td>
                    <%=u.getId()%>
                </td>
                <td>
                    <%=u.getName()%>
                </td>
                <td>
                    <%=u.getSurname()%>
                </td>
                <td>
                    <%=u.getCountry()%>
                </td>
                <td>
                    <%=u.getCity()%>
                </td>
                <td>
                    <%=u.getIin()%>
                </td>
            </tr>
            <%
                }}
            %>
            </tbody>
        </table>
    </div>
</div>

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
        integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"
        integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG"
        crossorigin="anonymous"></script>
</html>