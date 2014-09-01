<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 9/1/2014
  Time: 3:58 PM
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
        <sec:ifAllGranted roles="ROLE_CHEF">
            <td>Change Status</td>
        </sec:ifAllGranted>
        <td>Order Id</td>
        <td>Food List Name</td>
        <td>Total Price</td>
        <td>Requester Name</td>
        <td>Date</td>
    </tr>

        <g:each in="${orderList}">
            <g:set var="totalPrice" value="${0}"/>
            <tr>
                <sec:ifAllGranted roles="ROLE_CHEF">
                    <g:form controller="memberOrder" action="updateStatus">
                    <td>
                        <g:select from="${['PENDING', 'SUCCESS', 'REJECT', 'CLOSE']}" name="status" value="${it.status}" />
                        <g:submitButton name="update" value="Update" />
                        <input type="hidden" value="${it.id}" name="orderId" />
                    </td>
                    </g:form>
                </sec:ifAllGranted>
                <td>${it.id}</td>
                <td>
                    <g:each in="${it.menu}" var="food">
                        ${food.name},
                        <g:set var="totalPrice" value="${totalPrice+food.price}"/>
                    </g:each>
                </td>
                <td>
                    ${totalPrice}
                </td>
                <td>
                    ${it.user.name}
                </td>
                <td>
                    ${it.createdDate}
                </td>

            </tr>
        </g:each>


</table>


</body>
</html>