<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
</head>
<body>
    <div class="container">
        <div class="text-center">
            <h2>Add Customer</h2>
        </div>
        <form:form method="post" action="addCustomer" modelAttribute="customer">
            <div class="form-group row">
                <form:label path="firstName" cssClass="col-2 control-lable">First Name:</form:label>
                <form:input path="firstName" cssClass="col-10 form-control" />
            </div>
            <div class="form-group row">
                <form:label path="lastName" cssClass="col-2 control-lable">Last Name:</form:label>
                <form:input path="lastName" cssClass="col-10 form-control" />
            </div>
            <div class="form-group row">
                <form:label path="email" cssClass="col-2 control-lable">email:</form:label>
                <form:input path="email" cssClass="col-10 form-control" />
            </div>
            <div class="form-group row">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form:form>
        <p>
            <a href="${pageContext.request.contextPath}/customer/list">Show Customer</a>
        </p>
    </div>
</body>
</html>