<%@ page import="grails.plugin.springsecurity.SpringSecurityUtils" %>
<!-- 顶部导航栏 -->

<!-- LOGO\搜索\登陆区-->
<div class="container-fluid" style="margin-top: 30px;">
    <div class="row">
        <div class="col-md-2" style="height: 80px"></div>
        <div class="col-md-8">
            <div class="row">
                <a href="${createLink(uri: "/")}" class="col-md-2" style="height: 80px; text-decoration: none;">
                    <h1 style="margin-top: -5px; color: black;">私家<br><small>isijia.co</small></h1>
                </a>
                <div class="col-md-6">
                    <g:form controller="menu" action="foodSearch" method="get" accept-charset="UTF-8">
                    <div class="input-group">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Flushing <span class="caret"></span></button>
%{--                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>--}%
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
                        <div class="alert alert-warning clearfix text-center" style="margin-bottom: 5px;">
                            <div>Welcome <strong>${user.name}</strong></div>
                            <div class="pull-left">
                                <g:link controller='user' action="personalPage" class="btn btn-primary btn-xs">我的頁面</g:link>
                            </div>
                            <div class="pull-right">
                                <g:link controller='logout' class="btn btn-xs btn-default">登出</g:link>
                            </div>
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
                                <h4 class="modal-title" style="color: #419641">欢迎加入私家</h4>
                            </div>
                            <div class="modal-body">

                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs">
                                    <li class="${!params.role || params?.role == 'ROLE_USER' ? 'active' : ''}"><a href="#user" data-toggle="tab">我是食客</a></li>
                                    <li class="${params?.role == 'ROLE_CHEF' ? 'active' : ''}"><a href="#chef" data-toggle="tab">我是小厨</a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane ${params?.role == 'ROLE_CHEF' ? 'active' : ''}" id="chef">
                                        <g:form name="chefForm" controller="register" action="member" method="post" enctype="multipart/form-data">
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
                                                    <td><div class="form-group" style="width: 90%"><input type="text" class="form-control" placeholder="" name="phoneNumber" value="${params.phoneNumber}"></div></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" width="20%">地址</td>
                                                    <td><div class="form-group" style="width: 90%"><input type="text" class="form-control" placeholder="" name="address" value="${params.address}"></div></td>
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
                                                    <td align="center" width="20%">Zip Code</td>
                                                    <td><div class="form-group" style="width: 90%"><input type="text" class="form-control" placeholder="" name="zipCode" value="${params.zipCode}"></div></td>
                                                </tr>
                                                <tr>
                                                    <td>照片 </td>
                                                    <td><input type="file" name="profileImage"/></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><div style="margin-top:10px;" class="form-group"><input type="checkbox"> 我已经阅读并接受私家的<font color="#a52a2a"><a href="${resource(dir: 'file', file: 'policy.pdf')}" target="_blank"> 《使用协议》</a></font> </div></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td><div class="form-group"><input type="submit" class="btn btn btn-success" value="注册"></div></td>
                                                </tr>
                                            </table>
                                        </g:form>


                                    </div>
                                    <div class="tab-pane ${!params?.role || params?.role == 'ROLE_USER' ? 'active' : ''}" id="user">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <g:form action="member" controller="register" method="post" enctype="multipart/form-data">
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
                                                            <td>照片 </td>
                                                            <td><input type="file" name="profileImage"/></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2"><div style="margin-top:10px;" class="form-group"><input type="checkbox"> 我已经阅读并接受私家的<font color="#a52a2a"><a href="${resource(dir: 'file', file: 'policy.pdf')}" target="_blank"> 《使用协议》</a></font> </div></td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td><div class="form-group"><input type="submit" class="btn btn btn-success" value="注册"></div></td>
                                                        </tr>
                                                    </table>
                                                </g:form>


                                            </div>
                                        </div>
                                    </div>
                                </div>
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