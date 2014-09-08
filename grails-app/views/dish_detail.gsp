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

    <title>注册</title>

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
                        <img src="images/yxrs.png" class="pure-img" />
                    </div>
                    <div class="dd-other">
                        <div class="dd-name">
                            <div class="dd-name1">
                                鱼香肉丝
                            </div>
                            <div class="dd-dish-type">
                                川菜
                            </div>
                            <div class="dd-short-intro">
                                简短的介绍，可以简短一点，也不要那么简短，不突破两三行即可。
                            </div>
                        </div>
                        <div class="dd-price">
                            <div class="dd-price-wrap">
                                价格
                                <div class="dd-price-money">
                                $6.99
                                </div>
                            </div>
                            <div class="dd-price-rate">
                                综合评分 7.5 (86吃过)
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
                                <img src="images/avatar3.jpg" class="pure-img round_photo" />
                            </div>
                            <div class="dd-avatar-name">
                            甜甜圈不辣
                            </div>
                     </div>
                     <div class="dd-txt-info">
                         鱼香肉丝是一道地道川菜。 主要是用糖和醋来进行调味，以酸甜味为主，可以和黑木耳、笋来进行搭配，做出的菜品色泽极佳。 鱼香是川菜主要传统味型之一。成菜具有鱼香味，但其味并不来自鱼，而是泡红辣椒、葱、姜、蒜、糖、盐、酱油等调味品调制而成。此法源出于四川民间独具特色的烹鱼调味方法，而今已广泛用于川味的熟菜中，具有咸、酸、甜、辣、香、鲜和浓郁的葱、姜、蒜味的特色。
                     </div>
                </div>
            </div>
            <div class="dd-chef-other">
                 <div class="dd-chef-other-name">
                        小厨甜甜圈不辣的其他菜谱
                 </div>
                 <div class="dd-chef-other-pics">
                        <div class="dd-chef-other-item">
                            <div class="dd-chef-other-pic">
                                <img src="images/yxrs1.png" class="pure-img" />
                            </div>
                            <div class="dd-chef-other-pic-title">
                                鱼香肉丝
                            </div>
                        </div>
                         <div class="dd-chef-other-item">
                             <div class="dd-chef-other-pic">
                                 <img src="images/yxrs2.png" class="pure-img" />
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
            <img src="images/dd-ad.png" class="pure-img">
        </div>

    </div>

</div>
<g:render template="/template/foot_template" />
</body>


</html>