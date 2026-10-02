<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 新增/Add -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <link rel="stylesheet" href="../../css/diy.css">
    <script src="../../js/axios.min.js"></script>

    <style>
        img {
            width: 200px;
        }



    </style>
</head>

<body>
<article class="sign_in">
    <div class="warp">
        <div class="layui-container">
            <div class="layui-row">
                <form class="layui-form" action="">
                                                                                                        <div class="layui-form-item" id="position_name_box">
                                            <label class="layui-form-label">岗位名称</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入岗位名称"
                                                       class="layui-input" id="position_name">
                                            </div>
                                        </div>
                                                                                                                    <div class="layui-upload" id="cover_box">
                                        <button type="button" class="layui-btn" id="cover">上传图片</button>
                                        <div class="layui-upload-list">
                                            <img class="layui-upload-img" id="cover_img">
                                            <p id="demoText"></p>
                                        </div>
                                        <div style="width: 95px;">
                                            <div class="layui-progress layui-progress-big" lay-showpercent="yes"
                                                 lay-filter="cover">
                                                <div class="layui-progress-bar" lay-percent=""></div>
                                            </div>
                                        </div>
                                    </div>
                                                                                                                        <div class="layui-form-item" id="education_scope_box">
                                            <label class="layui-form-label">学历范围</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入学历范围"
                                                       class="layui-input" id="education_scope">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="professional_scope_box">
                                            <label class="layui-form-label">专业范围</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入专业范围"
                                                       class="layui-input" id="professional_scope">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="salary_box">
                                            <label class="layui-form-label">薪资</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入薪资"
                                                       class="layui-input" id="salary">
                                            </div>
                                        </div>
                                                                                                                                                                <div class="layui-form-item" id="enterprise_users_box">
                                                <label class="layui-form-label">企业用户</label>
                                                <div class="layui-input-block">
                                                    <select name="interest" lay-filter="enterprise_users"
                                                            id="enterprise_users">
                                                        <option value=""></option>
                                                    </select>
                                                </div>
                                            </div>
                                                                                                                                                            <div class="layui-form-item" id="enterprise_name_box">
                                            <label class="layui-form-label">企业名称</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入企业名称"
                                                       class="layui-input" id="enterprise_name">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="business_address_box">
                                            <label class="layui-form-label">企业地址</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入企业地址"
                                                       class="layui-input" id="business_address">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="enterprise_telephone_box">
                                            <label class="layui-form-label">企业电话</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入企业电话"
                                                       class="layui-input" id="enterprise_telephone">
                                            </div>
                                        </div>
                                                                                                    <div class="layui-form-item">
                                    <label class="layui-form-label">岗位说明</label>
                                    <div class="layui-input-block">
                                        <textarea id="demo" style="display: none;"></textarea>
                                    </div>
                                </div>
                                    
        
    
    
    
    
                    </form>
                <div class="layui-btn-container">
                    <a href="#" type="button" class="layui-btn layui-btn-normal login" id="submit" >确认/Confirm</a>
                    <a href="./table.jsp" target="main_self_frame" type="button"
                       class="layui-btn layui-btn-normal login">取消/Cancel</a>
                </div>
            </div>
        </div>
    </div>
</article>
</body>
<script src="../../layui/layui.js"></script>
<script src="../../js/base.js"></script>
<script src="../../js/index.js"></script>
<script>
    var BaseUrl = baseUrl()
    let recruitment_information_id = location.search.substring(1)
    layui.use(['upload', 'element', 'layer', 'laydate', 'layedit'], function () {
        var $ = layui.jquery
                , upload = layui.upload
                , element = layui.element
                , layer = layui.layer
                , laydate = layui.laydate
                , layedit = layui.layedit
                , form = layui.form;

        let url

        let token = sessionStorage.token || null
        let personInfo = JSON.parse(sessionStorage.personInfo)
        let user_group = personInfo.user_group
        let use_id = personInfo.user_id


        function  $get_stamp() {
            return new Date().getTime();
        }

        function  $get_rand(len) {
            var rand = Math.random();
            return Math.ceil(rand * 10 ** len);
        }

        
            // 权限判断
            /**
             * 获取路径对应操作权限 鉴权
             * @param {String} action 操作名
             */
            function $check_action(path1, action = "get") {
                var o = $get_power(path1);
                if (o && o[action] != 0 && o[action] != false) {
                    return true;
                }
                return false;
            }

            /**
             * 是否有显示或操作字段的权限
             * @param {String} action 操作名
             * @param {String} field 查询的字段
             */
            function $check_field(action, field, path1) {
                var o = $get_power(path1);
                var auth;
                if (o && o[action] != 0 && o[action] != false) {
                    auth = o["field_" + action];
                }
                if (auth) {
                    return auth.indexOf(field) !== -1;
                }
                return false;
            }

            /**
             * 获取权限
             * @param {String} path 路由路径
             */
            function $get_power(path) {
                var list_data = JSON.parse(sessionStorage.list_data)
                var list = list_data;
                var obj;
                for (var i = 0; i < list.length; i++) {
                    var o = list[i];
                    if (o.path === path) {
                        obj = o;
                        break;
                    }
                }
                return obj;
            }

        let submit = document.querySelector('#submit')
        // 提交按钮校验权限
        // if (   user_group == "管理员" ||$check_action('/recruitment_information/view', 'add') || $check_action('/recruitment_information/view', 'set')) {
        //    submit.style.display = "block"
        // }
        // style="display: none"

        
            let field = "recruitment_information_id";
            let url_add = "recruitment_information";
            let url_set = "recruitment_information";
            let url_get_obj = "recruitment_information";
            let url_upload = "recruitment_information"
            let query = {
                "recruitment_information_id": 0,
            }

            let form_data2 = {
                                        "position_name":  '', // 岗位名称
                            "cover":  '', // 封面
                            "education_scope":  '', // 学历范围
                            "professional_scope":  '', // 专业范围
                            "salary":  '', // 薪资
                                "enterprise_users": 0, // 企业用户
                            "enterprise_name":  '', // 企业名称
                            "business_address":  '', // 企业地址
                            "enterprise_telephone":  '', // 企业电话
                            "job_description":  '', // 岗位说明
                                    "recruitment_information_id": 0, // ID
                                            }

            layui.layedit.set({
      uploadImage: {
        url: BaseUrl + '/api/recruitment_information/upload?' //接口url
        , type: 'post' //默认post
      }
    });


            var path1

            function getpath() {
                var list_data = JSON.parse(sessionStorage.list_data)
                for (var i = 0; i < list_data.length; i++) {
                    var o = list_data[i];
                    if (o.path === "/recruitment_information/table") {
                        path1 = o.path
                            $get_power(o.path)
                    }
                }
            }

            getpath()

            /**
             * 注册时是否有显示或操作字段的权限
             * @param {String} action 操作名
             * @param {String} field 查询的字段
             * @param {String} path 路径
             */
            function $check_register_field(action, field, path1) {
                var o = $get_power(path1);
                var auth;
                if (o && o[action] != 0 && o[action] != false) {
                    auth = o["field_" + action];
                }
                if (auth) {
                    return auth.indexOf(field) !== -1;
                }
                return false;
            }

            /**
             * 是否有显示或操作字段的权限
             * @param {String} action 操作名
             * @param {String} field 查询的字段
             */
            function $check_field(action, field) {
                var o = $get_power("/recruitment_information/view");
                var auth;
                if (o && o[action] != 0 && o[action] != false) {
                    auth = o["field_" + action];
                }
                if (auth) {
                    return auth.indexOf(field) !== -1;
                }
                return false;
            }

            /**
             * 获取路径对应操作权限 鉴权
             * @param {String} action 操作名
             */
            function $check_exam(path1, action = "get") {
                var o = $get_power(path1);
                if (o) {
                    var option = JSON.parse(o.option);
                    if (option[action])
                        return true
                }
                return false;
            }

            /**
             * 是否有审核字段的权限
             */
            function $check_examine() {
                var url = window.location.href;
                var url_ = url.split("/")
                var pg_url = url_[url_.length - 2]
                let path = "/"+ pg_url + "/table"
                var o = $get_power(path);
                if (o){
                    var option = JSON.parse(o.option);
                    if (option.examine)
                        return true
                }
                return false;
            }

                            if (user_group === '管理员') {
                    $("#position_name_box").show()
                } else {
                    if ($check_field('add', 'position_name')){
                        $("#position_name_box").show()
                    }else {
                        $("#position_name_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#cover_box").show()
                } else {
                    if ($check_field('add', 'cover')){
                        $("#cover_box").show()
                    }else {
                        $("#cover_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#education_scope_box").show()
                } else {
                    if ($check_field('add', 'education_scope')){
                        $("#education_scope_box").show()
                    }else {
                        $("#education_scope_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#professional_scope_box").show()
                } else {
                    if ($check_field('add', 'professional_scope')){
                        $("#professional_scope_box").show()
                    }else {
                        $("#professional_scope_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#salary_box").show()
                } else {
                    if ($check_field('add', 'salary')){
                        $("#salary_box").show()
                    }else {
                        $("#salary_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#enterprise_users_box").show()
                } else {
                    if ($check_field('add', 'enterprise_users')){
                        $("#enterprise_users_box").show()
                    }else {
                        $("#enterprise_users_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#enterprise_name_box").show()
                } else {
                    if ($check_field('add', 'enterprise_name')){
                        $("#enterprise_name_box").show()
                    }else {
                        $("#enterprise_name_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#business_address_box").show()
                } else {
                    if ($check_field('add', 'business_address')){
                        $("#business_address_box").show()
                    }else {
                        $("#business_address_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#enterprise_telephone_box").show()
                } else {
                    if ($check_field('add', 'enterprise_telephone')){
                        $("#enterprise_telephone_box").show()
                    }else {
                        $("#enterprise_telephone_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#job_description_box").show()
                } else {
                    if ($check_field('add', 'job_description')){
                        $("#job_description_box").show()
                    }else {
                        $("#job_description_box").hide()
                    }
                }
            
                                                                                //常规使用 - 普通图片上传
                        var uploadInst = upload.render({
                            elem: '#cover'
                            , url: BaseUrl + '/api/recruitment_information/upload?' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
                            , headers: {
                                'x-auth-token': token
                            }, before: function (obj) {
                                //预读本地文件示例，不支持ie8
                                obj.preview(function (index, file, result) {
                                    $('#cover_img').attr('src', fullUrl(BaseUrl,result)); //图片链接（base64）
                                });

                                element.progress('cover', '0%'); //进度条复位
                                layer.msg('上传中', {icon: 16, time: 0});
                            }
                            , done: function (res) {
                                //如果上传失败
                                if (res.code > 0) {
                                    return layer.msg('上传失败');
                                }
                                //上传成功的一些操作
                                //……
                                form_data2.cover = res.result.url
                                $('#demoText').html(''); //置空上传失败的状态
                            }
                            , error: function () {
                                //演示失败状态，并实现重传
                                var demoText = $('#demoText');
                                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                                demoText.find('.demo-reload').on('click', function () {
                                    uploadInst.upload();
                                });
                            }
                            //进度条
                            , progress: function (n, elem, e) {
                                element.progress('cover', n + '%'); //可配合 layui 进度条元素使用
                                if (n == 100) {
                                    layer.msg('上传完毕', {icon: 1});
                                }
                            }
                        });
                                                                                                                                                                                                                                                                                                        var demo = layedit.build('demo', {
                        tool: [
                            'strong' //加粗
                            , 'italic' //斜体
                            , 'underline' //下划线
                            , 'del' //删除/Del线
                            , '|' //分割线
                            , 'left' //左对齐
                            , 'center' //居中对齐
                            , 'right' //右对齐
                            , 'link' //超链接
                            , 'unlink' //清除链接
                            , 'image' //插入图片
                            , 'help' //帮助
                        ]
                    });
                        
            
            
            
            
            
            
            
            
            
            
    
                                                                                                                                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                    
    
                    
                            
                            
                            
                            
                            
                            async function list_enterprise_users() {
                        var enterprise_users = document.querySelector("#enterprise_users")
                        var op1 = document.createElement("option");
                        op1.value = '0'
                            enterprise_users.appendChild(op1)
                        // 收集数据 长度
                        var count
                        // 收集数据 数组
                        var arr = []
                        $.ajax({
                            url: BaseUrl + '/api/user/get_list?user_group=企业用户',
                            type: 'GET',
                            contentType: 'application/json; charset=UTF-8',
                            async: false,
                            dataType: 'json',
                            success: function (response) {
                                count = response.result.count
                                arr = response.result.list
                            }
                        })
                        for (var i = 0; i < arr.length; i++) {
                            var op = document.createElement("option");
                            // 给节点赋值
                            op.innerHTML = arr[i].username + "--" + arr[i].nickname
                            op.value = arr[i].user_id
                            // 新增/Add节点
                            enterprise_users.appendChild(op)
                            if (form_data2.enterprise_users==arr[i].enterprise_users){
                                op.selected = true
                            }
                            layui.form.render("select");
                        }
                    }

                    layui.form.on('select(enterprise_users)', function (data) {
                        form_data2.enterprise_users = Number(data.elem[data.elem.selectedIndex].value);
                    })
                    list_enterprise_users()
                                    
                            
                            
                            
                    
                                //文本
                    let position_name = document.querySelector("#position_name")
                        position_name.onkeyup = function (event) {
                        form_data2.position_name = event.target.value
                    }
                    //文本
                                                                                                                            //文本
                    let education_scope = document.querySelector("#education_scope")
                        education_scope.onkeyup = function (event) {
                        form_data2.education_scope = event.target.value
                    }
                    //文本
                                                                                //文本
                    let professional_scope = document.querySelector("#professional_scope")
                        professional_scope.onkeyup = function (event) {
                        form_data2.professional_scope = event.target.value
                    }
                    //文本
                                                                                //文本
                    let salary = document.querySelector("#salary")
                        salary.onkeyup = function (event) {
                        form_data2.salary = event.target.value
                    }
                    //文本
                                                                                                                            //文本
                    let enterprise_name = document.querySelector("#enterprise_name")
                        enterprise_name.onkeyup = function (event) {
                        form_data2.enterprise_name = event.target.value
                    }
                    //文本
                                                                                //文本
                    let business_address = document.querySelector("#business_address")
                        business_address.onkeyup = function (event) {
                        form_data2.business_address = event.target.value
                    }
                    //文本
                                                                                //文本
                    let enterprise_telephone = document.querySelector("#enterprise_telephone")
                        enterprise_telephone.onkeyup = function (event) {
                        form_data2.enterprise_telephone = event.target.value
                    }
                    //文本
                                                                                                                                                                                                                                                                                                                                                                                                                                    var data = sessionStorage.data || ''
            if (data !== '') {
                var data2 = JSON.parse(data)
                Object.keys(form_data2).forEach(key => {
                    Object.keys(data2).forEach(dbKey => {
                        if (key === dbKey) {
                            if (key!=='examine_state' && key!=='examine_reply'){
                                $('#' + key).val(data2[key])
                                form_data2[key] = data2[key]
                                $('#' + key).attr('disabled', 'disabled')
                                        
                                    
                                    
                                    
                                    
                                                                            for (let key in form_data2) {
                                            if (key == 'enterprise_users') {
                                                let alls = document.querySelector('#enterprise_users').querySelectorAll('option')
                                                let test = form_data2[key]
                                                for (let i = 0; i < alls.length; i++) {
                                                    layui.form.render("select");
                                                    if (alls[i].value == test) {
                                                        alls[i].selected = true
                                                        form_data2.enterprise_users = alls[i].value
                                                        layui.form.render("select");
                                                    }
                                                }
                                            }
                                        }
                                    
                                    
                                    
                                    
                                    
                                                        }
                        }
                    })
                })
                sessionStorage.removeItem("data");
            }
                                                                                                                        async function axios_get_4() {
                            if(user_group !='管理员'){
                                const {data: rese} = await axios.get(BaseUrl + '/api/user/get_list?user_group=' + user_group)
                                let data = rese.result.list

                                const {data: ress} = await axios.get(BaseUrl + '/api/user_group/get_obj?name=' + user_group)
                                const {data: res} = await axios.get(BaseUrl + '/api/' + ress.result.obj.source_table + '/get_obj?user_id=' + use_id)
                                Object.keys(form_data2).forEach(key => {
                                    Object.keys(res.result.obj).forEach(dbKey => {
                                        if (key === dbKey) {
                                            if (key!=='examine_state' && key!=='examine_reply'){
                                                $('#' + key).val(res.result.obj[key])
                                                form_data2[key] = res.result.obj[key]
                                                $('#' + key).attr('disabled', 'disabled')
                                            }
                                        }
                                    })
                                })

                                for (let key in res.result.obj) {
                                    if (key == 'user_id') {
                                        let alls = document.querySelector('#enterprise_users').querySelectorAll('option')
                                        let test = res.result.obj.user_id
                                        for (let i = 0; i < alls.length; i++) {
                                            if (alls[i].value == test) {
                                                alls[i].selected = true
                                                $('#enterprise_users').attr('disabled', 'disabled')
                                                form_data2.enterprise_users = alls[i].value
                                                layui.form.render("select");
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        axios_get_4()
                                                                                

            if (recruitment_information_id !== '') {
                async function axios_get_3() {
                    const {data: rese} = await axios.get(BaseUrl + '/api/recruitment_information/get_obj', {
                        params: {
                                recruitment_information_id: recruitment_information_id
                        }, headers: {
                            'x-auth-token': token
                        }
                    })

                    let data = rese.result.obj
                    Object.keys(form_data2).forEach((key) => {
                        form_data2[key] = data[key];
                        $("#"+key).val(form_data2[key])
                    });

                    

            
            
            
            
            
                                        for (let key in data) {
                                if (key == 'enterprise_users') {
                                    let alls = document.querySelector('#enterprise_users').querySelectorAll('option')
                                    let test = data[key]
                                    for (let i = 0; i < alls.length; i++) {
                                        layui.form.render("select");
                                        if (alls[i].value == test) {
                                            alls[i].selected = true
                                            form_data2.enterprise_users = alls[i].value
                                            layui.form.render("select");
                                        }
                                    }
                                }
                            }
                        
            
            
            
            
                                    if (user_group === '管理员') {
                            $("#position_name_box").show()
                        } else {
                            if ($check_field('set', 'position_name') || $check_field('get', 'position_name')){
                                $("#position_name_box").show()
                            }else {
                                $("#position_name_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#cover_box").show()
                        } else {
                            if ($check_field('set', 'cover') || $check_field('get', 'cover')){
                                $("#cover_box").show()
                            }else {
                                $("#cover_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#education_scope_box").show()
                        } else {
                            if ($check_field('set', 'education_scope') || $check_field('get', 'education_scope')){
                                $("#education_scope_box").show()
                            }else {
                                $("#education_scope_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#professional_scope_box").show()
                        } else {
                            if ($check_field('set', 'professional_scope') || $check_field('get', 'professional_scope')){
                                $("#professional_scope_box").show()
                            }else {
                                $("#professional_scope_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#salary_box").show()
                        } else {
                            if ($check_field('set', 'salary') || $check_field('get', 'salary')){
                                $("#salary_box").show()
                            }else {
                                $("#salary_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#enterprise_users_box").show()
                        } else {
                            if ($check_field('set', 'enterprise_users') || $check_field('get', 'enterprise_users')){
                                $("#enterprise_users_box").show()
                            }else {
                                $("#enterprise_users_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#enterprise_name_box").show()
                        } else {
                            if ($check_field('set', 'enterprise_name') || $check_field('get', 'enterprise_name')){
                                $("#enterprise_name_box").show()
                            }else {
                                $("#enterprise_name_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#business_address_box").show()
                        } else {
                            if ($check_field('set', 'business_address') || $check_field('get', 'business_address')){
                                $("#business_address_box").show()
                            }else {
                                $("#business_address_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#enterprise_telephone_box").show()
                        } else {
                            if ($check_field('set', 'enterprise_telephone') || $check_field('get', 'enterprise_telephone')){
                                $("#enterprise_telephone_box").show()
                            }else {
                                $("#enterprise_telephone_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#job_description_box").show()
                        } else {
                            if ($check_field('set', 'job_description') || $check_field('get', 'job_description')){
                                $("#job_description_box").show()
                            }else {
                                $("#job_description_box").hide()
                            }
                        }
                    
                    // Array.prototype.slice.call(document.getElementsByTagName('input')).map(i => i.disabled = true)
                    // Array.prototype.slice.call(document.getElementsByTagName('select')).map(i => i.disabled = true)
                    // Array.prototype.slice.call(document.getElementsByTagName('textarea')).map(i => i.disabled = true)
                                                    //文本
                                position_name.value = form_data2.position_name
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'position_name')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'position_name'))) {
                            }else {
                                $("#position_name").attr("disabled", true);
                                $("#position_name > input[name='file']").attr('disabled', true);
                            }
                                    
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'cover')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'cover'))) {
                            }else {
                                $("#cover").attr("disabled", true);
                                $("#cover > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                education_scope.value = form_data2.education_scope
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'education_scope')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'education_scope'))) {
                            }else {
                                $("#education_scope").attr("disabled", true);
                                $("#education_scope > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                professional_scope.value = form_data2.professional_scope
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'professional_scope')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'professional_scope'))) {
                            }else {
                                $("#professional_scope").attr("disabled", true);
                                $("#professional_scope > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                salary.value = form_data2.salary
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'salary')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'salary'))) {
                            }else {
                                $("#salary").attr("disabled", true);
                                $("#salary > input[name='file']").attr('disabled', true);
                            }
                                    
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'enterprise_users')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'enterprise_users'))) {
                            }else {
                                $("#enterprise_users").attr("disabled", true);
                                $("#enterprise_users > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                enterprise_name.value = form_data2.enterprise_name
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'enterprise_name')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'enterprise_name'))) {
                            }else {
                                $("#enterprise_name").attr("disabled", true);
                                $("#enterprise_name > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                business_address.value = form_data2.business_address
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'business_address')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'business_address'))) {
                            }else {
                                $("#business_address").attr("disabled", true);
                                $("#business_address > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                enterprise_telephone.value = form_data2.enterprise_telephone
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'enterprise_telephone')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'enterprise_telephone'))) {
                            }else {
                                $("#enterprise_telephone").attr("disabled", true);
                                $("#enterprise_telephone > input[name='file']").attr('disabled', true);
                            }
                                    
                                if (user_group === '管理员' || (form_data2['recruitment_information_id'] && $check_field('set', 'job_description')) || (!form_data2['recruitment_information_id'] && $check_field('add', 'job_description'))) {
                            }else {
                                $("#job_description").attr("disabled", true);
                                $("#job_description > input[name='file']").attr('disabled', true);
                            }
                                                                                                                            let cover_img = document.querySelector("#cover_img")
                                    cover_img.src = fullUrl(BaseUrl,form_data2.cover)
                                                                                                                                                                                                                                                                                                                        layedit.setContent(demo, form_data2.job_description)
                                                layui.form.render("select");
                }
                axios_get_3()
            }


            

            submit.onclick = async function () {
                try {
                                                                    //文本
                            form_data2.position_name = position_name.value
                            //文本
                                                                                                //文本
                            form_data2.education_scope = education_scope.value
                            //文本
                                                                    //文本
                            form_data2.professional_scope = professional_scope.value
                            //文本
                                                                    //文本
                            form_data2.salary = salary.value
                            //文本
                                                                                                //文本
                            form_data2.enterprise_name = enterprise_name.value
                            //文本
                                                                    //文本
                            form_data2.business_address = business_address.value
                            //文本
                                                                    //文本
                            form_data2.enterprise_telephone = enterprise_telephone.value
                            //文本
                                                    form_data2.job_description = layedit.getContent(demo)
                                            } catch (err) {
                    console.log(err)
                }
                            
            
                let customize_field = []
                                            customize_field.push({"field_name": "岗位名称", "field_value": form_data2.position_name});
                                                customize_field.push({
                            "field_name": "封面",
                            "field_value": form_data2.cover,
                            "type": "image"
                        });
                                                customize_field.push({"field_name": "学历范围", "field_value": form_data2.education_scope});
                                                customize_field.push({"field_name": "专业范围", "field_value": form_data2.professional_scope});
                                                customize_field.push({"field_name": "薪资", "field_value": form_data2.salary});
                                                customize_field.push({"field_name": "企业用户", "field_value": form_data2.enterprise_users});
                                                customize_field.push({"field_name": "企业名称", "field_value": form_data2.enterprise_name});
                                                customize_field.push({"field_name": "企业地址", "field_value": form_data2.business_address});
                                                customize_field.push({"field_name": "企业电话", "field_value": form_data2.enterprise_telephone});
                                                customize_field.push({"field_name": "岗位说明", "field_value": form_data2.job_description});
                    
    
                if (recruitment_information_id == '') {
                                        console.log("新增/Add")
                    const {data: res} = await axios.post(BaseUrl + '/api/recruitment_information/add?',
                            form_data2, {
                                headers: {
                                    'x-auth-token': token,
                                    'Content-Type': 'application/json'
                                }
                            })
                                        if (res.result == 1) {
                        layer.msg('确认/Confirm完毕');
                        setTimeout(function () {
                            window.location.replace("./table.jsp");
                        }, 1000)
                    }else {
              layer.msg(res.error.message);
            }
                                    } else {
                                        console.log("详情/Details")
                    
                    const {data: res} = await axios.post(BaseUrl + '/api/recruitment_information/set?recruitment_information_id=' + recruitment_information_id,
                            form_data2, {
                                headers: {
                                    'x-auth-token': token,
                                    'Content-Type': 'application/json'
                                }
                            })
                    if (res.result == 1) {
                        layer.msg('确认/Confirm完毕');
                        setTimeout(function () {
                            window.location.replace("./table.jsp");
                        }, 1000)
                    }else {
              layer.msg(res.error.message);
            }
                }
            }
        
    })
    ;
</script>

</html>
