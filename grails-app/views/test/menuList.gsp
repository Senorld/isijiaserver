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
        <td>Price</td>
        <td>Status</td>
        <td>Description</td>
        <td>High Light</td>
        <td>Chef Name</td>
        <td>Image</td>
    </tr> b

    <g:each in="${menuList}">
        <tr>
            <td>${it.name}</td>
            <td>${it.price}</td>
            <td>${it.status}</td>
            <td>${it.descrption}</td>
            <td>${it.highLight == 0 ? "FALSE" : "TRUE"}</td>
            <td>${it.chef.name}</td>
            <g:if test="${it.image}">
                <td>
                    <a href="/isijia/${it.image}">
                        <img height="200" src="/isijia/${it.image}"/>
                    </a>

                </td>
            </g:if>

        </tr>
    </g:each>

</table>

</body>
</html>