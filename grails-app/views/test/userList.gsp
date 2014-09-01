<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 8/31/2014
  Time: 10:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>phone Number</td>
        <td>Address1</td>
        <td>Address2</td>
        <td>City</td>
        <td>Zip Code</td>
    </tr>

<g:each in="${userList}">
    <tr>
        <td>${it.name}</td>
        <td>${it.email}</td>
        <td>${it.phoneNumber}</td>
        <td>${it.address1}</td>
        <td>${it.address2}</td>
        <td>${it.city}</td>
        <td>${it.zipCode}</td>
    </tr>
</g:each>

</table>

</body>
</html>