 //Google 제공업체 개체의 인스턴스를 생성합니다.
  var provider = new firebase.auth.GoogleAuthProvider();  
  provider.addScope('profile');
  provider.addScope('email');
  
 //팝업 창을 사용해서 로그인하려면 다음과 같이 signInWithPopup을 호출합니다.
 //또한 Google 제공업체의 OAuth 토큰을 받아서 Google API를 통해 추가 데이터를 가져올 수도 있습니다.
       $('#do_gglogin').on("click",function(){
    	   firebase.auth().onAuthStateChanged(function(user) {
    		   if (user) {
    		     // User is signed in.
    		     console.log(user.email);
    		   }
    		 });
    	  googleLogin();
      })
 function googleLogin(){
  firebase.auth().signInWithPopup(provider).then(function(result) {
	  // This gives you a Google Access Token. You can use it to access the Google API.
	  var token = result.credential.accessToken;
	  // The signed-in user info.
	  var user = result.user;
	  console.log("displayName:"+user.displayName+", email:"+user.email+", phoneNumber:"+user.phoneNumber
			  +", photoURL:"+user.photoURL+", providerId:"+user.providerId+", uid:"+user.uid );
	  // ...
	  
		var member = {
			id : user.uid,
			first_name : user.displayName,
			last_name : user.displayName,
			email : user.email,
			telephone : user.phoneNumber
		};
	  
	        $.post("../member/addGoogleMember", 
                  member,
                  function() {
                   location.href="../home.do";
                  }
	        )
	        .fail(function() {
	            alert( "error" );
	         })
	         
	}).catch(function(error) {
	  // Handle Errors here.
	  var errorCode = error.code;
	  var errorMessage = error.message;
	  // The email of the user's account used.
	  var email = error.email;
	  // The firebase.auth.AuthCredential type that was used.
	  var credential = error.credential;
	  // ...
	  alert(errorMessage);
	}); 
 }
 
 function getToken(){
  //페이지 로드가 완료되면 getRedirectResult를 호출해서 Google 제공업체의 OAuth 토큰을 가져올 수도 있습니다.
  firebase.auth().getRedirectResult().then(function(result) {
	  if (result.credential) {
	    // This gives you a Google Access Token. You can use it to access the Google API.
	    var token = result.credential.accessToken;
	    // ...
	  }
	  // The signed-in user info.
	  var user = result.user;
	}).catch(function(error) {
	  // Handle Errors here.
	  var errorCode = error.code;
	  var errorMessage = error.message;
	  // The email of the user's account used.
	  var email = error.email;
	  // The firebase.auth.AuthCredential type that was used.
	  var credential = error.credential;
	  // ...
	});  
 }
 
 