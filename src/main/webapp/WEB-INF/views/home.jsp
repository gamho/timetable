<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <title>index</title>
    </head>	
    <!-- import font style -->
    <link href="https://fonts.googleapis.com/css?family=Fredoka+One" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Audiowide" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lalezar" rel="stylesheet">
    <!-- font icon -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- css 참조 -->
    <link rel="stylesheet" type="text/css" href="resources/css/index/indexcss.css">
    <!-- script 참조 -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/index/indexjs.js"></script>
    <!-- Bootstrap -->
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    <!-- google 로그인 자바스크립트 -->
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="88432229368-1u4ldtatt0lvb61sm1u7gjv1at613n13.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script>
      function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('Full Name: ' + profile.getName());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
   		var googleId = profile.getEmail();
   		var name = profile.getName();
        
        console.log('login!!! , ' + googleId  + ',' + name);
        
        if(profile.getEmail()!="") {
            $.ajax({
              type: "POST",
              url: '/tatab/googleLogin.do',
              data: {
            	  googleId : googleId,
            	  name : name
            	  },
              success : function(data) {
            	  console.log('!!!!!');
                  location.href = "/tatab/userMain.do"
              }
            });
          }
      };
    </script>
	
    <body>
        <!-- ------------ content start ------------- -->
        <div class="content">
          <!-- 로그인 part start -->
           <div class="login-div">
               <div class="login-box">
              <div class="title">TATAB</div>
                   <br>
                   <a href="#" class="login-btn">
                     <img src="resources/img/index/kakao_login.png">
                  </a>
                  <br>
                  <div class="g-signin2" style="margin: 0 35%" data-onsuccess="onSignIn" data-theme="dark"></div>
                  <br>
                  <a href="/tatab/googleLogout.do" onclick="signOut();">Sign out</a>
<script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
  }
</script>
                  <!-- 
				    <div id="custom4Btn" class="g-signin2" data-onsuccess="onSignIn">
				      <span class="icon"></span>
				      <span class="buttonText">구글 계정으로 로그인</span>
			    	</div>
			    	 -->
                         <!-- 
                  <a href="#" class="login-btn">
                      <div id="customBtn" class="customGPlusSignIn google-login-btn g-signin2" data-onsuccess="onSignIn" data-theme="dark">
                         <img src="resources/img/index/google-img.png" class="google-icon">
                          <span class="buttonText">구글계정으로 로그인</span>
                      </div>
                   </a>
                           -->
               </div>
               <div class="scroll-about-btn">
                    <a href="#"><i onclick="fnMove('1')" class="fas fa-chevron-circle-down" id="down"></i></a>
                </div>
           </div>
           <!-- 로그인 part end -->
           
            <!-- service part start -->
            <div class="service-div">
              <div class="back-service-div">
               <div class="service-title">SERVICE</div>
                <!-- sub 설명 start -->
                <div class="service-item-box row" style="margin-left: 0px; margin-right: 0px;">
                    <div class="service-item col-md-4 col-xs-6">
                       <div class="item">
                          <div class="icon"><i class="fas fa-tasks"></i></div>
                          <div class="comment1">
                              <p>프로젝트 관리</p>
                          </div>
                          <div class="comment2">
                              <p>프로젝트의<br>효율적인 관리 지원</p>
                          </div>
                       </div>
                    </div>
                    <div class="service-item col-md-4 col-xs-6">
                       <div class="item">
                          <div class="icon"><i class="fas fa-users"></i></div>
                          <div class="comment1">
                              <p>프로젝트 공유</p>
                          </div>
                          <div class="comment2">
                              <p>팀원들 간<br>프로젝트 진행상황<br>실시간 공유</p>
                          </div>
                       </div>
                    </div>
                    <div class="service-item col-md-4 col-xs-6">
                       <div class="item">
                          <div class="icon"><i class="fas fa-bell"></i></div>
                          <div class="comment1">
                              <p>알람</p>
                          </div>
                          <div class="comment2">
                              <p>오늘 해야할 작업 목록,<br>D-DAY, 메세지 등<br>알람 기능 지원</p>
                          </div>
                       </div>
                    </div>
                    <div class="service-item col-md-4 col-xs-6">
                       <div class="item">
                          <div class="icon"><i class="fas fa-mouse-pointer"></i></div>
                          <div class="comment1">
                              <p>직관적인 UI</p>
                          </div>
                          <div class="comment2">
                              <p>사용자의 편리한<br>작업 관리를 돕는 UI</p>
                          </div>
                       </div>
                    </div>
                    <div class="service-item col-md-4 col-xs-6">
                       <div class="item">
                          <div class="icon"><i class="fas fa-comments"></i></div>
                          <div class="comment1">
                              <p>메시지</p>
                          </div>
                          <div class="comment2">
                              <p>실시간 채팅, 메시지,<br>댓글 확인</p>
                          </div>
                       </div>
                    </div>
                    <div class="service-item col-md-4 col-xs-6">
                       <div class="item">
                          <div class="icon"><i class="fas fa-chart-bar"></i></div>
                          <div class="comment1">
                              <p>시각화</p>
                          </div>
                          <div class="comment2">
                              <p>프로젝트 진행 상황을<br> 도표를 통해<br>시각적으로 표현</p>
                          </div>
                       </div>
                    </div>
                </div>
                <!-- sub 설명 end -->
                </div>
            </div>
            <!-- service part end -->
            
           <!-- about part start -->
           <div class="about-div row" style="margin: 0">
               <div class="col-md-5" style="margin: 0; padding: 0;"><img class="about-img" src="resources/img/index/startup.jpg"> 
               </div>
                <div class="col-md-7 about-content">
                  <div class="about-line"></div>
                   <div class="about-title">ABOUT</div>
                   <div class="about-main">
<!--
                       <div class="about-main-img">
                            <i class="fas fa-clipboard"></i>   
                       </div>
-->
                       <div class="about-main-txt">
                       <p>ffffffffffffffffffffffffff</p>
                       <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                       <p>eeeeeeeeeeeeeeeeeeeeeeeeeee</p>
                       </div>
                   </div>
                  <div class="about-line"></div>
                </div>
            </div>
            <!-- about part end -->
        </div>
        <!-- ------------ content end ------------- -->
        
        <!-- ------------ footer start ------------- -->
        <div class="footer">
            <p class="copyright">
                Copyright &copy; by A. 
                <script>document.write(new Date().getFullYear());</script>
                 All rights reserved.
            </p>
        </div>
        <!-- ------------ footer end ------------- -->
        
    </body>
</html>