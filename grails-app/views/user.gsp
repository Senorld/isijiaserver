<%--
  Created by IntelliJ IDEA.
  User: Sui
  Date: 2014/9/12
  Time: 1:49
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>用户</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pure.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'user.css')}">
</head>

<body>
<div class="content">
    <g:render template="/template/nav_template" />
    <g:render template="/template/search_template" />
    <div class="user">
        <div class="user-info">
            <div class="user-pic">
                <img src="${resource(dir: 'images', file: 'avatar1.jpg')}" class="pure-img user-img" />
            </div>
            <div class="user-txt-info">
                <div class="user-name">
                    ${/*user.name*/}的餐厅
                </div>
                <div class="user-info-other">
                    ${/*user.gender == "Male" ? "男" : "女"*/}  ${/*user.city*/}   <g:formatDate date="${/*user.joinDate*/}" format="yyyy/MM/dd"/>加入
                </div>
                <div class="user-intro">
                    ${/*user.description*/}
                </div>
            </div>
        </div>

        <div class="pure-menu pure-menu-open pure-menu-horizontal user-menu">
            <ul>
                <li class="pure-menu-selected"><a href="#" id="dish">吃过</a></li>
                <li class="#"><a href="#" id="comment">评价</a></li>
                <li><a href="#" id="favor">收藏</a></li>
                <g:if test="${sec.loggedInUserInfo(field: 'id').toString() == String.valueOf(user.id)}">
                    <li><a href="#" id="settings">订单管理</a></li>
                    <li><a href="#" id="settings">设置</a></li>
                </g:if>

            </ul>
        </div>
        <div class="user-dish">
            <div class="row-block">
                <g:each in="${dishList}">
                    <g:link controller="menu" action="dishDetail" params="[dishId: it.id]">
                        <div class="lh-img-block">
                            <img src="${resource(dir:'images/dish/' + it.userId, file: it.image)}" class="lh-img" />
                            <div class="lh-img-block-txt1">
                                <div class="lh-img-block-txt1-name">${it.name}</div> <div class="lh-img-block-txt1-price"> $${it.price}</div>
                            </div>
                            <div class="lh-img-block-txt2">
                                ${it.shortDescription ?: it.description}
                            </div>
                        </div>
                    </g:link>

                </g:each>

            </div>
        </div>
        <div class="user-order">
            <div class="user-order-top">
                <div class="user-order-date">
                    2014-08-30
                </div>
                <div class="user-order-number">
                    订单号：7844201408138312
                </div>
                <div class="user-order-user-name">
                    <a href="#">棉微良品</a>
                </div>
            </div>
            <div class="user-order-content">
                <div class="user-order-content-dish">
                    <div class="user-order-content-user-pic">
                        <img src="images/avatar3.jpg" class="pure-img round_photo" />
                    </div>
                    <div class="user-order-content-dish-name">
                        鲜奶油蜜桃派
                    </div>
                </div>
                <div class="user-order-content-dish-price">
                    单价: $6
                </div>
                <div class="user-order-content-dish-num">
                    数量: 1
                </div>
                <div class="user-order-content-dish-money">
                    金额: $6
                </div>
                <div class="user-order-content-dish-status">
                    买家已付款
                </div>
            </div>

        </div>
    </div>
    <g:render template="/template/foot_template" />
</body>
</html>