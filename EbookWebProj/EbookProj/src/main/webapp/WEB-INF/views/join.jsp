<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<!-- header.jsp 시작 -->
<%@ include file="./header.jsp"%>
<!-- header.jsp 끝 -->
<style>
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}


.input-group-addon.primary {
    color: rgb(255, 255, 255);
    background-color: rgb(50, 118, 177);
    border-color: rgb(40, 94, 142);
}
.input-group-addon.success {
    color: rgb(255, 255, 255);
    background-color: rgb(92, 184, 92);
    border-color: rgb(76, 174, 76);
}
.input-group-addon.info {
    color: rgb(255, 255, 255);
    background-color: rgb(57, 179, 215);
    border-color: rgb(38, 154, 188);
}
.input-group-addon.warning {
    color: rgb(255, 255, 255);
    background-color: rgb(240, 173, 78);
    border-color: rgb(238, 162, 54);
}
.input-group-addon.danger {
    color: rgb(255, 255, 255);
    background-color: rgb(217, 83, 79);
    border-color: rgb(212, 63, 58);
}
</style>
<body>

	<script> 
function check(obj) {
     var checkboxs = document.getElementsByName("chk");
     var cnt=0;
     
     for(var i=0;i<checkboxs.length;i++) {
       if(checkboxs[i].checked) cnt++;
     }
     if(cnt>3) {
       obj.checked = false;
    alert("3개 선택해주세요.");
     }
   }


//--------------------------------

   function insert_Ck(){
   var cbox = document.getElementsByName("chk");
   var checked = 0;
   
   var resultbox = [];
   
   for(i=0;i<cbox.length;i++){
      if(cbox[i].checked==true){

         resultbox[checked] = cbox[i].value;
         checked ++;
      }
   }
   
   if(checked != 3){
      alert('태그는 3개 선택해주세요.');
       location.reload(false);
       return false;
   }
   
   var checkvalue = resultbox[0]+"|"+resultbox[1]+"|"+resultbox[2];
   
   return checkvalue;
}

//-------------------------------------


   
function join_btn(){
   
   var genren = insert_Ck();
   
   
    if(document.getElementById("idinput").value.length > 10 || 
    		document.getElementById("idinput").value.length < 5){
    	alert('아이디는 5~10자만 가능합니다.');
        location.reload(false);
        return false;
    }
   if(document.getElementById("pwdinput").value.length > 10 ||
		  document.getElementById("pwdinput").value.length < 5){
	      alert('비밀번호는 5~10자만 가능합니다.');
	      location.reload(true);
	      return false;
   } 
   if(document.getElementById("nameinput").value.length > 5 ||
		   document.getElementById("nameinput").value.length< 2){
	      alert('이름은 2~5자만 가능합니다.');
	      location.reload(true);
	      return false;
   }
   if(document.getElementById("ageinput").value<1 ||
		   document.getElementById("ageinput").value >120){

	      alert('정확한 나이를 입력해주세요.');
	      location.reload(true);
	      return false;
   }
   if(document.getElementById("phoneinput").value.length != 11){
	      alert('정확한 핸드폰번호를 입력해주세요.');
	      location.reload(true);
	      return false;
   } 
   
   document.joinform.genrenum.value = genren;
   joinform.submit();
 
   window.alert('가입이 완료되었습니다. 로그인 해주세요.');
  
}

</script>
	 
	     <script type="text/javascript">

		$(document).ready(function() {
    	  
         ////////filter_table
         var activeSystemClass = $('.list-group-item.active');

    	//something is entered in search form
	    $('#idinput').keyup( function() {
	       var that = this;
	       
	    	if($(that).val().length > 10 || 
	    			$(that).val().length < 5){
	     			$("#idcheck").attr("class","form-group has-error");
	     			$("#idspan").attr("class","input-group-addon danger");
	     			$("#idicon").attr("class","glyphicon glyphicon-remove");
	     			 
	    	}else{
	    		$("#idcheck").attr("class","form-group has-success");
     			$("#idspan").attr("class","input-group-addon success");
     			$("#idicon").attr("class","glyphicon glyphicon-ok");
	    	}
	    });
    	
	    $('#pwdinput').keyup( function() {
		       var that = this;
		       
		    	if($(that).val().length > 10 || 
		    			$(that).val().length < 5){
		     			  $("#pwdcheck").attr("class","form-group has-error");
			     			$("#pwdspan").attr("class","input-group-addon danger");
			     			$("#pwdicon").attr("class","glyphicon glyphicon-remove");
		    	}else{
		    		$("#pwdcheck").attr("class","form-group has-success");
	     			$("#pwdspan").attr("class","input-group-addon success");
	     			$("#pwdicon").attr("class","glyphicon glyphicon-ok");
		    	}
		    });
	    
	    $('#nameinput').keyup( function() {
		       var that = this;
		       
		    	if($(that).val().length > 5 ||
		    			$(that).val().length < 2){
		     			  $("#namecheck").attr("class","form-group has-error");
			     			$("#namespan").attr("class","input-group-addon danger");
			     			$("#nameicon").attr("class","glyphicon glyphicon-remove");
		    	}else{
		    		$("#namecheck").attr("class","form-group has-success");
	     			$("#namespan").attr("class","input-group-addon success");
	     			$("#nameicon").attr("class","glyphicon glyphicon-ok");
		    	}
		    });
	    
	    $('#ageinput').keyup( function() {
		       var that = this;
		       
		    	if($(that).val()<1 || $(that).val() > 120){
		     			  $("#agecheck").attr("class","form-group has-error");
			     			$("#agespan").attr("class","input-group-addon danger");
			     			$("#ageicon").attr("class","glyphicon glyphicon-remove");
		    	}else{
		    		$("#agecheck").attr("class","form-group has-success");
	     			$("#agespan").attr("class","input-group-addon success");
	     			$("#ageicon").attr("class","glyphicon glyphicon-ok");
		    	}
		    });
	    
	    $('#phoneinput').keyup( function() {
		       var that = this;
		       
		    	if($(that).val().length != 11){
		     			  $("#phonecheck").attr("class","form-group has-error");
			     			$("#phonespan").attr("class","input-group-addon danger");
			     			$("#phoneicon").attr("class","glyphicon glyphicon-remove");
		    	}else{
		    		$("#phonecheck").attr("class","form-group has-success");
	     			$("#phonespan").attr("class","input-group-addon success");
	     			$("#phoneicon").attr("class","glyphicon glyphicon-ok");
		    	}
		    });
    	
       });
		
    
    </script>
	 
	 
	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3"
				style="padding-top: 30px; padding-bottom: 10px;">
				<form role="form" method="post" action="insert.do" name="joinform"> <!-- id="join_btn" -->
					<br>
					<br>
					<h2>
						회원가입 <small>정확한 정보를 입력하세요</small>
					</h2>
					<hr class="colorgraph">

					<div class="form-group" id="idcheck">
						<div class="input-group" >
							<input type="text" name="userid" id="idinput"
								class="form-control input-lg" placeholder="아이디" tabindex="1">
								<span class="input-group-addon danger" id="idspan">
								<span class="glyphicon glyphicon-remove" id="idicon">
								</span></span>
							</div>
					</div>

					<div class="form-group" id="pwdcheck">
					<div class="input-group" >
						<input type="password" name="password" id="pwdinput"
							class="form-control input-lg" placeholder="비밀번호" tabindex="2">
							<span class="input-group-addon danger" id="pwdspan">
								<span class="glyphicon glyphicon-remove" id="pwdicon">
								</span></span>
							</div>
					</div>

					<div class="form-group" id="namecheck">
					<div class="input-group" >
						<input type="text" name="name" id="nameinput"
							class="form-control input-lg" placeholder="이름" tabindex="4">
							<span class="input-group-addon danger" id="namespan">
								<span class="glyphicon glyphicon-remove" id="nameicon">
								</span></span>
							</div>
					</div>

					<div class="form-group" id="agecheck">
					<div class="input-group" >
						<input type="number" name="age" id="ageinput"
							class="form-control input-lg" placeholder="나이 : 숫자만 입력하시오"
							tabindex="5">
							<span class="input-group-addon danger" id="agespan">
								<span class="glyphicon glyphicon-remove" id="ageicon">
								</span></span>
							</div>
					</div>

					<div class="form-group" id="phonecheck">
					<div class="input-group" >
						<input type="text" name="phone" id="phoneinput"
							class="form-control input-lg" placeholder="핸드폰 번호 : 숫자만 입력하시오"
							tabindex="6">
							<span class="input-group-addon danger" id="phonespan">
								<span class="glyphicon glyphicon-remove" id="phoneicon">
								</span></span>
							</div>
					</div>

					<h4>INFORMATION ABOUT YOUR BOOK</h4>
					<div class="row">
						<div class="col-md-5">

							<h5>1.소설</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox1" name="chk" value="01-1"> 추리
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox2" name="chk" value="01-2"> 호러
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox3" name="chk" value="01-3"> 연애
							</label>

							<h5>2.기술</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox4" name="chk" value="02-1"> IT
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox5" name="chk" value="02-2"> 전자/전기
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox6" name="chk" value="02-3"> 건축
							</label>

							<h5>3.만화</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox7" name="chk" value="03-1"> 코믹
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox8" name="chk" value="03-2"> 성인
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox9" name="chk" value="03-3"> 판타지
							</label>

							<h5>4.경제/경영</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox10" name="chk" value="04-1"> 마케팅
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox11" name="chk" value="04-2"> 재테크
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox12" name="chk" value="04-3"> 창업
							</label>

							<h5>5.순수과학</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox13" name="chk" value="05-1"> 수학
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox14" name="chk" value="05-2"> 천체/물리
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox15" name="chk" value="05-3"> 화학
							</label>

						</div>
						<div class="col-md-7">

							<h5>6.예체능</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox16" name="chk" value="06-1"> 음악
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox17" name="chk" value="06-2"> 미술
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox18" name="chk" value="06-3"> 체육
							</label>

							<h5>7.자기계발</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox19" name="chk" value="07-1">인간관계
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox20" name="chk" value="07-2">성공/처세
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox21" name="chk" value="07-3">화술/협상
							</label>

							<h5>8.역사</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox22" name="chk" value="08-1"> 한국사
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox23" name="chk" value="08-2"> 세계사
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox24" name="chk" value="08-3"> 신화
							</label>

							<h5>9.종교</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox25" name="chk" value="09-1"> 불교
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox26" name="chk" value="09-2"> 천주교
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox27" name="chk" value="09-3"> 기독교
							</label>

							<h5>10.언어</h5>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox28" name="chk" value="10-1"> 한국어
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox29" name="chk" value="10-2"> 영어
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox30" name="chk" value="10-3"> 중국어
							</label>

						</div>


					</div>

					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 center"></div>
					</div>
						<input type="hidden" name="genrenum">
					<button type="button" onclick="join_btn()"
						class="btn btn-primary btn-block btn-lg" tabindex="7">등록
					</button>

				</form>
			</div>
		</div>
	</div>


	<hr>

	<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->
</body>

</html>