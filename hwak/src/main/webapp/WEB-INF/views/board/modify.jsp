<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="resources/css/modern-business.css" rel="stylesheet">
<script type="text/javascript" src="resources/plugins/jQuery/jquery-3.4.1.js"></script>
<script src="resources/js/modify.js"></script>
<link href="resources/css/modify.css" rel="stylesheet">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>DanceMoa Event Modify</title>
</head>
<body>
<c:import url="/include/header"></c:import>
<form action="modify" method="post">
<div class="container">
  <h1 id = "a">행사 수정</h1>
  <div class="middle">
	  <table>
	  	<tr class="linetop">
	  		<td>행사 제목</td><td><input type="text" id="subject" name="esubject" value="${modify.esubject}"></td>
	  	</tr>
	  	<tr class="line">
	  		<td>포스터</td>
	  		<td>
	  			<input type="file" name="eimage">
	  		</td>
	  	</tr>
	  	<tr class="line">
	  		<td>날짜</td><td><input type="text" id="date" name="edate" value="${modify.edate}"></td>
	  	</tr>
	  	<tr class="line">
	  		<td>장르</td>
	  		<td>
	  			<input type="checkbox" id="hh" name="estyle" value="HIPHOP">HIPHOP
	  			<input type="checkbox" id="pp" name="estyle" value="POPPING">POPPING
	  			<input type="checkbox" id="bb" name="estyle" value="BBOY">BBOY
	  			<input type="checkbox" id="lk" name="estyle" value="LOCKING">LOCKING
	  			<input type="checkbox" id="wk" name="estyle" value="WAACKING">WAACKING
	  			<br>
	  			<input type="checkbox" id="hs" name="estyle" value="HOUSE">HOUSE
	  			<input type="checkbox" id="kr" name="estyle" value="KRUMP">KRUMP
	  			<input type="checkbox" id="cr" name="estyle" value="CHOREOGRAPHY">CHOREOGRAPHY
	  			<input type="checkbox" id="ot" name="estyle" value="OTHER">OTHER
	  		</td>
	  	</tr>
	  	
	  	<tr class="line">
	  		<td>행사 타입</td>
	  		<td>
		  		<input type="radio" name="etype" value="battle">BATTLE
		  		<input type="radio" name="etype" value="performance">PERFORMANCE
		  		<input type="radio" name="etype" value="contest">CONTEST
		  		<input type="radio" name="etype" value="workshop">WORKSHOP
		  		<input type="radio" name="etype" value="other">OTHER
	  		</td>
	  	</tr>
	  	<tr class="line">
	  		<td>행사 주소</td>
	  		<td>
	  			<input type="text" id="sample6_postcode" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" placeholder="주소"><br>
				<input type="text" id="sample6_detailAddress" onkeyup="detailAddress()" placeholder="상세주소">
				<input type="hidden" id="address" name="eaddress">
				<br>
				<input type="text" id="sumaddress" value="${modify.eaddress}">
			</td>
	  	</tr>
	  	<tr class="line">
	  		<td>지도 (위도/경도)</td><td></td>
	  	</tr>
	  	<tr class="line">
	  		<td>내용</td><td><textarea rows="10" cols="70" name="econtent">${modify.esubject}</textarea></td>
	  	</tr>
	  	<tr class="linebottom">
	  		<td colspan="2" align="center"><input type="submit" id="mdf" onclick="modifing()" value="수정"></td>
	  	</tr>
	  </table>
  </div>	
  </div>
</form>
<c:import url="/include/footer"></c:import>

<script>
	  			console.log("${modify.estyle}");
	  			var cb = "${modify.estyle}";
	  			
	  			$("input[name=estyle]").each(function(){
	  				var value = $(this).val();
	  				console.log(value);
	  				if(cb.includes(value)){
	  					console.log("일치하는가?");
	  				   this.checked = true;
	  				}
	  			});
	  			
	  			
	  			/*var arr = new Array();
	  			arr.push("${modify.estyle}");
	  			console.log(arr); */
	  			
</script>
</body>
</html>