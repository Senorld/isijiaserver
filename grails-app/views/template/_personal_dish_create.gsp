<div class="row panel panel-default" style="margin-top: 20px">
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
                    <td><div class="form-group" style="width: 90%;margin: 5px"><textarea rows="3" name="shortDescription" class="form-control" maxlength="200" placeholder="最多 150 個字"></textarea></div></td>
                </tr>
                <tr>
                    <td align="center" width="10%">图片</td>
                    <td>
                        <div class="form-group" style="width: 50%;margin-left: 5px;margin-bottom: 10px">
                            <input class="input-file" name="foodImage.1" type="file">
                        </div>
                        <div class="form-group" style="width: 50%;margin-left: 5px;margin-bottom: 10px">
                            <input class="input-file" name="foodImage.2" type="file">
                        </div>
                        <div class="form-group" style="width: 50%;margin-left: 5px;margin-bottom: 10px">
                            <input class="input-file" name="foodImage.3" type="file">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="10%">详细描述</td>
                    <td>
                        <div class="form-group" style="width: 90%;margin-left: 5px">
                            <textarea  class="form-control"  name="description" rows="10" cols="50"></textarea>
                        </div>
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