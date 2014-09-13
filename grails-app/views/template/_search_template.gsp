<div class="content">
<div class="title">
    <div class="title-left">
        <g:link uri="http://isijia.com">
            <img src="${resource(dir: 'images', file: 'logo.png')}" alt="logo">
        </g:link>

    </div>
    <div class="title-right">
        <sec:ifLoggedIn>
            <div class="button-block">
                <div>Welcome ${user.name}</div>
                <div><g:link controller='logout'>Logout</g:link></div>
            </div>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <div class="button-block">
                <g:link class="button-login pure-button" controller="login" action="auth">登陆</g:link>
                <g:link class="button-register pure-button" controller="register" action="index">注册</g:link>
            </div>
        </sec:ifNotLoggedIn>

    </div>
    <div class="title-main">
        <div class="search-bar">
            <form class="pure-form">
                <input type="text" placeholder="请输入菜名">
                <button type="submit" class="pure-button">搜索</button>
            </form>
        </div>
        <div class="pure-menu pure-menu-horizontal pure-menu-open search-tags">
            <ul>
                <li style="margin-left:0px;"><a href="#">水饺</a></li>
                <li><a href="#">火锅</a></li>
                <li><a href="#">红烧肉</a></li>
                <li><a href="#">中餐</a></li>
                <li><a href="#">鱼香肉丝</a></li>
                <li><a href="#">小笼包</a></li>
                <li><a href="#">脆皮鸭</a></li>
            </ul>
        </div>
    </div>

</div>
</div>