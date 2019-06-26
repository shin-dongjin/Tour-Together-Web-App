<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko" dir="ltr" xmlns:fb="http://ogp.me/ns/fb#">
<head>
<meta charset="utf-8">

<link
	href="https://a0.muscache.com/airbnb/static/packages/dls/common_o2.1_cereal-1af570e9d01ec3ef385f734e9d434faa.css"
	media="all" rel="stylesheet" type="text/css" />

<link
	href="https://a0.muscache.com/airbnb/static/packages/common-c08c10eef8e65a2cb0bc9538c7225c2e.css"
	media="all" rel="stylesheet" type="text/css" />



<link
	href="https://a0.muscache.com/airbnb/static/packages/address_widget-4f18ee66a37930ce1c93c8f33690c7b0.css"
	media="screen" rel="stylesheet" type="text/css" />
<link
	href="https://a0.muscache.com/airbnb/static/packages/phonenumbers-b9c0e22d1b9d0bee9910c84b71387837.css"
	media="screen" rel="stylesheet" type="text/css" />
<link
	href="https://a0.muscache.com/airbnb/static/business_travel/quick_enroll-2cb736ef9eaf490125377e37fe87c802.css"
	media="screen" rel="stylesheet" type="text/css" />
<link
	href="https://a0.muscache.com/airbnb/static/packages/edit_profile-2dcbe71b304a8a71ad42e1ecd948f402.css"
	media="screen" rel="stylesheet" type="text/css" />




<meta id="csrf-param-meta-tag" name="csrf-param"
	content="authenticity_token" />
<meta id="csrf-token-meta-tag" name="csrf-token" content="" />


<title>프로필 - TourTogether</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta id="english-canonical-url" content="" />


<link rel="canonical" href="https://www.airbnb.co.kr/users/edit">
<link rel="alternate" hreflang="es"
	href="https://es.airbnb.com/users/edit">
<link rel="alternate" hreflang="fr-BE"
	href="https://fr.airbnb.be/users/edit">
<link rel="alternate" hreflang="fr-CA"
	href="https://fr.airbnb.ca/users/edit">
<link rel="alternate" hreflang="fr-CH"
	href="https://fr.airbnb.ch/users/edit">
<link rel="alternate" hreflang="hr"
	href="https://hr.airbnb.com/users/edit">
<link rel="alternate" hreflang="it-CH"
	href="https://it.airbnb.ch/users/edit">
<link rel="alternate" hreflang="th"
	href="https://th.airbnb.com/users/edit">
<link rel="alternate" hreflang="en-AE"
	href="https://www.airbnb.ae/users/edit">
<link rel="alternate" hreflang="de-AT"
	href="https://www.airbnb.at/users/edit">
<link rel="alternate" hreflang="nl-BE"
	href="https://www.airbnb.be/users/edit">
<link rel="alternate" hreflang="en-CA"
	href="https://www.airbnb.ca/users/edit">
<link rel="alternate" hreflang="ca"
	href="https://www.airbnb.cat/users/edit">
<link rel="alternate" hreflang="de-CH"
	href="https://www.airbnb.ch/users/edit">
<link rel="alternate" hreflang="es-CL"
	href="https://www.airbnb.cl/users/edit">
<link rel="alternate" hreflang="zh-CN"
	href="https://www.airbnb.cn/users/edit">
<link rel="alternate" hreflang="es-CR"
	href="https://www.airbnb.co.cr/users/edit">
<link rel="alternate" hreflang="id"
	href="https://www.airbnb.co.id/users/edit">
<link rel="alternate" hreflang="en-IN"
	href="https://www.airbnb.co.in/users/edit">
<link rel="alternate" hreflang="ko"
	href="https://www.airbnb.co.kr/users/edit">
<link rel="alternate" hreflang="en-NZ"
	href="https://www.airbnb.co.nz/users/edit">
<link rel="alternate" hreflang="en-GB"
	href="https://www.airbnb.co.uk/users/edit">
<link rel="alternate" hreflang="es-VE"
	href="https://www.airbnb.co.ve/users/edit">
<link rel="alternate" hreflang="en"
	href="https://www.airbnb.com/users/edit">
<link rel="alternate" hreflang="es-AR"
	href="https://www.airbnb.com.ar/users/edit">
<link rel="alternate" hreflang="en-AU"
	href="https://www.airbnb.com.au/users/edit">
<link rel="alternate" hreflang="es-BO"
	href="https://www.airbnb.com.bo/users/edit">
<link rel="alternate" hreflang="pt"
	href="https://www.airbnb.com.br/users/edit">
<link rel="alternate" hreflang="es-BZ"
	href="https://www.airbnb.com.bz/users/edit">
<link rel="alternate" hreflang="es-CO"
	href="https://www.airbnb.com.co/users/edit">
<link rel="alternate" hreflang="es-EC"
	href="https://www.airbnb.com.ec/users/edit">
<link rel="alternate" hreflang="es-GT"
	href="https://www.airbnb.com.gt/users/edit">
<link rel="alternate" hreflang="zh-HK"
	href="https://www.airbnb.com.hk/users/edit">
<link rel="alternate" hreflang="es-HN"
	href="https://www.airbnb.com.hn/users/edit">
<link rel="alternate" hreflang="en-MT"
	href="https://www.airbnb.com.mt/users/edit">
<link rel="alternate" hreflang="ms"
	href="https://www.airbnb.com.my/users/edit">
<link rel="alternate" hreflang="es-NI"
	href="https://www.airbnb.com.ni/users/edit">
<link rel="alternate" hreflang="es-PA"
	href="https://www.airbnb.com.pa/users/edit">
<link rel="alternate" hreflang="es-PE"
	href="https://www.airbnb.com.pe/users/edit">
<link rel="alternate" hreflang="es-PY"
	href="https://www.airbnb.com.py/users/edit">
<link rel="alternate" hreflang="en-SG"
	href="https://www.airbnb.com.sg/users/edit">
<link rel="alternate" hreflang="es-SV"
	href="https://www.airbnb.com.sv/users/edit">
<link rel="alternate" hreflang="tr"
	href="https://www.airbnb.com.tr/users/edit">
<link rel="alternate" hreflang="zh-TW"
	href="https://www.airbnb.com.tw/users/edit">
<link rel="alternate" hreflang="cs"
	href="https://www.airbnb.cz/users/edit">
<link rel="alternate" hreflang="de"
	href="https://www.airbnb.de/users/edit">
<link rel="alternate" hreflang="da"
	href="https://www.airbnb.dk/users/edit">
<link rel="alternate" hreflang="es-ES"
	href="https://www.airbnb.es/users/edit">
<link rel="alternate" hreflang="fi"
	href="https://www.airbnb.fi/users/edit">
<link rel="alternate" hreflang="fr"
	href="https://www.airbnb.fr/users/edit">
<link rel="alternate" hreflang="el"
	href="https://www.airbnb.gr/users/edit">
<link rel="alternate" hreflang="en-GY"
	href="https://www.airbnb.gy/users/edit">
<link rel="alternate" hreflang="hu"
	href="https://www.airbnb.hu/users/edit">
<link rel="alternate" hreflang="en-IE"
	href="https://www.airbnb.ie/users/edit">
<link rel="alternate" hreflang="is"
	href="https://www.airbnb.is/users/edit">
<link rel="alternate" hreflang="it"
	href="https://www.airbnb.it/users/edit">
<link rel="alternate" hreflang="ja"
	href="https://www.airbnb.jp/users/edit">
<link rel="alternate" hreflang="es-MX"
	href="https://www.airbnb.mx/users/edit">
<link rel="alternate" hreflang="nl"
	href="https://www.airbnb.nl/users/edit">
<link rel="alternate" hreflang="no"
	href="https://www.airbnb.no/users/edit">
<link rel="alternate" hreflang="pl"
	href="https://www.airbnb.pl/users/edit">
<link rel="alternate" hreflang="pt-PT"
	href="https://www.airbnb.pt/users/edit">
<link rel="alternate" hreflang="ru"
	href="https://www.airbnb.ru/users/edit">
<link rel="alternate" hreflang="sv"
	href="https://www.airbnb.se/users/edit">
<link rel="alternate" hreflang="zh"
	href="https://zh.airbnb.com/users/edit">











</head>
<body class="with-new-header has-epcot-header">

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

  <script>
  
    /* SDK를 읽어들인 다음 초기화  start */
        window.fbAsyncInit = function() {
        FB.init({	
          appId      : '637602396604778',
          cookie     : true,
          xfbml      : true,
          version    : 'v3.0'
          //status 	 : true //SDK에서 init 실행한 직후에 현재 사용자에 대한 정보를 가져온다 https://developers.facebook.com/docs/javascript/advanced-setup
        }); 
        
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
        
        /*컨트롤러에서 받아온 값으로 SelectBox 자동 선택*/
        var gender = "${gender}"
       	for(var i = 0; i < document.getElementById("gender").options.length; i++) {
       	  if(gender ==  document.getElementById("gender").options[i].value) {
       	    document.getElementById("gender").options[i].selected = true;
       	  }
       	}
        //alert("gender: "+gender)
      };
      (function(d, s, id){ 
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "https://connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));  
      /* SDK를 읽어들인 다음 초기화  end */
      
       function statusChangeCallback(response){
         if(response.status === 'connected'){
           console.log('Logged in and authenticated');
           
           var uid = response.authResponse.userID;
           var accessToken = response.authResponse.accessToken;
           console.log('uid: '+uid+' /  accessToken: '+accessToken)
           testAPI();
         } else {
           console.log('Not authenticated');
         }
       }
      function checkLoginState() { 
        FB.getLoginStatus(function(response) {
          statusChangeCallback(response);
          testAPI();
        }, true);
      }
      function testAPI(){//
        FB.api('/me?fields=first_name, last_name, gender, birthday, email', function(response){
          if(response && !response.error){
            console.log(response);
            //alert(JSON.stringify(response));
            //addBook(response);
          }
        })
      }

      function logout(){
        FB.logout(function(response){
          setElements(false);
        });
      }
      function addBook(response) {
    	    $.post("member/add03", 
    	            response,
    	            function(checkIdNum) { console.log("success!! checkIdNum : "+checkIdNum); }
			)
			.fail(function() {
    			alert( "error" );
 			 })
	  }
		
    </script>


	<a
		class="screen-reader-only screen-reader-only-focusable skip-to-content"
		data-hook="skip-to-content" href="#site-content"> 콘텐츠로 바로가기 </a>

	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-46MK"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>



	<div id="smart-banner"></div>



	<div id="header" class="">
		<style data-aphrodite="data-aphrodite">
._ousp44 {
	position: relative !important;
	z-index: 20 !important;
}

._xbzxbi {
	height: 64px !important;
	width: 100% !important;
	background-color: #ffffff !important;
	position: absolute !important;
	top: 0px !important;
	left: 0px !important;
	-webkit-transform: translateY(-64px) !important;
	-ms-transform: translateY(-64px) !important;
	transform: translateY(-64px) !important;
	-webkit-transition-duration: 0.05s !important;
	transition-duration: 0.05s !important;
	-webkit-transition-property: -webkit-transform, transform !important;
	-moz-transition-property: transform !important;
	transition-property: -ms-transform, -webkit-transform, transform
		!important;
	-webkit-transition-timing-function: ease-out !important;
	transition-timing-function: ease-out !important;
	-webkit-transition-delay: 0.3s !important;
	transition-delay: 0.3s !important;
	z-index: 15 !important;
}

._pw89d3 {
	position: relative !important;
	z-index: 10 !important;
}

._dx84z0 {
	margin-right: 8px !important;
	max-width: 456px !important;
}

._8iqo2b {
	position: relative !important;
	z-index: 5 !important;
}

._506yi8 {
	background-color: #ffffff !important;
	box-shadow: 0 1px 0 #DBDBDB !important;
}

._2930ex {
	display: table !important;
	width: 100% !important;
}

._ni9axhe {
	display: table-cell !important;
	vertical-align: middle !important;
}

._10ejfg4u {
	display: table-cell !important;
	width: 100% !important;
	vertical-align: middle !important;
}

._5nim5h {
	display: table-cell !important;
	height: 64px !important;
	position: relative !important;
	text-align: center !important;
	text-decoration: none !important;
	-webkit-transition: 0.25s color !important;
	-moz-transition: 0.25s color !important;
	transition: 0.25s color !important;
	padding-left: 24px !important;
	padding-right: 24px !important;
	vertical-align: middle !important;
	white-space: nowrap !important;
}

@media ( min-width : 744px) {
	._5nim5h {
		height: 80px !important;
	}
}

._36rlri {
	display: inline-block !important;
}

._iiid5y {
	color: #FF5A5F !important;
	display: inline-block !important;
	vertical-align: middle !important;
	font-size: 34px !important;
	-webkit-transition: 0.25s color !important;
	-moz-transition: 0.25s color !important;
	transition: 0.25s color !important;
}

@media ( max-width : 743px) {
	._iiid5y {
		font-size: 34px !important;
		left: 45% !important;
	}
}

._tqn903 {
	color: #767676 !important;
	display: inline-block !important;
	font-size: 9px !important;
	margin-left: 8px !important;
	-webkit-transition: 1s color !important;
	-moz-transition: 1s color !important;
	transition: 1s color !important;
}

._1g2dfiu {
	display: table-cell !important;
}

._1gbvotfo {
	display: table-cell !important;
	-webkit-appearance: none !important;
	-moz-appearance: none !important;
	appearance: none !important;
	background: none !important;
	border: none !important;
	padding: 0px !important;
	margin: 0px !important;
}

._1gbvotfo:focus {
	outline: none !important;
}

._pawvzww {
	display: none !important;
}

@media ( min-width : 1128px) {
	._pawvzww {
		display: block !important;
	}
}

._mo78s93 {
	display: inline-block !important;
}

@media ( min-width : 1128px) {
	._mo78s93 {
		display: none !important;
	}
}

._d5depq {
	display: table-cell !important;
	vertical-align: middle !important;
	-webkit-transition-property: -webkit-transform, transform !important;
	-moz-transition-property: transform !important;
	transition-property: -ms-transform, -webkit-transform, transform
		!important;
	-webkit-transition-duration: 250ms !important;
	transition-duration: 250ms !important;
	-webkit-transition-timing-function: ease-in-out !important;
	transition-timing-function: ease-in-out !important;
}

@media ( min-width : 1128px) {
	._17ctt5 {
		display: none !important;
	}
}

._1s04l2o {
	display: table !important;
	list-style: none !important;
	padding: 0px !important;
	margin: 0px !important;
	height: 64px !important;
}

._e296pg {
	position: relative !important;
}

._gngqxi {
	-webkit-appearance: none !important;
	-moz-appearance: none !important;
	appearance: none !important;
	background: transparent !important;
	border: none !important;
	color: inherit !important;
	display: inline-block !important;
	height: 64px !important;
	line-height: 64px !important;
	text-decoration: none !important;
	margin: 0px !important;
	position: relative !important;
	padding: 0 8px !important;
	white-space: nowrap !important;
}

@media ( min-width : 744px) {
	._gngqxi {
		height: 80px !important;
		line-height: 80px !important;
	}
}

._18lcoy3z {
	height: 100% !important;
	vertical-align: middle !important;
	-moz-box-sizing: border-box !important;
	box-sizing: border-box !important;
	border-bottom: 2px solid transparent !important;
}

._lvb55za {
	display: inline-block !important;
	padding: 8px !important;
	vertical-align: middle !important;
	line-height: 1 !important;
	border-bottom: 2px solid transparent !important;
}

._l7gvu6 {
	fill: #008489 !important;
	height: 6px !important;
	opacity: 0 !important;
	position: absolute !important;
	top: 50% !important;
	-webkit-transform: translate3d(4px, -8px, 0) !important;
	-ms-transform: translate3d(4px, -8px, 0) !important;
	transform: translate3d(4px, -8px, 0) !important;
	-webkit-transform-origin-x: 7px !important;
	-ms-transform-origin-x: 7px !important;
	transform-origin-x: 7px !important;
	-webkit-transform-origin-y: -5px !important;
	-ms-transform-origin-y: -5px !important;
	transform-origin-y: -5px !important;
	width: 6px !important;
}
</style>
		<div data-hypernova-key="headerdefaultbundlejs"
			>
			<header role="banner" class="_8iqo2b" data-reactroot="">
				<div class="_506yi8">
					<div class="_2930ex">
						<div class="_ni9axhe">
							<div>
								<div class="_ousp44">
									<div>
										<div class="_pawvzww">
											<a href="/tour_together" class="_1g2dfiu" aria-label="투어투게더 홈페이지"><div
													class="_5nim5h">
													<div class="_36rlri">
														<div class="_iiid5y">
														LOGO
															</div>
													</div>
													<div class="_mo78s93">
														<div class="_tqn903">
															<div class="_d5depq" style="transform: rotate(0deg)">
																<svg viewBox="0 0 18 18" role="presentation"
																	aria-hidden="true" focusable="false"
																	style="height: 1em; width: 1em; display: block; fill: currentColor">
																	<path
																		d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
																		fill-rule="evenodd"></path></svg>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="_17ctt5">
											<button aria-label="탐색 메뉴" aria-haspopup="true"
												class="_1gbvotfo" type="button">
												<div class="_5nim5h">
													<div class="_36rlri">
														<div class="_iiid5y">
															<svg viewBox="0 0 1000 1000" role="presentation"
																aria-hidden="true" focusable="false"
																style="height: 1em; width: 1em; display: block; fill: currentColor">
																<path
																	d="m499.3 736.7c-51-64-81-120.1-91-168.1-10-39-6-70 11-93 18-27 45-40 80-40s62 13 80 40c17 23 21 54 11 93-11 49-41 105-91 168.1zm362.2 43c-7 47-39 86-83 105-85 37-169.1-22-241.1-102 119.1-149.1 141.1-265.1 90-340.2-30-43-73-64-128.1-64-111 0-172.1 94-148.1 203.1 14 59 51 126.1 110 201.1-37 41-72 70-103 88-24 13-47 21-69 23-101 15-180.1-83-144.1-184.1 5-13 15-37 32-74l1-2c55-120.1 122.1-256.1 199.1-407.2l2-5 22-42c17-31 24-45 51-62 13-8 29-12 47-12 36 0 64 21 76 38 6 9 13 21 22 36l21 41 3 6c77 151.1 144.1 287.1 199.1 407.2l1 1 20 46 12 29c9.2 23.1 11.2 46.1 8.2 70.1zm46-90.1c-7-22-19-48-34-79v-1c-71-151.1-137.1-287.1-200.1-409.2l-4-6c-45-92-77-147.1-170.1-147.1-92 0-131.1 64-171.1 147.1l-3 6c-63 122.1-129.1 258.1-200.1 409.2v2l-21 46c-8 19-12 29-13 32-51 140.1 54 263.1 181.1 263.1 1 0 5 0 10-1h14c66-8 134.1-50 203.1-125.1 69 75 137.1 117.1 203.1 125.1h14c5 1 9 1 10 1 127.1.1 232.1-123 181.1-263.1z"></path></svg>
														</div>
													</div>
													<div class="_mo78s93">
														<div class="_tqn903">
															<div class="_d5depq" style="transform: rotate(0deg)">
																<svg viewBox="0 0 18 18" role="presentation"
																	aria-hidden="true" focusable="false"
																	style="height: 1em; width: 1em; display: block; fill: currentColor">
																	<path
																		d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
																		fill-rule="evenodd"></path></svg>
															</div>
														</div>
													</div>
												</div>
											</button>
										</div>
									</div>
								</div>
								<div class="_xbzxbi"></div>
								<div class="_pw89d3"></div>
							</div>
						</div>
						<div class="_10ejfg4u">
							<div class="_dx84z0"></div>
						</div>
						<div class="_ni9axhe">
							<div class="_pawvzww">
								<nav>
									<ul class="_1s04l2o">
										<li class="_1g2dfiu"></li>
										<li class="_1g2dfiu"><div>
												<div class="_e296pg">
													<button type="button" class="_gngqxi" aria-haspopup="true"
														aria-expanded="false" aria-busy="false">
														<div class="_18lcoy3z">
															<div class="_lvb55za">
																<span>호스팅하기</span>
																<svg class="_l7gvu6" focusable="false">
																	<circle cx="3" cy="3" r="3"></circle></svg>
															</div>
														</div>
													</button>
												</div>
											</div></li>
										<li class="_1g2dfiu"><div>
												<div class="_e296pg">
													<a
														href="/login?redirect_params[action]=index&amp;redirect_params[controller]=referrals&amp;redirect_params[r]=56"
														target="_blank" rel="noopener noreferrer" class="_gngqxi"
														aria-haspopup="true" aria-busy="false"><div
															class="_18lcoy3z">
															<div class="_lvb55za">
																<span>여행 크레딧 받기</span>
																<svg class="_l7gvu6" focusable="false">
																	<circle cx="3" cy="3" r="3"></circle></svg>
															</div>
														</div></a>
												</div>
											</div></li>
										<li class="_1g2dfiu"><div>
												<div class="_e296pg">
													<button type="button" class="_gngqxi" aria-haspopup="true"
														aria-busy="false">
														<div class="_18lcoy3z">
															<div class="_lvb55za">
																<span>도움말</span>
																<svg class="_l7gvu6" focusable="false">
																	<circle cx="3" cy="3" r="3"></circle></svg>
															</div>
														</div>
													</button>
												</div>
											</div></li>
										<li class="_1g2dfiu"><div>
												<div class="_e296pg">
													<a href="/signup_login" class="_gngqxi"
														aria-haspopup="true" aria-busy="false"
														data-redirect="redirect_params[action]=edit&amp;redirect_params[controller]=users"><div
															class="_18lcoy3z">
															<div class="_lvb55za">
																<span>회원 가입</span>
																<svg class="_l7gvu6" focusable="false">
																	<circle cx="3" cy="3" r="3"></circle></svg>
															</div>
														</div></a>
												</div>
											</div></li>
										<li class="_1g2dfiu"><div style="margin-right: 8px">
												<div>
													<div class="_e296pg">
														<button type="button" class="_gngqxi" aria-haspopup="true"
															aria-expanded="false" aria-busy="false">
															<div class="_18lcoy3z">
																<div class="_lvb55za">
																	<span>로그인</span>
																	<svg class="_l7gvu6" focusable="false">
																		<circle cx="3" cy="3" r="3"></circle></svg>
																</div>
															</div>
														</button>
													</div>
												</div>
											</div></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</header>
		
	</div>



	<style data-aphrodite="data-aphrodite"></style>
	<div data-hypernova-key="signup_login_dlsauth_modalsbundlejs"
		data-hypernova-id="e2066332-7691-4558-9cf1-34e9a8f97766">
		<div dir="ltr" data-reactroot="">
			<div>
				<div></div>
			</div>
		</div>
	</div>
	

	<noscript>
		<div class="alert alert-with-icon alert-error  no-js-alert">
			<i class="icon alert-icon icon-alert-alt"></i> 죄송합니다. 투어투게더 웹사이트의 일부는
			자바스크립트가 활성화되어 있지 않으면 제대로 작동하지 않습니다.

		</div>
	</noscript>


	<div id="field-guide-container"></div>

	<div class="flash-container" style="position: relative; z-index: 16;"></div>

<button class="close alert-close" aria-label="닫기">
      ×
    </button>
    
<i class="icon alert-icon icon-star-circled"></i>
	<main id="site-content" role="main" tabindex="-1">

	<div id="notification-area"></div>
	<div class="page-container-responsive space-top-4 space-4">
		<div class="row">
			<div class="col-md-3 space-sm-4">
				<div class="sidenav">
					<ul class="sidenav-list">
						<li><a href="https://www.airbnb.co.kr/users/edit/203411425"
							aria-selected="true" class="sidenav-item">프로필 수정</a></li>
						<li><a
							href="https://www.airbnb.co.kr/users/edit/203411425?section=media"
							aria-selected="false" class="sidenav-item">사진</a></li>
						<li><a
							href="https://www.airbnb.co.kr/users/edit_verification/203411425"
							aria-selected="false" class="sidenav-item">인증 현황</a></li>
						<li><a
							href="https://www.airbnb.co.kr/users/reviews/203411425"
							aria-selected="false" class="sidenav-item">후기</a></li>
						<li><a
							href="https://www.airbnb.co.kr/users/references/203411425"
							aria-selected="false" class="sidenav-item">추천글</a></li>
						<li></li>
					</ul>
				</div>


				<a href="/users/show/203411425" class="btn btn-block space-top-4">프로필
					보기</a>
			</div>
			<div class="col-md-9">

				<div id="dashboard-content">


					<form accept-charset="UTF-8" action="update"
						data-hook="update-profile-form" enctype="multipart/form-data"
						id="update_form" method="post">
						<div style="margin: 0; padding: 0; display: inline">
							<input name="utf8" type="hidden" value="&#x2713;" /><input
								name="authenticity_token" type="hidden"
								value="V4$.airbnb.co.kr$4uZ4vd-bueM$MwAxEnI3niNPiKCGyOsxanU7DpPn34rjLxCK1QmR3K8=" />
						</div>







						<h1 class="screen-reader-only">프로필 수정</h1>

						<div class="panel space-4">
							<div class="panel-header">
								<h2 class="edit-profile-section-heading">필수사항</h2>
							</div>
							<div class="panel-body">
								<input type="hidden" name="password" id="user_email_password"
									value="">

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3" for="user_first_name">
										이름(예: 길동) </label>
									<div class="col-sm-9">

										<input id="user_first_name" name="first_name" size="30"
											type="text" value="${member.first_name}" />


									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3" for="user_last_name">
										성(예: 홍) </label>
									<div class="col-sm-9">

										<input id="user_last_name" name="last_name" size="30"
											type="text" value="${member.last_name}" />

										<div class="text-muted space-top-1">공개 프로필에는 성을 제외한 이름만
											표시됩니다. 예약 요청 시 호스트는 회원님의 성과 이름을 모두 확인할 수 있습니다.</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3" for="user_sex"> 성별 <i
										aria-label="비공개" class="icon icon-lock icon-ebisu"
										data-behavior="tooltip" role="img" tabindex="0" title="비공개"></i>
									</label>
									<div class="col-sm-9">

										<div class="select">
											<select id="gender" name="gender"><option
													value="">성별</option>
												<option value="male">남자</option>
												<option value="female">여자</option>
												<option value="Other">기타</option></select>
										</div>

										<div class="text-muted space-top-1">이 정보는 통계 목적으로 사용되며
											다른 회원들에게 절대 공개되지 않습니다.</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3" for="user_birthdate">
										생년월일 <i aria-label="비공개" class="icon icon-lock icon-ebisu"
										data-behavior="tooltip" role="img" tabindex="0" title="비공개"></i>
									</label>
									<div class="col-sm-9">

										<fieldset>
											<legend class="screen-reader-only">생년월일</legend>
											<div class="select">
												<select aria-label="월" id="user_birthdate_2i"
													name="user[birthdate(2i)]">
													<option value="">월</option>
													<option value="1">1월</option>
													<option value="2">2월</option>
													<option value="3">3월</option>
													<option value="4">4월</option>
													<option value="5">5월</option>
													<option value="6">6월</option>
													<option value="7">7월</option>
													<option value="8">8월</option>
													<option value="9">9월</option>
													<option value="10">10월</option>
													<option value="11">11월</option>
													<option selected="selected" value="12">12월</option>
												</select>

											</div>
											<div class="select">
												<select aria-label="일" id="user_birthdate_3i"
													name="user[birthdate(3i)]">
													<option value="">일</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option selected="selected" value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>
												</select>

											</div>
											<div class="select">
												<select aria-label="년" id="user_birthdate_1i"
													name="user[birthdate(1i)]">
													<option value="">년</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="2016">2016</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>
													<option value="2012">2012</option>
													<option value="2011">2011</option>
													<option value="2010">2010</option>
													<option value="2009">2009</option>
													<option value="2008">2008</option>
													<option value="2007">2007</option>
													<option value="2006">2006</option>
													<option value="2005">2005</option>
													<option value="2004">2004</option>
													<option value="2003">2003</option>
													<option value="2002">2002</option>
													<option value="2001">2001</option>
													<option value="2000">2000</option>
													<option value="1999">1999</option>
													<option value="1998">1998</option>
													<option value="1997">1997</option>
													<option value="1996">1996</option>
													<option value="1995">1995</option>
													<option selected="selected" value="1994">1994</option>
													<option value="1993">1993</option>
													<option value="1992">1992</option>
													<option value="1991">1991</option>
													<option value="1990">1990</option>
													<option value="1989">1989</option>
													<option value="1988">1988</option>
													<option value="1987">1987</option>
													<option value="1986">1986</option>
													<option value="1985">1985</option>
													<option value="1984">1984</option>
													<option value="1983">1983</option>
													<option value="1982">1982</option>
													<option value="1981">1981</option>
													<option value="1980">1980</option>
													<option value="1979">1979</option>
													<option value="1978">1978</option>
													<option value="1977">1977</option>
													<option value="1976">1976</option>
													<option value="1975">1975</option>
													<option value="1974">1974</option>
													<option value="1973">1973</option>
													<option value="1972">1972</option>
													<option value="1971">1971</option>
													<option value="1970">1970</option>
													<option value="1969">1969</option>
													<option value="1968">1968</option>
													<option value="1967">1967</option>
													<option value="1966">1966</option>
													<option value="1965">1965</option>
													<option value="1964">1964</option>
													<option value="1963">1963</option>
													<option value="1962">1962</option>
													<option value="1961">1961</option>
													<option value="1960">1960</option>
													<option value="1959">1959</option>
													<option value="1958">1958</option>
													<option value="1957">1957</option>
													<option value="1956">1956</option>
													<option value="1955">1955</option>
													<option value="1954">1954</option>
													<option value="1953">1953</option>
													<option value="1952">1952</option>
													<option value="1951">1951</option>
													<option value="1950">1950</option>
													<option value="1949">1949</option>
													<option value="1948">1948</option>
													<option value="1947">1947</option>
													<option value="1946">1946</option>
													<option value="1945">1945</option>
													<option value="1944">1944</option>
													<option value="1943">1943</option>
													<option value="1942">1942</option>
													<option value="1941">1941</option>
													<option value="1940">1940</option>
													<option value="1939">1939</option>
													<option value="1938">1938</option>
													<option value="1937">1937</option>
													<option value="1936">1936</option>
													<option value="1935">1935</option>
													<option value="1934">1934</option>
													<option value="1933">1933</option>
													<option value="1932">1932</option>
													<option value="1931">1931</option>
													<option value="1930">1930</option>
													<option value="1929">1929</option>
													<option value="1928">1928</option>
													<option value="1927">1927</option>
													<option value="1926">1926</option>
													<option value="1925">1925</option>
													<option value="1924">1924</option>
													<option value="1923">1923</option>
													<option value="1922">1922</option>
													<option value="1921">1921</option>
													<option value="1920">1920</option>
													<option value="1919">1919</option>
													<option value="1918">1918</option>
												</select>

											</div>
										</fieldset>

										<div class="text-muted space-top-1">이 정보는 통계 목적으로 사용되며
											다른 회원들에게 절대 공개되지 않습니다.</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3" for="user_email">
										이메일 주소 <i aria-label="비공개" class="icon icon-lock icon-ebisu"
										data-behavior="tooltip" role="img" tabindex="0" title="비공개"></i>
									</label>
									<div class="col-sm-9">

										<input id="user_email" name="email" size="30"
											type="text" value="${member.email}" />

										<div class="text-muted space-top-1">
											이메일 주소는 다른 투어투게더 회원에게 공개되지 않습니다. <a href="/help/article/694"
												target="blank">더 알아보기</a>.
										</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3" for="user_phone">
										전화번호 <i aria-label="비공개" class="icon icon-lock icon-ebisu"
										data-behavior="tooltip" role="img" tabindex="0" title="비공개"></i>
									</label>
									<div class="col-sm-9">

										<div class="clearfix" id="phone-number">
											<div class="phone-numbers-container">
												<div class="phone-numbers-hide-during-verify">
													<div class="no-phone-numbers">
														<p>입력된 전화번호가 없습니다.</p>
													</div>
													<table class="phone-numbers-table" cellspacing="0"
														cellpadding="0">
													</table>

													<a class="add link-icon" href="#"> <i
														class="icon icon-add"></i> <span class="link-icon__text">
															전화번호 추가하기 </span>
													</a>
												</div>

												<div class="phone-number-verify-widget">
													<p class="pnaw-verification-error"></p>
													<div class="pnaw-step1">
														<div class="phone-number-input-widget"
															id="phone-number-input-widget-382c663b">
															<label for="phone_country">국가 선택:</label>
															<div class="select">
																<select id="phone_country" name="phone_country"><option
																		value="CG" data-prefix="242">콩고</option>
																	<option value="CD" data-prefix="243">콩고 민주 공화국</option>
																	<option value="XK" data-prefix="383">코소보</option>
																	<option value="MK" data-prefix="389">마케도니아</option>
																	<option value="GH" data-prefix="233">가나</option>
																	<option value="GA" data-prefix="241">가봉</option>
																	<option value="GY" data-prefix="592">가이아나</option>
																	<option value="GM" data-prefix="220">감비아</option>
																	<option value="GG" data-prefix="44">건지</option>
																	<option value="GP" data-prefix="590">과들루프</option>
																	<option value="GT" data-prefix="502">과테말라</option>
																	<option value="GU" data-prefix="1">괌</option>
																	<option value="GD" data-prefix="1">그레나다</option>
																	<option value="GE" data-prefix="995">그루지야</option>
																	<option value="GR" data-prefix="30">그리스</option>
																	<option value="GL" data-prefix="299">그린란드</option>
																	<option value="GW" data-prefix="245">기네비쏘</option>
																	<option value="GN" data-prefix="224">기니</option>
																	<option value="CV" data-prefix="238">까뽀베르데</option>
																	<option value="NA" data-prefix="264">나미비아</option>
																	<option value="NR" data-prefix="674">나우루</option>
																	<option value="NG" data-prefix="234">나이지리아</option>
																	<option value="SS" data-prefix="211">남수단</option>
																	<option value="ZA" data-prefix="27">남아프리카</option>
																	<option value="NL" data-prefix="31">네덜란드</option>
																	<option value="BQ" data-prefix="599">네덜란드령 카리브</option>
																	<option value="NP" data-prefix="977">네팔</option>
																	<option value="NO" data-prefix="47">노르웨이</option>
																	<option value="NF" data-prefix="672">노퍽섬</option>
																	<option value="NC" data-prefix="687">뉴 칼레도니아</option>
																	<option value="NZ" data-prefix="64">뉴질랜드</option>
																	<option value="NU" data-prefix="683">니우에</option>
																	<option value="NE" data-prefix="227">니제르</option>
																	<option value="NI" data-prefix="505">니카라과</option>
																	<option value="TW" data-prefix="886">대만</option>
																	<option value="DK" data-prefix="45">덴마크</option>
																	<option value="DM" data-prefix="1">도미니카</option>
																	<option value="DO" data-prefix="1">도미니카 공화국</option>
																	<option value="DE" data-prefix="49">독일</option>
																	<option value="TL" data-prefix="670">동티모르</option>
																	<option value="LA" data-prefix="856">라오스</option>
																	<option value="LR" data-prefix="231">라이베리아</option>
																	<option value="LV" data-prefix="371">라트비아</option>
																	<option value="RU" data-prefix="7">러시아</option>
																	<option value="LB" data-prefix="961">레바논</option>
																	<option value="LS" data-prefix="266">레소토</option>
																	<option value="RO" data-prefix="40">루마니아</option>
																	<option value="LU" data-prefix="352">룩셈부르크</option>
																	<option value="RW" data-prefix="250">르완다</option>
																	<option value="LY" data-prefix="218">리비아</option>
																	<option value="RE" data-prefix="262">리유니온</option>
																	<option value="LT" data-prefix="370">리투아니아</option>
																	<option value="LI" data-prefix="423">리히텐슈타인</option>
																	<option value="MG" data-prefix="261">마다가스카르</option>
																	<option value="MH" data-prefix="692">마샬 군도</option>
																	<option value="YT" data-prefix="262">마요티</option>
																	<option value="MO" data-prefix="853">마카오</option>
																	<option value="MW" data-prefix="265">말라위</option>
																	<option value="MY" data-prefix="60">말레이시아</option>
																	<option value="ML" data-prefix="223">말리</option>
																	<option value="MQ" data-prefix="596">말티니크</option>
																	<option value="IM" data-prefix="44">맨 섬</option>
																	<option value="MX" data-prefix="52">멕시코</option>
																	<option value="MC" data-prefix="377">모나코</option>
																	<option value="MA" data-prefix="212">모로코</option>
																	<option value="MU" data-prefix="230">모리셔스</option>
																	<option value="MR" data-prefix="222">모리타니</option>
																	<option value="MZ" data-prefix="258">모잠비크</option>
																	<option value="ME" data-prefix="382">몬테네그로</option>
																	<option value="MS" data-prefix="1">몬트세라트</option>
																	<option value="MD" data-prefix="373">몰도바</option>
																	<option value="MV" data-prefix="960">몰디브</option>
																	<option value="MT" data-prefix="356">몰타</option>
																	<option value="MN" data-prefix="976">몽골</option>
																	<option value="US" data-prefix="1">미국</option>
																	<option value="VI" data-prefix="1">미국령 버진 아일랜드</option>
																	<option value="MM" data-prefix="95">미얀마</option>
																	<option value="FM" data-prefix="691">미크로네시아</option>
																	<option value="VU" data-prefix="678">바누아투</option>
																	<option value="BH" data-prefix="973">바레인</option>
																	<option value="BB" data-prefix="1">바베이도스</option>
																	<option value="VA" data-prefix="379">바티칸</option>
																	<option value="BS" data-prefix="1">바하마</option>
																	<option value="BD" data-prefix="880">방글라데시</option>
																	<option value="BM" data-prefix="1">버뮤다</option>
																	<option value="BJ" data-prefix="229">베냉</option>
																	<option value="VE" data-prefix="58">베네수엘라</option>
																	<option value="VN" data-prefix="84">베트남</option>
																	<option value="BE" data-prefix="32">벨기에</option>
																	<option value="BY" data-prefix="375">벨라루스</option>
																	<option value="BZ" data-prefix="501">벨리즈</option>
																	<option value="BA" data-prefix="387">보스니아
																		헤르체고비나</option>
																	<option value="BW" data-prefix="267">보츠와나</option>
																	<option value="BO" data-prefix="591">볼리비아</option>
																	<option value="BI" data-prefix="257">부룬디</option>
																	<option value="BF" data-prefix="226">부르키나파소</option>
																	<option value="BT" data-prefix="975">부탄</option>
																	<option value="MP" data-prefix="1">북마리아나제도</option>
																	<option value="BG" data-prefix="359">불가리아</option>
																	<option value="BR" data-prefix="55">브라질</option>
																	<option value="BN" data-prefix="673">브루나이</option>
																	<option value="WS" data-prefix="685">사모아</option>
																	<option value="SA" data-prefix="966">사우디아라비아</option>
																	<option value="GS" data-prefix="500">사우스조지아
																		사우스샌드위치 제도</option>
																	<option value="CY" data-prefix="357">사이프러스</option>
																	<option value="SM" data-prefix="378">산마리노</option>
																	<option value="ST" data-prefix="239">상투메 프린시페</option>
																	<option value="MF" data-prefix="590">생 마르탱</option>
																	<option value="BL" data-prefix="590">생 바르텔르미</option>
																	<option value="EH" data-prefix="212">서사하라</option>
																	<option value="SN" data-prefix="221">세네갈</option>
																	<option value="RS" data-prefix="381">세르비아</option>
																	<option value="LC" data-prefix="1">세인트루시아</option>
																	<option value="VC" data-prefix="1">세인트빈센트그레나딘</option>
																	<option value="KN" data-prefix="1">세인트크리스토퍼
																		네비스</option>
																	<option value="PM" data-prefix="508">세인트피에르-미케롱</option>
																	<option value="SH" data-prefix="290">세인트헬레나</option>
																	<option value="SO" data-prefix="252">소말리아</option>
																	<option value="SB" data-prefix="677">솔로몬 제도</option>
																	<option value="SR" data-prefix="597">수리남</option>
																	<option value="SC" data-prefix="248">쉐이쉘</option>
																	<option value="LK" data-prefix="94">스리랑카</option>
																	<option value="SJ" data-prefix="47">스발바르제도-얀마웬섬</option>
																	<option value="SZ" data-prefix="268">스와질랜드</option>
																	<option value="SE" data-prefix="46">스웨덴</option>
																	<option value="CH" data-prefix="41">스위스</option>
																	<option value="ES" data-prefix="34">스페인</option>
																	<option value="SK" data-prefix="421">슬로바키아</option>
																	<option value="SI" data-prefix="386">슬로베니아</option>
																	<option value="SL" data-prefix="232">시에라리온</option>
																	<option value="SX" data-prefix="1">신트마르턴</option>
																	<option value="SG" data-prefix="65">싱가포르</option>
																	<option value="AE" data-prefix="971">아랍에미리트 연합</option>
																	<option value="AW" data-prefix="297">아루바</option>
																	<option value="AM" data-prefix="374">아르메니아</option>
																	<option value="AR" data-prefix="54">아르헨티나</option>
																	<option value="AS" data-prefix="1">아메리칸 사모아</option>
																	<option value="IS" data-prefix="354">아이슬란드</option>
																	<option value="HT" data-prefix="509">아이티</option>
																	<option value="IE" data-prefix="353">아일랜드</option>
																	<option value="AZ" data-prefix="994">아제르바이잔</option>
																	<option value="AF" data-prefix="93">아프가니스탄</option>
																	<option value="AI" data-prefix="1">안길라</option>
																	<option value="AD" data-prefix="376">안도라</option>
																	<option value="AL" data-prefix="355">알바니아</option>
																	<option value="DZ" data-prefix="213">알제리</option>
																	<option value="AO" data-prefix="244">앙골라</option>
																	<option value="AG" data-prefix="1">앤티가 바부다</option>
																	<option value="ER" data-prefix="291">에리트리아</option>
																	<option value="EE" data-prefix="372">에스토니아</option>
																	<option value="EC" data-prefix="593">에콰도르</option>
																	<option value="SV" data-prefix="503">엘살바도르</option>
																	<option value="GB" data-prefix="44">영국</option>
																	<option value="VG" data-prefix="1">영국령 버진 아일랜드</option>
																	<option value="IO" data-prefix="246">영국령인도양식민지</option>
																	<option value="YE" data-prefix="967">예멘</option>
																	<option value="OM" data-prefix="968">오만</option>
																	<option value="AU" data-prefix="61">오스트레일리아</option>
																	<option value="AT" data-prefix="43">오스트리아</option>
																	<option value="HN" data-prefix="504">온두라스</option>
																	<option value="AX" data-prefix="358">올란드 제도</option>
																	<option value="WF" data-prefix="681">왈리스-푸투나
																		제도</option>
																	<option value="JO" data-prefix="962">요르단</option>
																	<option value="UG" data-prefix="256">우간다</option>
																	<option value="UY" data-prefix="598">우루과이</option>
																	<option value="UZ" data-prefix="998">우즈베키스탄</option>
																	<option value="UA" data-prefix="380">우크라이나</option>
																	<option value="ET" data-prefix="251">이디오피아</option>
																	<option value="IQ" data-prefix="964">이라크</option>
																	<option value="IL" data-prefix="972">이스라엘</option>
																	<option value="EG" data-prefix="20">이집트</option>
																	<option value="IT" data-prefix="39">이탈리아</option>
																	<option value="IN" data-prefix="91">인도</option>
																	<option value="ID" data-prefix="62">인도네시아</option>
																	<option value="JP" data-prefix="81">일본</option>
																	<option value="JM" data-prefix="1">자메이카</option>
																	<option value="ZM" data-prefix="260">잠비아</option>
																	<option value="JE" data-prefix="44">저지</option>
																	<option value="GQ" data-prefix="240">적도 기니</option>
																	<option value="CN" data-prefix="86">중국</option>
																	<option value="CF" data-prefix="236">중앙 아프리카
																		공화국</option>
																	<option value="DJ" data-prefix="253">지부티</option>
																	<option value="GI" data-prefix="350">지브롤터</option>
																	<option value="ZW" data-prefix="263">짐바브웨</option>
																	<option value="TD" data-prefix="235">차드</option>
																	<option value="CZ" data-prefix="420">체코</option>
																	<option value="CL" data-prefix="56">칠레</option>
																	<option value="CM" data-prefix="237">카메룬</option>
																	<option value="KZ" data-prefix="7">카자흐스탄</option>
																	<option value="QA" data-prefix="974">카타르</option>
																	<option value="KH" data-prefix="855">캄보디아</option>
																	<option value="CA" data-prefix="1">캐나다</option>
																	<option value="KE" data-prefix="254">케냐</option>
																	<option value="KY" data-prefix="1">케이맨제도</option>
																	<option value="KM" data-prefix="269">코모로스</option>
																	<option value="CR" data-prefix="506">코스타리카</option>
																	<option value="CC" data-prefix="61">코코스제도</option>
																	<option value="CI" data-prefix="225">코트디부아르</option>
																	<option value="CO" data-prefix="57">콜롬비아</option>
																	<option value="CU" data-prefix="53">쿠바</option>
																	<option value="KW" data-prefix="965">쿠웨이트</option>
																	<option value="CK" data-prefix="682">쿡제도</option>
																	<option value="CW" data-prefix="599">퀴라소</option>
																	<option value="HR" data-prefix="385">크로아티아</option>
																	<option value="CX" data-prefix="61">크리스마스섬</option>
																	<option value="KG" data-prefix="996">키르기스스탄</option>
																	<option value="KI" data-prefix="686">키리바시</option>
																	<option value="TJ" data-prefix="992">타지키스탄</option>
																	<option value="TZ" data-prefix="255">탄자니아</option>
																	<option value="TH" data-prefix="66">태국</option>
																	<option value="TC" data-prefix="1">터크스케이커스제도</option>
																	<option value="TR" data-prefix="90">터키</option>
																	<option value="TG" data-prefix="228">토고</option>
																	<option value="TK" data-prefix="690">토켈라우</option>
																	<option value="TO" data-prefix="676">통가</option>
																	<option value="TM" data-prefix="993">투르크메니스탄</option>
																	<option value="TV" data-prefix="688">투발루</option>
																	<option value="TN" data-prefix="216">튀니지</option>
																	<option value="TT" data-prefix="1">트리니다드 토바고</option>
																	<option value="PA" data-prefix="507">파나마</option>
																	<option value="PY" data-prefix="595">파라과이</option>
																	<option value="PK" data-prefix="92">파키스탄</option>
																	<option value="PG" data-prefix="675">파푸아뉴기니</option>
																	<option value="PW" data-prefix="680">팔라우</option>
																	<option value="PS" data-prefix="970">팔레스타인 지구</option>
																	<option value="FO" data-prefix="298">페로제도</option>
																	<option value="PE" data-prefix="51">페루</option>
																	<option value="PT" data-prefix="351">포르투갈</option>
																	<option value="FK" data-prefix="500">포클랜드
																		제도[말비나스 군도]</option>
																	<option value="PL" data-prefix="48">폴란드</option>
																	<option value="PR" data-prefix="1">푸에르토리코</option>
																	<option value="FR" data-prefix="33">프랑스</option>
																	<option value="GF" data-prefix="594">프랑스령 기아나</option>
																	<option value="PF" data-prefix="689">프랑스령
																		폴리네시아</option>
																	<option value="FJ" data-prefix="679">피지</option>
																	<option value="FI" data-prefix="358">핀란드</option>
																	<option value="PH" data-prefix="63">필리핀</option>
																	<option value="PN" data-prefix="64">핏케언섬</option>
																	<option value="KR" data-prefix="82" selected="selected">한국</option>
																	<option value="HU" data-prefix="36">헝가리</option>
																	<option value="HK" data-prefix="852">홍콩</option></select>
															</div>

															<label for="phone_number">전화번호 추가하기</label>
															<div class="pniw-number-container clearfix">
																<div class="pniw-number-prefix">+1</div>
																<input type="tel" class="pniw-number" id="phone_number" />
															</div>
															<input type="hidden" data-role="phone_number"
																name="phone" /> <input type="hidden" name="user_id"
																value="203411425" />
														</div>



														<div class="pnaw-verify-container">
															<a class="btn btn-primary" href="#" rel="sms">문자로
																인증하기</a> <a class="btn btn-primary" href="#" rel="call">통화로
																인증하기</a> <a class="cancel" rel="cancel" href="#">취소</a> <a
																class="why-verify" href="/help/article/277"
																target="_blank">인증을 받아야 하는 이유는 무엇인가요?</a>
														</div>
													</div>
													<div class="pnaw-step2">
														<p class="message"></p>
														<label for="phone_number_verification">4자리수 코드를
															입력하세요:</label> <input type="text" pattern="[0-9]*"
															id="phone_number_verification" />

														<div class="pnaw-verify-container">
															<a class="btn btn-primary" href="#" rel="verify"> 인증
															</a> <a class="cancel" rel="cancel" href="#"> 취소 </a>
														</div>
														<p class="cancel-message">메시지가 오지 않는다면, 취소를 클릭하신 후 전화
															인증을 다시 한번 시도해 보세요.</p>
													</div>
												</div>


												<div class="phone-number-verify-widget">
													<p class="pnaw-verification-error"></p>
													<div class="pnaw-step1">
														<div class="phone-number-input-widget"
															id="phone-number-input-widget-4890490b">
															<label for="phone_country">국가 선택:</label>
															<div class="select">
																<select id="phone_country" name="phone_country"><option
																		value="CG" data-prefix="242">콩고</option>
																	<option value="CD" data-prefix="243">콩고 민주 공화국</option>
																	<option value="XK" data-prefix="383">코소보</option>
																	<option value="MK" data-prefix="389">마케도니아</option>
																	<option value="GH" data-prefix="233">가나</option>
																	<option value="GA" data-prefix="241">가봉</option>
																	<option value="GY" data-prefix="592">가이아나</option>
																	<option value="GM" data-prefix="220">감비아</option>
																	<option value="GG" data-prefix="44">건지</option>
																	<option value="GP" data-prefix="590">과들루프</option>
																	<option value="GT" data-prefix="502">과테말라</option>
																	<option value="GU" data-prefix="1">괌</option>
																	<option value="GD" data-prefix="1">그레나다</option>
																	<option value="GE" data-prefix="995">그루지야</option>
																	<option value="GR" data-prefix="30">그리스</option>
																	<option value="GL" data-prefix="299">그린란드</option>
																	<option value="GW" data-prefix="245">기네비쏘</option>
																	<option value="GN" data-prefix="224">기니</option>
																	<option value="CV" data-prefix="238">까뽀베르데</option>
																	<option value="NA" data-prefix="264">나미비아</option>
																	<option value="NR" data-prefix="674">나우루</option>
																	<option value="NG" data-prefix="234">나이지리아</option>
																	<option value="SS" data-prefix="211">남수단</option>
																	<option value="ZA" data-prefix="27">남아프리카</option>
																	<option value="NL" data-prefix="31">네덜란드</option>
																	<option value="BQ" data-prefix="599">네덜란드령 카리브</option>
																	<option value="NP" data-prefix="977">네팔</option>
																	<option value="NO" data-prefix="47">노르웨이</option>
																	<option value="NF" data-prefix="672">노퍽섬</option>
																	<option value="NC" data-prefix="687">뉴 칼레도니아</option>
																	<option value="NZ" data-prefix="64">뉴질랜드</option>
																	<option value="NU" data-prefix="683">니우에</option>
																	<option value="NE" data-prefix="227">니제르</option>
																	<option value="NI" data-prefix="505">니카라과</option>
																	<option value="TW" data-prefix="886">대만</option>
																	<option value="DK" data-prefix="45">덴마크</option>
																	<option value="DM" data-prefix="1">도미니카</option>
																	<option value="DO" data-prefix="1">도미니카 공화국</option>
																	<option value="DE" data-prefix="49">독일</option>
																	<option value="TL" data-prefix="670">동티모르</option>
																	<option value="LA" data-prefix="856">라오스</option>
																	<option value="LR" data-prefix="231">라이베리아</option>
																	<option value="LV" data-prefix="371">라트비아</option>
																	<option value="RU" data-prefix="7">러시아</option>
																	<option value="LB" data-prefix="961">레바논</option>
																	<option value="LS" data-prefix="266">레소토</option>
																	<option value="RO" data-prefix="40">루마니아</option>
																	<option value="LU" data-prefix="352">룩셈부르크</option>
																	<option value="RW" data-prefix="250">르완다</option>
																	<option value="LY" data-prefix="218">리비아</option>
																	<option value="RE" data-prefix="262">리유니온</option>
																	<option value="LT" data-prefix="370">리투아니아</option>
																	<option value="LI" data-prefix="423">리히텐슈타인</option>
																	<option value="MG" data-prefix="261">마다가스카르</option>
																	<option value="MH" data-prefix="692">마샬 군도</option>
																	<option value="YT" data-prefix="262">마요티</option>
																	<option value="MO" data-prefix="853">마카오</option>
																	<option value="MW" data-prefix="265">말라위</option>
																	<option value="MY" data-prefix="60">말레이시아</option>
																	<option value="ML" data-prefix="223">말리</option>
																	<option value="MQ" data-prefix="596">말티니크</option>
																	<option value="IM" data-prefix="44">맨 섬</option>
																	<option value="MX" data-prefix="52">멕시코</option>
																	<option value="MC" data-prefix="377">모나코</option>
																	<option value="MA" data-prefix="212">모로코</option>
																	<option value="MU" data-prefix="230">모리셔스</option>
																	<option value="MR" data-prefix="222">모리타니</option>
																	<option value="MZ" data-prefix="258">모잠비크</option>
																	<option value="ME" data-prefix="382">몬테네그로</option>
																	<option value="MS" data-prefix="1">몬트세라트</option>
																	<option value="MD" data-prefix="373">몰도바</option>
																	<option value="MV" data-prefix="960">몰디브</option>
																	<option value="MT" data-prefix="356">몰타</option>
																	<option value="MN" data-prefix="976">몽골</option>
																	<option value="US" data-prefix="1">미국</option>
																	<option value="VI" data-prefix="1">미국령 버진 아일랜드</option>
																	<option value="MM" data-prefix="95">미얀마</option>
																	<option value="FM" data-prefix="691">미크로네시아</option>
																	<option value="VU" data-prefix="678">바누아투</option>
																	<option value="BH" data-prefix="973">바레인</option>
																	<option value="BB" data-prefix="1">바베이도스</option>
																	<option value="VA" data-prefix="379">바티칸</option>
																	<option value="BS" data-prefix="1">바하마</option>
																	<option value="BD" data-prefix="880">방글라데시</option>
																	<option value="BM" data-prefix="1">버뮤다</option>
																	<option value="BJ" data-prefix="229">베냉</option>
																	<option value="VE" data-prefix="58">베네수엘라</option>
																	<option value="VN" data-prefix="84">베트남</option>
																	<option value="BE" data-prefix="32">벨기에</option>
																	<option value="BY" data-prefix="375">벨라루스</option>
																	<option value="BZ" data-prefix="501">벨리즈</option>
																	<option value="BA" data-prefix="387">보스니아
																		헤르체고비나</option>
																	<option value="BW" data-prefix="267">보츠와나</option>
																	<option value="BO" data-prefix="591">볼리비아</option>
																	<option value="BI" data-prefix="257">부룬디</option>
																	<option value="BF" data-prefix="226">부르키나파소</option>
																	<option value="BT" data-prefix="975">부탄</option>
																	<option value="MP" data-prefix="1">북마리아나제도</option>
																	<option value="BG" data-prefix="359">불가리아</option>
																	<option value="BR" data-prefix="55">브라질</option>
																	<option value="BN" data-prefix="673">브루나이</option>
																	<option value="WS" data-prefix="685">사모아</option>
																	<option value="SA" data-prefix="966">사우디아라비아</option>
																	<option value="GS" data-prefix="500">사우스조지아
																		사우스샌드위치 제도</option>
																	<option value="CY" data-prefix="357">사이프러스</option>
																	<option value="SM" data-prefix="378">산마리노</option>
																	<option value="ST" data-prefix="239">상투메 프린시페</option>
																	<option value="MF" data-prefix="590">생 마르탱</option>
																	<option value="BL" data-prefix="590">생 바르텔르미</option>
																	<option value="EH" data-prefix="212">서사하라</option>
																	<option value="SN" data-prefix="221">세네갈</option>
																	<option value="RS" data-prefix="381">세르비아</option>
																	<option value="LC" data-prefix="1">세인트루시아</option>
																	<option value="VC" data-prefix="1">세인트빈센트그레나딘</option>
																	<option value="KN" data-prefix="1">세인트크리스토퍼
																		네비스</option>
																	<option value="PM" data-prefix="508">세인트피에르-미케롱</option>
																	<option value="SH" data-prefix="290">세인트헬레나</option>
																	<option value="SO" data-prefix="252">소말리아</option>
																	<option value="SB" data-prefix="677">솔로몬 제도</option>
																	<option value="SR" data-prefix="597">수리남</option>
																	<option value="SC" data-prefix="248">쉐이쉘</option>
																	<option value="LK" data-prefix="94">스리랑카</option>
																	<option value="SJ" data-prefix="47">스발바르제도-얀마웬섬</option>
																	<option value="SZ" data-prefix="268">스와질랜드</option>
																	<option value="SE" data-prefix="46">스웨덴</option>
																	<option value="CH" data-prefix="41">스위스</option>
																	<option value="ES" data-prefix="34">스페인</option>
																	<option value="SK" data-prefix="421">슬로바키아</option>
																	<option value="SI" data-prefix="386">슬로베니아</option>
																	<option value="SL" data-prefix="232">시에라리온</option>
																	<option value="SX" data-prefix="1">신트마르턴</option>
																	<option value="SG" data-prefix="65">싱가포르</option>
																	<option value="AE" data-prefix="971">아랍에미리트 연합</option>
																	<option value="AW" data-prefix="297">아루바</option>
																	<option value="AM" data-prefix="374">아르메니아</option>
																	<option value="AR" data-prefix="54">아르헨티나</option>
																	<option value="AS" data-prefix="1">아메리칸 사모아</option>
																	<option value="IS" data-prefix="354">아이슬란드</option>
																	<option value="HT" data-prefix="509">아이티</option>
																	<option value="IE" data-prefix="353">아일랜드</option>
																	<option value="AZ" data-prefix="994">아제르바이잔</option>
																	<option value="AF" data-prefix="93">아프가니스탄</option>
																	<option value="AI" data-prefix="1">안길라</option>
																	<option value="AD" data-prefix="376">안도라</option>
																	<option value="AL" data-prefix="355">알바니아</option>
																	<option value="DZ" data-prefix="213">알제리</option>
																	<option value="AO" data-prefix="244">앙골라</option>
																	<option value="AG" data-prefix="1">앤티가 바부다</option>
																	<option value="ER" data-prefix="291">에리트리아</option>
																	<option value="EE" data-prefix="372">에스토니아</option>
																	<option value="EC" data-prefix="593">에콰도르</option>
																	<option value="SV" data-prefix="503">엘살바도르</option>
																	<option value="GB" data-prefix="44">영국</option>
																	<option value="VG" data-prefix="1">영국령 버진 아일랜드</option>
																	<option value="IO" data-prefix="246">영국령인도양식민지</option>
																	<option value="YE" data-prefix="967">예멘</option>
																	<option value="OM" data-prefix="968">오만</option>
																	<option value="AU" data-prefix="61">오스트레일리아</option>
																	<option value="AT" data-prefix="43">오스트리아</option>
																	<option value="HN" data-prefix="504">온두라스</option>
																	<option value="AX" data-prefix="358">올란드 제도</option>
																	<option value="WF" data-prefix="681">왈리스-푸투나
																		제도</option>
																	<option value="JO" data-prefix="962">요르단</option>
																	<option value="UG" data-prefix="256">우간다</option>
																	<option value="UY" data-prefix="598">우루과이</option>
																	<option value="UZ" data-prefix="998">우즈베키스탄</option>
																	<option value="UA" data-prefix="380">우크라이나</option>
																	<option value="ET" data-prefix="251">이디오피아</option>
																	<option value="IQ" data-prefix="964">이라크</option>
																	<option value="IL" data-prefix="972">이스라엘</option>
																	<option value="EG" data-prefix="20">이집트</option>
																	<option value="IT" data-prefix="39">이탈리아</option>
																	<option value="IN" data-prefix="91">인도</option>
																	<option value="ID" data-prefix="62">인도네시아</option>
																	<option value="JP" data-prefix="81">일본</option>
																	<option value="JM" data-prefix="1">자메이카</option>
																	<option value="ZM" data-prefix="260">잠비아</option>
																	<option value="JE" data-prefix="44">저지</option>
																	<option value="GQ" data-prefix="240">적도 기니</option>
																	<option value="CN" data-prefix="86">중국</option>
																	<option value="CF" data-prefix="236">중앙 아프리카
																		공화국</option>
																	<option value="DJ" data-prefix="253">지부티</option>
																	<option value="GI" data-prefix="350">지브롤터</option>
																	<option value="ZW" data-prefix="263">짐바브웨</option>
																	<option value="TD" data-prefix="235">차드</option>
																	<option value="CZ" data-prefix="420">체코</option>
																	<option value="CL" data-prefix="56">칠레</option>
																	<option value="CM" data-prefix="237">카메룬</option>
																	<option value="KZ" data-prefix="7">카자흐스탄</option>
																	<option value="QA" data-prefix="974">카타르</option>
																	<option value="KH" data-prefix="855">캄보디아</option>
																	<option value="CA" data-prefix="1">캐나다</option>
																	<option value="KE" data-prefix="254">케냐</option>
																	<option value="KY" data-prefix="1">케이맨제도</option>
																	<option value="KM" data-prefix="269">코모로스</option>
																	<option value="CR" data-prefix="506">코스타리카</option>
																	<option value="CC" data-prefix="61">코코스제도</option>
																	<option value="CI" data-prefix="225">코트디부아르</option>
																	<option value="CO" data-prefix="57">콜롬비아</option>
																	<option value="CU" data-prefix="53">쿠바</option>
																	<option value="KW" data-prefix="965">쿠웨이트</option>
																	<option value="CK" data-prefix="682">쿡제도</option>
																	<option value="CW" data-prefix="599">퀴라소</option>
																	<option value="HR" data-prefix="385">크로아티아</option>
																	<option value="CX" data-prefix="61">크리스마스섬</option>
																	<option value="KG" data-prefix="996">키르기스스탄</option>
																	<option value="KI" data-prefix="686">키리바시</option>
																	<option value="TJ" data-prefix="992">타지키스탄</option>
																	<option value="TZ" data-prefix="255">탄자니아</option>
																	<option value="TH" data-prefix="66">태국</option>
																	<option value="TC" data-prefix="1">터크스케이커스제도</option>
																	<option value="TR" data-prefix="90">터키</option>
																	<option value="TG" data-prefix="228">토고</option>
																	<option value="TK" data-prefix="690">토켈라우</option>
																	<option value="TO" data-prefix="676">통가</option>
																	<option value="TM" data-prefix="993">투르크메니스탄</option>
																	<option value="TV" data-prefix="688">투발루</option>
																	<option value="TN" data-prefix="216">튀니지</option>
																	<option value="TT" data-prefix="1">트리니다드 토바고</option>
																	<option value="PA" data-prefix="507">파나마</option>
																	<option value="PY" data-prefix="595">파라과이</option>
																	<option value="PK" data-prefix="92">파키스탄</option>
																	<option value="PG" data-prefix="675">파푸아뉴기니</option>
																	<option value="PW" data-prefix="680">팔라우</option>
																	<option value="PS" data-prefix="970">팔레스타인 지구</option>
																	<option value="FO" data-prefix="298">페로제도</option>
																	<option value="PE" data-prefix="51">페루</option>
																	<option value="PT" data-prefix="351">포르투갈</option>
																	<option value="FK" data-prefix="500">포클랜드
																		제도[말비나스 군도]</option>
																	<option value="PL" data-prefix="48">폴란드</option>
																	<option value="PR" data-prefix="1">푸에르토리코</option>
																	<option value="FR" data-prefix="33">프랑스</option>
																	<option value="GF" data-prefix="594">프랑스령 기아나</option>
																	<option value="PF" data-prefix="689">프랑스령
																		폴리네시아</option>
																	<option value="FJ" data-prefix="679">피지</option>
																	<option value="FI" data-prefix="358">핀란드</option>
																	<option value="PH" data-prefix="63">필리핀</option>
																	<option value="PN" data-prefix="64">핏케언섬</option>
																	<option value="KR" data-prefix="82" selected="selected">한국</option>
																	<option value="HU" data-prefix="36">헝가리</option>
																	<option value="HK" data-prefix="852">홍콩</option></select>
															</div>

															<label for="phone_number">전화번호 추가하기</label>
															<div class="pniw-number-container clearfix">
																<div class="pniw-number-prefix">+1</div>
																<input type="tel" class="pniw-number" id="phone_number" />
															</div>
															<input type="hidden" data-role="phone_number"
																name="phone" /> <input type="hidden" name="user_id"
																value="203411425" />
														</div>



														<div class="pnaw-verify-container">
															<a class="btn btn-primary" href="#" rel="sms">문자로
																인증하기</a> <a class="btn btn-primary" href="#" rel="call">통화로
																인증하기</a> <a class="cancel" rel="cancel" href="#">취소</a> <a
																class="why-verify" href="/help/article/277"
																target="_blank">인증을 받아야 하는 이유는 무엇인가요?</a>
														</div>
													</div>
													<div class="pnaw-step2">
														<p class="message"></p>
														<label for="phone_number_verification">4자리수 코드를
															입력하세요:</label> <input type="text" pattern="[0-9]*"
															id="phone_number_verification" />

														<div class="pnaw-verify-container">
															<a class="btn btn-primary" href="#" rel="verify"> 인증
															</a> <a class="cancel" rel="cancel" href="#"> 취소 </a>
														</div>
														<p class="cancel-message">메시지가 오지 않는다면, 취소를 클릭하신 후 전화
															인증을 다시 한번 시도해 보세요.</p>
													</div>
												</div>


												<div class="phone-number-replace-widget">
													<p class="pnaw-verification-error"></p>
													<div class="pnaw-step1">
														<div class="phone-number-input-widget"
															id="phone-number-input-widget-6ca154a1">
															<label for="phone_country">국가 선택:</label>
															<div class="select">
																<select id="phone_country" name="phone_country"><option
																		value="CG" data-prefix="242">콩고</option>
																	<option value="CD" data-prefix="243">콩고 민주 공화국</option>
																	<option value="XK" data-prefix="383">코소보</option>
																	<option value="MK" data-prefix="389">마케도니아</option>
																	<option value="GH" data-prefix="233">가나</option>
																	<option value="GA" data-prefix="241">가봉</option>
																	<option value="GY" data-prefix="592">가이아나</option>
																	<option value="GM" data-prefix="220">감비아</option>
																	<option value="GG" data-prefix="44">건지</option>
																	<option value="GP" data-prefix="590">과들루프</option>
																	<option value="GT" data-prefix="502">과테말라</option>
																	<option value="GU" data-prefix="1">괌</option>
																	<option value="GD" data-prefix="1">그레나다</option>
																	<option value="GE" data-prefix="995">그루지야</option>
																	<option value="GR" data-prefix="30">그리스</option>
																	<option value="GL" data-prefix="299">그린란드</option>
																	<option value="GW" data-prefix="245">기네비쏘</option>
																	<option value="GN" data-prefix="224">기니</option>
																	<option value="CV" data-prefix="238">까뽀베르데</option>
																	<option value="NA" data-prefix="264">나미비아</option>
																	<option value="NR" data-prefix="674">나우루</option>
																	<option value="NG" data-prefix="234">나이지리아</option>
																	<option value="SS" data-prefix="211">남수단</option>
																	<option value="ZA" data-prefix="27">남아프리카</option>
																	<option value="NL" data-prefix="31">네덜란드</option>
																	<option value="BQ" data-prefix="599">네덜란드령 카리브</option>
																	<option value="NP" data-prefix="977">네팔</option>
																	<option value="NO" data-prefix="47">노르웨이</option>
																	<option value="NF" data-prefix="672">노퍽섬</option>
																	<option value="NC" data-prefix="687">뉴 칼레도니아</option>
																	<option value="NZ" data-prefix="64">뉴질랜드</option>
																	<option value="NU" data-prefix="683">니우에</option>
																	<option value="NE" data-prefix="227">니제르</option>
																	<option value="NI" data-prefix="505">니카라과</option>
																	<option value="TW" data-prefix="886">대만</option>
																	<option value="DK" data-prefix="45">덴마크</option>
																	<option value="DM" data-prefix="1">도미니카</option>
																	<option value="DO" data-prefix="1">도미니카 공화국</option>
																	<option value="DE" data-prefix="49">독일</option>
																	<option value="TL" data-prefix="670">동티모르</option>
																	<option value="LA" data-prefix="856">라오스</option>
																	<option value="LR" data-prefix="231">라이베리아</option>
																	<option value="LV" data-prefix="371">라트비아</option>
																	<option value="RU" data-prefix="7">러시아</option>
																	<option value="LB" data-prefix="961">레바논</option>
																	<option value="LS" data-prefix="266">레소토</option>
																	<option value="RO" data-prefix="40">루마니아</option>
																	<option value="LU" data-prefix="352">룩셈부르크</option>
																	<option value="RW" data-prefix="250">르완다</option>
																	<option value="LY" data-prefix="218">리비아</option>
																	<option value="RE" data-prefix="262">리유니온</option>
																	<option value="LT" data-prefix="370">리투아니아</option>
																	<option value="LI" data-prefix="423">리히텐슈타인</option>
																	<option value="MG" data-prefix="261">마다가스카르</option>
																	<option value="MH" data-prefix="692">마샬 군도</option>
																	<option value="YT" data-prefix="262">마요티</option>
																	<option value="MO" data-prefix="853">마카오</option>
																	<option value="MW" data-prefix="265">말라위</option>
																	<option value="MY" data-prefix="60">말레이시아</option>
																	<option value="ML" data-prefix="223">말리</option>
																	<option value="MQ" data-prefix="596">말티니크</option>
																	<option value="IM" data-prefix="44">맨 섬</option>
																	<option value="MX" data-prefix="52">멕시코</option>
																	<option value="MC" data-prefix="377">모나코</option>
																	<option value="MA" data-prefix="212">모로코</option>
																	<option value="MU" data-prefix="230">모리셔스</option>
																	<option value="MR" data-prefix="222">모리타니</option>
																	<option value="MZ" data-prefix="258">모잠비크</option>
																	<option value="ME" data-prefix="382">몬테네그로</option>
																	<option value="MS" data-prefix="1">몬트세라트</option>
																	<option value="MD" data-prefix="373">몰도바</option>
																	<option value="MV" data-prefix="960">몰디브</option>
																	<option value="MT" data-prefix="356">몰타</option>
																	<option value="MN" data-prefix="976">몽골</option>
																	<option value="US" data-prefix="1">미국</option>
																	<option value="VI" data-prefix="1">미국령 버진 아일랜드</option>
																	<option value="MM" data-prefix="95">미얀마</option>
																	<option value="FM" data-prefix="691">미크로네시아</option>
																	<option value="VU" data-prefix="678">바누아투</option>
																	<option value="BH" data-prefix="973">바레인</option>
																	<option value="BB" data-prefix="1">바베이도스</option>
																	<option value="VA" data-prefix="379">바티칸</option>
																	<option value="BS" data-prefix="1">바하마</option>
																	<option value="BD" data-prefix="880">방글라데시</option>
																	<option value="BM" data-prefix="1">버뮤다</option>
																	<option value="BJ" data-prefix="229">베냉</option>
																	<option value="VE" data-prefix="58">베네수엘라</option>
																	<option value="VN" data-prefix="84">베트남</option>
																	<option value="BE" data-prefix="32">벨기에</option>
																	<option value="BY" data-prefix="375">벨라루스</option>
																	<option value="BZ" data-prefix="501">벨리즈</option>
																	<option value="BA" data-prefix="387">보스니아
																		헤르체고비나</option>
																	<option value="BW" data-prefix="267">보츠와나</option>
																	<option value="BO" data-prefix="591">볼리비아</option>
																	<option value="BI" data-prefix="257">부룬디</option>
																	<option value="BF" data-prefix="226">부르키나파소</option>
																	<option value="BT" data-prefix="975">부탄</option>
																	<option value="MP" data-prefix="1">북마리아나제도</option>
																	<option value="BG" data-prefix="359">불가리아</option>
																	<option value="BR" data-prefix="55">브라질</option>
																	<option value="BN" data-prefix="673">브루나이</option>
																	<option value="WS" data-prefix="685">사모아</option>
																	<option value="SA" data-prefix="966">사우디아라비아</option>
																	<option value="GS" data-prefix="500">사우스조지아
																		사우스샌드위치 제도</option>
																	<option value="CY" data-prefix="357">사이프러스</option>
																	<option value="SM" data-prefix="378">산마리노</option>
																	<option value="ST" data-prefix="239">상투메 프린시페</option>
																	<option value="MF" data-prefix="590">생 마르탱</option>
																	<option value="BL" data-prefix="590">생 바르텔르미</option>
																	<option value="EH" data-prefix="212">서사하라</option>
																	<option value="SN" data-prefix="221">세네갈</option>
																	<option value="RS" data-prefix="381">세르비아</option>
																	<option value="LC" data-prefix="1">세인트루시아</option>
																	<option value="VC" data-prefix="1">세인트빈센트그레나딘</option>
																	<option value="KN" data-prefix="1">세인트크리스토퍼
																		네비스</option>
																	<option value="PM" data-prefix="508">세인트피에르-미케롱</option>
																	<option value="SH" data-prefix="290">세인트헬레나</option>
																	<option value="SO" data-prefix="252">소말리아</option>
																	<option value="SB" data-prefix="677">솔로몬 제도</option>
																	<option value="SR" data-prefix="597">수리남</option>
																	<option value="SC" data-prefix="248">쉐이쉘</option>
																	<option value="LK" data-prefix="94">스리랑카</option>
																	<option value="SJ" data-prefix="47">스발바르제도-얀마웬섬</option>
																	<option value="SZ" data-prefix="268">스와질랜드</option>
																	<option value="SE" data-prefix="46">스웨덴</option>
																	<option value="CH" data-prefix="41">스위스</option>
																	<option value="ES" data-prefix="34">스페인</option>
																	<option value="SK" data-prefix="421">슬로바키아</option>
																	<option value="SI" data-prefix="386">슬로베니아</option>
																	<option value="SL" data-prefix="232">시에라리온</option>
																	<option value="SX" data-prefix="1">신트마르턴</option>
																	<option value="SG" data-prefix="65">싱가포르</option>
																	<option value="AE" data-prefix="971">아랍에미리트 연합</option>
																	<option value="AW" data-prefix="297">아루바</option>
																	<option value="AM" data-prefix="374">아르메니아</option>
																	<option value="AR" data-prefix="54">아르헨티나</option>
																	<option value="AS" data-prefix="1">아메리칸 사모아</option>
																	<option value="IS" data-prefix="354">아이슬란드</option>
																	<option value="HT" data-prefix="509">아이티</option>
																	<option value="IE" data-prefix="353">아일랜드</option>
																	<option value="AZ" data-prefix="994">아제르바이잔</option>
																	<option value="AF" data-prefix="93">아프가니스탄</option>
																	<option value="AI" data-prefix="1">안길라</option>
																	<option value="AD" data-prefix="376">안도라</option>
																	<option value="AL" data-prefix="355">알바니아</option>
																	<option value="DZ" data-prefix="213">알제리</option>
																	<option value="AO" data-prefix="244">앙골라</option>
																	<option value="AG" data-prefix="1">앤티가 바부다</option>
																	<option value="ER" data-prefix="291">에리트리아</option>
																	<option value="EE" data-prefix="372">에스토니아</option>
																	<option value="EC" data-prefix="593">에콰도르</option>
																	<option value="SV" data-prefix="503">엘살바도르</option>
																	<option value="GB" data-prefix="44">영국</option>
																	<option value="VG" data-prefix="1">영국령 버진 아일랜드</option>
																	<option value="IO" data-prefix="246">영국령인도양식민지</option>
																	<option value="YE" data-prefix="967">예멘</option>
																	<option value="OM" data-prefix="968">오만</option>
																	<option value="AU" data-prefix="61">오스트레일리아</option>
																	<option value="AT" data-prefix="43">오스트리아</option>
																	<option value="HN" data-prefix="504">온두라스</option>
																	<option value="AX" data-prefix="358">올란드 제도</option>
																	<option value="WF" data-prefix="681">왈리스-푸투나
																		제도</option>
																	<option value="JO" data-prefix="962">요르단</option>
																	<option value="UG" data-prefix="256">우간다</option>
																	<option value="UY" data-prefix="598">우루과이</option>
																	<option value="UZ" data-prefix="998">우즈베키스탄</option>
																	<option value="UA" data-prefix="380">우크라이나</option>
																	<option value="ET" data-prefix="251">이디오피아</option>
																	<option value="IQ" data-prefix="964">이라크</option>
																	<option value="IL" data-prefix="972">이스라엘</option>
																	<option value="EG" data-prefix="20">이집트</option>
																	<option value="IT" data-prefix="39">이탈리아</option>
																	<option value="IN" data-prefix="91">인도</option>
																	<option value="ID" data-prefix="62">인도네시아</option>
																	<option value="JP" data-prefix="81">일본</option>
																	<option value="JM" data-prefix="1">자메이카</option>
																	<option value="ZM" data-prefix="260">잠비아</option>
																	<option value="JE" data-prefix="44">저지</option>
																	<option value="GQ" data-prefix="240">적도 기니</option>
																	<option value="CN" data-prefix="86">중국</option>
																	<option value="CF" data-prefix="236">중앙 아프리카
																		공화국</option>
																	<option value="DJ" data-prefix="253">지부티</option>
																	<option value="GI" data-prefix="350">지브롤터</option>
																	<option value="ZW" data-prefix="263">짐바브웨</option>
																	<option value="TD" data-prefix="235">차드</option>
																	<option value="CZ" data-prefix="420">체코</option>
																	<option value="CL" data-prefix="56">칠레</option>
																	<option value="CM" data-prefix="237">카메룬</option>
																	<option value="KZ" data-prefix="7">카자흐스탄</option>
																	<option value="QA" data-prefix="974">카타르</option>
																	<option value="KH" data-prefix="855">캄보디아</option>
																	<option value="CA" data-prefix="1">캐나다</option>
																	<option value="KE" data-prefix="254">케냐</option>
																	<option value="KY" data-prefix="1">케이맨제도</option>
																	<option value="KM" data-prefix="269">코모로스</option>
																	<option value="CR" data-prefix="506">코스타리카</option>
																	<option value="CC" data-prefix="61">코코스제도</option>
																	<option value="CI" data-prefix="225">코트디부아르</option>
																	<option value="CO" data-prefix="57">콜롬비아</option>
																	<option value="CU" data-prefix="53">쿠바</option>
																	<option value="KW" data-prefix="965">쿠웨이트</option>
																	<option value="CK" data-prefix="682">쿡제도</option>
																	<option value="CW" data-prefix="599">퀴라소</option>
																	<option value="HR" data-prefix="385">크로아티아</option>
																	<option value="CX" data-prefix="61">크리스마스섬</option>
																	<option value="KG" data-prefix="996">키르기스스탄</option>
																	<option value="KI" data-prefix="686">키리바시</option>
																	<option value="TJ" data-prefix="992">타지키스탄</option>
																	<option value="TZ" data-prefix="255">탄자니아</option>
																	<option value="TH" data-prefix="66">태국</option>
																	<option value="TC" data-prefix="1">터크스케이커스제도</option>
																	<option value="TR" data-prefix="90">터키</option>
																	<option value="TG" data-prefix="228">토고</option>
																	<option value="TK" data-prefix="690">토켈라우</option>
																	<option value="TO" data-prefix="676">통가</option>
																	<option value="TM" data-prefix="993">투르크메니스탄</option>
																	<option value="TV" data-prefix="688">투발루</option>
																	<option value="TN" data-prefix="216">튀니지</option>
																	<option value="TT" data-prefix="1">트리니다드 토바고</option>
																	<option value="PA" data-prefix="507">파나마</option>
																	<option value="PY" data-prefix="595">파라과이</option>
																	<option value="PK" data-prefix="92">파키스탄</option>
																	<option value="PG" data-prefix="675">파푸아뉴기니</option>
																	<option value="PW" data-prefix="680">팔라우</option>
																	<option value="PS" data-prefix="970">팔레스타인 지구</option>
																	<option value="FO" data-prefix="298">페로제도</option>
																	<option value="PE" data-prefix="51">페루</option>
																	<option value="PT" data-prefix="351">포르투갈</option>
																	<option value="FK" data-prefix="500">포클랜드
																		제도[말비나스 군도]</option>
																	<option value="PL" data-prefix="48">폴란드</option>
																	<option value="PR" data-prefix="1">푸에르토리코</option>
																	<option value="FR" data-prefix="33">프랑스</option>
																	<option value="GF" data-prefix="594">프랑스령 기아나</option>
																	<option value="PF" data-prefix="689">프랑스령
																		폴리네시아</option>
																	<option value="FJ" data-prefix="679">피지</option>
																	<option value="FI" data-prefix="358">핀란드</option>
																	<option value="PH" data-prefix="63">필리핀</option>
																	<option value="PN" data-prefix="64">핏케언섬</option>
																	<option value="KR" data-prefix="82" selected="selected">한국</option>
																	<option value="HU" data-prefix="36">헝가리</option>
																	<option value="HK" data-prefix="852">홍콩</option></select>
															</div>

															<label for="phone_number">전화번호 추가하기</label>
															<div class="pniw-number-container clearfix">
																<div class="pniw-number-prefix">+1</div>
																<input type="tel" class="pniw-number" id="phone_number" />
															</div>
															<input type="hidden" data-role="phone_number"
																name="phone" /> <input type="hidden" name="user_id"
																value="203411425" />
														</div>



														<div class="pnaw-verify-container">
															<a class="btn btn-primary" href="#" rel="sms">문자로
																인증하기</a> <a class="cancel" rel="cancel" href="#">취소</a> <a
																class="why-verify" href="/help/article/277"
																target="_blank">인증을 받아야 하는 이유는 무엇인가요?</a>
														</div>
													</div>
													<div class="pnaw-step2">
														<p class="message"></p>
														<label for="phone_number_verification">4자리수 코드를
															입력하세요:</label> <input type="text" pattern="[0-9]*"
															id="phone_number_verification" />

														<div class="pnaw-verify-container">
															<a class="btn btn-primary" href="#" rel="verify"
																data-old-phone-number=""> 인증 </a> <a class="cancel"
																rel="cancel" href="#"> 취소 </a>
														</div>
														<p class="cancel-message">메시지가 도착하지 않으면 취소를 누르고 다시 시도해
															보세요.</p>
													</div>
												</div>


											</div>

										</div>

										<div class="text-muted space-top-1">예약이 완료될 경우에만 공유됩니다.
											번호가 공유되면 개인적으로 연락할 수 있습니다.</div>
									</div>
								</div>


								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3"
										for="user_profile_info_preferred_language"> 선호하는 언어 </label>
									<div class="col-sm-9">

										<div class="select">
											<select id="user_profile_info_preferred_language"
												name="user[preferred_locale]"><option value="id">Bahasa
													Indonesia</option>
												<option value="ms">Bahasa Melayu</option>
												<option value="ca">Català</option>
												<option value="da">Dansk</option>
												<option value="de">Deutsch</option>
												<option value="en">English</option>
												<option value="es">Español</option>
												<option value="el">Eλληνικά</option>
												<option value="fr">Français</option>
												<option value="hr">Hrvatski</option>
												<option value="it">Italiano</option>
												<option value="hu">Magyar</option>
												<option value="nl">Nederlands</option>
												<option value="no">Norsk</option>
												<option value="pl">Polski</option>
												<option value="pt">Português</option>
												<option value="fi">Suomi</option>
												<option value="sv">Svenska</option>
												<option value="tr">Türkçe</option>
												<option value="is">Íslenska</option>
												<option value="cs">Čeština</option>
												<option value="ru">Русский</option>
												<option value="th">ภาษาไทย</option>
												<option value="zh">中文 (简体)</option>
												<option value="zh-TW">中文 (繁體)</option>
												<option value="ja">日本語</option>
												<option value="ko" selected="selected">한국어</option></select>
										</div>

										<div class="text-muted space-top-1">이 언어로 메시지를 보내겠습니다.</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3"
										for="user_profile_info_preferred_currency"> 선호하는 통화 단위
									</label>
									<div class="col-sm-9">

										<div class="select">
											<select id="user_profile_info_preferred_currency"
												name="user[native_currency]"><option value="ZAR">남아프리카공화국
													란드</option>
												<option value="NOK">노르웨이 크로네</option>
												<option value="NZD">뉴질랜드 달러</option>
												<option value="DKK">덴마크 크로네</option>
												<option value="RUB">러시아 루블</option>
												<option value="RON">루마니아 레우</option>
												<option value="MYR">말레이시아 링깃</option>
												<option value="MXN">멕시코 페소</option>
												<option value="MAD">모로코 디르함</option>
												<option value="USD">미국 달러</option>
												<option value="BGN">불가리아 레프</option>
												<option value="BRL">브라질 레알</option>
												<option value="SAR">사우스아라비아 리얄</option>
												<option value="SEK">스웨덴 크로나</option>
												<option value="CHF">스위스 프랑</option>
												<option value="TWD">신 타이완 달러</option>
												<option value="SGD">싱가포르 달러</option>
												<option value="AED">아랍에미리트 디르함</option>
												<option value="ARS">아르헨티나 페소</option>
												<option value="GBP">영국 파운드</option>
												<option value="UYU">우루과이 페소</option>
												<option value="EUR">유로</option>
												<option value="ILS">이스라엘 신 셰켈</option>
												<option value="INR">인도 루피</option>
												<option value="JPY">일본 엔</option>
												<option value="CNY">중국 위안</option>
												<option value="CZK">체코 코루나</option>
												<option value="CLP">칠레 페소</option>
												<option value="CAD">캐나다 달러</option>
												<option value="CRC">코스타리카 콜론</option>
												<option value="COP">콜롬비아 페소</option>
												<option value="HRK">크로아티아 쿠나</option>
												<option value="THB">태국 바트</option>
												<option value="TRY">터키 리라</option>
												<option value="PEN">페루 솔</option>
												<option value="PLN">폴란드 즐로티</option>
												<option value="PHP">필리핀 페소</option>
												<option value="KRW" selected="selected">한국 원</option>
												<option value="HUF">헝가리 포린트</option>
												<option value="AUD">호주 달러</option>
												<option value="HKD">홍콩 달러</option></select>
										</div>

										<div class="text-muted space-top-1">이 통화 단위로 요금이 표시됩니다.</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3"
										for="user_profile_info_current_city"> 거주 도시 </label>
									<div class="col-sm-9">

										<input id="user_profile_info_current_city"
											name="user_profile_info[current_city]"
											placeholder="예: 프랑스 파리, 뉴욕 브루클린, 일리노이주 시카고" size="30"
											type="text" />


									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3"
										for="user_profile_info_about"> 자기소개 </label>
									<div class="col-sm-9">

										<textarea cols="40" id="user_profile_info_about"
											name="intro" rows="5">${member.intro}</textarea>

										<div class="text-muted space-top-1">
											투어투게더는 사람들 간의 관계를 기반으로 만들어졌습니다. 회원님이 어떤 사람인지 알려주세요. <br /> <br />
											어떤 것들을 좋아하는지 알려주세요. 가장 좋아하는 여행지, 책, 영화, TV 프로그램, 음악, 음식 등 뭐든지
											좋습니다.<br /> <br /> 회원님은 어떤 스타일의 게스트 또는 호스트인가요? <br /> <br />
											인생의 좌우명은 무엇인가요?
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="panel space-4">
							<div class="panel-header">
								<h2 class="edit-profile-section-heading">선택사항</h2>
							</div>
							<div class="panel-body">
								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3"
										for="user_profile_info_university"> 학교 </label>
									<div class="col-sm-9">

										<input id="user_profile_info_university"
											name="user_profile_info[university]" size="30" type="text"
											value="" />


									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3"
										for="user_profile_info_employer"> 직업 </label>
									<div class="col-sm-9">

										<input id="user_profile_info_employer"
											name="user_profile_info[employer]" placeholder="회사 이름 또는 직함"
											size="30" type="text" value="" />


									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3"
										for="user_preference_time_zone"> 시간대 </label>
									<div class="col-sm-9">

										<div class="select">
											<select id="user_preference_time_zone"
												name="user_preference[time_zone]"><option value=""></option>
												<option value="International Date Line West">(GMT-11:00)
													International Date Line West</option>
												<option value="Midway Island">(GMT-11:00) Midway
													Island</option>
												<option value="Samoa">(GMT-11:00) Samoa</option>
												<option value="Hawaii">(GMT-10:00) Hawaii</option>
												<option value="Alaska">(GMT-09:00) Alaska</option>
												<option value="America/Los_Angeles">(GMT-08:00)
													America/Los_Angeles</option>
												<option value="Pacific Time (US &amp; Canada)">(GMT-08:00)
													Pacific Time (US &amp; Canada)</option>
												<option value="Tijuana">(GMT-08:00) Tijuana</option>
												<option value="America/Denver">(GMT-07:00)
													America/Denver</option>
												<option value="Arizona">(GMT-07:00) Arizona</option>
												<option value="Chihuahua">(GMT-07:00) Chihuahua</option>
												<option value="Mazatlan">(GMT-07:00) Mazatlan</option>
												<option value="Mountain Time (US &amp; Canada)">(GMT-07:00)
													Mountain Time (US &amp; Canada)</option>
												<option value="America/Chicago">(GMT-06:00)
													America/Chicago</option>
												<option value="Central America">(GMT-06:00) Central
													America</option>
												<option value="Central Time (US &amp; Canada)">(GMT-06:00)
													Central Time (US &amp; Canada)</option>
												<option value="Guadalajara">(GMT-06:00) Guadalajara</option>
												<option value="Mexico City">(GMT-06:00) Mexico City</option>
												<option value="Monterrey">(GMT-06:00) Monterrey</option>
												<option value="Saskatchewan">(GMT-06:00)
													Saskatchewan</option>
												<option value="America/New_York">(GMT-05:00)
													America/New_York</option>
												<option value="America/Toronto">(GMT-05:00)
													America/Toronto</option>
												<option value="Bogota">(GMT-05:00) Bogota</option>
												<option value="Eastern Time (US &amp; Canada)">(GMT-05:00)
													Eastern Time (US &amp; Canada)</option>
												<option value="Indiana (East)">(GMT-05:00) Indiana
													(East)</option>
												<option value="Lima">(GMT-05:00) Lima</option>
												<option value="Quito">(GMT-05:00) Quito</option>
												<option value="Atlantic Time (Canada)">(GMT-04:00)
													Atlantic Time (Canada)</option>
												<option value="Caracas">(GMT-04:00) Caracas</option>
												<option value="Georgetown">(GMT-04:00) Georgetown</option>
												<option value="La Paz">(GMT-04:00) La Paz</option>
												<option value="Santiago">(GMT-04:00) Santiago</option>
												<option value="Newfoundland">(GMT-03:30)
													Newfoundland</option>
												<option value="America/Fortaleza">(GMT-03:00)
													America/Fortaleza</option>
												<option value="Brasilia">(GMT-03:00) Brasilia</option>
												<option value="Buenos Aires">(GMT-03:00) Buenos
													Aires</option>
												<option value="Greenland">(GMT-03:00) Greenland</option>
												<option value="Mid-Atlantic">(GMT-02:00)
													Mid-Atlantic</option>
												<option value="Azores">(GMT-01:00) Azores</option>
												<option value="Cape Verde Is.">(GMT-01:00) Cape
													Verde Is.</option>
												<option value="Casablanca">(GMT+00:00) Casablanca</option>
												<option value="Dublin">(GMT+00:00) Dublin</option>
												<option value="Edinburgh">(GMT+00:00) Edinburgh</option>
												<option value="Europe/Lisbon">(GMT+00:00)
													Europe/Lisbon</option>
												<option value="Europe/London">(GMT+00:00)
													Europe/London</option>
												<option value="Lisbon">(GMT+00:00) Lisbon</option>
												<option value="London">(GMT+00:00) London</option>
												<option value="Monrovia">(GMT+00:00) Monrovia</option>
												<option value="UTC">(GMT+00:00) UTC</option>
												<option value="Amsterdam">(GMT+01:00) Amsterdam</option>
												<option value="Belgrade">(GMT+01:00) Belgrade</option>
												<option value="Berlin">(GMT+01:00) Berlin</option>
												<option value="Bern">(GMT+01:00) Bern</option>
												<option value="Bratislava">(GMT+01:00) Bratislava</option>
												<option value="Brussels">(GMT+01:00) Brussels</option>
												<option value="Budapest">(GMT+01:00) Budapest</option>
												<option value="Copenhagen">(GMT+01:00) Copenhagen</option>
												<option value="Europe/Ljubljana">(GMT+01:00)
													Europe/Ljubljana</option>
												<option value="Europe/Madrid">(GMT+01:00)
													Europe/Madrid</option>
												<option value="Europe/Paris">(GMT+01:00)
													Europe/Paris</option>
												<option value="Europe/Prague">(GMT+01:00)
													Europe/Prague</option>
												<option value="Europe/Rome">(GMT+01:00) Europe/Rome</option>
												<option value="Europe/Zagreb">(GMT+01:00)
													Europe/Zagreb</option>
												<option value="Ljubljana">(GMT+01:00) Ljubljana</option>
												<option value="Madrid">(GMT+01:00) Madrid</option>
												<option value="Paris">(GMT+01:00) Paris</option>
												<option value="Prague">(GMT+01:00) Prague</option>
												<option value="Rome">(GMT+01:00) Rome</option>
												<option value="Sarajevo">(GMT+01:00) Sarajevo</option>
												<option value="Skopje">(GMT+01:00) Skopje</option>
												<option value="Stockholm">(GMT+01:00) Stockholm</option>
												<option value="Vienna">(GMT+01:00) Vienna</option>
												<option value="Warsaw">(GMT+01:00) Warsaw</option>
												<option value="West Central Africa">(GMT+01:00)
													West Central Africa</option>
												<option value="Zagreb">(GMT+01:00) Zagreb</option>
												<option value="Athens">(GMT+02:00) Athens</option>
												<option value="Bucharest">(GMT+02:00) Bucharest</option>
												<option value="Cairo">(GMT+02:00) Cairo</option>
												<option value="Europe/Athens">(GMT+02:00)
													Europe/Athens</option>
												<option value="Europe/Bucharest">(GMT+02:00)
													Europe/Bucharest</option>
												<option value="Europe/Kiev">(GMT+02:00) Europe/Kiev</option>
												<option value="Harare">(GMT+02:00) Harare</option>
												<option value="Helsinki">(GMT+02:00) Helsinki</option>
												<option value="Jerusalem">(GMT+02:00) Jerusalem</option>
												<option value="Kyiv">(GMT+02:00) Kyiv</option>
												<option value="Pretoria">(GMT+02:00) Pretoria</option>
												<option value="Riga">(GMT+02:00) Riga</option>
												<option value="Sofia">(GMT+02:00) Sofia</option>
												<option value="Tallinn">(GMT+02:00) Tallinn</option>
												<option value="Vilnius">(GMT+02:00) Vilnius</option>
												<option value="Baghdad">(GMT+03:00) Baghdad</option>
												<option value="Istanbul">(GMT+03:00) Istanbul</option>
												<option value="Kuwait">(GMT+03:00) Kuwait</option>
												<option value="Minsk">(GMT+03:00) Minsk</option>
												<option value="Moscow">(GMT+03:00) Moscow</option>
												<option value="Nairobi">(GMT+03:00) Nairobi</option>
												<option value="Riyadh">(GMT+03:00) Riyadh</option>
												<option value="St. Petersburg">(GMT+03:00) St.
													Petersburg</option>
												<option value="Volgograd">(GMT+03:00) Volgograd</option>
												<option value="Tehran">(GMT+03:30) Tehran</option>
												<option value="Abu Dhabi">(GMT+04:00) Abu Dhabi</option>
												<option value="Baku">(GMT+04:00) Baku</option>
												<option value="Muscat">(GMT+04:00) Muscat</option>
												<option value="Tbilisi">(GMT+04:00) Tbilisi</option>
												<option value="Yerevan">(GMT+04:00) Yerevan</option>
												<option value="Kabul">(GMT+04:30) Kabul</option>
												<option value="Ekaterinburg">(GMT+05:00)
													Ekaterinburg</option>
												<option value="Islamabad">(GMT+05:00) Islamabad</option>
												<option value="Karachi">(GMT+05:00) Karachi</option>
												<option value="Tashkent">(GMT+05:00) Tashkent</option>
												<option value="Chennai">(GMT+05:30) Chennai</option>
												<option value="Kolkata">(GMT+05:30) Kolkata</option>
												<option value="Mumbai">(GMT+05:30) Mumbai</option>
												<option value="New Delhi">(GMT+05:30) New Delhi</option>
												<option value="Sri Jayawardenepura">(GMT+05:30) Sri
													Jayawardenepura</option>
												<option value="Kathmandu">(GMT+05:45) Kathmandu</option>
												<option value="Almaty">(GMT+06:00) Almaty</option>
												<option value="Astana">(GMT+06:00) Astana</option>
												<option value="Dhaka">(GMT+06:00) Dhaka</option>
												<option value="Urumqi">(GMT+06:00) Urumqi</option>
												<option value="Rangoon">(GMT+06:30) Rangoon</option>
												<option value="Bangkok">(GMT+07:00) Bangkok</option>
												<option value="Hanoi">(GMT+07:00) Hanoi</option>
												<option value="Jakarta">(GMT+07:00) Jakarta</option>
												<option value="Krasnoyarsk">(GMT+07:00) Krasnoyarsk</option>
												<option value="Novosibirsk">(GMT+07:00) Novosibirsk</option>
												<option value="Asia/Shanghai">(GMT+08:00)
													Asia/Shanghai</option>
												<option value="Beijing">(GMT+08:00) Beijing</option>
												<option value="Chongqing">(GMT+08:00) Chongqing</option>
												<option value="Hong Kong">(GMT+08:00) Hong Kong</option>
												<option value="Irkutsk">(GMT+08:00) Irkutsk</option>
												<option value="Kuala Lumpur">(GMT+08:00) Kuala
													Lumpur</option>
												<option value="Perth">(GMT+08:00) Perth</option>
												<option value="Singapore">(GMT+08:00) Singapore</option>
												<option value="Taipei">(GMT+08:00) Taipei</option>
												<option value="Ulaan Bataar">(GMT+08:00) Ulaan
													Bataar</option>
												<option value="Asia/Seoul">(GMT+09:00) Asia/Seoul</option>
												<option value="Asia/Tokyo">(GMT+09:00) Asia/Tokyo</option>
												<option value="Osaka">(GMT+09:00) Osaka</option>
												<option value="Sapporo">(GMT+09:00) Sapporo</option>
												<option value="Seoul" selected="selected">(GMT+09:00)
													Seoul</option>
												<option value="Tokyo">(GMT+09:00) Tokyo</option>
												<option value="Yakutsk">(GMT+09:00) Yakutsk</option>
												<option value="Adelaide">(GMT+09:30) Adelaide</option>
												<option value="Darwin">(GMT+09:30) Darwin</option>
												<option value="Australia/Brisbane">(GMT+10:00)
													Australia/Brisbane</option>
												<option value="Australia/Hobart">(GMT+10:00)
													Australia/Hobart</option>
												<option value="Australia/Sydney">(GMT+10:00)
													Australia/Sydney</option>
												<option value="Brisbane">(GMT+10:00) Brisbane</option>
												<option value="Canberra">(GMT+10:00) Canberra</option>
												<option value="Guam">(GMT+10:00) Guam</option>
												<option value="Hobart">(GMT+10:00) Hobart</option>
												<option value="Melbourne">(GMT+10:00) Melbourne</option>
												<option value="Port Moresby">(GMT+10:00) Port
													Moresby</option>
												<option value="Sydney">(GMT+10:00) Sydney</option>
												<option value="Vladivostok">(GMT+10:00) Vladivostok</option>
												<option value="Magadan">(GMT+11:00) Magadan</option>
												<option value="New Caledonia">(GMT+11:00) New
													Caledonia</option>
												<option value="Solomon Is.">(GMT+11:00) Solomon Is.</option>
												<option value="Auckland">(GMT+12:00) Auckland</option>
												<option value="Fiji">(GMT+12:00) Fiji</option>
												<option value="Kamchatka">(GMT+12:00) Kamchatka</option>
												<option value="Marshall Is.">(GMT+12:00) Marshall
													Is.</option>
												<option value="Wellington">(GMT+12:00) Wellington</option>
												<option value="Nuku&#x27;alofa">(GMT+13:00)
													Nuku&#x27;alofa</option></select>
										</div>

										<div class="text-muted space-top-1">거주지 시간대</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3" for="user_languages">
										언어 </label>
									<div class="col-sm-9">


										<div class="space-top-1"></div>
										<div class="multiselect languages"
											data-select_dialog_url="https://www.airbnb.co.kr/users/languages_multiselect"
											data-update_url="https://www.airbnb.co.kr/users/languages_update/203411425">
											<div class="space-1"></div>
											<div class="none text-muted space-1">없음</div>
											<a class="link-icon multiselect-add-more" href="#"> <i
												class="icon icon-add"></i> <span class="link-icon__text">
													추가하기 </span>
											</a> <input id="user_languages" name="user[languages]"
												type="hidden" value="" /> <span
												class="template hide multiselect-option" data-key="%KEY%">
												<span class="btn btn-small space-1"> %VALUE% &nbsp; <small>
														<a href="#" class="text-normal"> <i
															class="x icon icon-remove" title="선택 취소하기"></i>
													</a>
												</small>
											</span>&nbsp;
											</span>

										</div>


										<div class="text-muted space-top-1">투어투게더 회원과 소통이 가능한
											언어를 모두 추가해 주세요.</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3" for="user_vat_id">
										VAT 번호 </label>
									<div class="col-sm-9">

										<div class="vat-number-section space-top-1">
											<a href="#" class="add-vat-link"> <i
												class="icon icon-add"></i> VAT 번호 추가
											</a>
										</div>

										<div class="text-muted space-top-1">
											EU 지역 또는 VAT가 적용되는 국가의 회원에게는 투어투게더 서비스 수수료에 VAT가 부과됩니다. VAT
											부과 국가에 거주하는 회원의 경우, 유효한 VAT 등록 번호를 입력하면 VAT가 부과되지 않습니다. <a
												href="https://www.airbnb.co.kr/help/topic/249">VAT 도움말
												보기 »</a>
										</div>
									</div>
								</div>

								<div class="row row-condensed space-4">
									<label class="text-right col-sm-3"
										for="user_emergency_contact_title"> 긴급 연락처 <i
										aria-label="비공개" class="icon icon-lock icon-ebisu"
										data-behavior="tooltip" role="img" tabindex="0" title="비공개"></i>
									</label>
									<div class="col-sm-9">

										<div class="space-top-1">
											<a id="emergency_contact_add"
												class="emergency_contact_trigger" href="#"> <i
												class="icon icon-add"></i> 연락처 추가하기
											</a>
										</div>

										<div class="text-muted space-top-1">고객지원 팀에서 긴급 상황시 연락할
											수 있도록 신뢰하는 사람의 연락처를 제공하여 주세요.</div>
									</div>
								</div>

								<div id="emergency_contact_popout" style="display: none">
									<div class="row row-condensed space-4">
										<label class="text-right col-sm-3"
											for="user_emergency_contact_name"> 이름 </label>
										<div class="col-sm-9">

											<input id="user_emergency_contact_name"
												name="user_emergency_contact[name]" size="30" type="text" />


										</div>
									</div>
									<div class="row row-condensed space-4">
										<label class="text-right col-sm-3"
											for="user_emergency_contact_phone"> 전화 </label>
										<div class="col-sm-9">

											<input id="user_emergency_contact_phone"
												name="user_emergency_contact[phone]" size="30" type="text" />


										</div>
									</div>
									<div class="row row-condensed space-4">
										<label class="text-right col-sm-3"
											for="user_emergency_contact_email"> 이메일 </label>
										<div class="col-sm-9">

											<input id="user_emergency_contact_email"
												name="user_emergency_contact[email]" size="30" type="text" />


										</div>
									</div>
									<div class="row row-condensed space-4">
										<label class="text-right col-sm-3"
											for="user_emergency_contact_relationship"> 관계 </label>
										<div class="col-sm-9">

											<input id="user_emergency_contact_relationship"
												name="user_emergency_contact[relationship]" size="30"
												type="text" />


										</div>
									</div>
								</div>
								<div id="host-shipping-address"></div>
								<style data-aphrodite="data-aphrodite"></style>
								<div
									data-hypernova-key="edit_profileguest_identificationsbundlejs"
									data-hypernova-id="69774d0f-065e-4be1-9c2c-2d5fd0ad76e0">
									<div class="row row-condensed space-4" data-reactroot="">
										<div class="col-sm-3">
											<div class="text-right space-2">
												<span>게스트 프로필</span> <span tabindex="0"><i
													class="icon icon-lock icon-ebisu"></i></span>
											</div>
										</div>
										<div class="col-sm-9">
											<div class=""></div>
											<div class="row row-condensed space-1">
												<div class="col-sm-12">
													<button class="btn btn-link" type="button">
														<i class="icon icon-add"></i> <span>새로운 게스트 프로필
															추가하기</span>
													</button>
												</div>
											</div>
											<div class="row row-condensed">
												<div class="col-sm-12">
													<span class="text-muted"><span>이 정보는 중국으로 여행할
															시에만 필요하며 호스트 및 다른 게스트와는 공유되지 않습니다.</span></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>


						<div id="business-travel" class="panel space-4">
							<div class="panel-header">
								<a id="business_travel"></a>
								<h2 class="edit-profile-section-heading">출장</h2>
							</div>

							<div class="panel-body">
								<style data-aphrodite="data-aphrodite">
._n5wk6ic {
	color: #008489 !important;
	font: inherit !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-decoration: none !important;
	-webkit-appearance: none !important;
	-moz-appearance: none !important;
	appearance: none !important;
	background: transparent !important;
	border: 0px !important;
	cursor: pointer !important;
	margin: 0px !important;
	padding: 0px !important;
	-webkit-user-select: auto !important;
	-moz-user-select: auto !important;
	-ms-user-select: auto !important;
	user-select: auto !important;
	text-align: left !important;
}

._n5wk6ic:hover {
	text-decoration: underline !important;
	color: #008489 !important;
}

._n5wk6ic:focus {
	text-decoration: underline !important;
}

._n5wk6ic:active {
	color: #006C70 !important;
	outline: 0px !important;
}
</style>
								<div data-hypernova-key="business_travelquick_enrollbundlejs"
									data-hypernova-id="c5276a66-a5f4-4346-bcad-e59982ac610f">
									<div class="bt-quick-enroll" data-reactroot="">
										<div class="row row-condensed space-1">
											<span style="font-size: 0"></span><label
												class="text-right col-sm-3" for="new-entry-field"><span>업무용
													이메일</span> <span tabindex="0"><i
													class="icon icon-lock icon-ebisu"></i></span></label>
											<div class="col-sm-9">
												<div class="space-1">
													<div class="input-addon hide-btn">
														<input type="text" class="" id="new-entry-field" value="" /><span
															class="input-suffix with-btn" type="text"><button
																type="button" class="btn btn-primary">
																<span>추가</span>
															</button></span>
													</div>
													<div class="text-muted space-top-1">
														<span>다음번 검색 시 <span><strong>여행 유형</strong></span>
															필터를 선택해 출장에 적합한 숙소를 찾아보세요. <span><button
																	type="button" class="_n5wk6ic" aria-busy="false">자세히
																	알아보기</button></span></span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>



						<button type="submit" class="btn btn-primary btn-large">
							저장하기</button>
					</form>




					<div class="modal reauth-modal" role="dialog" aria-hidden="true">
						<div class="modal-table">
							<div class="modal-cell">
								<div class="modal-content signup">

									<div id="reauthenticate_container">
										<form accept-charset="UTF-8" action="?" id="reauth_form"
											method="post">
											<div style="margin: 0; padding: 0; display: inline">
												<input name="utf8" type="hidden" value="&#x2713;" /><input
													name="authenticity_token" type="hidden"
													value="V4$.airbnb.co.kr$4uZ4vd-bueM$MwAxEnI3niNPiKCGyOsxanU7DpPn34rjLxCK1QmR3K8=" />
											</div>
											<h3 class="panel-header panel-header-gray">
												<a href="#" data-behavior="modal-close" class="modal-close"></a>
												계속하려면 비밀번호를 확인해 주세요.
											</h3>
											<div
												class="panel-header alert alert-header alert-with-icon alert-danger"
												hidden>
												<i class="icon icon-alert-alt alert-icon"></i> <span
													class="reauth-error"></span>
											</div>
											<div class="panel-padding panel-body">
												<div class="textInput text-input-container" id="inputEmail">

													<input class="decorative-input" id="confirm_password"
														name="password" placeholder="비밀번호" type="password" />
													<div class="clearfix control-group space-top-2 text-right">
														<a href="/forgot_password?email=eogh4535%40naver.com"
															class="forgot-password">비밀번호가 생각나지 않으세요?</a>
													</div>
												</div>
											</div>
											<div class="panel-footer">
												<button type="submit" class="btn btn-primary">비밀번호
													확인</button>
											</div>
										</form>
									</div>

								</div>
							</div>
						</div>
					</div>




				</div>
			</div>
		</div>
	</div>

	</main>

	<div id="footer-promo-mount"></div>
	<div id="footer" class="footer-surround">
		<style data-aphrodite="data-aphrodite">
._azosq83 {
	padding-left: 24px !important;
	padding-right: 24px !important;
	max-width: 1080px !important;
	padding-top: 24px !important;
	padding-bottom: 24px !important;
}

@media ( min-width : 1128px) {
	._azosq83 {
		margin: 0 auto !important;
		position: relative !important;
	}
}

@media ( min-width : 744px) {
	._azosq83 {
		padding-top: 48px !important;
		padding-bottom: 48px !important;
	}
}

._c2qqzh7 {
	margin-bottom: 4px !important;
	display: inline !important;
	padding-left: 8px !important;
	vertical-align: middle !important;
}

._slzfb3n {
	font: inherit !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-decoration: none !important;
	text-align: left !important;
	color: #767676 !important;
}

._slzfb3n:focus {
	text-decoration: underline !important;
}

._slzfb3n:active {
	color: #006C70 !important;
}

._slzfb3n:hover {
	text-decoration: underline !important;
	color: #767676 !important;
}
</style>
		<div data-hypernova-key="site_footersite_footerbundlejs"
			data-hypernova-id="e846e581-e762-4dbc-ab22-aab30b1df240">
			<div class="_azosq83" style="background-color: transparent"
				data-reactroot="">
				<ul>
					<li class="_c2qqzh7"><a href="/terms" class="_slzfb3n"
						aria-busy="false"><span>이용약관</span></a></li>
					<li class="_c2qqzh7"><a href="/terms/privacy_policy"
						class="_slzfb3n" aria-busy="false"><span>개인정보 보호정책</span></a></li>
					<li class="_c2qqzh7"><a href="/sitemaps" class="_slzfb3n"
						aria-busy="false"><span>여행지 찾기</span></a></li>
					<li class="_c2qqzh7"><a href="https://airbnbmag.com"
						class="_slzfb3n" aria-busy="false"><span>Tourtogether</span></a></li>
				</ul>
			</div>
		</div>
		
	</div>



	<div id="fb-root"></div>



</body>
</html>
<!-- ver. 927f783e2715242edd31ee9ee09ef953fcd60908 -->

