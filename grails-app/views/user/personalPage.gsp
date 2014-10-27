<%--
  Created by IntelliJ IDEA.
  User: Jay
  Date: 10/26/2014
  Time: 12:08 AM
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

    <div id="personalContent">


    <div class="panel panel-default" style="margin-top: 20px">
        <g:render template="/template/personal_dish"/>
    </div>
    </div>

</div>

<div class="col-md-3">
    <g:render template="/template/personal_block"/>
    <!-- END OF 美食广告位 -->


    <!-- END OF 最新动态 -->

    <!-- 美食广告位 -->
    <div class="row">
        <div class="thumbnail" style="margin-left: 10px">
            <img src="images/AD-2.jpg" alt="...">
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
<script>
    (function(){
        var $buttons = $('.removeButton');
        $buttons.on("click", function(){
            $(this).parents("tr").fadeToggle('slow');
        });

        $('ul.nav li').on("click", function () {
            $('ul.nav li').removeClass("active");
            $(this).addClass('active');
        });

    })();
</script>
</body>
</html>