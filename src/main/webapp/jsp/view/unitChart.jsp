<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>

    <script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/echart/echarts.js"></script>
</head>
<body>

    <div id="mychart" style="height: 400px"></div>
</body>
    <script>
        $(function(){
            $.post("/sqmy/getOrderUnits.do",function(data) {
                if (data != null) {
//                    alert("success：" + data.sumOrders[0].sum + "-" + data.length + "/" + data.sumOrders.length);
                    var sum = [];
                    var name = [];
                    for (var i = 0; i < data.sumOrders.length; i++) {
                        sum[i] = data.sumOrders[i].sum;
                        name[i] = data.sumOrders[i].name;
                        ///路径配置
                        require.config({
                            paths: {
                                echarts: '/sqmy/jsp/echart'
                            }
                        });
                        // 使用
                        require(
                                [
                                    'echarts',
                                    'echarts/chart/bar',
                                    'echarts/chart/line'
                                ],
                                function (ec) {
                                    // 基于准备好的dom，初始化echarts图表
                                    var myChart = ec.init(document.getElementById('mychart'));

                                    var zrColor = require('zrender/tool/color');
                                    var colorList = [

                                        '#ff7f50','#87cefa','#da70d6','#32cd32','#6495ed',
                                        '#ff69b4','#ba55d3','#cd5c5c','#ffa500','#40e0d0'
                                    ];
                                    var itemStyle = {
                                        normal: {
                                            color: function(params) {
                                                if (params.dataIndex < 0) {
                                                    // for legend
                                                    return zrColor.lift(
                                                            colorList[colorList.length - 1], params.seriesIndex * 0.1
                                                    );
                                                }
                                                else {
                                                    // for bar
                                                    return zrColor.lift(
                                                            colorList[params.dataIndex], params.seriesIndex * 0.1
                                                    );
                                                }
                                            }
                                        }
                                    };
                                    option = {
                                        title: {
                                            text: '单位上报统计',
                                            subtext: '上报民意数量排行'
                                        },
                                        tooltip: {
                                            trigger: 'axis',
                                            backgroundColor: 'rgba(255,255,255,0.7)',
                                            axisPointer: {
                                                type: 'shadow'
                                            },
                                            formatter: function(params) {
                                                // for text color
                                                var color = colorList[params[0].dataIndex];
                                                var res = '<div style="color:' + color + '">';
                                                res += '<strong>'+params[0].name+'</strong>'
                                                for (var i = 0, l = params.length; i < l; i++) {
                                                    //截断商品名
                                                    res += '<br/><strong>'+ params[i].seriesName + ' : ' + params[i].value +"</strong> <br /> "/*货物数量goodNames[i]*/+"</span>";
                                                }
                                                res += '</div>';
                                                return res;
                                            }
                                        },
                                        legend: {
                                            x: 'right',
                                            data:['总上报民意条数']
                                        },
                                        toolbox: {
                                            show: true,
                                            orient: 'vertical',
                                            y: 'center',
                                            feature: {
                                                mark: {show: false},
                                                dataView: {show: true, readOnly: false},
                                                restore: {show: true},
                                                magicType : {show: true, type: ['line', 'bar']},
                                                restore : {show: true},
                                                saveAsImage: {show: true}
                                            },

                                            calculable : true,
                                        },
                                        calculable: true,
                                        grid: {
                                            y: 80,
                                            y2: 40,
                                            x2: 40
                                        },
                                        xAxis: [
                                            {
                                                type: 'category',
                                                data: name /*["成都市政协","绵阳市政协","北川直报点","民盟四川省委","广元市政协","省政协外事委"]*/
                                            }
                                        ],
                                        yAxis: [
                                            {
                                                type: 'value'
                                            }
                                        ],
                                        series: [
                                            {
                                                name: '上报民意总数',
                                                type: 'bar',
                                                itemStyle: itemStyle,
//                                                barWidth:20,
                                                data: sum /*[50,42,36,28,25,20]*/
                                            }
                                        ]
                                    };
                                    // 为echarts对象加载数据
                                    myChart.setOption(option);
                                    window.onresize = myChart.resize;
                                }
                        );
                    }
                }else{
                    alert("统计失败");
                }
            });
        });

    </script>
</html>