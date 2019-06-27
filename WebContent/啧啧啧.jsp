
    //修改地图风格
    //清新蓝风格(light)
    //黑夜风格(dark)
    //自然绿风格(grassgreen)
    //精简风格(googlelite)
    //默认地图样式(normal)
    var mapStyle={  style : "normal" }
    map.setMapStyle(mapStyle);

    // 编写自定义函数,创建标注
    // function addMarker(point,label){
    //  var marker = new BMap.Marker(point);
    //  map.addOverlay(marker);
    //  marker.setLabel(label);
    // }
    // 随机向地图添加25个标注
    // var bounds = map.getBounds();
    // var sw = bounds.getSouthWest();
    // var ne = bounds.getNorthEast();
    // var lngSpan = Math.abs(sw.lng - ne.lng);
    // var latSpan = Math.abs(ne.lat - sw.lat);
    // for (var i = 0; i < 90; i++) {
    //  var point = new BMap.Point(sw.lng + lngSpan * (Math.random() * 0.7), ne.lat - latSpan * (Math.random() * 0.7));
    //  var label = new BMap.Label("我是id="+i,{offset:new BMap.Size(20,-10)});
    //  addMarker(point,label);
    // }
    // function deletePoint(){
    //  var allOverlay = map.getOverlays();
    //  for (var i = 0; i < allOverlay.length -1; i++){
    //      if(allOverlay[i].getLabel().content == "我是id=1"){
    //          map.removeOverlay(allOverlay[i]);
    //          return false;
    //      }
    //  }
    // }


    //创建小狐狸
    // var pt = new BMap.Point(116.417, 39.909);
    // var myIcon = new BMap.Icon("http://lbsyun.baidu.com/jsdemo/img/fox.gif", new BMap.Size(300,157));
    // var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
    // map.addOverlay(marker2);              // 将标注添加到地图中

    //设置弹跳的动画
    // var map = new BMap.Map("container");
    // var point = new BMap.Point(116.404, 39.915);
    // map.centerAndZoom(point, 15);
    // var marker = new BMap.Marker(point);  // 创建标注
    // map.addOverlay(marker);               // 将标注添加到地图中
    // marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画


    // var marker = new BMap.Marker(point);      // 创建标注
    // map.addOverlay(marker);                       // 将标注添加到地图中

    // var opts = {
    //     width : 200,     // 信息窗口宽度
    //     height: 20,     // 信息窗口高度
    //     title : "李百成"  // 信息窗口标题
    // }
    // var infoWindow = new BMap.InfoWindow("World", opts);  // 创建信息窗口对象
    // map.openInfoWindow(infoWindow, map.getCenter());      // 打开信息窗口


    //浏览器定位
    // var geolocation = new BMap.Geolocation();
    // geolocation.getCurrentPosition(function(r){
    //  if(this.getStatus() == BMAP_STATUS_SUCCESS){
    //      var mk = new BMap.Marker(r.point);
    //      map.addOverlay(mk);
    //      map.panTo(r.point);
    //      alert('您的位置：'+r.point.lng+','+r.point.lat);
    //  }
    //  else {
    //      alert('failed'+this.getStatus());
    //  }
    // });

    //根据用户IP 返回城市级别的定位结果
    // function myFun(result){
    //  var cityName = result.name;
    //  map.setCenter(cityName);
    //  alert("当前定位城市:"+cityName);
    // }
    // var myCity = new BMap.LocalCity();
    // myCity.get(myFun);

</script>
</body>
</html>
