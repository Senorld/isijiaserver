<%--
  Created by IntelliJ IDEA.
  User: Sui
  Date: 2014/9/12
  Time: 1:05
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>厨师列表</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pure.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'cl.css')}">
</head>

<body>
<div class="content">
<g:render template="/template/nav_template" />
<g:render template="/template/search_template" />
<div class="cl">
<div class="cl-left">
    <div class="cl-class">
        <div class="menu1 pure-menu pure-menu-open">
            <ul>
                <li><a href="#">全部分类</a></li>
                <li><a href="#">按地区分类</a></li>
                <li><a href="#">按菜品分类</a></li>
            </ul>
        </div>
    </div>
    <div class="cl-list">
        <g:each in="${chefList}">
            <g:link controller="chef" action="getChefById" params="[chefId: it.id]">
                <div class="cl-block">
                    <div class="cl-img">
                        <img src="${resource(dir: 'images', file: 'avatar1.jpg')}" class="pure-img">
                    </div>
                    <div class="cl-content">
                        <div class="cl-name">
                            ${it.name}
                        </div>
                        <div class="cl-chef-info">
                            <div class="cl-chef-gender">${it.gender == 'MALE' ? "男" : "女"}</div>    <div class="cl-chef-loc">${it.city}</div>     <div class="cl-chef-join-time"><g:formatDate format="yyyy-MM-dd" date="${it.joinDate}"/> 加入</div>
                        </div>
                        <div class="cl-chef-intro">
                            ${it.description}
                        </div>
                    </div>
                </div>
            </g:link>

        </g:each>
        <div class="paginator">
            <ul class="pure-paginator">
                <li><a class="pure-button prev" href="#">&#171;</a></li>
                <li><a class="pure-button" href="#">1</a></li>
                <li><a class="pure-button pure-button-active" href="#">2</a></li>
                <li><a class="pure-button" href="#">3</a></li>
                <li><a class="pure-button" href="#">4</a></li>
                <li><a class="pure-button" href="#">5</a></li>
                <li><a class="pure-button next" href="#">&#187;</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="cl-right">
    <div class="ad-banner1">
        <img src="${resource(dir: 'images', file: 'dd-ad.png')}" class="pure-img">
    </div>
</div>

</div>
</div>
<g:render template="/template/foot_template" />
</body>
</html>