<div class="row" id="orderHistory">
<g:each in="${orderHistory}">

        <table class="table table-bordered">
            <tr class="success" align="right">
                <td colspan="4">
                    <div class="row">
                        <div class="col-md-12">
                            <span class="label label-primary">${it.user.name} ${it.user.phoneNumber}</span>
                            <span class="label label-info">${it.shipOption}</span>
                            <span class="label label-success"><g:formatDate date="${it.createdDate}" format="yyyy-MM-dd"/></span>
                        </div>

                    </div>

                </td>
            </tr>
            <tr>
                <td width="35%">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="thumbnail">
                                <g:if test="${it.menu.images.size() > 0}">
                                    <img src="${createLink(uri: "/") + it.menu.images.first().image}" style="max-height: 200px; max-width: 130px;">
                                </g:if>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <h4 style="color: #ac2925">${it.menu.name}</h4>
                            <p>单价：$${it.menu.price} 数量：${it.amount}个</p>
                        </div>
                    </div>
                </td>
                <td width="5%">
                    <h3 style="margin-top: 30px">$${it.amount*it.menu.price}</h3>
                </td>
                <td width="45%">
                    <p><small>${it.address}, ${it.city} ${it.zipCode}</small></p>
                    <p>Wechat: ${it.wechat}</p>
                    <p><small>${it.note}</small></p>
                </td>
                <td width="15%" align="center">
                    <sec:ifAllGranted roles="ROLE_CHEF">
                        <div class="row">
                            狀態: ${it.status}
                        </div>
                        <div class="row">
                            <g:if test="${it.status == isijia.OrderStatus.PENDING}">
                                <g:remoteLink update="orderHistory" controller="memberOrder" action="confirmOrder" params="[orderId: it.id]" class="btn btn btn-default" style="margin: 5px">确认订单</g:remoteLink>
                            </g:if>
                            <g:elseif test="${it.status == isijia.OrderStatus.CONFIRMED}">
                                <g:remoteLink update="orderHistory" controller="memberOrder" action="successOrder" params="[orderId: it.id]" class="btn btn btn-default" style="margin: 5px">已完成</g:remoteLink>
                            </g:elseif>
                            <g:elseif test="${it.status == isijia.OrderStatus.SUCCESS}">
                                已完成
                            </g:elseif>
                        </div>
                        <g:if test="${it.status == isijia.OrderStatus.PENDING}">
                            <div class="row">
                                <g:remoteLink update="orderHistory" controller="memberOrder" action="rejectOrder" params="[orderId: it.id]" class="btn btn btn-default" style="margin: 5px">拒绝订单</g:remoteLink>
                            </div>
                        </g:if>
                    </sec:ifAllGranted>

                    <sec:ifAllGranted roles="ROLE_USER">
                        <div class="row">
                            狀態: ${it.status}
                        </div>
                        <g:if test="${it.status == isijia.OrderStatus.PENDING}">
                            <div class="row">
                                <g:remoteLink update="orderHistory" controller="memberOrder" action="cancelOrder" params="[orderId: it.id]" class="btn btn btn-default" style="margin: 5px">移除订单</g:remoteLink>
                            </div>
                        </g:if>
                        <g:elseif test="${it.status == isijia.OrderStatus.SUCCESS}">
                            已完成
                        </g:elseif>
                    </sec:ifAllGranted>


                </td>
            </tr>
        </table>

</g:each>
</div>
