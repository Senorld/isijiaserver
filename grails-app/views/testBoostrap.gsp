<!DOCTYPE html>
<html>
<head lang="zh">
    <meta charset="UTF-8">
    <title>菜品</title>

    <!-- Bootstrap 组件 -->
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">

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

                </div>

                <div class="col-md-3 col-md-offset-1">
                    <button type="button" class="btn btn btn-warning">登陆</button>
                    <button type="button" class="btn btn btn-success">注册</button>
                </div>
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
            <img src="${resource(dir: 'images', file: 'banner-2.png')}"/>
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
    <div class="panel panel-default">
        <div class="panel-body">
            <ul class="nav nav-pills">
                <li class="active"><a href="#">菜品</a></li>
                <li><a href="dealer-pingjia.html">评价</a></li>
                <li><a href="dealer-shoucang.html">收藏</a></li>
                <li><a href="dealer-liuyan.html">留言板</a></li>
                <li><a href="dealer-dingdan.html">订单管理</a></li>
                <li><a href="dealer-shezhi.html">设置</a></li>
            </ul>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-body">
            <table class="table-hover" style="width: 100%">
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>鱼香肉丝  <span class="label label-danger">川菜</span> </h4>
                        <p>就连在四川吃个鱼香肉丝都那么踩雷，上次去码头吃火锅也是逛了半天</p>
                        <p>综合评分 7.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>糖醋里脊  <span class="label label-warning">粤菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>虎皮小尖椒  <span class="label label-info">湖南菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
                <tr>
                    <td width="35%">
                        <img src="holder.js/200x100" style="margin: 5px" class="img-rounded">
                    </td>
                    <td>
                        <h4>香辣甲鱼  <span class="label label-danger">川菜</span> </h4>
                        <p>吃了这么久才找到这家店，必须支持一下</p>
                        <p>综合评分 9.5</p>
                    </td>
                </tr>
            </table>
            <div class="row">
                <div align="center">
                    <ul class="pagination pagination-lg">
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
        </div>
    </div>
</div>

<div class="col-md-3">
    <div class="row">
        <ul class="list-group" style="margin-left: 10px">
            <li class="list-group-item">
                <table>
                    <tr>
                        <td align="left">
                            <img src="holder.js/90x90" class="img-circle" style="margin: 5px">
                        </td>
                        <td>
                            <p style="margin-left: 5px; margin-top: 15px">小厨</p>
                            <h4 style="margin-left: 5px">天使海爱吃</h4>
                            <p style="margin-left: 5px"><small>2014年10月1日 加入</small></p>

                        </td>
                    </tr>
                </table>
            </li>
            <li class="list-group-item">
                <div class="row">
                    <div class="col-md-4" align="center"><p>接待食客</p><h3 style="margin-top: 2px">48</h3></div>
                    <div class="col-md-4" align="center"><p>菜品被收藏</p><h3 style="margin-top: 2px">221</h3></div>
                    <div class="col-md-4" align="center"><p>TA被关注</p><h3 style="margin-top: 2px">48</h3></div>
                </div>
            </li>
            <li class="list-group-item"><button style="width: 100%" type="button" class="btn btn btn-warning">取消关注</button></li>
        </ul>
    </div>
    <!-- END OF 美食广告位 -->

    <!-- 最新动态 -->
    <div class="row">
        <ul class="list-group" style="margin-left: 10px">
            <li class="list-group-item"><h4>TA的动态</h4></li>
            <li class="list-group-item">
                <p><span class="glyphicon glyphicon-plus-sign"></span> 添加了新菜：<font color="#8b0000">赵式粉蒸肉</font> </p>
                <p align="right"><small>2014年10月12日</small></p>
            </li>
            <li class="list-group-item">
                <p><span class="glyphicon glyphicon-heart"></span> 添加了新菜：<font color="#8b0000">赵式粉蒸肉</font> </p>
                <p align="right"><small>2014年10月12日</small></p>
            </li>
            <li class="list-group-item">
                <p><span class="glyphicon glyphicon-heart"></span> 添加了新菜：<font color="#8b0000">赵式粉蒸肉</font> </p>
                <p align="right"><small>2014年10月12日</small></p>
            </li>
            <li class="list-group-item">
                <p><span class="glyphicon glyphicon-plus-sign"></span> 添加了新菜：<font color="#8b0000">赵式粉蒸肉</font> </p>
                <p align="right"><small>2014年10月12日</small></p>
            </li>
        </ul>
    </div>
    <!-- END OF 最新动态 -->

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