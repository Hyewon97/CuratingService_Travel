<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <div class="container">
     <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">       
        <form class="validation-form" method="post" action="signup.do" novalidate >
      
           <div class="row">              
	         <div class="mb-3">
	            <label for="email">이메일</label>
	            <input type="text" class="form-control" name="email" 
	            		pattern="[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}"
	            		placeholder="예) you@example.com" required>
	            <div class="invalid-feedback">
	              이메일을 형식에 맞게 입력해주세요.
	            </div>
	          </div>

					<div class="mb-3">
	            <label for="easyuser_pass">비밀번호</label>
	            <input type="password"  class="form-control" name="easyuser_pass" 
	            pattern="[a-zA-Z0-9]{8,15}"  placeholder="영문,숫자 8~15자" required>
	            <div class="invalid-feedback">
	              비밀번호를 형식에 맞게 입력해주세요.
	            </div>
	          </div>  
	          
	          
	          <!-- <div class="mb-3">
	            <label for="passChk">비밀번호 확인</label>
	            <input type="password"  class="form-control" name="easyuser_pass" 
	            pattern="[a-zA-Z0-9]{8,15}" placeholder="영문,숫자 8~15자" required>
				<div class="invalid-feedback">
	              비밀번호가 일치하지 않습니다.
	            </div> 
	          </div>
	           -->
	          
	           <div class="mb-3">
	              <label for="easyuser_name">이름</label>
	              <input type="text" class="form-control" name="easyuser_name" 
	              pattern="[가-힣]{2,7}" placeholder="예) 홍길동 " required>
	              <div class="invalid-feedback">
	                이름을 형식에 맞게 입력해주세요.(한글 2~7자)
	              </div>
	            </div>  
	          
	          
	          
<!--          <div class="mb-3">
	              <label for="nick_name">닉네임</label>
	              <input type="text" class="form-control" name="nick_name" 
	              pattern="[가-힣]{2,7}" placeholder="예) 귀염둥이 " required>
	              <div class="invalid-feedback">
	                닉네임을 형식에 맞게 입력해주세요.(한글 2~7자)
	              </div>
	            </div> -->


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Nickname</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div>
        <form>
            <label for="nick_name">닉네임</label>
            <input type="text" class="form-control" name="nick_name" 
	              pattern="[가-힣]{2,7}" placeholder="예) 귀염둥이 " required>
            <button type="button" id="check_nickname">중복확인</button>
            <div id="nickname_feedback"></div>
        </form>
    </div>

    <script>
        $(document).ready(function() {
            $('#check_nickname').click(function() {
                var nick_name = $('#nick_name').val();
                $.ajax({
                    type: "POST",
                    url: "/easyuser/checkNickname.do",
                    data: {nick_name: nick_name},
                    success: function(response) {
                        $('#nickname_feedback').html(response);
                    },
                    error: function(xhr, status, error) {
                        alert("An error occurred: " + xhr.status + " " + error);
                    }
                });
            });
        });
    </script>
</body>
</html>






					<div class="mb-3">
	            <label for="phone_num">휴대전화 번호</label>
	            <input type="text" class="form-control" name="phone_num"  pattern="^010[0-9]{8}$" placeholder="예)01012345678" required>
	            <div class="invalid-feedback">
	              휴대전화 번호를 형식에 맞게 입력해주세요.
	            </div>
	          </div>
	          
	          
	             <div class="mb-3">
	            <label for="birth">생년월일</label>
	            <input type="text" class="form-control" name="birth"  pattern="[0-9]{8}" placeholder="예)20100806" required>
	            <div class="invalid-feedback">
	              생년월일을 형식에 맞게 입력해주세요.
	            </div>
	          </div>
	          
	          
	          
	              <div class="form-group">
                   <label for="sex">성별 </label>
                    <input type="radio" name="sex" value="M">남
                    <input type="radio" name="sex" value="F">여
                 </div>
	          
	          
	          
	
	          <hr class="mb-4">
	          <div class="custom-control custom-checkbox">
	            <input type="checkbox" class="custom-control-input" id="aggrement" required>
	            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
	          </div>
	          <div class="mb-4">
	          <input type="hidden" name="easyuser_type" value="1" />
	           <button class="btn btn-dark btn-lg btn-block" type="submit">가입 완료</button>
	           </div>
	        </div>
	        
	      </form>
	      </div>	   
    </div>  
</div> 

  <script >   
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
      
  </script>
 

 