<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
 
    <script src="${pageContext.request.contextPath }/js/echarts.js"></script>
</head>
<body>
 
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        
        var myChart = echarts.init(document.getElementById('main'));
        var option = {
            title: {
                text: 'ECharts 入门示例'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: []
            }]
        }; 
        loadDATA(option);
        myChart.setOption(option);
        var name=[];
        var num=[];
        
        function  loadDATA(option){
        $ajax({
        	type:"post",
        	async : true,
        	dataType:"Json",
        	data:{},
        	url:"${pageContext.request.contextPath}/course/sub.action",
        	success:function(data){
        		for(var i=0;i<data.length;i++){
        			name.push(data[i].name);
        			num.push(data[i].avergeNum);
        		}
        		option.xAxis.data=name;
        		option.series.data=num;
        	}
        	
        	
        });
        
        
        
        	
        }	
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </script>
</body>
</html>