<div class="row">
    <ul class="list-group" style="margin-left: 10px">
        <li class="list-group-item">
            <table>
                <tr>
                    <td align="left">
                        <img src="${createLink(uri: ('/'))}${user.profile}" class="img-circle" style="margin: 5px; width: 100px; height: 100px;">
                    </td>
                    <td>
                        <h4 style="margin-left: 5px">${user.name}</h4>
                        <p style="margin-left: 5px"><small><g:formatDate date="${user.joinDate}" format="yyyy-MM-dd"/>  加入</small></p>

                    </td>
                </tr>
            </table>
        </li>
        <li class="list-group-item">
            <div class="row">
                <div class="col-md-4" align="center"><p>接待食客</p><h3 style="margin-top: 2px">${orderCount ?: 0}</h3></div>
                <div class="col-md-4" align="center"><p>人氣</p><h3 style="margin-top: 2px">${orderCountUnique ?: 0}</h3></div>
            </div>
        </li>
    </ul>

    <!-- 最新动态 -->
    <div class="row">
        <ul class="list-group" style="margin-left: 26px;margin-right: 10px;">
            <li class="list-group-item"><h4>TA的动态</h4></li>
            <g:each in="${data?.dishList ?: []}" var="dish" status = "i">
                <g:if test="${i<10}">
                    <li class="list-group-item">
                        <p><span class="glyphicon glyphicon-plus-sign"></span> 添加了新菜：<font color="#8b0000">${dish.name}</font> </p>
                        <p align="right"><small><g:formatDate date="${dish.createdDate}" format="yyyy-MM-dd"/></small></p>
                    </li>
                </g:if>

            </g:each>
        </ul>
    </div>
</div>