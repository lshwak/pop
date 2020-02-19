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
<script src="resources/js/detail.js"></script>
<!-- <link href="resources/css/detail.css" rel="stylesheet"> -->
<title>DanceMoa Event Detail</title>
</head>
<body>
<c:import url="/include/header"></c:import>
<form id="detailForm" method="get">
 
 
  <!-- Page Content -->
  <div class="container">

    <h1 id="a">Event</h1>

   <div class="row">
   <div class="col-md-8">
   	<div class="input-group">
    	<input type="hidden" name="pageNum" value="${page.cri.getPageNum()}">
    	<input type="hidden" name="amount" value="${page.cri.getAmount()}">
    	
    	<input type="text" name="keyword" class="search" aria-label="Search" aria-describedby="basic-addon2">
    	<div class="input-group-append">
    		<input type="submit" value="검색" class="btn-primary">
    	</div>
    </div>
    </div>
    <div class="modclass">	
    	<div class="modify-area">
    		<input type="submit" value="수정" id="modi">
    	</div>
    </div>
    <div class="delclass">	
    	<div class="modify-area">
    		<input type="submit" value="삭제" id="del">
    	</div>
    </div>
    </div>
   </div>

    <div class="container">
  <h1>${detail.esubject}</h1>
  <div class="middle">
	  <table>
	  	<tr>
	  		<td colspan="2"><input type="text" value="${detail.eno}" name="eno"></td>
	  	</tr>
	  	<tr class="linetop">
	  		<td>장르</td>
	  		<td>
	  		<c:forEach items="detail" >
	  		${detail.estyle}
	  		</c:forEach>
	  		</td>
	  	</tr>
	  	<tr class="line">
	  		<td>행사타입</td>
	  		<td>${detail.etype}</td>
	  	</tr>
	  	
	  	<tr class="line">
	  		<td>행사일정</td>
	  		<td>${detail.edate}</td>
	  	</tr>
	  	<tr class="line">
	  		<td>행사장</td>
	  		<td>${detail.eaddress}</td>
	  	</tr>
	  	<tr class="line">
	  		<td>조회수</td>
	  		<td>${detail.ecnt}</td>
	  	</tr>
	  	<tr class="line">
	  		<td>추천수</td>
	  		<td>${detail.ercm}</td>
	  	</tr>
	  	<tr class="line">
	  		<td>포스터</td>
	  		<td></td>
	  	</tr>
	  	<tr class="line">
	  		<td>지도 (위도/경도)</td><td></td>
	  	</tr>
	  	<tr class="line">
	  		<td>내용</td><td><textarea rows="10" cols="70" readOnly>${detail.econtent}</textarea></td>
	  	</tr>
	  	<tr class="linebottom">
	  		<td colspan="2" align="center"><input type="submit" onclick="making()" value="참가신청"></td>
	  	</tr>
	  </table>
  </div>
</div>
</form>
<c:import url="/include/footer"></c:import>
</body>
</html>