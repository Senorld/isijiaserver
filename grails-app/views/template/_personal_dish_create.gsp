<div class="row panel panel-default" style="margin-top: 20px">
    <div class="panel-body">
        <g:form action="createFood" role="form" enctype="multipart/form-data" id="createFoodForm">
            <table style="margin: 20px" width="100%">
                <tr>
                    <td align="center" width="10%">菜名</td>
                    <td><div class="form-group" style="width:300px;margin: 5px"><input type="text" class="form-control" name="name" id="dishName"></div></td>
                </tr>
                <tr>
                    <td align="center" width="10%">价格</td>
                    <td><div class="form-group" style="width:300px;margin: 5px"><input type="number" step="any" min="0" class="form-control" name="price" id="dishPrice"></div></td>
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
                    <td>
                        <div class="form-group" style="width: 90%;margin: 5px">
                            <textarea rows="3" name="shortDescription" id="shortDescription" class="form-control" maxlength="200" placeholder="最多 150 個字"></textarea>
                            <div id="shortText" style="text-align: right; margin-top: 8px;"></div>
                    </div>
                    </td>
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
                            <textarea  class="form-control"  name="description" id="description" rows="10" cols="50" placeholder="最少 50 個字"></textarea>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <div class="errorMessage" style="color: red; font-size: 13px; display: none;"></div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><div class="form-group" style="margin-top: 20px"><input type="submit" class="btn btn-default" id="submitDish" role="button" value="保存"></div></td>
                </tr>
            </table>
        </g:form>
    </div>
</div>

<g:javascript>
    $(document).ready(function() {
        var $error = $('.errorMessage');
        (function(){
            var text_max = 150;
            $('#shortText').html(text_max + ' characters remaining');

            $('#shortDescription').keyup(function() {
                if($(this).val().length >= text_max){
                    $(this).val($(this).val().substring(0, text_max));
                }
                var text_length = $('#shortDescription').val().length;
                var text_remaining = text_max - text_length;
                $('#shortText').html(text_remaining + ' characters remaining');
            });
        })();

        $('#submitDish').on('click', function(){
            var hasError = false;

            if($('#description').val().length < 50){
                $error.html("請輸入详细描述");
                hasError = true;
            }

            if($('#dishName').val().length < 1){
                $error.html("請輸入菜名");
                hasError = true;
            }

            if($('#dishPrice').val().length < 1){
                $error.html("請輸入價格");
                hasError = true;
            }

            var $files = $('input:file');
            var hasFile = false;
            $files.each(function(){
                if($(this).val().length > 1){
                    hasFile = true;
                }
            });

            if(!hasFile){
                $error.html("最少上傳一張圖片");
                hasError = true;
            }

            if(!hasError){
                $error.slideUp();
                $('#createFoodForm').submit();
            }else{
                $error.slideDown();
            }
        });
    });
</g:javascript>