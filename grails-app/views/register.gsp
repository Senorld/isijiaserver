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
    <g:form class="pure-form pure-form-aligned" controller="register" action="member">
        <fieldset>
            <div class="pure-control-group">
                <label for="name">用户名</label>
                <input id="name" name="name" type="text" placeholder="Username">
            </div>

            <div class="pure-control-group">
                <label for="email">邮箱地址</label>
                <input id="email" name="email" type="email" placeholder="Email Address">
            </div>

            <div class="pure-control-group">
                <label for="password">密码</label>
                <input id="password" name="password" type="password" placeholder="Password">
            </div>

            <div class="pure-control-group">
                <label for="password_repeat">确认密码</label>
                <input id="password_repeat" type="password" placeholder="Password">
            </div>


            <div class="pure-control-group">
                <label for="phone">电话</label>
                <input id="phone" name="phone" type="text" placeholder="Phone">
            </div>

            <div class="pure-control-group">
                <label for="address1">地址1</label>
                <input id="address1" name="address1" type="text" placeholder="Address1">
            </div>

            <div class="pure-control-group">
                <label for="address2">地址2</label>
                <input id="address2" name="address2" type="text" placeholder="Address2">
            </div>

            <div class="pure-control-group">
                <label for="city">城市</label>
                <input id="city" name="city" type="text" placeholder="City">
            </div>

            <div class="pure-control-group">
                <label for="stats">州</label>
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

            <div class="pure-control-group">
                <label for="birthday">生日</label>
                <!-- <input id="birthday" name="birthday" type="text" placeholder="Birthday"> -->
                <select id="days" name="birthday_d"></select>
                <select id="months" name="birthday_m"></select>
                <select id="years" name="birthday_y"></select>
            </div>

            <div class="pure-control-group">
                <label for="role">角色</label>
                <select id="role" name="role">
                    <option value="ROLE_USER">用户</option>
                    <option value="ROLE_CHEF">厨师</option>
                </select>
            </div>


            <div class="pure-controls" style="margin-left:230px;">

                <g:submitButton name="注册" type="submit" class="pure-button pure-button-primary" style="display:inline-block;">提交</g:submitButton>
            </div>
        </fieldset>
    </g:form>
</div>
</div>
</body>

<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.11.1.min.js')}"></script>
<script>
    $(function() {

    for (i = new Date().getFullYear(); i > 1900; i--)
    {
    $('#years').append($('<option />').val(i).html(i));
}

for (i = 1; i < 13; i++)
{
$('#months').append($('<option />').val(i).html(i));
}
updateNumberOfDays();

$('#years, #months').change(function(){

updateNumberOfDays();

});

});

function updateNumberOfDays(){
$('#days').html('');
month=$('#months').val();
year=$('#years').val();
days=daysInMonth(month, year);

for(i=1; i < days+1 ; i++){
$('#days').append($('<option />').val(i).html(i));
}

}

function daysInMonth(month, year) {
return new Date(year, month, 0).getDate();
}

</script>

</html>