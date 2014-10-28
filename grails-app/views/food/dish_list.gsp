<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 10/20/2014
  Time: 10:06 PM
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
<!--左侧菜单列表-->
<div class="col-md-2">
    <!-- 分类区 -->
    <div class="row">
        <ul class="nav nav-pills nav-stacked" role="tablist">
            <li role="presentation"><a href="#">全部分类</a></li>
            <li role="presentation"><a href="#">最近流行</a></li>
            <li role="presentation" class="active"><a href="#">热门菜品</a></li>
            <li role="presentation"><a href="#">月度最佳</a></li>
        </ul>
    </div>
    <!-- END OF 分类区 -->

    <!-- 热门菜品 -->
    <div class="row" style="margin-top: 30px">
        <div class="panel panel-success">
            <div class="panel-heading">热门菜品</div>
            <div class="panel-body">
                <table class="table-hover" width="100%">
                    <tr>
                        <td width="100%" height="35px">鱼香肉丝</td>
                    </tr>
                    <tr>
                        <td width="100%" height="35px">东北大骨头</td>
                    </tr>
                    <tr>
                        <td width="100%" height="35px">干锅娃娃菜</td>
                    </tr>
                    <tr>
                        <td width="100%" height="35px">地皮炒鸡蛋</td>
                    </tr>
                    <tr>
                        <td width="100%" height="35px">龙抄手</td>
                    </tr>
                    <tr>
                        <td width="100%" height="35px">霸王别鸡</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <!-- END OF 热门菜品 -->

</div>
<!--END OF 左侧菜单列表-->

<!--中间菜品列表-->
<div class="col-md-7">
    <table class="table-hover" style="width: 100%">
        <g:if test="${resultList?.size() > 0}">
            <g:each in="${resultList}">
                <tr>
                    <td width="35%">
                        <g:if test="${it.images.size() > 0}">
                            <img src="${createLink(uri: '/') + it.images.image.first()}" style="margin: 5px" class="img-rounded">
                        </g:if>

                    </td>
                    <td>
                        <h4>${it.name}  <span class="label label-danger">${it.dishFlavor}</span> </h4>
                        <p>${it.shortDescription}</p>
                        <p>${it.visit} 次</p>
                    </td>
                </tr>
            </g:each>
        </g:if>
        <g:else>
            找不到
        </g:else>
    </table>
    <div class="row">
        <div align="center">
            <ul class="pagination pagination-lg">
                <g:if test="${pages > 0}">
                    <g:each in="${1..pages}" var="pageNumber" status="i">
                        <li class=""><a href="${createLink(action:'foodSearch', params: [keyWord: params.keyWord, offset: i*limit])}">${i+1}<span class="sr-only">(current)</span></a></li>
                    </g:each>
                </g:if>
            </ul>
        </div>
    </div>
</div>
<!--END OF 中间菜品列表-->

<!--右侧广告位区间-->
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

    <!-- 分类展示区 -->
    <div class="row">
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" style="margin-left: 10px">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            亚洲美食
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel">
                    <div class="panel-body">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            欧洲美食
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel">
                    <div class="panel-body">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            岛国风情
                        </a>
                    </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel">
                    <div class="panel-body">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                </div>
            </div>
        </div>
    </div>

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

</div>
<!--END OF 右侧广告位区间-->
</div>
</div>
<div class="col-md-2"></div>
</div>
</div>
<!-- END OF FOOTER-->
<asset:javascript src="application.js"/>
<asset:javascript src="holder.js"/>
</body>
</html>