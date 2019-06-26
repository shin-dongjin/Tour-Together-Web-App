<%@ page import="java.util.List, java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="description" content="chart created using amCharts live editor" />
		
		<select name="startYear" id="startYear">
		  <option value="2018">2018</option>
		  <option value="2017">2017</option>
		  <option value="2016">2016</option>
		</select>
		<b> 년 </b>
		<select name="startMonth" id="startMonth">
		  <option value="01">1</option>
		  <option value="02">2</option>
		  <option value="03">3</option>
		  <option value="04">4</option>
		  <option value="05">5</option>
		  <option value="06">6</option>
		  <option value="07">7</option>
		  <option value="08">8</option>
		  <option value="09">9</option>
		  <option value="10">10</option>
		  <option value="11">11</option>
		  <option value="12">12</option>
		</select>		
		<b> 월    -   </b>
		<select name="endYear" id="endYear">
		  <option value="2018">2018</option>
		  <option value="2017">2017</option>
		  <option value="2016">2016</option>
		</select>
		<b> 년 </b>
		<select name="endMonth" id="endMonth">
		  <option value="01">1</option>
		  <option value="02">2</option>
		  <option value="03">3</option>
		  <option value="04">4</option>
		  <option value="05">5</option>
		  <option value="06">6</option>
		  <option value="07">7</option>
		  <option value="08">8</option>
		  <option value="09">9</option>
		  <option value="10">10</option>
		  <option value="11">11</option>
		  <option value="12">12</option>
		</select>
		<b> 월 </b>
		<button id="search">검색</button>
		
		<!-- amCharts javascript sources -->
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/serial.js"></script>
		
		<!-- amCharts javascript code -->
		<script type="text/javascript">			
		var chart = AmCharts.makeChart("chartdiv",
			{
					"type": "serial",
					"categoryField": "category",
					"dataDateFormat": "YYYY-MM-DD",
					"startDuration": 1,
					"categoryAxis": {
						"gridPosition": "start",
						"parseDates": true
					},
					"chartCursor": {
						"enabled": true
					},
					"chartScrollbar": {
						"enabled": true
					},
					"trendLines": [],
					"graphs": [
						{
							"bullet": "round",
							"id": "AmGraph-1",
							"title": "graph 1",
							"valueField": "column-1"
						},
						{
							"bullet": "square",
							"id": "AmGraph-2",
							"title": "graph 2",
							"valueField": "column-2"
						}
					],
					"guides": [],
					"valueAxes": [
						{
							"id": "ValueAxis-1",
							"title": "인원 수"
						}
					],
					"allLabels": [],
					"balloon": {},
					"titles": [
						{
							"id": "Title-1",
							"size": 15,
							"text": "<날짜별 가입자 수>"
						}
					],
					"dataProvider":	[
		
						{
							"category": "2014-03-02",
							"column-1": 16
						}
					]					
				}
			);
			var targetStartYear = document.getElementById("startYear");
			var targetStartMonth = document.getElementById("startMonth");
			var targetEndYear = document.getElementById("endYear");
			var targetEndMonth = document.getElementById("endMonth");
	    
	    	//Admin Page Default
			var initFunc = function initData(){
				var initDateList = new Array();
				<c:forEach items="${chart}" var="initChart">
					initDateList.push("${initChart}");
				</c:forEach>
				
				var initCountList = new Array();
				initCountList = "${chartCount}";
		    	
				var ChartDataDate = JSON.stringify(initDateList);
				var ChartDataCount = JSON.stringify(initCountList);
				
				var CD = ChartDataDate.split(',');
				var CD2 = ChartDataCount.split(',');
	
				var NewChartData = [];
				for(i=0; i<CD.length; i++){
				    var Date = CD[i];
				    var Count = CD2[i];
				    Date = Date.replace("[","");
				    Date = Date.replace("]","");
				    Count = Count.replace("\"[","");
				    Count = Count.replace("]\"","");
				    Date = '{ "category":' + Date +', "column-1" : '+Count+' }';
				   NewChartData.push(JSON.parse(Date));
				}
				chart.dataProvider = NewChartData;
				chart.validateData();
			}
	    
			//Default Page 호출		
			var init = new initFunc();
			
			//날짜 형태 바꾸기
		    function getFormatDate(date) { 
		    	var d = new Date(date), 
		    	month = '' + (d.getMonth() + 1), 
		    	day = '' + d.getDate(), year = d.getFullYear(); 
		    	if (month.length < 2) month = '0' + month; 
		    	if (day.length < 2) day = '0' + day; 
		    	return [year, month, day].join('-'); 
		    }
			//날짜 하루 증가시키기
			function getNextDate(date, i){
				var d = new Date(date);
				d.setDate(d.getDate() + i);
				
				return d;				
			}
			
			//검색된 날짜 그래프 변화
			document.getElementById('search').onclick = function LoadNewData(){
				var startYear = targetStartYear.options[targetStartYear.selectedIndex].value;
				var endYear = targetEndYear.options[targetEndYear.selectedIndex].value;
				var startMonth = targetStartMonth.options[targetStartMonth.selectedIndex].value;
				var endMonth = targetEndMonth.options[targetEndMonth.selectedIndex].value;
				var dateList = []; //가입자가 있는 가입일자 배열
				var countList = [];	//가입일자의 가입자 수 배열
				
				//날짜 차이 계산 
				var startD =  new Date(startYear, startMonth-1, 1);
				var endD = new Date(endYear, endMonth, 1).setDate(0);
				startD = getFormatDate(startD);
				endD = getFormatDate(endD);
				var startDateArray = startD.split("-"); 
				var endDateArray = endD.split("-");
				var startDateObj = new Date(startDateArray[0], Number(startDateArray[1])-1, startDateArray[2]); 
				var endDateObj = new Date(endDateArray[0], Number(endDateArray[1])-1, endDateArray[2]);
				var betweenDay = (endDateObj.getTime() - startDateObj.getTime()) / (1000*60*60*24);
				var betDayInt = Number(new Date(betweenDay)) + 1;
				var diffDate = endDateObj.getTime() - startDateObj.getTime(); //시작일이 마지막 일보다 클 경우를 가르기 위해
				
				$.ajax({
					type: 'post',
					url: "changeChart.do?startYear="+startYear+"&startMonth="+startMonth+"&endYear="+endYear+"&endMonth="+endMonth+"",
					dataType: 'json',
					contentType: 'application/json;charset=UTF-8',
					
					success:function(data){
						if(diffDate < 0){
							alert("날짜를 다시 선택해주세요.");
						}else{							
							var json = {list:data};
							//가입자가 있는 가입일자
							for(var i=0; i<(json.list.length/2); i++){
								var obj = json.list[i];						
								dateList[i] = obj.Date;
							}
							//가입일자의 가입자 수
							for(var i=(json.list.length/2); i<json.list.length; i++){
								var obj = json.list[i];
								countList[i-(json.list.length/2)] = obj.CountData;
							}
							//전체 날짜 계산
							var Calendar = [];
							for(i=0; i < betDayInt ; i++){
								Calendar[i] = getFormatDate(getNextDate(startD, i));
							}
							
							//새로운 데이터 넣는 배열
							var NewChartData = [];
							var k = 0;
							for(i=0; i < betDayInt ; i++){								
								var Date = dateList[k];
								var Count = countList[k];
								
								if( Calendar[i] != Date ){
									Date = Calendar[i];
									Count = 0;
								}else{
									Date = dateList[k];
									Count = countList[k];
									k++;
								}						
							    Count = JSON.stringify(Count);
							    Date = '{ "category": "' + Date +'" , "column-1" : '+Count+' }';
							   NewChartData.push(JSON.parse(Date));
							}
							chart.dataProvider = NewChartData;
							chart.validateData();
						} //.if문
					},
					error : function(request,status,error){
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}	
				});								
			}
		
		</script>
	</head>
	<body>
		<div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
	</body>
</html>