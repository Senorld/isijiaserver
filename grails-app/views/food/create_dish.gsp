<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 10/21/2014
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
                    <g:render template="/template/personal_header_template"/>

                    <div class="panel panel-default" style="margin-top: 20px">
                        <div class="panel-body">
                            <g:form action="createFood" role="form" enctype="multipart/form-data">
                                <table style="margin: 20px" width="100%">
                                    <tr>
                                        <td align="center" width="10%">菜名</td>
                                        <td><div class="form-group" style="width:300px;margin: 5px"><input type="text" class="form-control" name="name"></div></td>
                                    </tr>
                                    <tr>
                                        <td align="center" width="10%">价格</td>
                                        <td><div class="form-group" style="width:300px;margin: 5px"><input type="number" step="any" min="0" class="form-control" name="price"></div></td>
                                    </tr>
                                    <tr>
                                        <td align="center" width="10%">菜系</td>
                                        <td>
                                            <div style="width: 50%;margin: 5px">
                                                <select style="width: 300px; height: 20px" name="dishFlavor">
                                                    <option>川菜</option>
                                                    <option>湖南菜</option>
                                                    <option>广东菜</option>
                                                    <option>东北菜</option>
                                                    <option>京菜</option>
                                                    <option>上海菜</option>
                                                    <option>西北菜</option>
                                                    <option>浙菜</option>
                                                    <option>台菜</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" width="10%">简述</td>
                                        <td><div class="form-group" style="width: 90%;margin: 5px"><textarea style="width: 300px" rows="5" name="shortDescription"> </textarea></div></td>
                                    </tr>
                                    <tr>
                                        <td align="center" width="10%">图片</td>
                                        <td>
                                            <div class="form-group" style="width: 50%;margin-left: 5px;margin-bottom: 10px">
                                                <input class="input-file" name="foodImage" type="file">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" width="10%">详细描述</td>
                                        <td>
                                            <div class="form-group" style="width: 90%;margin-left: 5px">
                                                <textarea  name="description" id="editor1" rows="20" cols="85">
                                                </textarea>
                                            </div>
                                            <script>
                                                // Replace the <textarea id="editor1"> with a CKEditor
                                                // instance, using default configuration.
                                                CKEDITOR.replace( 'editor1' );
                                            </script>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div class="form-group" style="margin-top: 20px"><input type="submit" class="btn btn-default" role="button" value="保存"></div></td>
                                    </tr>
                                </table>
                            </g:form>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <g:render template="/template/personal_block"/>
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
                    </div>
                </div>
            </div>
        </div>
    </div>

<asset:javascript src="application.js"/>
<asset:javascript src="holder.js"/>
</body>
</html>