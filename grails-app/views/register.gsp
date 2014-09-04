<%--
  Created by IntelliJ IDEA.
  User: Sui
  Date: 2014/9/3
  Time: 18:56
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>注册</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pure.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}">
</head>

<body>
<div class="content">
<div class="header">
    <div class="pure-menu pure-menu-open pure-menu-fixed pure-menu-horizontal">
        <div class="container">
            <div class="header-left">
                <ul>
                    <li style="margin-left:0px;" class="pure-menu-selected"><a href="#">登陆</a></li>
                    <li><a href="#">注册</a></li>
                </ul>
            </div>
            <div class="header-right">
                <ul>
                    <li style="margin-left:0px"><a href="#">我的订单</a></li>
                    <li><a href="#">我的小厨</a></li>
                    <li><a href="#">最近浏览</a></li>
                    <li><a href="#">购物车</a></li>
                    <li><a href="#">联系客服</a></li>
                    <li><a href="#">更多</a></li>
                </ul>
            </div>

        </div>
    </div>
</div>
<div class="login" style="margin-top: 100px; margin-left: 200px;">
    <form class="pure-form pure-form-aligned">
        <fieldset>
            <div class="pure-control-group">
                <label for="name">用户名</label>
                <input id="name" type="text" placeholder="Username">
            </div>

            <div class="pure-control-group">
                <label for="password">密码</label>
                <input id="password" type="password" placeholder="Password">
            </div>

            <div class="pure-control-group">
                <label for="password_repeat">确认密码</label>
                <input id="password_repeat" type="password" placeholder="Password">
            </div>

            <div class="pure-control-group">
                <label for="email">邮箱地址</label>
                <input id="email" type="email" placeholder="Email Address">
            </div>

            <div class="pure-control-group">
                <label for="phone">电话</label>
                <input id="phone" type="text" placeholder="Phone">
            </div>

            <div class="pure-control-group">
                <label for="address1">地址1</label>
                <input id="address1" type="text" placeholder="Address1">
            </div>

            <div class="pure-control-group">
                <label for="address2">地址2</label>
                <input id="address2" type="email" placeholder="Address2">
            </div>

            <div class="pure-control-group">
                <label for="city">城市</label>
                <input id="city" type="text" placeholder="City">
            </div>

            <div class="pure-control-group">
                <label for="stats">州</label>
                <input id="stats" type="text" placeholder="Stats">
            </div>

            <div class="pure-control-group">
                <label for="birthday">生日</label>
                <input id="birthday" type="text" placeholder="Birthday">
            </div>

            <div class="pure-control-group">
                <label for="rle">角色</label>
                <select id="role">
                    <option value="user">用户</option>
                    <option value="chef">厨师</option>
                </select>
            </div>


            <div class="pure-controls" style="margin-left:230px;">

                <button type="submit" class="pure-button pure-button-primary" style="display:inline-block;">提交</button>
            </div>
        </fieldset>
    </form>
</div>
</div>
</body>
</html>