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
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <asset:stylesheet src="application.css"/>
</head>

<body>
<g:render template="/template/nav_header"/>

<!-- Modal -->
<div class="modal fade" id="reviewBox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="position: initial;">
        <div class="modal-content">
            <g:form controller="menu" action="postReview">
                <input type="hidden" name="dishId" value="${dishDetail.id}"/>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">評論 ${dishDetail.name}</h4>
                </div>
                <div class="modal-body">
                    <textarea name="review" class="form-control" rows="3"></textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary" value="評論">
                </div>
            </g:form>

        </div>

    </div>
</div>

<!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
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

<div class="container-fluid">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-8">
<div class="row">

<div class="col-md-9">
<div class="row">
    <!-- 菜品展示区-->
    <div class="col-md-8">

        <div id="links">

            <!-- 大图片展示区 -->
            <div class="row">
                <div class="thumbnail">
                    <g:if test="${dishDetail.images.size() > 0}">
                        <img src="${createLink(uri: '/') + dishDetail.images.image.first()}">
                    </g:if>

                </div>
            </div>
            <!-- END OF 大图片展示区 -->

            <div class="row">

                <g:each in="${dishDetail.images}">
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <a href="${createLink(uri: '/') + it.image}" title="${it.id}" data-gallery>
                                <img src="${createLink(uri: '/') + it.image}" alt="${it.id}">
                            </a>
                        </div>

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
                                <strong>${dishDetail.chef.email}</strong>
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
                    <td colspan="2" style="text-align: left; padding-left: 5px;">
                        <g:link controller="memberOrder" action="checkoutPage" params="[dishId: dishDetail.id]" class="btn btn-danger btn-lg">点击购买</g:link>
                    </td>
                    <td style="text-align: right">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#reviewBox">
                            評論
                        </button>

                    </td>

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
    <li class="active"><a href="#description" role="tab" data-toggle="tab">小菜介绍</a></li>
    <li><a href="#review" role="tab" data-toggle="tab">评论留言</a></li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <!-- 小菜介绍-->
    <div class="tab-pane active" id="description" align="left">
        <div class="panel panel-warning" style="margin-top: 10px">
            <div class="panel-heading">
                <p>
                    ${dishDetail.description}
                </p>
            </div>
        </div>
    </div>
    <!-- END OF 小菜介绍-->

    <div class="tab-pane" id="review">
        <g:render template="/template/review_template"/>
    </div>
</div>
</div>
<!-- END OF 菜品文字详细介绍区 -->

<!-- 相关图片列表区-->
<div class="row">
    <p align="left"><span class="label label-warning">相關的其他菜谱</span></p>
    <g:each in="${relatedDish}">
        <div class="col-md-3">
            <div  class="thumbnail">
                <a href="${createLink(controller: 'menu', action: 'dishDetail', params: [dishId: it.id])}" title="${it.name}">
                    <g:if test="${it.images.image.size() > 0}">
                        <img src="${createLink(uri: '/') + it.images.image.first()}">
                    </g:if>
                    <div>${it.name}</div>
                </a>
            </div>


        </div>
    </g:each>
</div>
<!-- END OF 相关图片列表区-->


</div>

<div class="col-md-3">
    <div class="row">
        <div class="thumbnail" style="margin-left: 10px">
            <img src="${resource(dir: 'images', file: 'AD-1.jpg')}" alt="...">
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
            <img src="${resource(dir: 'images', file: 'AD-2.jpg')}" alt="...">
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
<script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
</body>
</html>