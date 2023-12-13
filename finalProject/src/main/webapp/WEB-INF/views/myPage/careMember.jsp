<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="././resources/css/myPgae.css">
    <style>
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
        .pageBox{
            border-radius: 13px;
            border: 1px solid rgba(226, 226, 226, 0.4);
            padding: 15px;
            margin-bottom: 100px;
            position: relative;
        }
        .top-center{
            margin-bottom: -15px;
        }

        .close-btn{
            width: 10px;
            position: absolute;
            right: 12px;
            top: 11px;
            cursor: pointer;
        }
        .ad-table{
            border-collapse: collapse;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        td{
            padding: 10px;
            font-size: 13px;
        }
        .ad-table{
            border: none;
            margin-top: 30px;
        }
        .ad-btn{
            width: 100%;
            border: none;
            color: white;
            background: rgb(218, 76, 60);
            border-radius: 4px;
            /* width: 30px; */
            height: 30px;
            margin-top: 30px;
            margin-bottom: -30px;
            cursor: pointer;
        }

        .user-info2{
            width: 295px;
            margin-left: 5px;
            height: 300px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-top: none;
            position: relative;
            overflow-y: auto;
        }
        .user-info2-top{
            margin-left: 5px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-radius: 8px 8px 0px 0px;
            background: rgba(226, 226, 226, 0.4);
            font-size: 17px;
            height: 31px;
            text-align: center;
            font-weight: 600;
        }
        .table-area{
            height: 300px;
            overflow-y: auto;
        }
        .table-area::-webkit-scrollbar {
			width: 0px; 
		}

        /* 검색 css */
        .src-area{
            position: absolute;
            width: 100%;
        }
        .src-mem{
            width: 453px;
            border: 1px solid #3b3b3b5c;
            border-radius: 8px;
            padding-left: 0px;
            height: 29px;
        }
        .src-img{
            width: 20px;
            height: auto;
            position: absolute;
            right: 354px;
            top: 4px;
            cursor: pointer;
        }
        .src-btn{
            
        }

        .ad-can{
            right: 0px;
            border: none;
            width: 295px;
            height: 30px;
            margin-left: 5px;
            border: 1px solid rgba(96, 96, 96, 0.4);
            border-top: none;
            border-radius: 0px 0px 9px 9px;
            cursor: pointer;
        }

        /* 선택된 회원 */
        .sel-mem{
            border-bottom: 1px solid rgba(96, 96, 96, 0.4);
            width: 100%;
            height: 50px;
            padding: 10px;  
            line-height: 1.0;
            display: flex;
            flex-direction: column;
        }
        .sel-mem2{
            border-bottom: 1px solid rgba(96, 96, 96, 0.4);
            width: 100%;
            height: 50px;
            padding: 10px;  
            line-height: 1.0;
            display: flex;
            flex-direction: column;
            align-items: end;
        }
        .user-info2::-webkit-scrollbar {
			width: 0px; 
		}
        .align-mem{
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }
        .align-mem:hover{
            background: black;
            background-color: rgba(226, 226, 226, 0.4);
        }
        .upper-text{
            font-size: 9px; 
            margin-bottom: 10px; 
            margin-top: -8px; 
            margin-left: -5px; 
            color: rgba(147, 147, 150);
        }
        .lower-text{
            margin-top: 7px; 
            margin-left: -5px;
        }
        .hidden {
    		display: none;
		}
    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">일정 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
            <c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="careMem.me"  style="font-weight: bolder; 
			    background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">회원 관리</a>
            <a class="myPageSideBar" href="ask.me">신고 내역</a>
            </c:if>            
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">회원 관리</h3>
			<div class="pageBox" style="display: flex; flex-direction: row;">
				<div class="user-info">
                    <div class="table-area">
                        <table border="1" class="ad-table" id="memberTable">
                            <thead style="font-size: 15px;">
                                <div class="src-area">                                
                                    <input class="src-mem" type="text" name="" id="searchInput" placeholder="검색">
                                    <img class="src-img" src="././resources/icon/glass-icon.png" alt="">
                                </div>
                                <tr>
                                    <th>선택</th>
                                    <th>번호</th>
                                    <th>이메일</th>
                                    <th>이름</th>
                                    <th>구분</th>
                                    <th>가입일</th>
                                </tr>
								<c:forEach var="m" items="${mList}">		
									<tr>
	                                    <td><input type="checkbox"></td>
	                                    <td>${m.memberNo}</td>
	                                    <td>${m.memberEmail}</td>
	                                    <td>${m.memberName}</td>
	                                    <td>${m.memberPro} 가 1이면 일반</td>
	                                    <td>${m.enrollDate}</td>
	                                </tr>
								</c:forEach> 								                         
                            </thead>
                        </table>
                    </div>
                    <button class="ad-btn">탈퇴</button>
				</div>
                <div>
                    <div class="user-info2-top">
                        회원관리
                    </div>
                    <div class="user-info2">

                    </div>
                    <button class="ad-can">취소</button>
                </div>
                

			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
	<script>
    function displaySelectedMembers() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        var userInfo2Div = document.querySelector('.user-info2');

        // div의 내용 지우기
        userInfo2Div.innerHTML = '';

        // 체크박스를 통해 선택된 것을 찾기 위해 반복
        checkboxes.forEach(function(checkbox, index) {
            if (checkbox.checked) {
                // 해당하는 <td> 요소 가져오기
                var tds = checkbox.parentElement.parentElement.getElementsByTagName('td');

                // <td> 요소에서 값 추출
                var userType = tds[4].innerText;
                var userName = tds[3].innerText;
                var userNo = tds[1].innerText;
                var userEmail = tds[2].innerText;

                // align-mem에 두 개의 div 추가
                var alignMemDiv = document.createElement('div');
                alignMemDiv.classList.add('align-mem');

                // sel-mem 추가
                var selMemDiv = document.createElement('div');
                selMemDiv.classList.add('sel-mem');

                var upperTextSpanSelMem = document.createElement('span');
                upperTextSpanSelMem.classList.add('upper-text');
                upperTextSpanSelMem.innerText = userType;
                selMemDiv.appendChild(upperTextSpanSelMem);

                var lowerTextSpanSelMem = document.createElement('span');
                lowerTextSpanSelMem.classList.add('lower-text');
                lowerTextSpanSelMem.innerText = userName;
                selMemDiv.appendChild(lowerTextSpanSelMem);

                alignMemDiv.appendChild(selMemDiv);

                // sel-mem2 추가
                var selMem2Div = document.createElement('div');
                selMem2Div.classList.add('sel-mem2');

                var upperTextSpanSelMem2 = document.createElement('span');
                upperTextSpanSelMem2.classList.add('upper-text');
                upperTextSpanSelMem2.innerText = 'No. ' + userNo;
                selMem2Div.appendChild(upperTextSpanSelMem2);

                var lowerTextSpanSelMem2 = document.createElement('span');
                lowerTextSpanSelMem2.classList.add('lower-text');
                lowerTextSpanSelMem2.innerText = userEmail;
                selMem2Div.appendChild(lowerTextSpanSelMem2);

                alignMemDiv.appendChild(selMem2Div);

                // user-info2Div에 alignMemDiv 추가
                userInfo2Div.appendChild(alignMemDiv);
            }
        });
    }

    // 첫 번째 블록
    document.addEventListener("DOMContentLoaded", function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        var userInfo2Div = document.querySelector('.user-info2');
        var cancelButton = document.querySelector('.ad-can');
        var searchInput = document.querySelector('.src-mem');
        var searchIcon = document.querySelector('.src-img');
        var tableRows = document.querySelectorAll('.ad-table tbody tr');

        // 각 체크박스에 클릭 이벤트 리스너 추가
        checkboxes.forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                displaySelectedMembers();
            });
        });

        // 검색어 입력 이벤트 처리
        searchInput.addEventListener('input', function() {
            filterTable(searchInput.value);
        });

        // 검색 아이콘 클릭 이벤트 처리
        searchIcon.addEventListener('click', function() {
            filterTable(searchInput.value);
        });

        // 검색 기능 함수
        function filterTable(query) {
            query = query.toLowerCase();

            tableRows.forEach(function(row) {
                var data = row.textContent.toLowerCase();
                if (data.includes(query)) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
        }

        // 나머지 코드 작성 ...
        cancelButton.addEventListener('click', function() {
            // 취소 버튼 클릭 시 align-mem의 내용 초기화 및 체크박스의 checked 해제
            userInfo2Div.innerHTML = '';
            checkboxes.forEach(function(checkbox) {
                checkbox.checked = false;
            });
        });
    });

    // 두 번째 블록
    document.addEventListener("DOMContentLoaded", function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        var userInfo2Div = document.querySelector('.user-info2');
        var cancelButton = document.querySelector('.ad-can');

        checkboxes.forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                // 첫 번째 블록에서 정의한 함수 호출
                displaySelectedMembers();
            });
        });

        // 나머지 코드 작성 ...
        cancelButton.addEventListener('click', function() {
            // 취소 버튼 클릭 시 align-mem의 내용 초기화 및 체크박스의 checked 해제
            userInfo2Div.innerHTML = '';
            checkboxes.forEach(function(checkbox) {
                checkbox.checked = false;
            });
        });
    });
    document.addEventListener("DOMContentLoaded", function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        var userInfo2Div = document.querySelector('.user-info2');
        var cancelButton = document.querySelector('.ad-can');
        var searchInput = document.querySelector('.src-mem');
        var tableRows = document.querySelectorAll('.ad-table tbody tr');

        // 각 체크박스에 클릭 이벤트 리스너 추가
        checkboxes.forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                displaySelectedMembers();
            });
        });

        // 취소 버튼 클릭 이벤트 처리
        cancelButton.addEventListener('click', function() {
            // 취소 버튼 클릭 시 align-mem의 내용 초기화 및 체크박스의 checked 해제
            userInfo2Div.innerHTML = '';
            checkboxes.forEach(function(checkbox) {
                checkbox.checked = false;
            });
        });

        // displaySelectedMembers 함수
        function displaySelectedMembers() {
            // ... (이하 생략)
        }
    });
    

	</script>
</body>
</html>