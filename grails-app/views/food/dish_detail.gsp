<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 10/21/2014
  Time: 9:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <asset:stylesheet src="application.css"/>
</head>

<body>
<g:render template="/template/nav_header"/>

<div class="container-fluid">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-8">
<div class="row">

<div class="col-md-9">
<div class="row">
    <!-- 菜品展示区-->
    <div class="col-md-8">


        <!-- 图片轮播功能区，请勿修改 -->
        <div id="blueimp-gallery" class="blueimp-gallery">
            <!-- The container for the modal slides -->
            <div class="slides"></div>
            <!-- Controls for the borderless lightbox -->
            <h3 class="title"></h3>
            <a class="prev">‹</a>
            <a class="next">›</a>
            <a class="close">×</a>
            <a class="play-pause"></a>
            <ol class="indicator"></ol>
            <!-- The modal dialog, which will be used to wrap the lightbox content -->
            <div class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" aria-hidden="true">&times;</button>
                            <h4 class="modal-title"></h4>
                        </div>
                        <div class="modal-body next"></div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left prev">
                                <i class="glyphicon glyphicon-chevron-left"></i>
                                Previous
                            </button>
                            <button type="button" class="btn btn-primary next">
                                Next
                                <i class="glyphicon glyphicon-chevron-right"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="links">
            <!-- 大图片展示区 -->
            <div class="row">
                <div class="thumbnail">
                    <g:if test="${dishDetail.images.size() > 0}">
                        <img src="${createLink(uri: '/') + dishDetail.images.first().image}">
                    </g:if>

                </div>
            </div>
            <!-- END OF 大图片展示区 -->

            <div class="row">

                <g:each in="${dishDetail.images}">
                    <div class="col-md-4">
                        <a href="${createLink(uri: '/') + it.image}" data-gallery class="thumbnail">
                            <img src="${createLink(uri: '/') + it.image}">
                        </a>
                    </div>
                </g:each>
            </div>
        </div>
    </div>
    <!--END OF 菜品展示区-->

    <!-- 个人信息区 -->
    <div class="col-md-4">
        <!-- 分类区 -->
        <div class="row">
            <div class="panel" style="margin-left: 5px">
                <div class="panel-heading"><h4>${dishDetail.name} <span class="label label-danger">${dishDetail.dishFlavor}</span></h4></div>
                <div class="panel-body">
                    <p>${dishDetail.shortDescription}</p>
                    <div class="bshare-custom"><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到腾讯微博" class="bshare-qqmb"></a><a title="分享到Facebook" class="bshare-facebook"></a><a title="分享到Twitter" class="bshare-twitter"></a><a title="分享到微信" class="bshare-weixin"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count">0</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=3&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
                </div>
            </div>
        </div>
        <!-- END OF 分类区 -->

        <!-- 热门菜品 -->
        <div class="row" style="margin-top: 0px">
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" style="margin-left: 5px">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                价格 ${dishDetail.price} USD
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel">
                        <div class="panel-body">
                            <address>
                                ${dishDetail.chef.address}<br/>
                                ${dishDetail.chef.city}, ${dishDetail.chef.zipCode} <br/>
                                ${dishDetail.chef.phoneNumber}<br/><br/>
                            </address>
                            <address>
                                <strong>${dishDetail.chef.name}</strong><br>
                                <a href="mailto:#">${dishDetail.chef.email}</a>
                            </address>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            综合评分 ${dishDetail.visit}
                        </h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <table width="100%">
                <tr>
                    <td colspan="2" style="text-align: right;"><g:link controller="memberOrder" action="checkoutPage" params="[dishId: dishDetail.id]" class="btn btn-danger btn-lg">点击购买</g:link></td>
                </tr>
            </table>
        </div>

        <!-- END OF 热门菜品 -->
    </div>
    <!--END OF 个人信息区-->
</div>

<!-- 菜品文字详细介绍区 -->
<div class="row" align="center" style="margin-top: 20px">
<table>
    <tr>
        <g:if test="${dishDetail.chef.profile != null}">
            <td><img src="${createLink(uri: '/') + dishDetail.chef.profile}" class="img-circle" style="margin: 5px; height: 100px; width: 100px;"></td>
        </g:if>

        <td>小厨<br><h4>${dishDetail.chef.name}</h4></td>
    </tr>
</table>

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist" data-tabs="tabs">
    <li class="active"><a href="#home" role="tab" data-toggle="tab">小菜介绍</a></li>
    %{--<li><a href="#profile" role="tab" data-toggle="tab">评论留言</a></li>--}%
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <!-- 小菜介绍-->
    <div class="tab-pane active" id="home" align="left">
        <div class="panel panel-warning" style="margin-top: 10px">
            <div class="panel-heading">
                <p>
                    ${dishDetail.description}
                </p>
            </div>
        </div>
    </div>
    <!-- END OF 小菜介绍-->

    <div class="tab-pane" id="profile">
        <div class="list-group" style="margin-top: 20px; background-color: #dff0d8" align="left">

            <!--留言条目-->
            <a href="" class="list-group-item">

                <div class="row">
                    <!--留言区头像-->
                    <div class="col-md-3">
                        <table>
                            <tr>
                                <td><img src="${createLink(uri: '/') + dishDetail.chef.profile}" class="img-circle" style="margin: 5px"></td>
                                <td>小厨<br><h4>${dishDetail.chef.name}</h4></td>
                            </tr>
                        </table>
                    </div>
                    <!--END OF 留言区头像-->

                    <!--留言内容-->
                    <div class="col-md-9">
                        <p>
                            <span class="label label-info">我的标签</span>
                            <span class="label label-warning">Warning</span>
                            <span class="label label-danger">Danger</span>
                        </p>
                        <p>《雨巷》是戴望舒的成名作，约作于政治风云激荡的1927年夏天。《雨巷》中狭窄阴沉的雨巷，在雨巷中徘徊的独行者，以及那个像丁香一样结着愁怨的姑娘，都是象征性的意象。</p>
                        <p align="right"><span class="label label-danger">2014年10月11日</span></p>
                    </div>
                    <!--END OF 留言内容-->
                </div>
            </a>
            <!--END OF 留言条目-->

            <!--留言条目-->
            <a href="" class="list-group-item">

                <div class="row">
                    <!--留言区头像-->
                    <div class="col-md-3">
                        <table>
                            <tr>
                                <td><img src="holder.js/90x90" class="img-circle" style="margin: 5px"></td>
                                <td>小厨<br><h4>逆风三米</h4></td>
                            </tr>
                        </table>
                    </div>
                    <!--END OF 留言区头像-->

                    <!--留言内容-->
                    <div class="col-md-9">
                        <p>
                            <span class="label label-info">我的标签</span>
                            <span class="label label-warning">Warning</span>
                            <span class="label label-danger">Danger</span>
                        </p>
                        <p>《雨巷》是戴望舒的成名作，约作于政治风云激荡的1927年夏天。《雨巷》中狭窄阴沉的雨巷，在雨巷中徘徊的独行者，以及那个像丁香一样结着愁怨的姑娘，都是象征性的意象。</p>
                        <p align="right"><span class="label label-danger">2014年10月11日</span></p>
                    </div>
                    <!--END OF 留言内容-->
                </div>
            </a>
            <!--END OF 留言条目-->

            <!--留言条目-->
            <a href="" class="list-group-item">

                <div class="row">
                    <!--留言区头像-->
                    <div class="col-md-3">
                        <table>
                            <tr>
                                <td><img src="holder.js/90x90" class="img-circle" style="margin: 5px"></td>
                                <td>小厨<br><h4>逆风三米</h4></td>
                            </tr>
                        </table>
                    </div>
                    <!--END OF 留言区头像-->

                    <!--留言内容-->
                    <div class="col-md-9">
                        <p>
                            <span class="label label-info">我的标签</span>
                            <span class="label label-warning">Warning</span>
                            <span class="label label-danger">Danger</span>
                        </p>
                        <p>《雨巷》是戴望舒的成名作，约作于政治风云激荡的1927年夏天。《雨巷》中狭窄阴沉的雨巷，在雨巷中徘徊的独行者，以及那个像丁香一样结着愁怨的姑娘，都是象征性的意象。</p>
                        <p align="right"><span class="label label-danger">2014年10月11日</span></p>
                    </div>
                    <!--END OF 留言内容-->
                </div>
            </a>
            <!--END OF 留言条目-->

        </div>
        <!-- 留言分页 -->
        <div class="row">
            <div align="center">
                <ul class="pagination">
                    <li class=""><a href="#">上一页</a></li>
                    <li class=""><a href="#">1 <span class="sr-only">(current)</span></a></li>
                    <li class=""><a href="#">2 <span class="sr-only">(current)</span></a></li>
                    <li class=""><a href="#">3 <span class="sr-only">(current)</span></a></li>
                    <li class=""><a href="#">4 <span class="sr-only">(current)</span></a></li>
                    <li class=""><a href="#">5 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">下一页</a></li>
                </ul>
            </div>
        </div>
        <!-- END OF 留言分页 -->

    </div>
</div>
</div>
<!-- END OF 菜品文字详细介绍区 -->

<!-- 相关图片列表区-->
<div class="row">
    <p align="left"><span class="label label-warning">相關的其他菜谱</span></p>
    <g:each in="${relatedDish}">
        <div class="col-md-3">
            <a href="${createLink(action: dishDetail, params: [dishId: it.id])}" title="${it.name}" data-gallery class="thumbnail">
                <g:if test="${it.images.size() > 0}">
                    <img src=""${createLink(uri: '/') + it.images.first().image}" alt="${it.name}">
                </g:if>
                <div>${it.name}</div>
            </a>

        </div>
    </g:each>
</div>
<!-- END OF 相关图片列表区-->


</div>

<div class="col-md-3">
    <div class="row">
        <div class="thumbnail" style="margin-left: 10px">
            <img src="images/AD-1.jpg" alt="...">
            <div class="caption">
                <h4>丁胖子美食广场</h4>
                <p>丁胖子美食广场位于圣盖博市区，集中了大小30余家中华美食店面</p>
            </div>
        </div>
    </div>
    <!-- END OF 美食广告位 -->

    <!-- google 广告位 -->
    <div class="row">
        <div class="thumbnail" style="margin-left: 10px">
            <img src="holder.js/100%x240/text: Google AD">
        </div>
    </div>
    <!-- END OF google 广告位 -->

    <!-- 美食广告位 -->
    <div class="row">
        <div class="thumbnail" style="margin-left: 10px">
            <img src="images/AD-2.jpg" alt="...">
            <div class="caption">
                <h4>丁胖子美食广场</h4>
                <p>丁胖子美食广场位于圣盖博市区，集中了大小30余家中华美食店面</p>
            </div>
        </div>
    </div>
    <!-- END OF 美食广告位 -->

    <!-- google 广告位 -->
    <div class="row">
        <div class="thumbnail" style="margin-left: 10px">
            <img src="holder.js/100%x240/text: Google AD">
        </div>
    </div>
    <!-- END OF google 广告位 -->

</div>

</div>

</div>
<div class="col-md-2"></div>
</div>
</div>
<asset:javascript src="application.js"/>
<asset:javascript src="holder.js"/>
</body>
</html>