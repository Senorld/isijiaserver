<div class="container-fluid">
    <div class="tab-content">
        <div class="">
            <g:formRemote update="personalContent" name="updateForm" url="[controller: 'user', action: 'updateInfo']" method="post" enctype="multipart/form-data">
                <div class="form-group" style="margin-top: 20px;">
                    <input type="email" class="form-control" placeholder="邮箱" name="email" value="${user.email}">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password" value="" placeholder="密码">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="名字" name="name" value="${user.name}">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="电话" name="phoneNumber" value="${user.phoneNumber}">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="地址" name="address" value="${user.address}">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="城市" name="city" value="${user.city}">
                </div>
                <div class="form-group">
                    <div class="pure-control-group">
                        <select id="stats" name="stats">
                            <option value="NY">New York</option>
                            <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="AZ">Arizona</option>
                            <option value="AR">Arkansas</option>
                            <option value="CA">California</option>
                            <option value="CO">Colorado</option>
                            <option value="CT">Connecticut</option>
                            <option value="DE">Delaware</option>
                            <option value="DC">District Of Columbia</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="HI">Hawaii</option>
                            <option value="ID">Idaho</option>
                            <option value="IL">Illinois</option>
                            <option value="IN">Indiana</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="MN">Minnesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NV">Nevada</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NJ">New Jersey</option>
                            <option value="NM">New Mexico</option>
                            <option value="NC">North Carolina</option>
                            <option value="ND">North Dakota</option>
                            <option value="OH">Ohio</option>
                            <option value="OK">Oklahoma</option>
                            <option value="OR">Oregon</option>
                            <option value="PA">Pennsylvania</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="SD">South Dakota</option>
                            <option value="TN">Tennessee</option>
                            <option value="TX">Texas</option>
                            <option value="UT">Utah</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WA">Washington</option>
                            <option value="WV">West Virginia</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Zip Code" name="zipCode" value="${user.zipCode}" maxlength="5">
                </div>
                <div class="form-group">
                    <label for="profileImage">更新照片</label>
                    <input type="file" id="profileImage" name="profileImage"/>
                </div>

                <div class="form-group"><input type="submit" class="btn btn btn-success" value="更新"></div>

            </g:formRemote>
        </div>
    </div>
</div>