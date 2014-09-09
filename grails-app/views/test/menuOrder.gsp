<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 9/1/2014
  Time: 3:44 PM
--%>

<%@ page import="isijia.MemberOrder" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<table border="1">
    <tr>
        <td>Select</td>
        <td>Status</td>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Chef Name</td>
        <td>Image</td>
    </tr>
    <g:form controller="memberOrder" action="reviewOrder" method="POST">
        <g:each in="${foodList}">
            <tr>
                <td><input type="checkbox" value="${it.id}" name="foodId"/></td>
                <td>${it.status}</td>
                <td>${it.name}</td>
                <td>${it.price}</td>
                <td>${it.description}</td>
                <td>${it.chef.name}</td>
                <g:if test="${it.image}">
                    <td>
                        <a href="/isijia/${it.image}">
                            <img height="100" src="/isijia/${it.image}"/>
                        </a>

                    </td>
                </g:if>

            </tr>
        </g:each>
        <tr>
            <td colspan="8" align="center">
                <g:submitButton name="submit" value="Order"/>
            </td>
        </tr>
    </g:form>



</table>

<h1>Order List</h1>
<g:link action="retrieveList" controller="memberOrder">Retrieve Order List</g:link>

<h1>Retrieve Your Order List</h1>
<g:link action="retrieveListByUser" controller="memberOrder">Retrieve Order List</g:link>

</body>
</html>