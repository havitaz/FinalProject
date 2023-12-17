<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- 부트스트랩 링크 추가 -->

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>

    <!-- Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style>
        .modal-content{
            margin: 80px 0px 0px 0px;
            width: 594px;
            height: 800px;
        }

        .modal-header{
        text-align: center;
        font-weight: bold;
        margin: 20px;
       }

       .modal-title{
        text-align: center;
        font-weight: bold;
       }

       .modal-body{
         margin: 20px 80px;
       }


       .login-btn {
            color: black;
            background-color: yellow;
            border: none;
            width: 100%;
        }

        .emailSend-btn{
            color: #fff;
            background-color: rgb(0, 199, 174);
            border: none;
            width: 100%;
        }

        .sign-up-btn{
            color: #fff;
            background-color: rgb(0, 199, 174);
            border: none;
            width: 100%;
            height: 40px;
            border-radius: 4px;
            margin-top: 30px;
        }
        .as-re{
            color: red;
        }
        .en-input{
            border: 1px solid rgba(96, 96, 96, 0.5);;
            border-radius: 8px;
            height: 45px;
            width: 400px;
        }
        .cb-agree-all{
            padding-bottom: 15px;
            border-bottom: 2px solid rgba(96, 96, 96, 0.5);
        }
    </style>

	<title>모달 창 예제</title>
	</head>
	
    <body>
        
        <jsp:include page="../common/header.jsp"></jsp:include>
        
        <!-- 부트스트랩 및 jQuery 스크립트 추가 -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
        
    <div style="margin-top: 55px;">
        <!-- 버튼 클릭 시 모달 열기 -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal1">
      		  회원가입  	
        </button>

        <!-- 첫번째 모달 -->
        <div class="modal" id="myModal1" >
            <div class="modal-dialog">
                <h4 class="modal-title" style="text-align: center; color: white; font-weight: bold; margin: 0 auto;">품앗이에 오신걸 환영합니다</h4>
                <div class="modal-content">
                    <div class="modal-body" >
                        <form action="insert.me" method="post">
                            <div>
                                <p>이름<span class="as-re">*</span></p>
                                <p><input class="en-input" id="memberName" name ="memberName" type="text" placeholder="이름(실명)을 입력해주세요"></p>

                                <p>이메일<span class="as-re">*</span></p>
                                <p><input class="en-input" id="memberEmail" name ="memberEmail" type="text" placeholder="example@poomasi.com"></p>

                                <p>비밀번호<span class="as-re">*</span></p>
                                <p><input class="en-input" id="memberPwd" name ="memberPwd" type="password" placeholder="영문 + 숫자 조합 8자리 이상 입력해주세요"></p>
                               
                                <div class ="">                                   
	                               
	                    			<input type="tel" class="form-control" id="phone" placeholder="Please Enter Phone" name="phone"> <br>               
	                                <label for=""> &nbsp; Gender : </label> &nbsp;&nbsp;
				                    <input type="radio" id="Male" value="M" name="memberGender" checked>
				                    <label for="Male">남자</label> &nbsp;&nbsp;
				                    <input type="radio" id="Female" value="F" name="memberGender">
				                    <label for="Female">여자</label> &nbsp;&nbsp;
                                </div> 
              
                                <br>
                                <div class="cb-agree-all">전체 동의</div>
                                <br>
                                <label><input type="checkbox" name="category" value="agree"> (필수) 이용약관 동의</label>
                                <label><input type="checkbox" name="category" value="privateAgree"> (필수) 개인정보 수집 및 이용 동의</label>
                                <label><input type="checkbox" name="category" value="#"> (필수) 14세 이상입니다</label>
                                
                                <button type="submit" class="sign-up-btn" onclick="signUp()">회원가입</button>
                            </div>                 
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <script>

        $(document).ready(function(){
            $('.dropdown-toggle').dropdown();
        });

        $(function(){
    		const emailInput = document.querySelector('#enrollForm input[name=memberEmail]');
            let eventFlag;
            emailInput.onkeyup = function(ev){
                clearTimeout(eventFlag);
                eventFlag = setTimeout(function(){
                    if(emailInput.value.length >=5){
                        $.ajax({
                            url: 'emailCheck.me',
                            data: {checkEmail : emailInput.value},
                            success: function(result){
                                const checkResult = document.querySelector("#checkResult");
                                console.log(result);
                                if(result === 'NNNNN'){ //사용불가능한 경우
                                    document.querySelector("#enrollForm [type='submit']").disabled = true;
                                    checkResult.style.display = 'block';
                                    checkResult.style.color = 'red';
                                    checkResult.innerText = "이미사용중인 아이디입니다.";
                                }else{ // 사용가능한경우
                                    //회원가입버튼 활성화
                                    document.querySelector("#enrollForm [type='submit']").disabled = false;
                                    //사용가능한 아이디입니다. 화면 출력
                                    checkResult.style.display = 'block';
                                    checkResult.style.color = 'green';
                                    checkResult.innerText = "사용가능한 아이디입니다.";
                                }
                            },
                            error: function(){
                                console.log("아이디 중복체크 ajax통신 실패");
                            }
                        })
                    } else{
                        document.querySelector("#enrollForm [type='submit']").disabled = true;
                        checkResult.style.display = 'none';

                    }
                }, 300);

    			
    		}
    	})
        </script>



    </body>

	<jsp:include page="../common/footer.jsp"></jsp:include>

</html>



