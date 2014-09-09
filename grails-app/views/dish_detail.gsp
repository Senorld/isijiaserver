<%--
  Created by IntelliJ IDEA.
  User: Sui
  Date: 2014/9/3
  Time: 18:56
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>鱼香肉丝(甜甜圈不辣)</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pure.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'dd.css')}">
</head>

<body>
<div class="content">
    <g:render template="/template/nav_template" />
        <g:render template="/template/search_template" />
    <div class="dd">
        <div class="dd-left">
            <div class="dd-intro">
                <div class="dd-buy">
                    <div class="dd-pic">
                        <img src="${resource(dir:'images/dish/' + dishDetail.chefId, file: dishDetail.image)}" class="pure-img" />
                    </div>
                    <div class="dd-other">
                        <div class="dd-name">
                            <div class="dd-name1">
                                ${dishDetail.name}
                            </div>
                            <div class="dd-dish-type">
                                ${dishDetail.dishOrigin}
                            </div>
                            <div class="dd-short-intro">
                                ${dishDetail.shortDescription}
                            </div>
                        </div>
                        <div class="dd-price">
                            <div class="dd-price-wrap">
                                价格
                                <div class="dd-price-money">
                                $${dishDetail.price}
                                </div>
                            </div>
                            <div class="dd-price-rate">
                                综合评分 ${dishDetail.rate}
                            </div>
                        </div>
                        <div class="dd-buy-button">
                            <button class="cart-button pure-button">加入购物车</button>
                            <button class="wish-button pure-button">收藏</button>
                        </div>
                        <div class="dd-share">
                            分享
                        </div>
                    </div>
                </div>
                <div class="dd-txt">
                     <div class="dd-avatar">
                            <div class="dd-avatar-img">
                                <img src="${resource(dir:'images', file: 'avatar3.jpg')}" class="pure-img round_photo" />
                            </div>
                            <div class="dd-avatar-name">
                            ${dishDetail.chef.name}
                            </div>
                     </div>
                     <div class="dd-txt-info">
                         ${dishDetail.description}
                     </div>
                </div>
            </div>
            <div class="dd-chef-other">
                 <div class="dd-chef-other-name">
                        ${dishDetail.chef.name}的其他菜谱
                 </div>
                 <div class="dd-chef-other-pics">
                        <div class="dd-chef-other-item">
                            <div class="dd-chef-other-pic">
                                <img src="${resource(dir:'images', file: 'yxrs1.png')}" class="pure-img" />
                            </div>
                            <div class="dd-chef-other-pic-title">
                                鱼香肉丝
                            </div>
                        </div>
                         <div class="dd-chef-other-item">
                             <div class="dd-chef-other-pic">
                                 <img src="${resource(dir:'images', file: 'yxrs2.png')}" class="pure-img" />
                             </div>
                             <div class="dd-chef-other-pic-title">
                                 鱼香肉丝
                             </div>
                         </div>
                         <div class="dd-chef-other-item">
                             <div class="dd-chef-other-pic">
                                 <img src="images/yxrs3.png" class="pure-img" />
                             </div>
                             <div class="dd-chef-other-pic-title">
                                 鱼香肉丝
                             </div>
                         </div>
                         <div class="dd-chef-other-item">
                             <div class="dd-chef-other-pic">
                                 <img src="images/yxrs4.png" class="pure-img" />
                             </div>
                             <div class="dd-chef-other-pic-title">
                                 鱼香肉丝
                             </div>
                         </div>
                 </div>

                <div class="dd-chef-other-name">
                    喜欢鱼香肉丝的人也喜欢
                </div>
                <div class="dd-chef-other-pics" style="margin-top: 15px;">
                    <div class="dd-chef-other-item">
                        <div class="dd-chef-other-pic">
                            <img src="images/yxrs5.png" class="pure-img" />
                        </div>
                        <div class="dd-chef-other-pic-title">
                            鱼香肉丝
                        </div>
                    </div>
                    <div class="dd-chef-other-item">
                        <div class="dd-chef-other-pic">
                            <img src="images/yxrs6.png" class="pure-img" />
                        </div>
                        <div class="dd-chef-other-pic-title">
                            鱼香肉丝
                        </div>
                    </div>
                    <div class="dd-chef-other-item">
                        <div class="dd-chef-other-pic">
                            <img src="images/yxrs7.png" class="pure-img" />
                        </div>
                        <div class="dd-chef-other-pic-title">
                            鱼香肉丝
                        </div>
                    </div>
                    <div class="dd-chef-other-item">
                        <div class="dd-chef-other-pic">
                            <img src="images/yxrs8.png" class="pure-img" />
                        </div>
                        <div class="dd-chef-other-pic-title">
                            鱼香肉丝
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="dd-right">
            <img src="${resource(dir: 'images', file: 'dd-ad.png')}" class="pure-img">
        </div>

    </div>

</div>
<g:render template="/template/foot_template" />
</body>


</html>