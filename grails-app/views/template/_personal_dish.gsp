<div class="panel panel-default" style="margin-top: 20px">
    <div class="panel-body">
        <table class="table-hover" style="width: 100%">
<g:each in="${data.dishList}">
    <tr >
        <td width="35%">
            <g:link controller="menu" action="dishDetail" params="[dishId: it.id]">
                <g:if test="${it.images.size() > 0}">
                    <img src="${createLink(uri: "/") + it.images.first().image}" style="margin: 5px; height: 130px;" class="img-rounded">
                </g:if>

            </g:link>

        </td>
        <td>
            <h4>${it.name}  <span class="label label-danger">${it.dishFlavor}</span> </h4>
            <p>${it.shortDescription}</p>
            <p>人氣 ${it.likes}</p>
        </td>
        <td>
            <g:remoteLink controller="menu" action="removeDish" params="[dishId: it.id, offset: params.offset]" update="">
                <div class="btn btn-danger removeButton"  data-dismiss="dish${it.id}">刪除</div>
            </g:remoteLink>

        </td>
    </tr>
</g:each>

</table>

<div class="row">
    <div align="center">
        <ul class="pagination pagination-lg">
            <g:if test="${data.pages > 1}">
                <g:each in="${1..data.pages}" var="pageNumber" status="i">
                    <li class="${params.offset == i*15 ? '.active' : ''}"><a href="${createLink(action: 'retrieveDishTemplate', controller: 'menu', params: [offset: i * 15])}">${i + 1}</a></li>
                </g:each>
            </g:if>
        </ul>
    </div>
</div>
</div>
</div>