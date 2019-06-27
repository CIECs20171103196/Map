<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>百度地图-多个坐标点一起显示</title>
    <style type="text/css">
		 #allmap {width: 100%;height: 600px;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
</head>


<body>
    <table style="width:100%">
        <tr>
        <td style="width:250px;"> 
            <ul>
                <li><a href="javascript:void(0)" onclick="to(116.404,39.915)">水厂1</a></li>
                <li><a href="javascript:void(0)" onclick="to(116.383752,39.91334)">水厂2</a></li>
                <li><a href="javascript:void(0)" onclick="to(116.384502,39.932241)">水厂3</a></li>
            </ul>
        </td>
        <td>
                <div id="allmap"></div>
        </td>
    </tr>
    </table>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=SyRux96r0i0Xue1Qqp0ZPb4uCc8BC6Aw"></script>
    <script type="text/javascript">
        // 百度地图API功能
        var map = new BMap.Map("allmap");
        var point = new BMap.Point(116.404, 39.915);
        map.centerAndZoom(point, 15);
        
        var json_data = [[118.404,39.915,'图片1<br />地址：中华路1号'],[116.383752,39.91334,'图片2<br />地址：兴宁路13号'],[116.384502,39.932241,'图片3<br />地址：友爱路3-5号']];
        var pointArray = new Array();
 
	var opts = {
				width : 250,     // 信息窗口宽度
				height: 80,     // 信息窗口高度
				title : "地图" , // 信息窗口标题
				enableMessage:true//设置允许信息窗发送短息
			   };
 
        for(var i=0;i<json_data.length;i++){
            var marker = new BMap.Marker(new BMap.Point(json_data[i][0], json_data[i][1])); // 创建点
            map.addOverlay(marker);    //增加点
            pointArray[i] = new BMap.Point(json_data[i][0], json_data[i][1]);
            var content = json_data[i][2];
            addClickHandler(content,marker);
           
        }
        //让所有点在视野范围内
        map.setViewport(pointArray);
 
        	function addClickHandler(content,marker){
		marker.addEventListener("click",function(e){
			openInfo(content,e)}
		);
	}
	function openInfo(content,e){
		var p = e.target;
		var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
		var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象 
		map.openInfoWindow(infoWindow,point); //开启信息窗口
	}
       	
//移动到某一坐标点
           function to(x,y){
            map.panTo(new BMap.Point(x,y)); 
 
           }
    </script>
</body>
</html>