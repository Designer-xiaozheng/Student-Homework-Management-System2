<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 首页 -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>
    <title>首页</title>
    <!-- 引入刚刚下载的 ECharts 文件 -->
    <script src="../js/index.js"></script>
    <script src="../js/axios.min.js"></script>
    <script src="../js/echarts.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <link rel="stylesheet" href="../css/diy.css">

</head>
<style>
    canvas {
        position: relative !important;
    }

    #test div::before {
        content: '';
        width: 100px;
        position: absolute;
        top: 154px;
        right: 129px;
        z-index: 999;
        height: 20px;
        background-color: #FFFFFF;
    }

    #i {
        position: fixed;
        top: 400px;
        right: 100px;
        z-index: 1000;
    }

</style>

<body>
<div>
    <div class="layui-col-md">
        <div class="layui-panel">
            <div id="i"></div>
        </div>
    </div>
</div>
<!-- 为 ECharts 准备一个定义了宽高的 DOM -->

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <div class="box">
                    <div id="employment_information" style="width: 600px;height:400px; display: none"></div>
                </div>
                                        
    
    
    <script src="../js/base.js"></script>
<script type="text/javascript">
    var BaseUrl = baseUrl()
    let personInfo = JSON.parse(sessionStorage.personInfo)

    // 请求数据

    async function get_list() {
        let {data: ren} = await axios.get(BaseUrl + '/api/auth/get_list', {
            params: {
                user_group: personInfo.user_group
            }
        })
        permissions = ren.result.list


    function $get_power(path) {
        var list = permissions;
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

    /**
     * 是否有统计字段的权限
     */
    function $check_figure(path) {
        var o = $get_power(path);
        if (o) {
            var option = JSON.parse(o.option);
            if (option.figure)
                return true
        }
        return false;
    }

    function $check_comment(path) {
        var o = this.$get_power(path);
        if (o) {
            var option = JSON.parse(o.option);
            if (option.can_show_comment)
                return true
        }
        return false;
    }

                                                                                                                                                                                                                                                                                                                                                                    let employment_information = document.querySelector('#employment_information')

                        if (personInfo.user_group === '管理员' || $check_figure('/employment_information/table')) {
                                employment_information.style.display = 'block'
                        } else {
                                employment_information.style.display = 'none'
                        }
                                    }

    get_list()

    async function echartsFun(id, url, title) {

        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById(id));

        let user_group = personInfo.user_group
        let user_id = personInfo.user_id

                                                                                                                                                                                                                                                                                                                                                                                                            if (user_group != '管理员') {
                                                                    let sqlwhere = "(";
                                                                                                                                                                                                                                                                                        if (user_group == "企业用户" && title == '就业信息') {
                                                sqlwhere += "enterprise_users = " + user_id + " or ";
                                            }
                                                                                                                                                                                                                                    if (user_group == "学生用户" && title == '就业信息') {
                                                sqlwhere += "student_users = " + user_id + " or ";
                                            }
                                                                                                                                                                                                                                                                                if (sqlwhere.length > 1) {
                                        sqlwhere = sqlwhere.substr(0, sqlwhere.length - 4);
                                        sqlwhere += ")";
                                        url += "&sqlwhere=" + sqlwhere
                                    }
                                                            }
                                                
        let {data: res} = await axios.get(url)

        let arr = []

        arr = res.result.list.map((o) => {
            return {
                name: o[1],
                value: o[0]
            };
        });
        // 指定图表的配置项和数据
        var option = {
            title: {
                text: title,
                left: 'center'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                orient: 'vertical',
                left: 'left'
            },
            series: [
                {
                    name: '参数',
                    type: 'pie',
                    radius: '50%',
                    data: arr,
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    }

                                                                                                                                                                                                                                                                                                                                                                echartsFun('employment_information', BaseUrl + '/api/employment_information/list_group?groupby=employment_status', '就业信息')
                                

    let ii = document.querySelector('#i')
    let i

    async function axioss() {
        const {data: res} = await axios.get(BaseUrl + '/api/user/count')
        i = res.result
        ii.innerHTML = "用户数量" + i + "人"
    }

    axioss()
</script>
</body>

</html>
