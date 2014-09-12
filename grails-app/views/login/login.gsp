<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/9/10
  Time: 23:55
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>登陆</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pure.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}">
</head>

<body>
<div class="content">
    <g:render template="/template/nav_template" />
    <div class="login" style="margin-top: 100px; margin-left: 200px;">
        <form action='${postUrl}' method='POST' id='loginForm' class='pure-form pure-form-aligned' autocomplete='off'>
            <fieldset>
                <div class="pure-control-group">

                    <label for="email">邮箱地址</label>
                    <input id="email" name="j_username" type="email" placeholder="Email Address">
                </div>

                <div class="pure-control-group">
                    <label for="password">密码</label>
                    <input id="password" name="j_password" type="password" placeholder="Password">
                </div>

                <div class="pure-controls" style="margin-left:230px;">

                    <g:submitButton name="登陆" type="submit" class="pure-button pure-button-primary" style="display:inline-block;">登陆</g:submitButton>
                </div>
            </fieldset>
        </form>
    </div>
</div>
<g:render template="/template/foot_template" />
</body>

</html>