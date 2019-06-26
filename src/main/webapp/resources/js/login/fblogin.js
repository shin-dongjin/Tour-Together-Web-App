/**
 * 
 */

  /* SDK를 읽어들인 다음 초기화  start */
      window.fbAsyncInit = function() {//window.fbAsyncInit에 할당된 함수는 SDK를 모두 읽어들이면 실행됨
        FB.init({//SDK초기화(설정)			//모든 SDK 함수는 FB.init 다음에 호출해야 함
          appId      : '637602396604778',
          cookie     : true,
          xfbml      : true,
          version    : 'v3.0'
        });
         FB.getLoginStatus(function(response) {//사용자의 Facebook 로그인 상태 및 앱 인증 여부를 확인
            statusChangeCallback(response);//함수호출
        }); //이것 때문에 초기에 오류 발생했었음
      };
      (function(d, s, id){ //즉시 호출 함수 식 (Immediately Invoked Function Expression, IIFE) //인터프리터가 해당 함수에 도달하면 자동으로 호출되는 함수
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "https://connect.facebook.net/en_US/sdk.js";//https 안붙히면 오류 //sdk읽어들이는 url인듯
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
      /* SDK를 읽어들인 다음 초기화  end */
      
       function statusChangeCallback(response){//로그인 상태별 if else 로직
         if(response.status === 'connected'){
           console.log('Logged in and authenticated');
           
           //authResponse는 사용자의 ID, 유효한 액세스 토큰, 서명된 요청 및 액세스 토큰과 서명된 요청이 각각 만료되는 시간을 제공.
           var uid = response.authResponse.userID;
           //토큰: 길이가 변할 수 있는 불명확한 문자열  https://developers.facebook.com/docs/facebook-login/access-tokens/?translation
           var accessToken = response.authResponse.accessToken;//JavaScript용 Facebook SDK에서는 자동으로 사용자 액세스 토큰을 얻어 브라우저 쿠키에 유지->토큰으로 세션유지한단말?
        		   //만약 그렇다면 토큰은 response에서 얻을 수 있으니까 - response가 쿠키에 유지된단말!? -> 토큰만 쿠키에 존재해도 로그인은 유지가능해서 장담못함
        		   // -> 로그인할 때마다 response(토큰)를 얻기위해 FB.getLoginStatus(function(response){} 호출
        				   //결국 추가적인 세션처리는 필요하지 않나?
           console.log('uid: '+uid+' /  accessToken: '+accessToken)
           setElements(true);
           //testAPI();
         } else {
           console.log('Not authenticated');
           setElements(false);
         }
       }
      function checkLoginState() { // fb:login-button 버튼을 클릭하면 수행됨 
        FB.getLoginStatus(function(response) {//사용자의 Facebook 로그인 상태 및 앱 인증 여부를 확인 //response객체를 받는 곳!? 받아서 쿠키에 자동저장!?
          statusChangeCallback(response);//함수호출
          testAPI();//로그인버튼클릭시 명시한 field를 객체타입으로 response에 저장
        }, true);//(true 추가이유) https://developers.facebook.com/docs/reference/javascript/FB.getLoginStatus#events
      }
      function testAPI(){//
        FB.api('/me?fields=first_name, last_name, gender, birthday, email', function(response){//FB.api()를 통해 Graph API를 호출할 수 있음 //response는 어딨던거지???????
          if(response && !response.error){
            console.log("FB.api()");
            alert(JSON.stringify(response));
            //buildProfile(response);
            addBook(response);
          }
        })
      }
      function setElements(isLoggedIn){//이거를 화면 바뀔때마다 확인해야함 1.메인페이지로드시 2.로그인,로그아웃 직후 //1번이 처리안됨 true,false
        if(isLoggedIn){
          document.getElementById('logout').style.display = 'block';//로그아웃버튼
          document.getElementById('fb-btn').style.display = 'none';
          document.getElementById('heading').style.display = 'none';
          document.getElementById('open').style.display = 'none';
          document.getElementById('openn').style.display = 'none';
          document.getElementById('login').style.display = 'none';
          document.getElementById('join').style.display = 'none';
        } else {
          document.getElementById('login').style.display = 'block';
          document.getElementById('logout').style.display = 'none';
          document.getElementById('fb-btn').style.display = 'block';
          document.getElementById('heading').style.display = 'block';
          document.getElementById('join').style.display = 'block';
        }
      }
      function logout(){//로그아웃버튼 눌렀을 때 수행 //페북로그아웃 후 html변경
        FB.logout(function(response){
          setElements(false);
        });
        $.post("member/sessionoff", function(){ alert("sessionofffffffffffffffffffffffffffffffffffffffffffffffffffff")})
        .done(function(){
        	console.log("sessionoff done^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
        })
		.error(function(){
			console.log("sessionoff error####################################################");
		})
      }
      function addBook(response) {
    	    $.post("member/add03", 
    	            response,
    	            function(checkIdNum) { alert("success!! checkIdNum : "+checkIdNum); }
			)
			.fail(function() {
    			alert( "error" );
 			 })

    	}