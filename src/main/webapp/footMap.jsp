<%--
  Created by IntelliJ IDEA.
  User: z_dk
  Date: 2019/5/20
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的足迹</title>

    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <%--<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=qv49V88gmcKz1K2siPx1USonR6rT0kaA"></script>--%>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

    <script src="static/js/vue.min.js"></script>
    <script src="static/js/echarts.min.js"></script>
    <script src="static/js/china.js"></script>

    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" />
    <script type="text/javascript" src="static/js/jquery-3.3.1.js"></script>
    <script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</head>
<body>
    <div id="map" style="width:600px;height:400px;"></div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="{{modalTitle}}">
        <div class="modal-dialog" role="document">
            ....
        </div>
    </div>
    <script>
        var vue;
        vue = new Vue({
            el: "#map",
            data: {
                modalTitle:''
            },
            methods: {
                showMap: function () {
                    var myChart = echarts.init(document.getElementById('map'));
                    var mydata = [
                        {name: '北京',value: 3 },{name: '天津',value: 6 },
                        {name: '上海',value: 0 },{name: '重庆',value: 0 },
                        {name: '河北',value: 0 },{name: '河南',value: 99 },
                        {name: '云南',value: 0 },{name: '辽宁',value: 0 },
                        {name: '黑龙江',value: 0 },{name: '湖南',value: 0 },
                        {name: '安徽',value: 0 },{name: '山东',value: 1 },
                        {name: '新疆',value: 0 },{name: '江苏',value: 0 },
                        {name: '浙江',value: 2 },{name: '江西',value: 0 },
                        {name: '湖北',value: 0 },{name: '广西',value: 0 },
                        {name: '甘肃',value: 0 },{name: '山西',value: 10 },
                        {name: '内蒙古',value: 1 },{name: '陕西',value: 0 },
                        {name: '吉林',value: 0 },{name: '福建',value: 0 },
                        {name: '贵州',value: 0 },{name: '广东',value: 0 },
                        {name: '青海',value: 0 },{name: '西藏',value: 0 },
                        {name: '四川',value: 0 },{name: '宁夏',value: 1 },
                        {name: '海南',value: 0 },{name: '台湾',value: 0 },
                        {name: '香港',value: 0 },{name: '澳门',value: 0 }
                    ];
                    var optionMap = {
                        backgroundColor: '#fbffe5',
                        title: {
                        text: '足迹地图大数据',
                            subtext: '这里记录了我的足迹，单位/次',
                            x:'center'
                        },
                        tooltip : {
                            trigger: 'item'
                        },

                        //左侧小导航图标
                        visualMap: {
                            show : true,
                            right:0,
                            top:'middle',
                            splitList: [
                                {start: 20, end:99},{start: 10, end: 20},
                                {start: 6, end: 10},{start: 2, end: 5},
                                {start: 1, end: 1},{start: 0, end: 0}
                            ],
                            color: ['#5475f5', '#9feaa5', '#85daef','#74e2ca', '#e6ac53', '#ffffff']
                        },

                        //配置属性
                        series: [{
                            name: '数据',
                            type: 'map',
                            map: 'china',
                            roam: true,
                            label: {
                                normal: {
                                    show: true  //省份名称
                                },
                                emphasis: {
                                    show: false
                                }
                            },
                            data:mydata  //数据
                        }]
                    };
                    myChart.setOption(optionMap);
                    myChart.on('click',function (param) {
                        //alert(param.dataIndex+':'+optionMap.series[0].data[param.dataIndex].name);
                        //this.modalTitle = optionMap.series[0].data[param.dataIndex].name;
                        //$('#myModal').modal('show')
                    })
                }
            },
            ready:function () {
                this.showMap()
            }
        })
    </script>
</body>
</html>
