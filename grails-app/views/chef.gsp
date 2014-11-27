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
                <li class="pure-menu-selected chef-menu-js"><a href="#" id="dish">菜品</a></li>
                <li class="chef-menu-js"><a href="javascript:void(0)" id="comment">评价</a></li>
                <li class="chef-menu-js"><a href="javascript:void(0)" id="favor">收藏</a></li>
                <li class="chef-menu-js"><a href="javascript:void(0)" id="message">留言板</a></li>
                 <g:if test="${sec.loggedInUserInfo(field: 'id').toString() == String.valueOf(chef.id)}">
                    <li class="chef-menu-js"><a href="javascript:void(0)" id="add-dish">增加菜品</a></li>
                    <li class="chef-menu-js"><a href="javascript:void(0)" id="order">订单管理</a></li>
                    <li class="chef-menu-js"><a href="javascript:void(0)" id="settings">设置</a></li>
                </g:if>

            </ul>
        </div>
        <div class="chef-dish" id="dish-tab">
            abc
            <div class="row-block">
                <g:each in="${dishList}">
                    <g:link controller="menu" action="dishDetail" params="[dishId: it.id]">
                        <div class="lh-img-block">
                            <img src="${resource(dir:'images/dish/' + it.chefId, file: it.image)}" class="lh-img" />
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
        <div class="chef-order" id="order-tab" style="display:none;">
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
        <div class="chef-add-dish" id="add-dish-tab" style="display:none">
            <g:form class="pure-form pure-form-aligned" controller="register" action="member">
                <fieldset>
                    <div class="pure-control-group">
                        <label for="name">菜品名称</label>
                        <input id="name" name="name" type="text" placeholder="菜品名称">
                    </div>

                    <div class="pure-control-group">
                        <label for="price">价格</label>
                        <input id="price" name="price" type="text" placeholder="价格">
                    </div>

                    <div class="pure-control-group">
                        <label for="shortDescription">简介</label>
                        <textarea id="shortDescription" name="shortDescription" type="text" placeholder=""></textarea>
                    </div>

                    <div class="pure-control-group">
                        <label for="description">介绍</label>
                        <textarea id="description" name="description" type="text" placeholder=""></textarea>
                    </div>


                    <div class="pure-controls" style="margin-left:230px;">

                        <g:submitButton name="增加" type="submit" class="pure-button pure-button-primary" style="display:inline-block;">增加</g:submitButton>
                    </div>
                </fieldset>
            </g:form>
        </div>
</div>
    <g:render template="/template/foot_template"/>
</body>

<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.11.1.min.js')}"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".chef-menu-js").click(function(){
            var obj = $(".pure-menu-selected");
            var id = obj.children().attr("id");
            $("#" + id + "-tab").css("display", "none");
            obj.removeClass("pure-menu-selected");

            $(this).addClass("pure-menu-selected");
            id = $(this).children().attr("id");
            $("#" + id + "-tab").css("display", "");
        });
    });
</script>
</html>