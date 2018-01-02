<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>

    <%--<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">--%>
    <%--<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>--%>
    <script>
        function onDelete() {
            if (confirm("Do you want delete this person?")) {
                return true;
            } else {
                return false;
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="text-center">
            <div class="text-left">
                <a href="showAddCustomer" class="pull-right">Add Customer</a>
            </div>
            <h1>List Customer</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>email</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <c:forEach var="customer" items="${customers}">
                    <tr>
                        <td>${customer.firstName}</td>
                        <td>${customer.lastName}</td>
                        <td>${customer.email}</td>
                        <td><a href="${pageContext.request.contextPath}/customer/showUpdateCustomer?id=${customer.id}">Update</a></td>
                        <td><a href="${pageContext.request.contextPath}/customer/deleteCustomer?id=${customer.id}" onclick="return onDelete();">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>
</body>
</html>
