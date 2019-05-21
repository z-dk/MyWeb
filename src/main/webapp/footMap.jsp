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
    <div id="body" style="height: 400px;width: 800px">
        <div id="map" style="width:600px;height:400px;float: left;"></div>
        <div id="detail" style="width: 200px;height: 400px;float: left;">
            <h3>{{province}}</h3>
            <p v-html="detail"></p>
        </div>
    </div>

    <script>
        var vue;
        vue = new Vue({
            el: "#body",
            data: {
                province:'足迹成就8/34',
                detail:'&nbsp;&nbsp;&nbsp;&nbsp;从2010年起，解锁了8个省市的成就'
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
                        vue.province = optionMap.series[0].data[param.dataIndex].name;
                        if (vue.province === '山西'){
                            vue.detail = '太原：2015-2019年<br/>晋中平遥：2017年10月<br/>' +
                                '临汾襄汾：2017年<br/>&nbsp;&nbsp;&nbsp;&nbsp;2015年我第一次来到山西，来到太原中北上学，' +
                                '2017年五一，宿舍集体跟着当时唯一的山西室友回家了。2017年国庆，太原出发2' +
                                '个小时的火车到达平遥古城参观了一下免费区域。'
                        } else if (vue.province === '北京'){
                            vue.detail = '朝阳望京：2010，2011年<br/>大兴亦庄：2013年<br/>&nbsp;&nbsp;&nbsp;&nbsp;' +
                                '2010年第一次出河南省，对我这个没见过什么世面的来说有了太多的第一次，' +
                                '。。。'
                        } else if (vue.province === '天津'){
                            vue.detail = '北辰：2012，2015年<br/>河北区：2019<br/>和平区：2019年<br/>&nbsp;&nbsp;&nbsp;&nbsp;' +
                                '2019年，大学毕业，我的第一份工作，在这里'
                        } else if (vue.province === '内蒙古'){
                            vue.detail = '呼和浩特：2016年<br/>鄂尔多斯.达拉特旗：2016年<br/>&nbsp;&nbsp;&nbsp;&nbsp;' +
                                '2016年国庆，旅游，呼市北部的草原，包头的哈素海，达拉特旗的响沙湾'
                        } else if (vue.province === '宁夏'){
                            vue.detail = '银川：2019年<br/>&nbsp;&nbsp;&nbsp;&nbsp;' +
                                '2019年，劳动节，第一次一个人去旅行，镇北堡西部影视城'
                        } else if (vue.province === '浙江'){
                            vue.detail = '舟山：2017<br/>杭州：2017年<br/>&nbsp;&nbsp;&nbsp;&nbsp;' +
                                '2017年暑假，去找老同学了，边兼职边旅游，返程时杭州3日游'
                        } else if (vue.province === '河南'){
                            vue.detail = '驻马店：故乡<br/>南阳：2005年<br/>周口：2015年<br/>&nbsp;&nbsp;&nbsp;&nbsp;' +
                                '虽然作为河南的，但其他地方好像真没去过，确实是有些说不过去。'
                        } else if (vue.province === '山东'){
                            vue.detail = '济宁.邹城：2014<br/>&nbsp;&nbsp;&nbsp;&nbsp;' +
                                '2014年暑假，从一个呆惯了的县城去了一个没有去过的县城。'
                        } else {
                            vue.detail = '很遗憾，我好像还没有去过这里，敬请期待'
                        }
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
