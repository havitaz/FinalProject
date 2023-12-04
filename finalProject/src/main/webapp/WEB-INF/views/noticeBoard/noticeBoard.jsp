<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.pageBox{
			margin-bottom: 100px;
		}

		.profile-btn-area{
			justify-content: center;
    		display: flex;
			align-self: center; 
			width: 100%;
		}
		.user-info-table{
			width: 80%;	
			position: relative;
			margin-bottom: 70px;
		}
		.user-info-table td{
			padding-bottom: 0px;
		}
		.user-info-table input{
			height: 22px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 35px;
		}
		.ui-formOuter{
			width: 100%;
		}
		.ui-submit-btn{
			float: right;
			position: absolute;
			right: 70px;
			bottom: 233px;
			width: 460px;
			background: none;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 28px;
		}
		.email-input{
			height: 35px
		}
		.phone-input{
			height: 35px
		}
		.info-input{
			width: 100%;
		}

		.normal-input-box > button {
			width: 80px;
			height: 35px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
		}
           .list{
        list-style: none;
    }

    .list > .list-btn{
        background-color: transparent;
        border: none;
        cursor: pointer;
    }

    .list-btn {
        font-size: 17px;
        color: white;
        margin: 15px;
    }

    .list-btn:hover {
        color: black
    }

    .community-list {
        list-style: none;
        font-size: 25px;
        font-weight: bold;
        text-decoration: underline;
        margin: 18px;
    }

    .main{
        background-color: white;
        width: 700px;
        height: 62%;
        position: absolute;
        left: 50%;
        margin-left: -322px;
        top: 50%;
        margin-top: -260px;
        border-radius: 10px;
    }

    .community-ul{
        width: 170px;
        height: 500px;
        margin: 220px 0px 0px 315px;
        color: white;
    }

    .time-span{
        float: right;
        margin-right: 25px;
        font-size: 13px;
    }

    .community-btn{
        border-radius: 12px;
        background-color: white;
        border-width: thin;
        margin: 3px; 
        width: 56px;
        height: 27px;
            cursor: pointer;
    }

    .text1{
        font-size: 14px;
    }

    .text2{
        font-size: 12px;
    }

    .community-p{
        font-size: 10px;
    }

    .main-span1{
        font-weight: bold;
        font-size: 14px;
        margin-left: 15px;
    }

    .main-span2{
       font-size: 12px; 
    }

    .main-list{
        list-style: none;
    }

    .main-a{
        padding: 13px 0px 10px 20px;
    }

    .main-b{
        padding: 13px 0px 0px 30px;
    }

    .a-click {
        text-decoration-line: none;
        color: black;
    }

    .img {
        width: 0.8em;
        height: auto;
    }

    .line {
        width: 96%;
        margin-left: 11px;
        margin-top: 10px;
    }

    .arrow-img{
        width: 15px;
        height: 15px;
        float: right;
        margin-right: 10px;
        margin-top: 2px;
        cursor: pointer;
    }

    .border-one,  .border-two, .border-three{
        margin-left: 33px;
        line-height: 27px;
    }
    .container{
        background-color: white;
        width: 40%;
        max-height: 20%;
        padding: 21px;
        margin-top: -495px;
        margin-right: 32%;
        border-radius: 15px;
        margin-bottom: 20px;
    }

    .community-ul{
        width: 190px;
        height: 500px;
        margin: 190px 5px 0px 253px;
        color: white;
    }

    .community-list {
        list-style: none;
        font-size: 27px;
        font-weight: bold;
        text-decoration: underline;
        margin: 18px;
    }

    .list{
        list-style: none;
    }

    .list > .list-btn{
        background-color: transparent;
        border: none;
        cursor: pointer;
    }

    .list-btn {
        font-size: 17px;
        color: white;
        margin: 15px;
    }

    .list-btn:hover {
        color: black
    }

    .date{
        float: right;
    }

    .card-link{
        color: black;
        font-weight: bold;
    }

    .card-list{
        list-style: none;
        margin-bottom: 15px;
    }

    #accordion{
        margin-left: -26px;
        padding: 4px;
        margin-right: 0px;    }

    .container-h2{
        margin: 0px 8px 20px;
        font-size: 30px;
        color: black;
    }

    .arrow-img{
        width: 20px;
        height: 20px;
        float: right;
        margin-top: 10px;
    }

    .poom-span{
        margin-left: 20px;
    }
    
    .container-com{
        margin-bottom: 20px;
    }

    .card{
      margin-left: 26px;
    }
    body{
      line-height: 1.5;
    }
    h3{
      font-size: 1.75rem;
    }
    a:hover{
      color: white;
      text-decoration: none;
    }
    .SideBar-text{
      color: white;
    }
    .SideBar-text:hover{
      border-bottom: 2px solid white;
    }

    .card-header {
      padding: 0.75rem 1.25rem;
      margin-bottom: 0;
      background-color: rgb(255 171 72 / 3%);
      border-bottom: 1px solid rgba(224,224,224,0.5);
      border-radius: 5px;  
    }
    .collapse show{
      border-bottom: 1px solid rgba(224,224,224,0.5);

    }
/*
    a::after{
		display:block;
		content: '';
		border-bottom: solid 2px #ffffff;  
		transform: scaleX(0);  
		transition: transform 250ms ease-in-out;
	}
    a:hover::after{
        transform: scaleX(1);
    }
*/
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">커뮤니티</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<div class="myPageSideBar"><a class="SideBar-text" href="viewall.co">전체보기</a></div>
			<a class="myPageSideBar" href="curious.co">궁금해요</a>
			<a class="myPageSideBar" href="much.co">얼마예요</a>
			<a class="myPageSideBar" href="together.co">함께해요</a>
			<a class="myPageSideBar" href="notice.co" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">공지사항</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">공지사항</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="community-big">   
                    <div id="accordion">
                        <ul>
                            <li class="card-list">
                                <div class="card">
                                    <div class="card-header">
                                      <a class="card-link" data-toggle="collapse" href="#collapseOne">
                                        <span>필독</span>
                                        <span class="poom-span">품앗이에 대하여</span>
                                        <span class="date">2022-10-24</span>
                                      </a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                      <div class="card-body">
                                        품앗이 사이트는 전문가 및 준전문가와 수요자의 매칭을 해주는 사이트입니다.
                                      </div>
                                    </div>
                                  </div>
                            </li>
                        
                            <li class="card-list">
                                <div class="card">
                                    <div class="card-header">
                                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
                                        <span>필독</span>
                                        <span class="poom-span">품앗이 채용 사칭 스미싱 문자 주의</span>
                                        <span class="date">2021-12-24</span>
                                    </a>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                      <div class="card-body">
                                        다른 번호 외에 전화를 걸지 말아 주시고,<br>
                                        소비자 보호를 위해 스미싱 사이트에 접속하지 말아주시길 당부 드립니다.
                                      </div>
                                    </div>
                                  </div>
                            </li>
            
                            <li class="card-list">
                                <div class="card">
                                    <div class="card-header">
                                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
                                        <span>공지</span>
                                        <span class="poom-span">품앗이 서비스 점검안내</span>
                                        <span class="date">2023-12-14</span>
                                      </a>
                                    </div>
                                    <div id="collapseThree" class="collapse" data-parent="#accordion">
                                      <div class="card-body">
                                        사이트 및 서버 점검이 진행 될 예정입니다.<br>
                                        점검시간 동안 품앗이 사이트 서비스 이용이 불가능하오니 양해 부탁드립니다.
                                      </div>
                                    </div>
                                  </div>
                            </li>
            
                            <li class="card-list">
                                <div class="card">
                                    <div class="card-header">
                                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">
                                        <span>공지</span>
                                        <span class="poom-span">품앗이 사기 당했을 경우</span>
                                        <span class="date">2023-12-01</span>
                                      </a>
                                    </div>
                                    <div id="collapseFour" class="collapse" data-parent="#accordion">
                                      <div class="card-body">
                                        사기 당했을 경우 신고바랍니다.
                                      </div>
                                    </div>
                                  </div>
                        
                            </li>
            
                            <li class="card-list"> 
                                <div class="card">
                                    <div class="card-header">
                                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseFive">
                                        <span>공지</span>
                                        <span class="poom-span">품앗이 현피뜰 경우</span>
                                        <span class="date">2023-11-24</span>
                                      </a>
                                    </div>
                                    <div id="collapseFive" class="collapse" data-parent="#accordion">
                                      <div class="card-body">
                                        2023-11-24 공지사항<br>
                                        금일은 서비스 점검으로 인해 오후에 사용이 어려울 수 있습니다.<br>
                                        고객놈들께서는 참고하시고 이용을 하든지 말든지 진짜 귀찮게 굴지 마시고<br>
                                        알아서 하시길...
                                      </div>
                                    </div>
                                  </div>
                            </li>
            
                            <li class="card-list">
                                <div class="card">
                                    <div class="card-header">
                                      <a class="collapsed card-link" data-toggle="collapse" href="#collapseSix">
                                        <span>공지</span>
                                        <span class="poom-span">품앗이생활은 감옥생활</span>
                                        <span class="date">2023-10-06</span>
                                      </a>
                                    </div>
                                    <div id="collapseSix" class="collapse" data-parent="#accordion">
                                      <div class="card-body">
                                        품앗이 생활 한번 시작하면은 못빠져나간다
                                      </div>
                                    </div>
                                  </div>
                            </li>
            
                        </ul>
            
                      </div>
                </div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>