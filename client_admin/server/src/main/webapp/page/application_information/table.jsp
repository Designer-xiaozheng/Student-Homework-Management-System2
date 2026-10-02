<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- table 页面 -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <link rel="stylesheet" href="../../css/diy.css">

</head>

<body>
<div class="section1">
    <!-- 内容主体区域 -->
    <div class="manu" style="padding: 15px;">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                
                                                    <label class="layui-form-label">岗位名称</label>
                                                            <div class="layui-input-block block">
                                    <input type="text" name="title" required lay-verify="required" autocomplete="off"
                                           class="layui-input">
                                </div>
                                                                                                                            <label class="layui-form-label">企业名称</label>
                                                            <div class="layui-input-block block">
                                    <input type="text" name="title" required lay-verify="required" autocomplete="off"
                                           class="layui-input">
                                </div>
                                                                                                                            <label class="layui-form-label">学生姓名</label>
                                                            <div class="layui-input-block block">
                                    <input type="text" name="title" required lay-verify="required" autocomplete="off"
                                           class="layui-input">
                                </div>
                                                                                        </div>
        </form>
    </div>
    <div class="buts">
                    <button type="button" class="layui-btn layui-btn-normal" id="inquire">查询/Query</button>
            <button type="button" class="layui-btn layui-btn-normal" id="reset">重置/Reset</button>
                <button type="button" class="layui-btn layui-btn-normal" id="delete" style="display: none">删除/Del</button>
        <a href="./view_add.jsp" type="button" class="layui-btn layui-btn-normal" target="main_self_frame" id="add"
           style="display: none">新增/Add</a>

            </div>


    <div class="table">
        <table class="layui-hide" id="application_information" lay-filter="application_information"></table>

        <script type="text/html" id="toolbarDemo">
            <div class="layui-btn-container">

                                            <!--跨表按钮-->
                                                    {{# if(d.add_interview_invitation>0){ }}
                            <button class="layui-btn layui-btn-sm" lay-event="interview_invitation">面试邀请</button>
                            {{# } }}
                            


                {{# if(d.detail_flag){ }}
                <button class="layui-btn layui-btn-sm" lay-event="detail">详情/Details</button>
                {{# } }}
            </div>
        </script>
    </div>
</div>
</body>
<script src="../../layui/layui.js"></script>
<script src="../../js/index.js"></script>
<script src="../../js/base.js"></script>
<script src="../../js/axios.min.js"></script>
    <script>

    var BaseUrl = baseUrl()
    layui.use(['element', 'layer', 'util'], function () {
        var element = layui.element
                , layer = layui.layer
                , util = layui.util
                , table = layui.table
                , $ = layui.$;

        let personInfo = JSON.parse(sessionStorage.personInfo)
        let user_group = personInfo.user_group
        let use_id = personInfo.user_id
        let url = BaseUrl + '/api/application_information/get_list?like=0'

        let deletes = document.querySelector('#delete')
        let add = document.querySelector('#add')
        let sqlwhere
        let data_data = {size: 10, orderby: 'create_time desc'}
        let detail_flag = false;

        // 获取路径权限
        async function get_list() {
            let {data: ren} = await axios.get(BaseUrl + '/api/auth/get_list', {
                params: {
                    user_group: personInfo.user_group
                }
            })
        }

        get_list()


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

        if (user_group == "管理员" || $check_action('/application_information/table', 'del') || $check_action('/application_information/view', 'del')) {
            deletes.style.display = "block"
        }
        if (user_group == "管理员" || $check_action('/application_information/table', 'add') || $check_action('/application_information/view', 'add')) {
            add.style.display = "block"
        }
        if (user_group == "管理员" || $check_action('/application_information/view', 'get') || $check_action('/application_information/view', 'set')) {
            detail_flag = true;
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

        var path1

        function getpath() {
            var list_data = JSON.parse(sessionStorage.list_data)
            for (var i = 0; i < list_data.length; i++) {
                var o = list_data[i];
                if (o.path === "/application_information/table") {
                    console.log(o.path);
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
         * 是否有显示或操作支付的权限
         * @param {String} path 路径
         */
        function $check_pay(path) {
            let o = $get_power(path);
            if (o){
                let option = JSON.parse(o.option);
                if (option.pay)
                    return true
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

        function $check_option(path,op) {
            var o = $get_power(path);
            if (o){
                var option = JSON.parse(o.option);
                if (option[op])
                    return true
            }
            return false;
        }

                    if (user_group != "管理员") {
                                    sqlwhere = "(";
                                                                        if (user_group == "企业用户") {
                                sqlwhere += "enterprise_users = " + use_id + " or ";
                            }
                                                                    if (user_group == "学生用户") {
                                sqlwhere += "student_users = " + use_id + " or ";
                            }
                                                                if (sqlwhere.length > 1) {
                        sqlwhere = sqlwhere.substr(0, sqlwhere.length - 4);
                        sqlwhere += ")";
                        data_data = {size: 10, orderby: 'create_time desc', sqlwhere: sqlwhere}
                    }else {
                        sqlwhere = null
                    }
                            }
        
        let token = sessionStorage.token || null
    table.render({
        elem: '#application_information'
        , toolbar: true
        , url: url
        , headers: {
            'x-auth-token': token,
            'Content-Type': 'application/json'
        }
        , page: {
            layout: ['limit', 'count', 'prev', 'page', 'next', 'skip']
            //,curr: 5
            , groups: 1
            , first: false
            , last: false
        }
        , cols: [[
                    {type: 'checkbox', fixed: 'left'}
        
                    , {
                field: 'application_number', width: 180, title: '应聘编号', sort: true
                                                                                
            }
                                , {
                field: 'position_name', width: 180, title: '岗位名称', sort: true
                                                                                
            }
                                , {
                field: 'education_scope', width: 180, title: '学历范围', sort: true
                                                                                
            }
                                , {
                field: 'professional_scope', width: 180, title: '专业范围', sort: true
                                                                                
            }
                                , {
                field: 'salary', width: 180, title: '薪资', sort: true
                                                                                
            }
                                , {
                field: 'enterprise_users', width: 180, title: '企业用户', sort: true
                                                                                                    , templet:

                            function (d) {
                                let nickname = ""
                                let username = ""
                                $.ajax({
                                    url: BaseUrl + "/api/user/get_list",
                                    type: "get",
                                    async: false,
                                    data: {
                                        user_group: "企业用户"
                                    },
                                    success: function (data) {
                                        if (data && typeof data === 'string'){
                                            data = JSON.parse(data);
                                        }
                                        if (data.result) {
                                            for (let index = 0; index < data.result.list.length; index++) {
                                                if (d.enterprise_users === data.result.list[index].user_id) {
                                                    nickname = data.result.list[index].nickname
                                                    username = data.result.list[index].username
                                                }
                                            }
                                        }
                                    }
                                });
                                return '<span>' + username + '-' + nickname + '</span>'
                            }
                
            }
                                , {
                field: 'enterprise_name', width: 180, title: '企业名称', sort: true
                                                                                
            }
                                , {
                field: 'business_address', width: 180, title: '企业地址', sort: true
                                                                                
            }
                                , {
                field: 'enterprise_telephone', width: 180, title: '企业电话', sort: true
                                                                                
            }
                                , {
                field: 'student_users', width: 180, title: '学生用户', sort: true
                                                                                                    , templet:

                            function (d) {
                                let nickname = ""
                                let username = ""
                                $.ajax({
                                    url: BaseUrl + "/api/user/get_list",
                                    type: "get",
                                    async: false,
                                    data: {
                                        user_group: "学生用户"
                                    },
                                    success: function (data) {
                                        if (data && typeof data === 'string'){
                                            data = JSON.parse(data);
                                        }
                                        if (data.result) {
                                            for (let index = 0; index < data.result.list.length; index++) {
                                                if (d.student_users === data.result.list[index].user_id) {
                                                    nickname = data.result.list[index].nickname
                                                    username = data.result.list[index].username
                                                }
                                            }
                                        }
                                    }
                                });
                                return '<span>' + username + '-' + nickname + '</span>'
                            }
                
            }
                                , {
                field: 'student_no', width: 180, title: '学生学号', sort: true
                                                                                
            }
                                , {
                field: 'student_name', width: 180, title: '学生姓名', sort: true
                                                                                
            }
                                , {
                field: 'student_gender', width: 180, title: '学生性别', sort: true
                                                                                
            }
                                , {
                field: 'major', width: 180, title: '专业', sort: true
                                                                                
            }
                                , {
                field: 'curriculum_vitae', width: 180, title: '个人简历', sort: true
                                                                    , templet: function (d) {
                        return "<div><a href=" + fullUrl(BaseUrl,d.curriculum_vitae) + " target='_blank'> 点击下载</a></div > "
                    }
                                                
            }
            
            ,
            {
                field: 'examine_state', title
        :
            '审核状态', sort
        :
            true, width
        :
            150
        }
        
        ,
            {
                field: 'examine_reply', title
            :
                '审核回复', sort
            :
                true, width
            :
                150
            }
        
    ,
        {
            field: 'create_time',
                    width
        :
            '20%',
                    title
        :
            '新增时间',
                    sort
        :
            true,
                    templet
        :
            "<div>{{layui.util.toDateString(d.create_time, 'yyyy-MM-dd HH:mm:ss')}}</div>"
        }
    ,
        {
            field: 'update_time',
                    width
        :
            '20%',
                    title
        :
            '更新时间',
                    sort
        :
            true,
                    templet
        :
            "<div>{{layui.util.toDateString(d.update_time, 'yyyy-MM-dd HH:mm:ss')}}</div>"
        }
        



        ,
            {
                field: 'operate',
                        title
            :
                '操作',
                        sort
            :
                true,
                        width
            :
                '20%',
                        fixed
            :
                'right',
                        toolbar
            :
                "#toolbarDemo"
            }
            ]]

    ,
        done: function (res, curr, count) { // 表格渲染完成之后的回调
            if (res.count == null) { // 无数据时直接返回了
                return;
            }

                                    if (user_group === '管理员' || $check_field('get', 'application_number', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='application_number']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'position_name', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='position_name']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'education_scope', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='education_scope']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'professional_scope', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='professional_scope']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'salary', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='salary']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'enterprise_users', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='enterprise_users']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'enterprise_name', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='enterprise_name']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'business_address', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='business_address']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'enterprise_telephone', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='enterprise_telephone']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'student_users', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='student_users']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'student_no', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='student_no']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'student_name', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='student_name']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'student_gender', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='student_gender']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'major', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='major']").css('display', 'none');
                    }
                                        if (user_group === '管理员' || $check_field('get', 'curriculum_vitae', path1)) {
                        // console.log("显示")
                    } else {
                        $("[data-field='curriculum_vitae']").css('display', 'none');
                    }
                



            // 重新渲染
        }
    ,
        page: true,
                request
    :
        {
            limitName: 'size'
        }
    ,
        response: {
            statusName: 'code', //规定返回/Back的状态码字段为code
                    statusCode
        :
            200 //规定成功的状态码为200
        }
    ,
        parseData: function (res) {

                                    <!--跨表按钮-->
                                            if (user_group == "管理员" || $check_action('/interview_invitation/table', 'add') || $check_action('/interview_invitation/view', 'add')) {
                            for (var i = 0; i < res.result.list.length; i++) {
                                res.result.list[i].add_interview_invitation = 1
                            }
                        }
                        
            if (user_group == "管理员" || $check_pay('/application_information/table')) {
                for (var i = 0; i < res.result.list.length; i++) {
                    res.result.list[i].check_pay = true
                }
            }
            if (user_group == "管理员" || $check_action('/application_information/view', 'set') || $check_action('/application_information/view', 'get')) {
                for (var i = 0; i < res.result.list.length; i++) {
                    res.result.list[i].detail_flag = detail_flag
                }
            }
            return {
                "code": 200,
                "msg": "",
                "count": res.result.count,
                "data": res.result.list
            }
        }
    ,
        where: data_data
    })
        ;


        table.on('tool(application_information)', function (obj) {
            var data = obj.data;
        if (obj.event === 'detail')
        {

                            window.location.href = "./view_add.jsp?" + data.application_information_id;
                    }
            
                                else if (obj.event === 'interview_invitation'){
                        sessionStorage.setItem('data', JSON.stringify(data))
                        window.location.href = "../interview_invitation/view_add.jsp?"
                    }
                        

        });

        //下拉框

        
                                                                local("enterprise_users", "企业用户", "enterprise_users")
                let enterprise_users
                layui.form.on('select(enterprise_users)', function (data) {
                    request['enterprise_users'] = Number(data.elem[data.elem.selectedIndex].value);
                });
                                                            local("student_users", "学生用户", "student_users")
                let student_users
                layui.form.on('select(student_users)', function (data) {
                    request['student_users'] = Number(data.elem[data.elem.selectedIndex].value);
                });
                                                                                                                                                                            
        // 请求参数：
        let request = {
            like: 0, size: 10, page: 1,
                                                                                                                'position_name': '',
                                                                                                                                                                                                                            'enterprise_name': '',
                                                                                                                                                                                                                            'student_name': '',
                                                                                                                                            }

        if (user_group != "管理员") {
            request['orderby'] = 'create_time desc'
            if (sqlwhere){
                request['sqlwhere'] = sqlwhere
            }
        }

        // 重置/Reset参数
        let resetName = data_data

        // 下拉框的重置/Reset参数
        let resetSelect = []
        //下拉框重置/Reset参数
        fun('application_information', BaseUrl + '/api/application_information/del', 'application_information_id', request, resetName, resetSelect        )

    
    })
</script>

</html>
