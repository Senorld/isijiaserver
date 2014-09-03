<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 8/31/2014
  Time: 10:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h1>Create New Food</h1>
<g:form controller="menu" action="createFood" method="POST" enctype="multipart/form-data" useToken="true" accept-charset="UTF-8">
    <input type="text" placeholder="Food Name" name="name"/>
    <br/>
    <input type="number" placeholder="Price" name="price"/>
    <br/>
    <textarea name="description" placeholder="Description"></textarea>
    <br/>
    <label for="closeDate">Close Date</label>
    <input type="date" name="closeDate" id="closeDate" />
    <br/>
    <label for="highLight">High Light</label>
    <input type="checkbox" name="highLight" id="highLight"/>
    <br/>
    <select name="status">
        <option value="PRIVATE">Private</option>
        <option value="PUBLIC">Public</option>
    </select>
    <br/>
    <input type="file" name="foodImage"/>
    <br/>
    <g:submitButton name="submit" value="SUBMIT"/>
</g:form>


<h1>Menu List</h1>
<g:link action="retrieveList" controller="menu">Retrieve Menu List</g:link>

</body>
</html>