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
                                                                                                        <div class="layui-form-item" id="application_number_box">
                                            <label class="layui-form-label">应聘编号</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入应聘编号"
                                                       class="layui-input" id="application_number">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="position_name_box">
                                            <label class="layui-form-label">岗位名称</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入岗位名称"
                                                       class="layui-input" id="position_name">
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
                                                <select name="interest" lay-filter="enterprise_users" id="enterprise_users">
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
                                                                                                                                        <div class="layui-form-item" id="student_users_box">
                                            <label class="layui-form-label">学生用户</label>
                                            <div class="layui-input-block">
                                                <select name="interest" lay-filter="student_users" id="student_users">
                                                    <option value=""></option>
                                                </select>
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="student_no_box">
                                            <label class="layui-form-label">学生学号</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入学生学号"
                                                       class="layui-input" id="student_no">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="student_name_box">
                                            <label class="layui-form-label">学生姓名</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入学生姓名"
                                                       class="layui-input" id="student_name">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="student_gender_box">
                                            <label class="layui-form-label">学生性别</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入学生性别"
                                                       class="layui-input" id="student_gender">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="major_box">
                                            <label class="layui-form-label">专业</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="title" lay-verify="title" autocomplete="off"
                                                       placeholder="请输入专业"
                                                       class="layui-input" id="major">
                                            </div>
                                        </div>
                                                                                                                                        <div class="layui-form-item" id="curriculum_vitae_box">
                                            <label class="layui-form-label">个人简历</label>
                                            <div class="layui-upload-drag" id="curriculum_vitae">
                                                <i class="layui-icon"></i>
                                                <p>将文件拖到此处,或点击上传</p>
                                                <div class="layui-hide">
                                                    <hr>
                                                    <img src="" alt="上传成功后渲染" style="max-width: 196px">
                                                </div>
                                            </div>
                                        </div>
                                                                                                                    <div class="layui-form-item" id="interview_date_box">
                                        <div class="layui-inline">
                                            <label class="layui-form-label">面试日期</label>
                                            <div class="layui-input-inline">
                                                <input type="text" class="layui-input" id="interview_date"
                                                       placeholder="yyyy-MM-dd">
                                            </div>
                                        </div>
                                    </div>
                                                                                                    <div class="layui-form-item layui-form-text" id="interview_information_box">
                                        <label class="layui-form-label">面试信息</label>
                                        <div class="layui-input-block">
                                            <textarea placeholder="请输入面试信息" class="layui-textarea"
                                                      id="interview_information"></textarea>
                                        </div>
                                    </div>
                                                                                                    <div class="layui-form-item" id="interview_status_box">
                                        <label class="layui-form-label">面试状态</label>
                                        <div class="layui-input-block">
                                            <select name="interest" lay-filter="interview_status" id="interview_status">
                                                <option value=""></option>
                                            </select>
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
    let interview_invitation_id = location.search.substring(1)
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
        // if (   user_group == "管理员" ||$check_action('/interview_invitation/view', 'add') || $check_action('/interview_invitation/view', 'set')) {
        //    submit.style.display = "block"
        // }
        // style="display: none"

        
            let field = "interview_invitation_id";
            let url_add = "interview_invitation";
            let url_set = "interview_invitation";
            let url_get_obj = "interview_invitation";
            let url_upload = "interview_invitation"
            let query = {
                "interview_invitation_id": 0,
            }

            let form_data2 = {
                                        "application_number":  '', // 应聘编号
                            "position_name":  '', // 岗位名称
                            "education_scope":  '', // 学历范围
                            "professional_scope":  '', // 专业范围
                            "salary":  '', // 薪资
                                "enterprise_users": 0, // 企业用户
                            "enterprise_name":  '', // 企业名称
                            "business_address":  '', // 企业地址
                            "enterprise_telephone":  '', // 企业电话
                                "student_users": 0, // 学生用户
                            "student_no":  '', // 学生学号
                            "student_name":  '', // 学生姓名
                            "student_gender":  '', // 学生性别
                            "major":  '', // 专业
                            "curriculum_vitae":  '', // 个人简历
                            "interview_date":  '', // 面试日期
                            "interview_information":  '', // 面试信息
                            "interview_status":  '', // 面试状态
                                    "interview_invitation_id": 0, // ID
                                            }

            layui.layedit.set({
      uploadImage: {
        url: BaseUrl + '/api/interview_invitation/upload?' //接口url
        , type: 'post' //默认post
      }
    });


            var path1

            function getpath() {
                var list_data = JSON.parse(sessionStorage.list_data)
                for (var i = 0; i < list_data.length; i++) {
                    var o = list_data[i];
                    if (o.path === "/interview_invitation/table") {
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
                var o = $get_power("/interview_invitation/view");
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
                    $("#application_number_box").show()
                } else {
                    if ($check_field('add', 'application_number')){
                        $("#application_number_box").show()
                    }else {
                        $("#application_number_box").hide()
                    }
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
                    $("#student_users_box").show()
                } else {
                    if ($check_field('add', 'student_users')){
                        $("#student_users_box").show()
                    }else {
                        $("#student_users_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#student_no_box").show()
                } else {
                    if ($check_field('add', 'student_no')){
                        $("#student_no_box").show()
                    }else {
                        $("#student_no_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#student_name_box").show()
                } else {
                    if ($check_field('add', 'student_name')){
                        $("#student_name_box").show()
                    }else {
                        $("#student_name_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#student_gender_box").show()
                } else {
                    if ($check_field('add', 'student_gender')){
                        $("#student_gender_box").show()
                    }else {
                        $("#student_gender_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#major_box").show()
                } else {
                    if ($check_field('add', 'major')){
                        $("#major_box").show()
                    }else {
                        $("#major_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#curriculum_vitae_box").show()
                } else {
                    if ($check_field('add', 'curriculum_vitae')){
                        $("#curriculum_vitae_box").show()
                    }else {
                        $("#curriculum_vitae_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#interview_date_box").show()
                } else {
                    if ($check_field('add', 'interview_date')){
                        $("#interview_date_box").show()
                    }else {
                        $("#interview_date_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#interview_information_box").show()
                } else {
                    if ($check_field('add', 'interview_information')){
                        $("#interview_information_box").show()
                    }else {
                        $("#interview_information_box").hide()
                    }
                }
                            if (user_group === '管理员') {
                    $("#interview_status_box").show()
                } else {
                    if ($check_field('add', 'interview_status')){
                        $("#interview_status_box").show()
                    }else {
                        $("#interview_status_box").hide()
                    }
                }
            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
                                // 面试状态选项列表
                    let interview_status_data = ['同意','拒绝'];
                
    
                                                                                                                                                                                                                            upload.render({
                            elem: '#curriculum_vitae'
                            , url: BaseUrl + '/api/interview_invitation/upload'
                            , headers: {
                                'x-auth-token': token
                            } //此处配置你自己的上传接口即可
                            , accept: 'file' //普通文件
                            , done: function (res) {
                                layer.msg('上传成功');
                                form_data2.curriculum_vitae = res.result.url
                            }
                        });
                                                                                
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                                                // 日期选择
                    laydate.render({
                        elem: '#interview_date'
                        , format: 'yyyy-MM-dd'
                        , done: function (value) {
                            form_data2.interview_date = value + ' 00:00:00'
                        }
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
                                    
                            
                            
                            
                            async function list_student_users() {
                        var student_users = document.querySelector("#student_users")
                        var op1 = document.createElement("option");
                        op1.value = '0'
                            student_users.appendChild(op1)
                        // 收集数据 长度
                        var count
                        // 收集数据 数组
                        var arr = []
                        $.ajax({
                            url: BaseUrl + '/api/user/get_list?user_group=学生用户',
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
                            student_users.appendChild(op)
                            if (form_data2.student_users==arr[i].student_users){
                                op.selected = true
                            }
                            layui.form.render("select");
                        }
                    }

                    layui.form.on('select(student_users)', function (data) {
                        form_data2.student_users = Number(data.elem[data.elem.selectedIndex].value);
                    })
                    list_student_users()
                                    
                            
                            
                            
                            
                            
                            
                                                async function interview_status() {
                        var interview_status = document.querySelector("#interview_status")
                        var op1 = document.createElement("option");
                        op1.value = '0'
                            interview_status.appendChild(op1)
                        // 收集数据 长度
                        var count
                        // 收集数据 数组
                        var arr = []
                        count = interview_status_data.length
                        arr = interview_status_data
                        for (var i = 0; i < arr.length; i++) {
                            var op = document.createElement("option");
                            // 给节点赋值
                            op.innerHTML = arr[i]
                            op.value = arr[i]
                            // 新增/Add节点
                            interview_status.appendChild(op)
                            if (form_data2.interview_status==arr[i].interview_status){
                                op.selected = true
                            }
                            layui.form.render("select");
                        }
                    }

                    layui.form.on('select(interview_status)', function (data) {
                        form_data2.interview_status = data.elem[data.elem.selectedIndex].text;
                    })
                        interview_status()
                
                    
                                //文本
                    let application_number = document.querySelector("#application_number")
                        application_number.onkeyup = function (event) {
                        form_data2.application_number = event.target.value
                    }
                    //文本
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
                                                                                                                            //文本
                    let student_no = document.querySelector("#student_no")
                        student_no.onkeyup = function (event) {
                        form_data2.student_no = event.target.value
                    }
                    //文本
                                                                                //文本
                    let student_name = document.querySelector("#student_name")
                        student_name.onkeyup = function (event) {
                        form_data2.student_name = event.target.value
                    }
                    //文本
                                                                                //文本
                    let student_gender = document.querySelector("#student_gender")
                        student_gender.onkeyup = function (event) {
                        form_data2.student_gender = event.target.value
                    }
                    //文本
                                                                                //文本
                    let major = document.querySelector("#major")
                        major.onkeyup = function (event) {
                        form_data2.major = event.target.value
                    }
                    //文本
                                                                                                                                                                                                //多文本
                    let interview_information = document.querySelector("#interview_information")
                    //多文本
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
                                    
                                    
                                    
                                    
                                                                            for (let key in form_data2) {
                                            if (key == 'student_users') {
                                                let alls = document.querySelector('#student_users').querySelectorAll('option')
                                                let test = form_data2[key]
                                                for (let i = 0; i < alls.length; i++) {
                                                    layui.form.render("select");
                                                    if (alls[i].value == test) {
                                                        alls[i].selected = true
                                                        form_data2.student_users = alls[i].value
                                                        layui.form.render("select");
                                                    }
                                                }
                                            }
                                        }
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                                                            for (let key in form_data2) {
                                            if (key == 'interview_status') {
                                                let alls = document.querySelector('#interview_status').querySelectorAll('option')
                                                let test = form_data2[key]
                                                for (let i = 0; i < alls.length; i++) {
                                                    if (alls[i].innerHTML == test) {
                                                        alls[i].selected = true
                                                        form_data2.interview_status = alls[i].text
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
                                                                                                                                                                                                                                                                                

            if (interview_invitation_id !== '') {
                async function axios_get_3() {
                    const {data: rese} = await axios.get(BaseUrl + '/api/interview_invitation/get_obj', {
                        params: {
                                interview_invitation_id: interview_invitation_id
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
                        
            
            
            
                                        for (let key in data) {
                                if (key == 'student_users') {
                                    let alls = document.querySelector('#student_users').querySelectorAll('option')
                                    let test = data[key]
                                    for (let i = 0; i < alls.length; i++) {
                                        layui.form.render("select");
                                        if (alls[i].value == test) {
                                            alls[i].selected = true
                                            form_data2.student_users = alls[i].value
                                            layui.form.render("select");
                                        }
                                    }
                                }
                            }
                        
            
            
            
            
            
            
            
                                        for (let key in data) {
                                if (key == 'interview_status') {
                                    let alls = document.querySelector('#interview_status').querySelectorAll('option')
                                    let test = data[key]
                                    for (let i = 0; i < alls.length; i++) {
                                        if (alls[i].innerHTML == test) {
                                            alls[i].selected = true
                                            form_data2.interview_status = alls[i].text
                                            layui.form.render("select");
                                        }
                                    }
                                }
                            }
                        
                                    if (user_group === '管理员') {
                            $("#application_number_box").show()
                        } else {
                            if ($check_field('set', 'application_number') || $check_field('get', 'application_number')){
                                $("#application_number_box").show()
                            }else {
                                $("#application_number_box").hide()
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
                            $("#student_users_box").show()
                        } else {
                            if ($check_field('set', 'student_users') || $check_field('get', 'student_users')){
                                $("#student_users_box").show()
                            }else {
                                $("#student_users_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#student_no_box").show()
                        } else {
                            if ($check_field('set', 'student_no') || $check_field('get', 'student_no')){
                                $("#student_no_box").show()
                            }else {
                                $("#student_no_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#student_name_box").show()
                        } else {
                            if ($check_field('set', 'student_name') || $check_field('get', 'student_name')){
                                $("#student_name_box").show()
                            }else {
                                $("#student_name_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#student_gender_box").show()
                        } else {
                            if ($check_field('set', 'student_gender') || $check_field('get', 'student_gender')){
                                $("#student_gender_box").show()
                            }else {
                                $("#student_gender_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#major_box").show()
                        } else {
                            if ($check_field('set', 'major') || $check_field('get', 'major')){
                                $("#major_box").show()
                            }else {
                                $("#major_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#curriculum_vitae_box").show()
                        } else {
                            if ($check_field('set', 'curriculum_vitae') || $check_field('get', 'curriculum_vitae')){
                                $("#curriculum_vitae_box").show()
                            }else {
                                $("#curriculum_vitae_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#interview_date_box").show()
                        } else {
                            if ($check_field('set', 'interview_date') || $check_field('get', 'interview_date')){
                                $("#interview_date_box").show()
                            }else {
                                $("#interview_date_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#interview_information_box").show()
                        } else {
                            if ($check_field('set', 'interview_information') || $check_field('get', 'interview_information')){
                                $("#interview_information_box").show()
                            }else {
                                $("#interview_information_box").hide()
                            }
                        }
                                            if (user_group === '管理员') {
                            $("#interview_status_box").show()
                        } else {
                            if ($check_field('set', 'interview_status') || $check_field('get', 'interview_status')){
                                $("#interview_status_box").show()
                            }else {
                                $("#interview_status_box").hide()
                            }
                        }
                    
                    // Array.prototype.slice.call(document.getElementsByTagName('input')).map(i => i.disabled = true)
                    // Array.prototype.slice.call(document.getElementsByTagName('select')).map(i => i.disabled = true)
                    // Array.prototype.slice.call(document.getElementsByTagName('textarea')).map(i => i.disabled = true)
                                                    //文本
                                application_number.value = form_data2.application_number
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'application_number')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'application_number'))) {
                            }else {
                                $("#application_number").attr("disabled", true);
                                $("#application_number > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                position_name.value = form_data2.position_name
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'position_name')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'position_name'))) {
                            }else {
                                $("#position_name").attr("disabled", true);
                                $("#position_name > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                education_scope.value = form_data2.education_scope
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'education_scope')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'education_scope'))) {
                            }else {
                                $("#education_scope").attr("disabled", true);
                                $("#education_scope > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                professional_scope.value = form_data2.professional_scope
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'professional_scope')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'professional_scope'))) {
                            }else {
                                $("#professional_scope").attr("disabled", true);
                                $("#professional_scope > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                salary.value = form_data2.salary
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'salary')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'salary'))) {
                            }else {
                                $("#salary").attr("disabled", true);
                                $("#salary > input[name='file']").attr('disabled', true);
                            }
                                    
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'enterprise_users')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'enterprise_users'))) {
                            }else {
                                $("#enterprise_users").attr("disabled", true);
                                $("#enterprise_users > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                enterprise_name.value = form_data2.enterprise_name
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'enterprise_name')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'enterprise_name'))) {
                            }else {
                                $("#enterprise_name").attr("disabled", true);
                                $("#enterprise_name > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                business_address.value = form_data2.business_address
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'business_address')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'business_address'))) {
                            }else {
                                $("#business_address").attr("disabled", true);
                                $("#business_address > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                enterprise_telephone.value = form_data2.enterprise_telephone
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'enterprise_telephone')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'enterprise_telephone'))) {
                            }else {
                                $("#enterprise_telephone").attr("disabled", true);
                                $("#enterprise_telephone > input[name='file']").attr('disabled', true);
                            }
                                    
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'student_users')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'student_users'))) {
                            }else {
                                $("#student_users").attr("disabled", true);
                                $("#student_users > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                student_no.value = form_data2.student_no
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'student_no')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'student_no'))) {
                            }else {
                                $("#student_no").attr("disabled", true);
                                $("#student_no > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                student_name.value = form_data2.student_name
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'student_name')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'student_name'))) {
                            }else {
                                $("#student_name").attr("disabled", true);
                                $("#student_name > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                student_gender.value = form_data2.student_gender
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'student_gender')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'student_gender'))) {
                            }else {
                                $("#student_gender").attr("disabled", true);
                                $("#student_gender > input[name='file']").attr('disabled', true);
                            }
                                                        //文本
                                major.value = form_data2.major
                            //文本
                                
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'major')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'major'))) {
                            }else {
                                $("#major").attr("disabled", true);
                                $("#major > input[name='file']").attr('disabled', true);
                            }
                                    
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'curriculum_vitae')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'curriculum_vitae'))) {
                            }else {
                                document.getElementById("curriculum_vitae").disabled = true;
                            }
                                    
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'interview_date')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'interview_date'))) {
                            }else {
                                $("#interview_date").attr("disabled", true);
                                $("#interview_date > input[name='file']").attr('disabled', true);
                            }
                                                                //多文本
                                interview_information.value = form_data2.interview_information
                            //多文本
                        
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'interview_information')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'interview_information'))) {
                            }else {
                                $("#interview_information").attr("disabled", true);
                                $("#interview_information > input[name='file']").attr('disabled', true);
                            }
                                    
                                if (user_group === '管理员' || (form_data2['interview_invitation_id'] && $check_field('set', 'interview_status')) || (!form_data2['interview_invitation_id'] && $check_field('add', 'interview_status'))) {
                            }else {
                                $("#interview_status").attr("disabled", true);
                                $("#interview_status > input[name='file']").attr('disabled', true);
                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    interview_date.value = layui.util.toDateString(form_data2.interview_date, "yyyy-MM-dd")
                                                                                                                            layui.form.render("select");
                }
                axios_get_3()
            }


            

            submit.onclick = async function () {
                try {
                                                                    //文本
                            form_data2.application_number = application_number.value
                            //文本
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
                                                                                                //文本
                            form_data2.student_no = student_no.value
                            //文本
                                                                    //文本
                            form_data2.student_name = student_name.value
                            //文本
                                                                    //文本
                            form_data2.student_gender = student_gender.value
                            //文本
                                                                    //文本
                            form_data2.major = major.value
                            //文本
                                                                                    form_data2.interview_date = layui.util.toDateString(form_data2.interview_date, "yyyy-MM-dd")
                                                                                    //多文本
                            form_data2.interview_information = interview_information.value
                            //多文本
                                                                } catch (err) {
                    console.log(err)
                }
                            
            
                let customize_field = []
                                            customize_field.push({"field_name": "应聘编号", "field_value": form_data2.application_number});
                                                customize_field.push({"field_name": "岗位名称", "field_value": form_data2.position_name});
                                                customize_field.push({"field_name": "学历范围", "field_value": form_data2.education_scope});
                                                customize_field.push({"field_name": "专业范围", "field_value": form_data2.professional_scope});
                                                customize_field.push({"field_name": "薪资", "field_value": form_data2.salary});
                                                customize_field.push({"field_name": "企业用户", "field_value": form_data2.enterprise_users});
                                                customize_field.push({"field_name": "企业名称", "field_value": form_data2.enterprise_name});
                                                customize_field.push({"field_name": "企业地址", "field_value": form_data2.business_address});
                                                customize_field.push({"field_name": "企业电话", "field_value": form_data2.enterprise_telephone});
                                                customize_field.push({"field_name": "学生用户", "field_value": form_data2.student_users});
                                                customize_field.push({"field_name": "学生学号", "field_value": form_data2.student_no});
                                                customize_field.push({"field_name": "学生姓名", "field_value": form_data2.student_name});
                                                customize_field.push({"field_name": "学生性别", "field_value": form_data2.student_gender});
                                                customize_field.push({"field_name": "专业", "field_value": form_data2.major});
                                                customize_field.push({
                            "field_name": "个人简历",
                            "field_value": form_data2.curriculum_vitae,
                            "type": "file"
                        });
                                                customize_field.push({
                            "field_name": "面试日期",
                            "field_value": form_data2.interview_date,
                            "type": "date"
                        });
                                                customize_field.push({"field_name": "面试信息", "field_value": form_data2.interview_information});
                                                customize_field.push({"field_name": "面试状态", "field_value": form_data2.interview_status});
                    
    
                if (interview_invitation_id == '') {
                                        console.log("新增/Add")
                    const {data: res} = await axios.post(BaseUrl + '/api/interview_invitation/add?',
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
                    
                    const {data: res} = await axios.post(BaseUrl + '/api/interview_invitation/set?interview_invitation_id=' + interview_invitation_id,
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
