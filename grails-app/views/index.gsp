<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="zh">
    <meta charset="UTF-8">
    <title>菜品</title>

    <!-- Bootstrap 组件 -->
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
    <link rel="stylesheet" href="css/bootstrap-image-gallery.min.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <asset:stylesheet src="application.css"/>
</head>
<body>

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-56297283-1', 'auto');
    ga('send', 'pageview');

</script>

<g:render template="/template/nav_header"/>
<!-- Banner 广告条幅区 -->
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8 thumbnail">
            <img src="images/banner.png">
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<!-- END OF Banner 广告条幅区 -->

<div class="container-fluid">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-8">
<div class="row">
<div class="col-md-9">

<!-- 轮播展示区 -->
<div class="row">
    <div id="foodPicList" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#foodPicList" data-slide-to="0" class="active"></li>
            <li data-target="#foodPicList" data-slide-to="1"></li>
            <li data-target="#foodPicList" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/food-1.jpg" alt="#" >
                <div class="carousel-caption">
                    <h3>猪肉炖粉条</h3>
                    <p>祖传秘方，好吃的不得了</p>
                </div>
            </div>
            <div class="item">
                <img src="images/food-2.jpg" alt="#" >
                <div class="carousel-caption">
                    <h3>猪肉炖粉条</h3>
                    <p>祖传秘方，好吃的不得了</p>
                </div>
            </div>

            <div class="item">
                <img src="images/food-3.jpg" alt="#">
                <div class="carousel-caption">
                    <h3>猪肉炖粉条</h3>
                    <p>祖传秘方，好吃的不得了</p>
                </div>
            </div>

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#foodPicList" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#foodPicList" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<!-- END OF 轮播展示区 -->

<!--  热门小厨  -->
<div class="row">
    <div class="panel panel-default panel-success" style="margin-top: 10px">
        <div class="panel-heading" style="background-color: #ffffff">
            <h3 class="panel-title">热门小厨</h3><br>
            <div class="row">
            <g:each in="${hotChef}">
                <g:link controller="menu" action="retrieveFoodListByChef" params="[chefId: it.id]">
                    <div class="col-md-2">
                        <div align="center">
                            <img src="${it.profile ? createLink(uri: '/') + it.profile : resource(dir: 'images', file: 'default_avatar.png')}" class="img-thumbnail user">
                            <div class="caption">
                                <h5 align="center">${it.name}</h5>
                                <p align="center">${it.likes}位食客</p>
                            </div>
                        </div>
                    </div>
                </g:link>

            </g:each>

            </div>
        </div>

%{--        <div class="panel-body">
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img data-src="holder.js/100%x200" alt="...">
                        <div class="caption">
                            <h3>糯米蒸鸡翅</h3>
                            <p>8个人品尝</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="thumbnail">
                        <img data-src="holder.js/100%x200" alt="...">
                        <div class="caption">
                            <h3>正宗佛跳墙</h3>
                            <p>2个人品尝</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="thumbnail">
                        <img data-src="holder.js/100%x200" alt="...">
                        <div class="caption">
                            <h3>枸杞炖乌鸡</h3>
                            <p>3个人品尝</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>--}%

    </div>
</div>
<!--  END OF 热门小厨  -->
<!--最新上菜-->
    <div class="row">
        <div class="panel panel-warning">
            <div class="panel-heading">
                <h3 class="panel-title">最新上菜</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <g:each in="${newDishList}">
                        <g:link controller="menu" action="dishDetail" params="[dishId: it.id]">
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <g:if test="${it.images.image.size() > 0}">
                                    <img src="${createLink(uri: '/') + it.images.image.first()}" style="max-height: 200px; min-height: 200px;">
                                </g:if>

                                <div class="caption">
                                    <h3>${it.name}</h3>
                                    <p>${it.likes}个人品尝</p>
                                </div>
                            </div>
                        </div>
                        </g:link>
                    </g:each>
                </div>

            </div>
        </div>
    </div>

<!-- 最近热门 -->

<div class="row">
    <div class="panel panel-warning">
    <div class="panel-heading">
        <h3 class="panel-title">最近热门</h3>
    </div>
    <div class="panel-body">
        <div class="row">
        <g:each status="i" in="${hotDishList}" var="it" >


            <g:link controller="menu" action="dishDetail" params="[dishId: it.id]">
                <div class="col-md-3">
                    <div class="thumbnail" style="height: 350px;">
                        <g:if test="${it.images.size() > 0}">
                            <img src="${createLink(uri: '/') + it.images.first().image}" class="dish" style="min-height: 200px; max-height: 200px;">
                        </g:if>

                        <div class="caption">
                            <h4><font color="#a52a2a">${it.name}</font></h4>
                            <p style="height: 82px; overflow: hidden">${it.shortDescription}</p>
                        </div>
                    </div>
                </div>
            </g:link>

        </g:each>
    </div>

    </div>
</div>
</div>

<!-- END OF 最近热门 -->

</div>
<div class="col-md-3">
    <!-- 热门小菜 -->
%{--    <div class="row">
        <div class="list-group" style="margin-left: 10px">
            <a href="#" class="list-group-item active">
                <h4>热门小菜</h4>
            </a>
            <a href="#" class="list-group-item"><h5>小火锅<small> by Honda</small></h5></a>
            <a href="#" class="list-group-item"><h5>巴西烤肉<small> by 老饼干</small></h5></a>
            <a href="#" class="list-group-item"><h5>红糖锅盔<small> by 小齐</small></h5></a>
            <a href="#" class="list-group-item"><h5>鱼香肉丝<small> by 兽神</small></h5></a>
            <a href="#" class="list-group-item"><h5>地皮炒鸡蛋<small> by Neil</small></h5></a>
            <a href="#" class="list-group-item"><h5>干锅排骨<small> by LittleJ</small></h5></a>
            <a href="#" class="list-group-item"><h5>老北京涮羊肉<small> by Pada</small></h5></a>
            <a href="#" class="list-group-item"><h5>炒凉粉<small>  by 小美</small></h5></a>
        </div>
    </div>--}%
    <!-- END OF 热门小菜 -->

    <!-- 美食广告位 -->
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

    <!-- 层级展开内容展示区 -->
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
    <!-- END OF 层级展开内容展示区 -->

</div>
</div>
</div>
<!-- 右侧列表区域 -->
<div class="col-md-2"></div>
<!-- 右侧列表区域 -->
</div>

<g:render template="/template/foot_template"/>

<asset:javascript src="application.js"/>
</body>
</html>