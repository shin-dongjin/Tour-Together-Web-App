<%@ page import="java.util.List, java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- amCharts javascript sources -->
	<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
	<script type="text/javascript" src="https://www.amcharts.com/lib/3/pie.js"></script>
	<script type="text/javascript" src="https://www.amcharts.com/lib/3/themes/light.js"></script>
	
	<!-- amCharts javascript code -->
	<script type="text/javascript">
		var chartGenM = "${chartGenM}";
		var chartGenF = "${chartGenF}";
		var chartClsA = "${chartClsA}";
		var chartClsP = "${chartClsP}";
	
		AmCharts.makeChart("chartdiv1",
			{
				"type": "pie",
				"angle": 12,
				"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
				"depth3D": 15,
				"titleField": "category",
				"valueField": "column-1",
				"allLabels": [],
				"balloon": {},
				"legend": {
					"enabled": true,
					"align": "center",
					"markerType": "circle"
				},
				"titles": [],
				"dataProvider": [
					{
						"category": "남자",
						"column-1": chartGenM
					},
					{
						"category": "여자",
						"column-1": chartGenF
					}
				]
			}
		);
		
		AmCharts.makeChart("chartdiv2",
				{
					"type": "pie",
					"angle": 12,
					"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
					"depth3D": 15,
					"titleField": "category",
					"valueField": "column-1",
					"theme": "light",
					"allLabels": [],
					"balloon": {},
					"legend": {
						"enabled": true,
						"align": "center",
						"markerType": "circle"
					},
					"titles": [],
					"dataProvider": [
						{
							"category": "아마추어",
							"column-1": chartClsA
						},
						{
							"category": "프로",
							"column-1": chartClsP
						}
					]
				}
			);
		
	</script>
	</head>
	<body>
		<div id="chartdiv1" style="float:left; width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
		<div id="chartdiv2" style="float:right; width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
	</body>
</html>