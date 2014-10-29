<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 10/21/2014
  Time: 9:22 PM
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

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">菜名: <strong>${dish.name}</strong> <br/><br/> 價錢: <strong>$${dish.price}</strong></h3>
    </div>
    <div class="panel-body">
            <table style="margin: 20px" width="100%">
                <g:form controller="memberOrder" action="checkout" method="post">
                    <input type="hidden" name="dishId" value="${dish.id}"/>
                    <tr>
                        <td align="center" width="10%">电话</td>
                        <td><div class="form-group" style="width:300px;margin: 5px"><input type="tel" class="form-control" name="phoneNumber" placeholder="必填" value="${user.phoneNumber}"></div></td>
                    </tr>
                    <tr>
                        <td align="center" width="10%">微信</td>
                        <td><div class="form-group" style="width:300px;margin: 5px"><input type="text" class="form-control" name="wechat" placeholder="选填"></div></td>
                    </tr>
                    <tr>
                        <td align="center" width="10%">配送</td>
                        <td>
                            <div class="form-group" style="width: 50%;margin-left: 5px;margin-top: 10px;margin-bottom: 10px">
                                <input type="radio" value="送餐" name="deliverOption" checked="checked">
                                送餐
                                <input type="radio" value="自取" name="deliverOption">
                                自取
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" width="10%">数量</td>
                        <td>
                            <div class="form-group" style="width:300px;margin: 5px"><input type="number" class="form-control" name="amount" placeholder="數量"></div></td>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" width="10%">地址</td>
                        <td><div class="form-group" style="width:300px;margin: 5px"><input type="text" class="form-control" name="address" placeholder="Street, Room/Suite" value="${user.address}"></div></td>
                    </tr>
                    <tr>
                        <td align="center" width="10%"></td>
                        <td><div class="form-group" style="width:300px;margin: 5px"><input type="text" class="form-control" name="city" placeholder="City" value="${user.city}"></div></td>
                    </tr>
                    <tr>
                        <td align="center" width="10%"></td>
                        <td><div class="form-group" style="width:300px;margin: 5px"><input type="text" class="form-control" name="zipCode" placeholder="Zip Code" value="${user.zipCode}"></div></td>
                    </tr>

                    <tr>
                        <td align="center" width="10%">备注</td>
                        <td><div class="form-group" style="width: 90%;margin: 5px"><textarea style="width: 300px" rows="5" name="note"> </textarea></div></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><div class="form-group" style="margin-top: 20px"><input type="submit" class="btn btn-default" role="button" value="提交"> </div></td>
                    </tr>
                </g:form>

            </table>
    </div>
</div>


</div>

<div class="col-md-3">
    <div class="row">
        <div class="thumbnail" style="margin-left: 10px">
            <img src="${resource(dir: 'images', file: 'AD-1.jpg')}" alt="...">
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

    <!-- 美食广告位 -->
    <div class="row">
        <div class="thumbnail" style="margin-left: 10px">
            <img src="${resource(dir: 'images', file: 'AD-2.jpg')}" alt="...">
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
<asset:javascript src="application.js"/>
<asset:javascript src="holder.js"/>
</body>
</html>