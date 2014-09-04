<%--
  Created by IntelliJ IDEA.
  User: Sui
  Date: 2014/9/3
  Time: 0:05
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Home</title>

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
<div class="content">
    <div class="title">
        <div class="title-left">
            <img src="images/logo.png" alt="logo">
        </div>
        <div class="title-right">
            <div class="button-block">
                <button class="button-login pure-button">登陆</button>
                <button class="button-register pure-button">注册</button>
            </div>
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
<div class="content">
    <div class="ad-banner">
        <img class="pure-img" src="images/ad-banner.png">
    </div>
</div>
<div class="content">
    <div class="mp">
        <div class="mp-left">
            <div class="hot-chief">
                <div class="chiefs">
                    <div class="rmxc">
                        热门小厨
                    </div>
                    <div class="chief-avatar-block">
                        <div class="chief-avatar" id="chief1">
                           <a href="#"><img src="images/avatar1.jpg" class="round_photo"></a>
                            <div class="avatar-name">王叉子	</div>
                        </div>
                        <div class="chief-avatar" id="chief2">
                            <a href="#"><img src="images/avatar2.jpg" class="round_photo"></a>
                            <div class="avatar-name">甜甜圈不辣</div>
                        </div>
                        <div class="chief-avatar" id="chief3">
                            <a href="#"><img src="images/avatar3.jpg" class="round_photo"></a>
                            <div class="avatar-name">果丹皮</div>
                        </div>
                    </div>
                </div>
                <div class="hot-chief-dishes" id="hot-chief-dishes1">
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/nuomi.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅1
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/chicken.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/mushroom.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                </div>
                <div class="hot-chief-dishes" id="hot-chief-dishes2" style="display:none">
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/nuomi.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅2
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/nuomi.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/mushroom.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                </div>
                <div class="hot-chief-dishes" id="hot-chief-dishes3" style="display:none">
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/chicken.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅3
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/chicken.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                    <div class="mp-hc-dish-item">
                        <div class="mp-hc-dish-img-div">
                            <img src="images/mushroom.png" class="mp-hc-dish-img">
                        </div>
                        <div class="mp-hc-dish-text1">
                            糯米蒸鸡翅
                        </div>
                        <div class="mp-hc-dish-text2">
                            8人尝过这道菜
                        </div>
                    </div>
                </div>
            </div>
            <div class="late-hot">
                最近热门
                <div style="width: auto; height:1px;margin:0px auto;padding:0px;background-color:#D5D5D5;overflow:hidden;"></div>
                <div class="row-block">
                    <div class="lh-img-block">
                        <img src="images/p1.png" class="lh-img">
                        <div class="lh-img-block-txt1">
                            鲜奶油蜜桃派 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $6
                        </div>
                        <div class="lh-img-block-txt2">
                            桃子季来啦，买了很漂亮很漂亮的桃子！
                            于是做了这个鲜奶油蜜桃派。
                        </div>
                    </div>
                    <div class="lh-img-block">
                        <img src="images/p2.png" class="lh-img">
                        <div class="lh-img-block-txt1">
                            鲜奶油蜜桃派 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $6
                        </div>
                        <div class="lh-img-block-txt2">
                            桃子季来啦，买了很漂亮很漂亮的桃子！
                            于是做了这个鲜奶油蜜桃派。
                        </div>
                    </div>
                    <div class="lh-img-block">
                        <img src="images/p3.png" class="lh-img">
                        <div class="lh-img-block-txt1">
                            鲜奶油蜜桃派 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $6
                        </div>
                        <div class="lh-img-block-txt2">
                            桃子季来啦，买了很漂亮很漂亮的桃子！
                            于是做了这个鲜奶油蜜桃派。
                        </div>
                    </div>
                </div>
                <div class="row-block">
                    <div class="lh-img-block">
                        <img src="images/p4.png" class="lh-img">
                        <div class="lh-img-block-txt1">
                            鲜奶油蜜桃派 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $6
                        </div>
                        <div class="lh-img-block-txt2">
                            桃子季来啦，买了很漂亮很漂亮的桃子！
                            于是做了这个鲜奶油蜜桃派。
                        </div>
                    </div>
                    <div class="lh-img-block">
                        <img src="images/p5.png" class="lh-img">
                        <div class="lh-img-block-txt1">
                            鲜奶油蜜桃派 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $6
                        </div>
                        <div class="lh-img-block-txt2">
                            桃子季来啦，买了很漂亮很漂亮的桃子！
                            于是做了这个鲜奶油蜜桃派。
                        </div>
                    </div>
                    <div class="lh-img-block">
                        <img src="images/p6.png" class="lh-img">
                        <div class="lh-img-block-txt1">
                            鲜奶油蜜桃派 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $6
                        </div>
                        <div class="lh-img-block-txt2">
                            桃子季来啦，买了很漂亮很漂亮的桃子！
                            于是做了这个鲜奶油蜜桃派。
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="mp-right">
            <div class="hot-dishes">
                <div class="hot-dish-title">
                    热门小菜
                </div>
                <div class="hot-dish">
                    <a href="#">小火锅</a> <div class="hot-dish-chief">by Honda</div>
                </div>
                <div class="hot-dish">
                    <a href="#">巴西烤肉</a> <div class="hot-dish-chief">by 老饼干</div>
                </div>
                <div class="hot-dish">
                    <a href="#">红糖锅盔</a> <div class="hot-dish-chief">by 小齐</div>
                </div>
                <div class="hot-dish">
                    <a href="#">鱼香肉丝</a> <div class="hot-dish-chief">by 小乔</div>
                </div>
                <div class="hot-dish">
                    <a href="#">干锅排骨</a> <div class="hot-dish-chief">by 兽神</div>
                </div>
                <div class="hot-dish" style="border:none;">
                    <a href="#">脆皮鸭</a> <div class="hot-dish-chief">by 擎天柱</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clear"></div>
<div class="footer">
    <div class="foot-bar"></div>
    <div class="foot-content-wrapper">
        <div class="foot-content">
            <div class="foot-content-block">
                <div class="foot-content-block-txt">
                    <div class="pure-menu pure-menu-open" style="border:none">
                        <ul>
                            <li style="margin-left:0px;"><a href="#">获取更新</a></li>
                            <li><a href="#">邮件订阅</a></li>
                            <li><a href="#">RSS订阅</a></li>
                            <li><a href="#">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="foot-content-block">
                <div class="foot-content-block-txt">
                    <div class="pure-menu pure-menu-open" style="border:none">
                        <ul>
                            <li style="margin-left:0px;"><a href="#">获取更新</a></li>
                            <li><a href="#">邮件订阅</a></li>
                            <li><a href="#">RSS订阅</a></li>
                            <li><a href="#">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="foot-content-block">
                <div class="foot-content-block-txt">
                    <div class="pure-menu pure-menu-open" style="border:none">
                        <ul>
                            <li style="margin-left:0px;"><a href="#">获取更新</a></li>
                            <li><a href="#">邮件订阅</a></li>
                            <li><a href="#">RSS订阅</a></li>
                            <li><a href="#">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="foot-content-block">
                <div class="foot-content-block-txt">
                    <div class="pure-menu pure-menu-open" style="border:none">
                        <ul>
                            <li style="margin-left:0px;"><a href="#">获取更新</a></li>
                            <li><a href="#">邮件订阅</a></li>
                            <li><a href="#">RSS订阅</a></li>
                            <li><a href="#">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="foot-copyright">
        Copyright&copy;isijia.com &nbsp&nbsp&nbsp&nbsp 爱生活&nbsp爱私家
    </div>
</div>

</div>
</body>

<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.11.1.min.js')}"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".round_photo").click(function(){
            var this_id = $(this).parent().parent().attr('id');
            var objs = $(".chief-avatar");
            $.each(objs, function(k, v){
                if(v.id != this_id) {
                    var tmp_obj = $("#" + v.id).children().children().eq(0);
                    tmp_obj.removeClass("round_photo_big").addClass("round_photo");
                    var dish_obj = $("#" + "hot-chief-dishes" + v.id.substring(5,6));
                    dish_obj.css("display","none");
                    //tmp_obj.css("width","60px");
                    //tmp_obj.css("height","60px");
                   // tmp_obj.parent().parent().children('div').css('font-size', '12px');
                }
            });
            //$(this).css("width", "80px");
            //$(this).css('height', "80px");
            //$(this).css("margin-top", "20px");
            $(this).removeClass("round_photo").addClass("round_photo_big");
            var dish_obj = $("#" + "hot-chief-dishes" + this_id.substring(5,6));
            dish_obj.css("display","");
            $("html,body").animate({scrollTop: $(".hot-chief").offset().top}, 1000);
           // $(this).parent().parent().children('div').css("font-size", "14px");
        });
    });
</script>
</html>