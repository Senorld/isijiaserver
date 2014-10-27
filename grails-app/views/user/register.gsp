<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 10/23/2014
  Time: 10:35 PM
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
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title">欢迎加入私家</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-6">
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs">
                                            <li class="${!params.role || params?.role == 'ROLE_USER' ? 'active' : ''}"><a href="#user" data-toggle="tab">我是食客</a></li>
                                            <li class="${params?.role == 'ROLE_CHEF' ? 'active' : ''}"><a href="#chef" data-toggle="tab">我是小厨</a></li>
                                        </ul>
                                        <g:if test="${result?.success == false}">
                                            <div class="bg-danger" style="margin-top: 10px;">
                                                ${result.message}
                                            </div>
                                        </g:if>

                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div class="tab-pane ${params?.role == 'ROLE_CHEF' ? 'active' : ''}" id="chef">
                                                <g:form url="[action: 'member']" name="chefForm" method="post">
                                                    <input type="hidden" name="role" value="ROLE_CHEF"/>
                                                    <table style="margin: 20px" width="100%">
                                                        <tr>
                                                            <td align="center" width="20%">邮箱</td>
                                                            <td><div class="form-group" style="width: 90%"><input type="email" class="form-control" name="email" value="${params.email}"></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" width="20%">密码</td>
                                                            <td><div class="form-group" style="width: 90%"><input type="password" class="form-control" name="password" value=""></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" width="20%">名字</td>
                                                            <td><div class="form-group" style="width: 90%"><input type="text" class="form-control" placeholder="" name="name" value="${params.name}"></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" width="20%">电话</td>
                                                            <td><div class="form-group" style="width: 90%"><input type="email" class="form-control" placeholder="" name="phoneNumber" value="${params.phoneNumber}"></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" width="20%">地址1</td>
                                                            <td><div class="form-group" style="width: 90%"><input type="text" class="form-control" placeholder="" name="address1" value="${params.address1}"></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" width="20%">地址2</td>
                                                            <td><div class="form-group" style="width: 90%"><input type="text" class="form-control" placeholder="" name="address2" value="${params.address2}"></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" width="20%">城市</td>
                                                            <td><div class="form-group" style="width: 90%"><input type="text" class="form-control" placeholder="" name="city" value="${params.city}"></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" width="20%">州</td>
                                                            <td><div class="form-group" style="width: 90%">
                                                                <div class="pure-control-group">
                                                                    <select id="stats" name="stats">
                                                                        <option value="NY">New York</option>
                                                                        <option value="AL">Alabama</option>
                                                                        <option value="AK">Alaska</option>
                                                                        <option value="AZ">Arizona</option>
                                                                        <option value="AR">Arkansas</option>
                                                                        <option value="CA">California</option>
                                                                        <option value="CO">Colorado</option>
                                                                        <option value="CT">Connecticut</option>
                                                                        <option value="DE">Delaware</option>
                                                                        <option value="DC">District Of Columbia</option>
                                                                        <option value="FL">Florida</option>
                                                                        <option value="GA">Georgia</option>
                                                                        <option value="HI">Hawaii</option>
                                                                        <option value="ID">Idaho</option>
                                                                        <option value="IL">Illinois</option>
                                                                        <option value="IN">Indiana</option>
                                                                        <option value="IA">Iowa</option>
                                                                        <option value="KS">Kansas</option>
                                                                        <option value="KY">Kentucky</option>
                                                                        <option value="LA">Louisiana</option>
                                                                        <option value="ME">Maine</option>
                                                                        <option value="MD">Maryland</option>
                                                                        <option value="MA">Massachusetts</option>
                                                                        <option value="MI">Michigan</option>
                                                                        <option value="MN">Minnesota</option>
                                                                        <option value="MS">Mississippi</option>
                                                                        <option value="MO">Missouri</option>
                                                                        <option value="MT">Montana</option>
                                                                        <option value="NE">Nebraska</option>
                                                                        <option value="NV">Nevada</option>
                                                                        <option value="NH">New Hampshire</option>
                                                                        <option value="NJ">New Jersey</option>
                                                                        <option value="NM">New Mexico</option>
                                                                        <option value="NC">North Carolina</option>
                                                                        <option value="ND">North Dakota</option>
                                                                        <option value="OH">Ohio</option>
                                                                        <option value="OK">Oklahoma</option>
                                                                        <option value="OR">Oregon</option>
                                                                        <option value="PA">Pennsylvania</option>
                                                                        <option value="RI">Rhode Island</option>
                                                                        <option value="SC">South Carolina</option>
                                                                        <option value="SD">South Dakota</option>
                                                                        <option value="TN">Tennessee</option>
                                                                        <option value="TX">Texas</option>
                                                                        <option value="UT">Utah</option>
                                                                        <option value="VT">Vermont</option>
                                                                        <option value="VA">Virginia</option>
                                                                        <option value="WA">Washington</option>
                                                                        <option value="WV">West Virginia</option>
                                                                        <option value="WI">Wisconsin</option>
                                                                        <option value="WY">Wyoming</option>
                                                                    </select>
                                                                </div>

                                                            </div></td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td><div class="form-group"><input type="checkbox"> 我已经阅读并接受私家的<font color="#a52a2a"><a href="${resource(dir: 'file', file: 'policy.pdf')}" target="_blank"> 《使用协议》</a></font> </div></td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td><div class="form-group"><input type="submit" class="btn btn-default" value="注册"></div></td>
                                                        </tr>
                                                    </table>
                                                </g:form>


                                            </div>
                                            <div class="tab-pane ${!params?.role || params?.role == 'ROLE_USER' ? 'active' : ''}" id="user">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <g:form action="member" method="post">
                                                            <input type="hidden" name="role" value="ROLE_USER"/>
                                                            <table style="margin: 20px" width="100%">
                                                                <tr>
                                                                    <td align="center" width="20%">邮箱</td>
                                                                    <td><div class="form-group" style="width: 90%"><input type="email" class="form-control" name="email" value="${params.email}"></div></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" width="20%">密码</td>
                                                                    <td><div class="form-group" style="width: 90%"><input type="password" class="form-control" name="password"></div></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" width="20%">名字</td>
                                                                    <td><div class="form-group" style="width: 90%"><input type="text" class="form-control" name="name" placeholder="" value="${params.name}"></div></td>
                                                                </tr>
                                                                <tr>
                                                                    <td></td>
                                                                    <td><div class="form-group"><input type="checkbox"> 我已经阅读并接受私家的<font color="#a52a2a"><a href="${resource(dir: 'file', file: 'policy.pdf')}" target="_blank"> 《使用协议》</a></font> </div></td>
                                                                </tr>
                                                                <tr>
                                                                    <td></td>
                                                                    <td><div class="form-group"><input type="submit" class="btn btn-default" value="注册"></div></td>
                                                                </tr>
                                                            </table>
                                                        </g:form>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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