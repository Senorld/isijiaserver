<%--
  Created by IntelliJ IDEA.
  User: Sui
  Date: 2014/9/8
  Time: 1:10
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>甜甜圈不辣的餐厅</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pure.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'chef.css')}">
</head>

<body>
<div class="content">
    <g:render template="/template/nav_template" />
    <g:render template="/template/search_template" />
    <div class="chef">
        <div class="chef-info">
            chef-info
        </div>

        <div class="pure-menu pure-menu-open pure-menu-horizontal chef-menu">
            <ul>
                <li class="pure-menu-selected"><a href="#">菜品</a></li>
                <li class="#"><a href="#">评价</a></li>
                <li><a href="#">收藏</a></li>
                <li><a href="#">留言板</a></li>
                <li><a href="#">订单管理</a></li>
            </ul>
        </div>
    </div>
</div>
<g:render template="/template/foot_template" />
</body>
</html>