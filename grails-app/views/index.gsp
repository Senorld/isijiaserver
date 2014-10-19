<!DOCTYPE html>
<html>
<head lang="zh">
    <meta charset="UTF-8">
    <title>菜品</title>

    <!-- Bootstrap 组件 -->
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <asset:stylesheet src="application.css"/>
</head>
<body>
<!-- 顶部导航栏 -->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">

        <!-- 手机客户端增强效果 随分辨率自动切换到手机浏览模式 -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">登陆</a></li>
                <li><a href="#">注册</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">我的订单</a></li>
                <li><a href="#">我的小厨</a></li>
                <li><a href="#">最近浏览</a></li>
                <li><a href="#">购物车</a></li>
                <li><a href="#">联系客服</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">更多 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- END OF 顶部导航栏 -->

<!-- LOGO\搜索\登陆区-->
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2" style="height: 80px"></div>
        <div class="col-md-8" style="height: 80px">
            <div class="row">
                <div class="col-md-2" style="height: 80px">
                    <h1 style="margin-top: -5px">私家<br><small>isijia.co</small></h1>
                </div>
                <div class="col-md-6">
                    <div class="input-group">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">法拉盛 <span class="caret"></span></button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        <input type="text" class="form-control">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn btn-success">搜索</button>
                        </div>
                    </div><!-- /input-group -->

%{--
                    <ul class="nav nav-pills" role="tablist" style="margin-top: 2px">
                        <li role="presentation"><a href="#">水饺</a></li>
                        <li role="presentation"><a href="#">火锅</a></li>
                        <li role="presentation"><a href="#">红烧肉</a></li>
                        <li role="presentation"><a href="#">中餐</a></li>
                        <li role="presentation"><a href="#">鱼香肉丝</a></li>
                        <li role="presentation"><a href="#">拉面</a></li>
                        <li role="presentation"><a href="#">猪肉炖粉条</a></li>
                        <li role="presentation"><a href="#">米粉蒸鸡翅</a></li>
                    </ul>
--}%

                </div>

                <div class="col-md-3 col-md-offset-1">
                    <button type="button" class="btn btn btn-warning" data-toggle="modal" data-target="#login">登陆</button>
                    <button type="button" class="btn btn btn-success" data-toggle="modal" data-target="#reg">注册</button>
                </div>

                <!--登陆模块-->

                <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" style="width: 15%">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myModalLabel" style="color: #419641">欢迎登陆私家</h4>
                            </div>
                            <div class="modal-body">
                                <form action="" method="">
                                    <div class="input-group margin-bottom-sm">
                                        <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Email address">
                                    </div>
                                    <div class="input-group" style="margin-top: 10px">
                                        <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                                        <input class="form-control" type="password" placeholder="Password">
                                    </div>
                                    <p align="right" style="margin-top: 10px"><button type="button" class="btn btn-success" data-dismiss="modal">登陆</button></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!--END OF 登陆模块-->

                <!-- 注册模块 Modal -->
                <div class="modal fade" id="reg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" style="width: 20%">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myModalLabel" style="color: #419641">欢迎加入私家</h4>
                            </div>
                            <div class="modal-body">

                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="active" style="a:focus{}"><a href="#home" role="tab" data-toggle="tab">我是厨师</a></li>
                                    <li><a href="#profile" role="tab" data-toggle="tab">我是食客</a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <!--注册表单-->
                                        <form role="form" style="margin-top: 10px">
                                            <div class="form-group">
                                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="邮箱">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="密码">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" id="name" placeholder="名字">
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 我已经认真阅读并接受私家的《使用协议》
                                                </label>
                                            </div>
                                        </form>
                                        <!--END OF 注册表单-->
                                    </div>
                                    <div class="tab-pane" id="profile">
                                        <!--注册表单-->
                                        <form role="form" style="margin-top: 10px">
                                            <div class="form-group">
                                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="邮箱">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="密码">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" id="name" placeholder="名字">
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 我已经认真阅读并接受私家的《使用协议》
                                                </label>
                                            </div>
                                        </form>
                                        <!--END OF 注册表单-->
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <p align="left">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">注册</button>
                                <h5 style="color: #843534">已有账号，直接登陆</h5>
                            </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END OF 注册模块 Modal -->

            </div>
        </div>
        <div class="col-md-2" style="height: 80px"></div>
    </div>
</div>
<!-- END OF LOGO\搜索\登陆区-->

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
                <div class="col-md-2">
                    <div align="center">
                        <img src="${createLink(uri: '/') + it.profile}" class="img-thumbnail user">
                        <div class="caption">
                            <h5 align="center">${it.name}</h5>
                            <p align="center">${it.visit}位食客</p>
                        </div>
                    </div>
                </div>
            </g:each>

            </div>
        </div>

        <div class="panel-body">
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
        </div>

    </div>
</div>
<!--  END OF 热门小厨  -->

<!-- 最近热门 -->

<div class="row">
    <div class="panel panel-warning"">
    <div class="panel-heading">
        <h3 class="panel-title">最近热门</h3>
    </div>
    <div class="panel-body">
        <div class="row">
        <g:each status="i" in="${hotDishList}" var="it" >


            <g:link controller="menu" action="dishDetail" params="[dishId: it.id]">
                <div class="col-md-3">
                    <div>
                        <img src="${createLink(uri: '/') + it.image}" class="img-thumbnail dish">
                        <div class="caption">
                            <h4><font color="#a52a2a">${it.name}</font></h4>
                            <p>${it.shortDescription}</p>
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
    <div class="row">
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
    </div>
    <!-- END OF 热门小菜 -->

    <!-- 美食广告位 -->
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
<!-- FOOTER -->
<div class="container-fluid">
    <div class="row">
        <hr style="border:5px solid #4cae4c;">
        <div class="col-md-2" style="margin-top: -20px; background-color:#f7ecb5; height: 300px"></div>
        <div class="col-md-4" style="margin-top: -20px; background-color:#f7ecb5; height: 300px"></div>
        <div class="col-md-1" style="margin-top: -20px; background-color:#f7ecb5; height: 300px" align="center">
            <!--
                <ul class="nav nav-pills nav-stacked" role="tablist" style=" margin-top: 10px">
                    <li role="presentation"><h4>获取更新</h4></li>
                    <li role="presentation"><a href="#">邮件订阅</a></li>
                    <li role="presentation"><a href="#">RSS 订阅</a></li>
                    <li role="presentation"><a href="#">Sitemap</a></li>
                </ul>
                -->
        </div>
        <div class="col-md-1" style="margin-top: -20px; background-color:#f7ecb5; height: 300px" align="center">
            <!--
                <ul class="nav nav-pills nav-stacked" role="tablist" style=" margin-top: 10px">
                    <li role="presentation"><h4>商务合作</h4></li>
                    <li role="presentation"><a href="#">广告联系</a></li>
                    <li role="presentation"><a href="#">我要开店</a></li>
                    <li role="presentation"><a href="#">市场合作</a></li>
                </ul>
                -->
        </div>
        <div class="col-md-1" style="margin-top: -20px; background-color:#f7ecb5; height: 300px" align="center">
            <!--
                <ul class="nav nav-pills nav-stacked" role="tablist" style=" margin-top: 10px">
                    <li role="presentation"><h4>公司信息</h4></li>
                    <li role="presentation"><a href="#">关于私家</a></li>
                    <li role="presentation"><a href="#">媒体报道</a></li>
                    <li role="presentation"><a href="#">加入我们</a></li>
                </ul>
                -->
        </div>
        <div class="col-md-1" style="margin-top: -20px; background-color:#f7ecb5; height: 300px" align="center">
            <!--
                <ul class="nav nav-pills nav-stacked" role="tablist" style=" margin-top: 10px">
                    <li role="presentation"><h4>用户指南</h4></li>
                    <li role="presentation"><a href="#">新手指南</a></li>
                    <li role="presentation"><a href="#">付款与保障</a></li>
                    <li role="presentation"><a href="#">外卖服务</a></li>
                </ul>
                -->
        </div>
        <div class="col-md-2" style="margin-top: -20px; background-color:#f7ecb5; height: 300px"></div>
    </div>
</div>


<!-- END OF FOOTER-->
<asset:javascript src="application.js"/>
<asset:javascript src="holder.js"/>
</body>
</html>