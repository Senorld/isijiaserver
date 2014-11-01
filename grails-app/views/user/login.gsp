<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 10/23/2014
  Time: 10:35 PM
--%>

<%@ page import="grails.plugin.springsecurity.SpringSecurityUtils" contentType="text/html;charset=UTF-8" %>
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
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">欢迎登入私家</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                            <form action="${request.contextPath}${SpringSecurityUtils.securityConfig.apf.filterProcessesUrl}" method='POST' autocomplete='on'>
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
                        <div class="col-md-3"></div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="col-md-3">

        <div class="list-group">
            <a href="#" class="list-group-item">
                <h4 class="list-group-item-heading">预留栏位</h4>
                <p class="list-group-item-text">三部门发文，取消住房公积金个人住房贷款保险、公证、新房评估和强制性机构担保等收费项目，减轻贷款职工负担</p>
            </a>
            <a href="#" class="list-group-item">
                <h4 class="list-group-item-heading">预留栏位</h4>
                <p class="list-group-item-text">取消住房公积金个人住房贷款保险、公证、新房评估和强制性机构担保等收费项目</p>
            </a>
            <a href="#" class="list-group-item active">
                <h4 class="list-group-item-heading">预留栏位</h4>
                <p class="list-group-item-text">取消住房公积金个人住房贷款保险、公证、新房评估和强制性机构担保等收费项目</p>
            </a>
            <a href="#" class="list-group-item">
                <h4 class="list-group-item-heading">预留栏位</h4>
                <p class="list-group-item-text">Do something here</p>
            </a>
        </div>


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
<script>
</script>
</body>
</html>