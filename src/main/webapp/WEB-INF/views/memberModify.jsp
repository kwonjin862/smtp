<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/all.min.css">
<link rel="stylesheet" href="resources/assets/css/animate.css">
<link rel="stylesheet" href="resources/assets/css/flaticon.css">
<link rel="stylesheet" href="resources/assets/css/magnific-popup.css">
<link rel="stylesheet" href="resources/assets/css/odometer.css">
<link rel="stylesheet" href="resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="resources/assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/assets/css/nice-select.css">
<link rel="stylesheet" href="resources/assets/css/main.css">
<link rel="shortcut icon" href="resources/assets/images/favicon.png"
	type="image/x-icon">
<title>Boleto - Online Ticket Booking Website HTML Template</title>
</head>
<style>
input[type="date"] {
 
  position: relative;
}
input[type="date"]::-webkit-calendar-picker-indicator {
    position: absolute;
    left: 0;
    top: 0;
    width: 100px;
    height: 100%;
    background : transparent;
    color : transparent;
    cursor : pointer;
}
</style>
<body>
	<!-- ==========Preloader========== -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span><span></span>
			</div>
		</div>
	</div>
	<!-- ==========Preloader========== -->
	<!-- ==========Sign-In-Section========== -->
	<section class="account-section bg_img"
		data-background="./resources/assets/images/account/account-bg.jpg">
		<div class="container">
			<div class="padding-top padding-bottom">
				<div class="account-area">
					<div class="section-header-3">
						<span class="cate">welcome</span>
						<h2 class="title">to Boleto</h2>
					</div>
					<form class="memberJoin" action="memberModifyProcess" name="memberModifyProcess" method="POST" enctype="multipart/form-data">
						<div class="form-group">
							<label for="pass2">?????????<span>*</span></label><br/>
							<label for="pass2">${modi.userId}</label>
							<input type="hidden" value="${modi.userId}" name="userId"></h5>
						</div>
						<div class="form-group">
							<label for="pass1">????????????<span>*</span></label><input
								type="password" placeholder="???????????? ??????" name="userPw" id="userPw"  onkeyup="pwRegexp()" required>
								<br/><span id="pwResult1"></span></td>
						</div>
						<div class="form-group">
							<label for="pass2">??????????????????<span>*</span></label><input
								type="password" placeholder="???????????? ??????" id="checkPw" onkeyup="pwCheck()" required>
								<br/><span id="pwResult2"></span></td>
						</div>
						<div class="form-group">
							<label for="pass2">??????<span>*</span></label>
							<input type="text" value="${modi.userName}" name="userName" required>
						</div>
						<div class="form-group">
							<label for="pass2">????????????<span>*</span></label><br/>
							<input type="date" name="userBirth" value="${modi.userBirth}" required size="25">
						</div>
						<div class="form-group">
							<label for="pass2">??????<span>*</span></label>
							<div>
								<c:choose>
											<c:when test="${modi.userGender=='??????'}">
											<input type="radio" name="userGender" value="??????" style="width:20px;height:20px;border:1px;" checked/>??????
											<input type="radio" name="userGender" value="??????" style="width:20px;height:20px;border:1px;"/>??????
											</c:when>
											<c:otherwise>
											<input type="radio" name="userGender" value="??????"  style="width:20px;height:20px;border:1px;"/>??????
											<input type="radio" name="userGender" value="??????" style="width:20px;height:20px;border:1px;" checked/>??????
											</c:otherwise>
											</c:choose>
							</div>
						</div>
						<div class="form-group">
							<label for="pass2">?????????<span>*</span></label><input type="email"
								value="${modi.userEmail }" name="userEmail" required>
						</div>
						<div class="form-group">
							<label for="pass2">???????????????<span>*</span></label>
							<img src="resources/proFile/${modi.userProfileName}"  width="128" height="128" />
							<input type="file" name="userProfile" required>
							<input type="hidden" name="userProfileName" value="${modi.userProfileName}">
							
						</div>
						
						<div class="form-group text-center">
							<input type="button" onclick="checkConfirm()" value="????????????">
						</div>
					</form>
					
					<div class="or">
						<span>Or</span>
					</div>
					<ul class="social-icons">
						<li><a href="#0"><i class="fab fa-facebook-f"></i></a></li>
						<li><a href="#0" class="active"><i class="fab fa-twitter"></i></a></li>
						<li><a href="#0"><i class="fab fa-google"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Sign-In-Section========== -->
	<script src="resources/assets/js/jquery-3.3.1.min.js"></script>
	<script src="resources/assets/js/modernizr-3.6.0.min.js"></script>
	<script src="resources/assets/js/plugins.js"></script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/isotope.pkgd.min.js"></script>
	<script src="resources/assets/js/magnific-popup.min.js"></script>
	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<script src="resources/assets/js/wow.min.js"></script>
	<script src="resources/assets/js/countdown.min.js"></script>
	<script src="resources/assets/js/odometer.min.js"></script>
	<script src="resources/assets/js/viewport.jquery.js"></script>
	<script src="resources/assets/js/nice-select.js"></script>
	<script src="resources/assets/js/main.js"></script>
	
	<script>
	
	function pwRegexp(){
		let userPw = document.getElementById("userPw").value;
		let pwResult1 = document.getElementById("pwResult1");
		
		let num = userPw.search(/[0-9]/);
		let eng = userPw.search(/[a-z]/);
		let spe = userPw.search(/[`~!@#$%^&*|\\\'\":;\/?]/);
		let spc = userPw.search(/\s/);
		
		console.log('?????? : ' + num);
		console.log('?????? : ' + eng);
		console.log('?????? : ' + spe);
		console.log('?????? : ' + spc);
		
		/* `~!@#$%^&*|\\\'\":;\/? */
		
		if(userPw.length < 8 || userPw.length > 16){
			pwResult1.style.color = "#ff0000";
			pwResult1.innerHTML = "??????????????? 8???????????? 16?????? ????????? ??????????????????.";
			return false;
			
		} else if(spc != -1){
			pwResult1.style.color = "#ff0000";
			pwResult1.innerHTML = "??????????????? ???????????? ??????????????????.";
			return false;
		
		} else if(num < 0 || eng < 0 || spe < 0){
			pwResult1.style.color = "#ff0000";
			pwResult1.innerHTML = "??????, ??????, ??????????????? ???????????? ??????????????????.";
			return false;
		
		} else {
			pwResult1.style.color = "#0000ff";
			pwResult1.innerHTML = "??????????????? ???????????? ?????????.";
			return true;
		}
		

	}
	function pwCheck(){
		
		let userPw = document.getElementById("userPw").value;
		let checkPw =document.getElementById("checkPw").value;
		let pwResult2 = document.getElementById("pwResult2");
		
		
		
		if(userPw == checkPw){
			pwResult2.style.color = "#0000ff";
			pwResult2.innerHTML = "??????????????? ???????????????.";
			return true;
		}else{
			pwResult2.style.color = "#ff0000";
			pwResult2.innerHTML = "??????????????? ???????????? ????????????.";
			return false;
		}
		
	}
function checkConfirm(){
		
		if(!pwRegexp() || !pwCheck()){
			
			alert('??????????????? ??????????????????!.');
			
		}  
		/* else if(!checkEmail2()){
			
			alert('????????? ????????? ??????????????????.'); 
			
		} */
		else {
			
			memberModifyProcess.submit();
		}
	}
	</script>
	
</body>
</html>

