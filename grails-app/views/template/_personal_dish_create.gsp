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
                    <td align="center" width="10%">描述</td>
                    <td>
                        <div class="form-group" style="width: 90%;margin-left: 5px">
                            <textarea  name="description" id="editor1" rows="10" cols="50">
                            </textarea>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="10%">送货</td>
                    <td>
                        <div class="form-group" style="width: 50%;margin: 5px">
                            <input type="radio" value="邮递" name="shipWay" checked="checked">
                            邮递
                            <input type="radio" value="自取" name="shipWay">
                            自取
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