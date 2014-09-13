<%--
  Created by IntelliJ IDEA.
  User: Sui
  Date: 2014/9/11
  Time: 15:19
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>菜品列表</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pure.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'dl.css')}">
</head>

<body>
<div class="content">
    <g:render template="/template/nav_template" />
    <g:render template="/template/search_template" />
    <div class="dl">
        <div class="dl-left">
            <div class="dl-class">
                <div class="menu1 pure-menu pure-menu-open">
                    <ul>
                        <li><a href="#">全部分类</a></li>
                        <li><a href="#">最近流行</a></li>
                        <li><a href="#">新秀菜谱</a></li>
                        <li><a href="#">月度最佳</a></li>
                        <li><a href="#">最新创建</a></li>
                    </ul>
                </div>
                <div class="menu2 pure-menu pure-menu-open">
                    <ul>
                        <div class="hot-name"><li><a href="#">热门菜品</a></li> </div>
                        <li><a href="#">菜名第一</a></li>
                        <li><a href="#">菜名第一</a></li>
                        <li><a href="#">菜名第二</a></li>
                        <li><a href="#">菜名第三</a></li>
                        <li><a href="#">菜名第四</a></li>
                    </ul>
                </div>
            </div>
            <div class="dl-list">
                <g:each in="${dishList}">
                    <g:link controller="menu" action="dishDetail" params="[dishId: it.id]">
                        <div class="dl-block">
                            <div class="dl-img">
                                <img src="${resource(dir:'images/dish/' + it.chef.id, file: it.image)}" class="lh-img pure-img" />
                            </div>
                            <div class="dl-content">
                                <div class="dl-name">
                                    <div class="dl-name1">
                                        ${it.name}
                                    </div>
                                    <div class="dl-dish-type">
                                        川菜 <!-- 不清楚!! -->
                                    </div>
                                </div>
                                <div class="dl-intro">
                                    ${it.shortDescription}
                                </div>
                                <div class="dl-rate">
                                    综合评分： <div class="dl-rate-score">${it.rate}</div>  ( ${it.visit} 吃过 )
                                </div>
                                <div class="dl-content-bottom">
                                    <div class="dl-dish-chef">
                                        小厨： <g:link controller="chef" action="getChefById" params="[chefId: it.chef.id]">${it.chef.name}</g:link>
                                    </div>
                                    <div class="dl-dish-price">
                                        $${it.price}
                                    </div>
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

        <div class="dl-right">
            <div class="ad-banner1">
                <img src="${resource(dir: 'images', file: 'dd-ad.png')}" class="pure-img">
            </div>
            <div class="dl-sim-dish">
                <div class="dl-sim-dish-title">
                    和鱼香肉丝类似的小菜
                </div>
                <div class="dl-sim-dish-row">
                    <div class="pure-menu pure-menu-open pure-menu-horizontal">
                        <ul>
                            <li><a href="#">回锅肉</a></li>
                            <li><a href="#">鱼香肉丝</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dl-sim-dish-row">
                    <div class="pure-menu pure-menu-open pure-menu-horizontal">
                        <ul>
                            <li><a href="#">回锅肉</a></li>
                            <li><a href="#">鱼香肉丝</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dl-sim-dish-row">
                    <div class="pure-menu pure-menu-open pure-menu-horizontal">
                        <ul>
                            <li><a href="#">回锅肉</a></li>
                            <li><a href="#">鱼香肉丝</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dl-sim-dish-row">
                    <div class="pure-menu pure-menu-open pure-menu-horizontal">
                        <ul>
                            <li><a href="#">回锅肉</a></li>
                            <li><a href="#">鱼香肉丝</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dl-sim-dish-row">
                    <div class="pure-menu pure-menu-open pure-menu-horizontal">
                        <ul>
                            <li><a href="#">回锅肉</a></li>
                            <li><a href="#">鱼香肉丝</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<g:render template="/template/foot_template" />
</body>
</html>