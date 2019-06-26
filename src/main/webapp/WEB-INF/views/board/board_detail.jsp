<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d15fd5bf26911082d79838012f46ad9&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d15fd5bf26911082d79838012f46ad9"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
	
	var files = null;
    var previewIndex = 0;
	
	$(document).ready(
		    function() {
		        // 태그에 onchange를 부여한다.
		        $('#file').change(function() {
		                addPreview($(this)); //preview form 추가하기
		        });
		    });
		 
		    // image preview 기능 구현
		    // input = file object[]
		    function addPreview(input) {
		        if (input[0].files) {
		            //파일 선택이 여러개였을 시의 대응
		            for (var fileIndex = 0 ; fileIndex < input[0].files.length ; fileIndex++) {
		                var file = input[0].files[fileIndex];
		                var reader = new FileReader();
		 
		                reader.onload = function (img) {
		                    //div id="preview" 내에 동적코드추가.
		                    //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
// 		                    $("#preview").append(
// 		                        "<img src=\"" + img.target.result + "\"\/>"
// 		                    );
		                	var ext = $("input:file").val().split(".").pop().toLowerCase();
		            		if(ext.length > 0){
		            			if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
		            				alert("gif,png,jpg 파일만 업로드 할수 있습니다.");
		            				files=null;
		            				console.log(files);
		            				$("#file_button").attr('src',"resources/board/images/photo.png");
		            				$()
		            				return false;  
		            			}                  
		            		}
		                	$("#file_button").attr('src',img.target.result);
		                	files = file;
		                	console.log(files);
		                };
		                
		                reader.readAsDataURL(file);
		            }
		        } else alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
		    }
		    
    $( function() {
    	
	  $('#file_button').click(function (e) {
	 	e.preventDefault();
	 	$('#file').click();
	  });
      $( "#start_date" ).datepicker();
      $( "#end_date" ).datepicker();
      
      console.log("autocomplete");
      $("#start_date").autocomplete({
    	  source: function(request, response){
    	  	var date_n = $("#start_date").val();
    	  	console.log(date_n);
    	  }
       });
      
     });
    
    function sendFile(){
    	if(files==null){
    		alert("사진 없음");
    		return false;
    	}
    	alert("사진을 넣겠습니다.");
    	data = new FormData();
    	data.append("file", files);
    	var $note = $(this);
    	$.ajax({
    		data: data,
    		type: 'POST',
    		url: "board/ImgUpload.do",
    		cache: false,
    		contentType: false,
    		processData: false,
    		enctype: "multipart/form-data",
    		success: function(url){
    			//$('#photo_path').val(url);
    			$('.url').val(url);
    			alert(url);
    			document.detail.submit();
    		},
    		
    		error:function(request,status,error){
            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
    	});
	}
    
    function next(){
    	var dt = new Date();
    	
    	var month = dt.getMonth()+1;
    	var day = dt.getDate();
    	var year = dt.getFullYear();
    	
    	dt=month+"/"+day+"/"+year;
    	dt=new Date(dt);
    	
    	var date = new Date(detail.start_date.value);
    	var end_date = new Date(detail.end_date.value);
    	
    	if(detail.title.value==""){
    		alert("가이드 이름을 입력해주세요");
    		return;
    	}
    	if(date=="Invalid Date"){
    		alert(date);
    		return;
    	}else if(end_date=="Invalid Date"){
    		alert("마지막 날짜를 입력해주세요");
    		return;
    	}else{
    		if(date.getTime()<dt.getTime()){
    			alert("과거여행을 가이드를 하시려면 관리자에게 문의해주세요.");
    			return;
    		}else if(date.getTime()>end_date.getTime()){
    			alert("마지막 날짜가 시작날짜 이전으로 표시되었습니다.");
    			return;
    		}
    	}
    	if(detail.budget.value<0||detail.budget.value==""){
    		alert("가격을 0 이상으로 적어주세요");
    		return;
    	}
    	if(detail.company.value<1||detail.company.value==null){
    		alert("투어리스트 인원을 1명 이상으로 적어주세요 ");
    		return;
    	}
    	if(detail.board_content.value==null||detail.board_content.value=="")
    	{
    		alert("글 내용을 입력해주세요");
    		return;
    	}
    	if(detail.tour_time.value<0||detail.tour_time.value==""){
    		alert("투어 시간을 입력해주세요");
    		return;
    	}
    	sendFile();
    }
    </script>
</head>
	<body>
	<center>
		<form name="detail" action="all_insert.do" onsubmit="return false;" method="post">
		 <div style="border: 1px dashed #BDBDBD; width:100%;height:730px;">
		 	<div id="fileUpload" class="dragDropDiv">
		   		<!-- multiple attr 가 없다면 단일 이미지만 선택한다. -->
    			<input id="file" type="file" style="display:none;"/>
 				<img id="file_button" src="resources/board/images/photo450.png" style="width:450px; height:450px"/>
			    <!-- 해당 위치 안에 이미지가 쌓이게 된다. -->
			    <div id="preview">
			    </div>
			</div>
		 	<div style="border: 1px dashed #BDBDBD; width:300px;height:100px; margin:0 auto">
		 		가이드하실 여행의 이름은 무엇인가요?<br/><br/>
		 		<input type="text" id="title" name="title" style="width:290px;height:30px">
		 	</div >
		 	<div style="border: 1px dashed #BDBDBD; width:300px;height:100px; margin:0 auto">
		 		날짜<br/><br/>
		 		<p>여행 일자: <input type="text" id="start_date" name="start_date" style="width:80px" value="시작 날짜"> ~ 
		 		<input type="text" id="end_date" name="end_date" style="width:80px;" value="마지막 날짜"></p>
		 		예상 하루 투어시간 : <input type="number" name="tour_time" style="width:80px;">
		 	</div >
		 	<div style="border: 1px dashed #BDBDBD; width:300px;height:100px; margin:0 auto">
		 		<p>예상 필요 예산</p>
		 		<input type="number" name="budget" style="width:100px;height:20px" value="0"> 원
		 	</div >
		 	<div style="border: 1px dashed #BDBDBD; width:300px;height:100px; margin:0 auto">
		 		<p>원하는 희망 인원수(투어리스트)</p>
		 		<input type="number" name="company" style="width:100px;height:20px" value="1"> 명
		 	</div >
		 	<div style="border: 1px dashed #BDBDBD; width:300px;height:100px; margin:0 auto">
		 		<p>상세내용</p>
		 		<input type="text" name="board_content" style="width:280px;height:20px">
		 	</div >
		 		<input type="hidden" name="board_type" value="10">
		 		<input type="hidden" class='url' id="photo_path" name="photo_path" value="null">
		 	<div style="border: 1px dashed #BDBDBD; width:300px;height:100px; margin:0 auto">
		 		<button onclick="location.href='#'"> 이전 </button> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 
		 		<button type="button" onclick="next()" value="다음">다음</button>
		 	</div >
		 </div>
		 </form>
	</center>
	</body>
</html>