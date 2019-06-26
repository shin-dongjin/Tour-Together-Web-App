<%@ page import="java.util.List, java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="description" content="chart created using amCharts live editor" />
	
		<!-- amCharts javascript sources -->
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/serial.js"></script>
		
		<!-- amCharts javascript code -->
		<script type="text/javascript">			
		var chart = AmCharts.makeChart("chartdiv",
				{
					"type": "serial",
					"categoryField": "category",
					"startDuration": 1,
					"theme": "default",
					"categoryAxis": {
						"gridPosition": "start"
					},
					"trendLines": [],
					"graphs": [
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 1,
							"id": "AmGraph-1",
							"title": "인원 수",
							"type": "column",
							"valueField": "column-1"
						}
					],
					"guides": [],
					"valueAxes": [
						{
							"id": "ValueAxis-1",
							"stackType": "regular",
							"title": "인원 수"
						}
					],
					"allLabels": [],
					"balloon": {},
					"legend": {
						"enabled": true,
						"useGraphSettings": true
					},
					"titles": [
						{
							"id": "Title-1",
							"size": 15,
							"text": "국가별 가입자 수"
						}
					],
					"dataProvider": [
						{
							"category": "category 1",
							"column-1": 8
						},
					]
				}
			);
			
	    	//Admin Page Default
			var initFunc = function initData(){
				var initDateList = new Array();
				<c:forEach items="${chart}" var="initChart">
					initDateList.push("${initChart.country}");
				</c:forEach>
				
				var initCountList = new Array();
				initCountList = "${chartCount}";
		    	
				var ChartDataCountry = JSON.stringify(initDateList);
				var ChartDataCount = JSON.stringify(initCountList);
				
				var CD = ChartDataCountry.split(',');
				var CD2 = ChartDataCount.split(',');
	
				var NewChartData = [];
				for(i=0; i<CD.length; i++){
				    var Country = CD[i];
				    var Count = CD2[i];
				    Country = Country.replace("[","");
				    Country = Country.replace("]","");
				    Count = Count.replace("\"[","");
				    Count = Count.replace("]\"","");
				    Country = '{ "category":' + Country +', "column-1" : '+Count+' }';
				   NewChartData.push(JSON.parse(Country));
				}
				chart.dataProvider = NewChartData;
				chart.validateData();
			}
	    
			//Default Page 호출		
			var init = new initFunc();
			
		</script>
	</head>
	<body>
		<div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
	</body>
</html>