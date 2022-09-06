<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table tr td { text-align:left; padding-left: 10px }
p { margin: 20px auto; text-align:right; color: #3367d6 }
.valid, .invalid { font-size:14px; font-weight:bold; } 
.valid { color:green }
.invalid { color:red }
[name=address]{ width:calc(100% - 22px); margin-top:3px }
.ui-datepicker table tr, .ui-datepicker table tr td { height: inherit; }
/* 달력날짜 삭제 이미지가 날짜input 태그 안에 위치하게  */
#delete { position: relative; right: 30px; }
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/common.css?<%=new java.util.Date()%>">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src='js/common.js?<%=new java.util.Date()%>'></script>
<script src='js/member_check.js?<%=new java.util.Date()%>'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js'></script>
</head>
<body>

<h3>매장 정보</h3>
<p class='w-px500'></p>
<form action='kjoin' method='post' enctype='multipart/form-data'>
<!-- 	<form action='store' method='post'> -->
	<table class='w-px500'>
	<tr><th class='w-px120'>업체명</th>
		<td><input type='text' name='location' maxlength="13"></td>
	</tr>
	
	<tr><th>사업장주소</th>
		<td>
			<a class='btn-fill-s' onclick='post()'>우편번호찾기</a>
			<input class='w-px50' type='text' name='post' readonly>
			<input type='text' name='address' readonly>
			<input type='text' name='address'>
		</td>
	</tr>
	
	<tr><th>사업장사진</th>
		<td class='text-left' style='padding-left:10px'>
		<c:forEach var='i' begin="1" end="5">
		<div>
			<label>
				<input type='file' name='file' class='attach-file' >
				<a><i class="font-btn fa-solid fa-file-arrow-up"></i></a>
				<span class='file-name'></span>
			</label>
			<a class='delete'><i class="font-btn fa-solid fa-trash-can"></i></a><br>
		</div>
		</c:forEach>
		
		</td>
	</tr>
	
	
	
	<tr><th>편의시설 유무</th>
	
		<td>
			<label><input type='checkbox'  name='f_cctv' value='1'>CCTV</label>
			<label><input type='checkbox'  name='f_game' value='1'>오락기</label>
			<label><input type='checkbox'  name='f_toilet' value='1'>화장실</label><br>
			<label><input type='checkbox'  name='f_concent' value='1'>콘센트</label>
			<label><input type='checkbox'  name='f_wifi' value='1'>WIFI</label>
			<label><input type='checkbox'  name='f_coin' value='1'>코인노래방</label>
			
		</td>
		</tr>
		
		
		<tr><th>사용가격</th>
	<td><select name='cost'>
			<c:forEach var='i' begin="5" end="9">
			<option value='${i*1000}'>${i*1000}원</option>
<!-- 			<option value='5000'>5000원</option><option  value='6000'>6000원</option><option >7000원</option><option >8000원</option><option >9000원</option> -->
			</c:forEach>
		</select>
	</td>
</tr>

		<tr><th>세탁기 갯수</th>
	<td><select name='machine'>
		<c:forEach var='i' begin="1" end="5">
		<option value='${i}'>${i}개</option>
		</c:forEach>
<!-- 			<option value='5000'>1개</option><option value='5000'>1개</option><option >3개</option><option >4개</option><option >5개</option> -->
			
		</select>
	</td>
</tr>

<tr><th>위도,경도</th>
		<td>
			<input type='text' name='latitude' >
			<div class='valid'>위도를 입력하세요</div>
			<input type='text' name='longitude' >
			<div class='valid'>경도를 입력하세요</div>
		</td>
	</tr>
	<!-- <input type="hidden" name="ownerid" value="hong"> -->

</table>
</form>
<div class='btnSet'>
	<a class='btn-fill' onclick='kjoin()'>회원가입</a>
	<a class='btn-empty' onclick='history.go(-1)'>취소</a>
</div>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>




// 우편번호찾기
function post(){
    new daum.Postcode({
        oncomplete: function(data) {
        	console.log( data )
        	$('[name=post]').val( data.zonecode ); //우편번호
        	//도로명:R, 지번:J
        	var address = data.userSelectedType=='R' 
        				? data.roadAddress : data.jibunAddress;
        	if( data.buildingName != '' ) 
        		address += ' ('+data.buildingName+')';
        	$('[name=address]').eq(0).val( address );
//         	$('[name=address]:eq(0)').val( address );
        }
    }).open();	
}

//form태그 submit처리
function kjoin(){
	$('[name=f_cctv]').val( $('[name=f_cctv]:checked') ? 1 : 0 ); 
	$('[name=f_game]').val( $('[name=f_game]:checked') ? 1 : 0 ); 
	$('[name=f_toilet]').val( $('[name=f_toilet]:checked') ? 1 : 0 ); 
	$('[name=f_concent]').val( $('[name=f_concent]:checked') ? 1 : 0 ); 
	$('[name=f_wifi]').val( $('[name=f_wifi]:checked') ? 1 : 0 ); 
	$('[name=f_coin]').val( $('[name=f_coin]:checked') ? 1 : 0 );
	
	$('form').submit();
}
</script>

</body>
</html>