<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 9/1/2014
  Time: 3:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h1>Your order List</h1>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Chef Name</td>
        <td>Image</td>
    </tr>
    <g:form controller="memberOrder" action="checkout" method="POST">
        <g:each in="${foodList}">
            <tr>
                <input type="hidden" name="foodId" value="${it.id}"/>
                <td>${it.name}</td>
                <td>${it.price}</td>
                <td>${it.descrption}</td>
                <td>${it.chef.name}</td>
                <g:if test="${it.image}">
                    <td>
                        <a href="/isijia/${it.image}">
                            <img height="50" src="/isijia/${it.image}"/>
                        </a>

                    </td>
                </g:if>

            </tr>
        </g:each>
        <tr>
            <td>
                <h3>Total Price</h3>
            </td>
            <td colspan="7" align="center">
                $${totalPrice}
            </td>
        </tr>
        <tr>
            <td colspan="8" align="center">
                <g:submitButton name="submit" value="Confirm Order"/>
            </td>
        </tr>
    </g:form>



</table>

</body>
</html>