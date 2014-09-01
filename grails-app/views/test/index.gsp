<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 8/28/2014
  Time: 11:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ISIJIA Testing Site</title>
</head>

<body>

<h1>Test ON Regsiter as a Member</h1>
<g:if test="${message}">
    ${message}
</g:if>
<g:form controller="register" action="member" method="POST">
    <input type="email" placeholder="EMAIL" name="email"/>
    <br/>
    <input placeholder="PASSWORD" type="password" name="password"/>
    <br/>
    <input type="text" placeholder="NAME" name="name"/>
    <br/>
    <input type="text" placeholder="PHONE NUMBER" name="phoneNumber"/>
    <br/>
    <input type="text" placeholder="Address" name="address1"/>
    <br/>
    <input type="text" placeholder="Address 2" name="address2"/>
    <br/>
    <input type="text" placeholder="CITY" name="city"/>
    <br/>
    <input type="text" placeholder="STATE" name="state"/>
    <br/>
    <input type="date" placeholder="BIRTHDAY" name="birthday"/>
    <br/>
    <select name="role">
        <option value="ROLE_USER">User</option>
        <option value="ROLE_CHEF">Chef</option>
    </select>

    <g:submitButton name="submit" value="SUBMIT"/>
</g:form>


<h1>User List</h1>
<g:link action="retrieveList" controller="user">Retrieve User List</g:link>

</body>
</html>