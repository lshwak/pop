
/* function making() {
		 var adr1 = document.getElementById("sample6_postcode").value	우편번호
		 var adr2 = document.getElementById("sample6_address").value	메인주소
		 var adr3 = document.getElementById("sample6_detailAddress").value	상세주소
		 var adr4 = document.getElementById("sample6_extraAddress").value	참고항목
		 
		 document.getElementById("address").value = ("("+adr1+") "+adr2+adr3+adr4);
		 alert(document.getElementById("address").value);
	 }*/
 
 
 
 $(document).ready(function(){
	 
	 
	 
	 function btn_click(obj) {
	
	if(obj=="register") {
		form1.action = "write";
		form1.method = "get";
	} 
}

	
	 
	 
	$("#make").on('click', function() {
		//var sty = [];
		var sty = "";
		$("input[name=estyle]:checked").each(function(){
			sty+=$(this).val()+", ";
			//sty.push($(this).val());
		});
		alert(sty);
		
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});

 /*주소*/
 function sample6_execDaumPostcode() {
     new daum.Postcode({
         oncomplete: function(data) {
             // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

             // 각 주소의 노출 규칙에 따라 주소를 조합한다.
             // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
             var addr = ''; // 주소 변수
             var extraAddr = ''; // 참고항목 변수

             //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
             if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                 addr = data.roadAddress;
             } else { // 사용자가 지번 주소를 선택했을 경우(J)
                 addr = data.jibunAddress;
             }
             
             // 우편번호와 주소 정보를 해당 필드에 넣는다.
             document.getElementById('sample6_postcode').value = data.zonecode;
             document.getElementById("sample6_address").value = addr;
             var adr1 = document.getElementById("sample6_postcode").value	/*우편번호*/
             var adr2 = document.getElementById("sample6_address").value	/*메인주소*/
            /* var adr3 = document.getElementById("sample6_detailAddress").value	상세주소*/
          
    		 
    		 document.getElementById("address").value = ("("+adr1+") "+adr2);
          document.getElementById("sumaddress").value
          =  document.getElementById("address").value;
         }
     }).open();
 }



 function detailAddress(){
 	var add1 = document.getElementById("address").value;
 	var add2 = document.getElementById("sample6_detailAddress").value;
 	
 	document.getElementById("sumaddress").value =add1+" "+add2;
 }




