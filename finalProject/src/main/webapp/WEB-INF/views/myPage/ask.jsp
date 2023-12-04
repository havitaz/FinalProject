<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	
	<style>
		.p-btn {
			display: inline-block;
			margin: 0 auto;
			padding: 10px 11px;
			font-size: 14px;
			background: rgba(255, 255, 255, 0.22);
			border-radius: 8px;
			cursor: pointer;
			letter-spacing: -2px;
			font-weight: bolder;
		}
		.p-btn1 {
			display: inline-block;
			margin: 0 auto;
			padding: 10px 11px;
			font-size: 14px;
			background: rgba(255, 255, 255, 0);
			border-radius: 8px;
			cursor: pointer;
			letter-spacing: -2px;
			font-weight: bolder;
		}
		p::after{
			display:block;
			content: '';
			border-bottom: solid 2px #ffffff;  
			transform: scaleX(0);  
			transition: transform 250ms ease-in-out;
		}
		p:hover::after{
			transform: scaleX(1);
		}
		
		.user-info{
			display: flex;
			align-items: center;
			margin-bottom: 40px;
			margin-top: 0px;
			flex-direction: column;
			justify-content: space-evenly;
			margin-left: 0px;
		}
		.cu-re-title{
			font-size: 14px;
			width: 320px;
			height: 30px;
			background-color: rgba(224, 224, 224, 0.5);
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			padding: 3px;
			margin-bottom: 10px;
			font-weight: bolder;
		}
		.cu-email{
			font-size: 14px;
			width: 320px;
			height: 30px;
			background-color: rgba(224, 224, 224, 0.5);
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			padding: 3px;
			margin-bottom: 10px;
		}
		.cu-desc{
			font-size: 14px;
			width: 320px;
			height: 250px;
			background-color: rgba(224, 224, 224, 0.5);
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			padding: 10px;
			margin-bottom: 10px;
		}
		.ad-email{
			width: 320px;
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			height: 30px;
			font-weight: bolder;
		}
		.ad-desc{
			padding: 10px;
			margin-top: 20px;
			width: 320px;
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			height: 320px;
		}
		.align-userinfo{
			display: flex;
			flex-direction: row;
			align-items: flex-start;
		}
		.res-title{
			color: rgb(231, 76, 60);
			padding-top: 10px;
			font-size: 14px;
			font-weight: 700;
			margin-bottom: 20px;
		}
		.customer-req{
			margin-right: 40px;
		}
		.submit-btn{
			background: rgb(218, 76, 60);
			width: 100px;
			height: 30px;
			color: white;
			border: none;
			border-radius: 4px;
			margin-top: 50px;
		}
		.admin-res{
			justify-content: center;
    		align-items: center;
    		display: flex;
    		flex-direction: column;
		}
		h5{
			margin-bottom: 5px;
		}
		.pageBox{
			border-radius: 13px;
			border: 1px solid rgba(226, 226, 226, 0.4);
		}
		.cu-file{
			font-size: 11px;
		}
		.top-center{
			margin-bottom: -15px;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 280px;">
		
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me">일정 관리</a>
			<a class="myPageSideBar" href="ask.me" style="font-weight: bolder; font-size: 1.1em;">문의 내역</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">문의 내역</h3>
			<br>
			<div class="top-center"
				style="display: flex; justify-content: space-around; margin-left: 20px; margin-right: 20px">
				<!-- 호버되면 밑줄 만들어주세요 ㅋㅋ -->
				<div>
					<p class="p-btn" id="from" onclick="from()">등록된 문의</p>
				</div>
				<div>
					<p class="p-btn1" id="send" onclick="send()">처리된 문의</p>
				</div>
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<form action="">
						<div class="res-title">답변등록</div>
						<div class="align-userinfo">
							<div class="customer-req">
								<h5>제목</h5>
								<div class="cu-re-title">결제 관련 문의</div>
								<h5>작성자</h5>
								<div class="cu-email">asdasd@naver.com</div>
								<h5>설명</h5>
								<textarea class="cu-desc">결제가 안됩니다.</textarea>
								<h5>첨부파일</h5>
								<div class="cu-file">첨부된 파일 이름.jpg</div>
							</div>
							<div class="admin-res">
								<div>
									<div><h5>답변</h5></div>
									<input class="ad-email" type="text">
								</div>
								<div><textarea class="ad-desc" name="" id="" cols="30" rows="10"></textarea></div>
								<button class="submit-btn" style="cursor: pointer;">제출</button>
							</div>
						</div>
					</form>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
	<script>
		function from() {
			location.href = "ask.me";
		}

		function send() {
			location.href = "ask1.me";
		}
		
		// 로그인한 유저가 관리자라면 ask2로 
	</script>
</body>
</html>