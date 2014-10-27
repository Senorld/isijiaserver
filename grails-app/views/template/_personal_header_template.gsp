<div class="panel panel-default">
    <div class="panel-body">
        <ul class="nav nav-pills">

            <sec:ifAnyGranted roles="ROLE_CHEF">
                <li><g:remoteLink controller="menu" action="dishCreationPage" update="personalContent">添加菜品</g:remoteLink></li>
                <li class="active"><g:remoteLink update="personalContent" name="dishList" controller="menu" action="retrieveDishTemplate">菜品</g:remoteLink></li>
            </sec:ifAnyGranted>

            <li><g:remoteLink update="personalContent" name="memberOrder" controller="memberOrder" action="retrieveOrderHistoryTemplate">订单管理</g:remoteLink></li>
            <li><a href="dealer-shezhi.html">设置</a></li>
        </ul>
    </div>
</div>
