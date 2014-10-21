<%@ page import="grails.plugin.springsecurity.SpringSecurityUtils" %>
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
            <sec:ifNotLoggedIn>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">登陆</a></li>
                    <li><a href="#">注册</a></li>
                </ul>

            </sec:ifNotLoggedIn>

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
                <a href="${createLink(uri: "/")}" class="col-md-2" style="height: 80px; text-decoration: none;">
                    <h1 style="margin-top: -5px; color: black;">私家<br><small>isijia.co</small></h1>
                </a>
                <div class="col-md-6">
                    <g:form controller="menu" action="foodSearch" method="get">
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
                        <input type="text" class="form-control" name="keyWord" value="${params.keyWord ?: ''}">
                        <div class="input-group-btn">
                            <input type="submit" class="btn btn btn-success" value="搜索" />
                        </div>
                    </div><!-- /input-group -->
                    </g:form>
                </div>
                <div class="col-md-3 col-md-offset-1">
                    <sec:ifLoggedIn>
                        <div class="alert alert-warning">
                            <div>Welcome ${user.name}
                                <g:link controller='logout' class="btn btn-default">Logout</g:link></div>
                        </div>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>

                        <button type="button" class="btn btn btn-warning" data-toggle="modal" data-target="#login">登陆</button>
                        <button type="button" class="btn btn btn-success" data-toggle="modal" data-target="#reg">注册</button>

                    </sec:ifNotLoggedIn>
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
                                <form action="${request.contextPath}${SpringSecurityUtils.securityConfig.apf.filterProcessesUrl}" method='POST' autocomplete='off'>
                                    <div class="input-group margin-bottom-sm">
                                        <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Email address" name="j_username">
                                    </div>
                                    <div class="input-group" style="margin-top: 10px">
                                        <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                                        <input class="form-control" type="password" placeholder="Password" name="j_password">
                                    </div>
                                    <p align="right" style="margin-top: 10px"><input type="submit" class="btn btn-success" value="登陆" /></p>
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