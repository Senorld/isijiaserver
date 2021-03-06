
<div class="list-group" style="margin-top: 20px; background-color: #dff0d8" align="left">
    <g:if test="${review.size() > 0}">
        <g:each in="${review}">
            <!--留言条目-->
            <div class="list-group-item">

                <div class="row">
                    <!--留言区头像-->
                    <div class="col-md-3">
                        <table>
                            <tr>
                                <td>
                                    <div class="thumbnail">
                                        <img src="${dishDetail.chef.profile ? createLink(uri: '/') + dishDetail.chef.profile : resource(dir: 'images', file: 'default_avatar.png')}" class="img-circle" style="max-width : 100px; max-height: 100px;">
                                    </div>
                                    <div style="text-align: center">
                                        <strong>${it.user.name}</strong>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!--END OF 留言区头像-->

                    <!--留言内容-->
                    <div class="col-md-9">
                        <p>${raw(it.review)}</p>

                        <p align="right"><span class="label label-success"><g:formatDate date="${it.dateCreated}" format="yyyy-MM-dd hh:mm"/></span></p>
                    </div>
                    <!--END OF 留言内容-->
                </div>
            </div>
        </g:each>
    </g:if>

</div>
<!-- 留言分页 -->
<div class="row">
    <div align="center">
        <ul class="pagination pagination-lg">
            <g:if test="${pages > 0}">
                <g:each in="${0..pages}" var="pageNumber" status="i">
                    <li class="">
                        <g:remoteLink update="review" controller="menu" action="dishReviewTemplate" params="[dishId: dishDetail.id, offset: i*10]">${i+1}<span class="sr-only">(current)</span></g:remoteLink>
                    </li>
                </g:each>
            </g:if>
        </ul>
    </div>
</div>
<!-- END OF 留言分页 -->