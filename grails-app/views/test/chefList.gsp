<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 9/1/2014
  Time: 4:49 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<h1>Chef List</h1>
<table border="1">
    <tr>
        <td>Retrieve Menu</td>
        <td>Retrieve Orders</td>
        <td>Chef Id</td>
        <td>Name</td>
        <td>Email</td>
        <td>Phone Number</td>
        <td>Zip Code</td>
        <td>Update</td>
    </tr>

    <g:each in="${chefList}">
        <tr>
            <td><g:link controller="chef" action="retrieveFoodByChef" params="[chefId: it.id]">Get Menu</g:link></td>
            <td><g:link controller="memberOrder" action="retrieveOrderByChef" params="[chefId: it.id]">Get Orders</g:link></td>
            <td>${it.id}</td>
            <td>${it.name}</td>
            <td>${it.email}</td>
            <td>${it.phoneNumber}</td>
            <td>${it.zipCode}</td>
        </tr>
    </g:each>


</table>

</body>
</html>