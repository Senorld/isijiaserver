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
         <div class="cl-block">
             <div class="cl-img">
                 <a href="#"><img src="${resource(dir: 'images', file: 'avatar1.jpg')}" class="pure-img"></a>
             </div>
             <div class="cl-content">
                <div class="cl-name">
                    <a href="#">甜甜圈不辣</a>
                </div>
                 <div class="cl-chef-info">
                      <div class="cl-chef-gender">女</div>    <div class="cl-chef-loc">法拉盛</div>     <div class="cl-chef-join-time">2014-08-07加入</div>
                 </div>
                 <div class="cl-chef-intro">
                        无辣不欢  无肉不欢的小圆球一枚  北京土著大妞，大米帝国时差党
                 </div>
             </div>
         </div>
        <div class="cl-block">
            <div class="cl-img">
                <a href="#"><img src="${resource(dir: 'images', file: 'avatar2.jpg')}" class="pure-img"></a>
            </div>
            <div class="cl-content">
                <div class="cl-name">
                    <a href="#">甜甜圈不辣</a>
                </div>
                <div class="cl-chef-info">
                    <div class="cl-chef-gender">女</div>    <div class="cl-chef-loc">法拉盛</div>     <div class="cl-chef-join-time">2014-08-07加入</div>
                </div>
                <div class="cl-chef-intro">
                    无辣不欢  无肉不欢的小圆球一枚  北京土著大妞，大米帝国时差党
                </div>
            </div>
        </div>
        <div class="cl-block">
            <div class="cl-img">
                <a href="#"><img src="${resource(dir: 'images', file: 'avatar3.jpg')}" class="pure-img"></a>
            </div>
            <div class="cl-content">
                <div class="cl-name">
                    <a href="#">甜甜圈不辣</a>
                </div>
                <div class="cl-chef-info">
                    <div class="cl-chef-gender">女</div>    <div class="cl-chef-loc">法拉盛</div>     <div class="cl-chef-join-time">2014-08-07加入</div>
                </div>
                <div class="cl-chef-intro">
                    无辣不欢  无肉不欢的小圆球一枚  北京土著大妞，大米帝国时差党
                </div>
            </div>
        </div>
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