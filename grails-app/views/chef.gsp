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
            <div class="chef-pic">
                <img src="${resource(dir: 'images', file: 'avatar1.jpg')}" class="pure-img chef-img" />
            </div>
            <div class="chef-txt-info">
                <div class="chef-name">
                    ${chef.name}的餐厅
                </div>
                <div class="chef-info-other">
                    ${chef.gender == "Male" ? "男" : "女"}  ${chef.city}   <g:formatDate date="${chef.joinDate}" format="yyyy/MM/dd"/>加入
                </div>
                <div class="chef-intro">
                    ${chef.description}
                </div>
            </div>
        </div>

        <div class="pure-menu pure-menu-open pure-menu-horizontal chef-menu">
            <ul>
                <li class="pure-menu-selected"><a href="#" id="dish">菜品</a></li>
                <li class="#"><a href="#" id="comment">评价</a></li>
                <li><a href="#" id="favor">收藏</a></li>
                <li><a href="#" id="message">留言板</a></li>
                <g:if test="${sec.loggedInUserInfo(field: 'id').toString() == String.valueOf(chef.id)}">
                    <li><a href="#" id="order">订单管理</a></li>
                    <li><a href="#" id="settings">设置</a></li>
                </g:if>

            </ul>
        </div>
        <div class="chef-dish">
            <div class="row-block">
                <g:each in="${dishList}">
                    <div class="lh-img-block">
                        <img src="${resource(dir:'images/dish/' + it.chefId, file: it.image)}" class="lh-img" />
                        <div class="lh-img-block-txt1">
                            ${it.name} &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $${it.price}
                        </div>
                        <div class="lh-img-block-txt2">
                            ${it.shortDescription ?: it.description}
                        </div>
                    </div>
                </g:each>

        </div>
    </div>
        <div class="chef-order">
            <div class="chef-order-top">
                <div class="chef-order-date">
                    2014-08-30
                </div>
                <div class="chef-order-number">
                    订单号：7844201408138312
                </div>
                <div class="chef-order-user-name">
                    <a href="#">棉微良品</a>
                </div>
            </div>
            <div class="chef-order-content">
                <div class="chef-order-content-dish">
                    <div class="chef-order-content-user-pic">
                        <img src="images/avatar3.jpg" class="pure-img round_photo" />
                    </div>
                    <div class="chef-order-content-dish-name">
                        鲜奶油蜜桃派
                    </div>
                </div>
                <div class="chef-order-content-dish-price">
                    单价: $6
                </div>
                <div class="chef-order-content-dish-num">
                    数量: 1
                </div>
                <div class="chef-order-content-dish-money">
                    金额: $6
                </div>
                <div class="chef-order-content-dish-status">
                    买家已付款
                </div>
            </div>

        </div>
</div>
<g:render template="/template/foot_template" />
</body>
</html>