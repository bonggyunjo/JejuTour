<%@ page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>키워드로 장소검색하고 목록으로 표출하기</title>
    <link rel="stylesheet" href="map.css">
</head>

<body>
<%
ArrayList<String> x =(ArrayList<String>) session.getAttribute("xlo");
ArrayList<String> y = (ArrayList<String>) session.getAttribute("ylo");
%>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100vh;position:relative;overflow:hidden;"></div>
    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
                <form action="dbtest.jsp" onsubmit="Tlqkf(); return false;">
                    키워드 : <input type="text" value="" id="keyword" size="15"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
</div>

<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=088d729e8c95f398ecdb03a002be5c43&libraries=services,clusterer"></script>
<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng( 33.361282,  126.5292406), // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC);
// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  


// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다

// 키워드 검색을 요청하는 함수입니다
function Tlqkf() {
  for (var i = 0; i < x.length; i++) {
    var markerPosition = new kakao.maps.LatLng(x[i], y[i]);
    var marker = new kakao.maps.Marker({ position: markerPosition });
    marker.setMap(map);
    markers.push(marker); // 생성된 마커를 markers 배열에 추가
  }
}
</script>
</body>
</html>