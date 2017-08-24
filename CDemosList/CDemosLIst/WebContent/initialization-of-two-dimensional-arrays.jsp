<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/animate.css">
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src='/js/intro.js'></script>
<link rel="stylesheet" href="/css/font-awesome.min.css">

<title>two dimensional array</title>
</head>

<style>

#infoDiv {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	font-size: 15px;
	padding: 11px 12px;
	/* margin-left: 19.5%;
	margin-top: 1%; */
}


.smallBox1, .smallBox2, .smallBox3, .smallBox4, .smallBox5 {
	border-width: 2px;
	border-style: solid;
	padding: 4px;
	text-align: center;
	width: 66px;
}
.second-box-1, .second-box-2, .second-box-3, .three-box-1, .three-box-2, .three-box-3, .four-box-1, .four-box-2, .four-box-3 {
	border-width: 2px;
	border-style: solid;
	padding: 4px;
	text-align: center;
	width: 66px;
}

.fifth-box-1, .fifth-box-2 {
	border-width: 2px;
	border-style: solid;
	padding: 4px;
	text-align: center;
	width: 66px;
}
.smallBox1 {
	border-color: green;
}

.smallBox2 {
	border-color: firebrick;
}

.smallBox3 {
	border-color: royalblue;
}

.elementBox, .addressBox {
	padding: 4px;
	text-align: center;
	width: 55px;
}

.rowtdClass {
	padding: 4px;
	text-align: center;
	width: 55px;
}

.margin-top-1 {
	margin-top: 1%;
}

.margin-top-3 {
	margin-top: 3%;
}

.margin-top-2 {
	margin-top: 2%;
}

.border {
	border: 1px solid bisque;
	border-radius: 6px;
}

.user-btn {
	background-color: green;
}

.z-index9999999 {
	z-index: 9999999;
}

.animated-border {
	border-color: rgba(255, 255, 255, 0);
    animation: 2s ease 0s normal none 1 running animated-border;
}

.ct-color-red {
	color: red;
}

span, div {
	position: relative;
}

@keyframes animated-border {  
  100% { border-color: gray; }
}
}

</style>

<body>

<div class="main-div col-xs-12">
	<div class="text-center margin-top-1">
		<h3 class='label ct-demo-heading' id="heading">
			<span>Initialization of two dimensional array</span>
		</h3>
	</div>
	<div class="col-xs-8 col-xs-offset-2 margin-top-2 infoDiv" id="infoDiv">
		<ul>
			<li>Arrays a kind of data structure that can store a fixed-size sequential collection 
				of elements of the same type. And an array is used to store a collection of data.</li>
			<li>In two Dimensional arrays the size of the <b>row</b> may be omitted but size of the <b>column</b> must be specified.</li>
		</ul>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-4 col-xs-offset-1 margin-top-2 border opacity00" id="exampleDiv1">
			<span id="firstExample" class="margin-top-2 opacity00">
				int a[<span id="row1">3</span>][<span id="column1">2</span>]={<span id="input1">10</span>,<span id="input2">20</span>,
				<span id="input3">30</span>,<span id="input4">40</span>,<span id="input5">50</span>,<span id="input6">60</span>}; 
			</span>
			<div id="tableDiv1">
				<table align="center" class="margin-top-2">
					<tr>
						<td class="elementBox"><span class="opacity00" id="element1">a[0][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="element2">a[0][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="element3">a[1][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="element4">a[1][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="element5">a[2][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="element6">a[2][1]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox1">
						<td class="smallBox1"><span class="opacity00" id="value1">10</span></td>
						<td class="smallBox1"><span class="opacity00" id="value2">20</span></td>
						<td class="smallBox2"><span class="opacity00" id="value3">30</span></td>
						<td class="smallBox2"><span class="opacity00" id="value4">40</span></td>
						<td class="smallBox3"><span class="opacity00" id="value5">50</span></td>
						<td class="smallBox3"><span class="opacity00" id="value6">60</span></td>
					</tr>
					<tr class="opacity00" id="address1">
						<td class="addressBox">1024</td>
						<td class="addressBox">1026</td>
						<td class="addressBox">1028</td>
						<td class="addressBox">1030</td>
						<td class="addressBox">1032</td>
						<td class="addressBox">1034</td>
					</tr>
					<tr class="" id="rowSpan1">
						<td colspan="2" class="rowtdClass opacity00" id="rowOneId1" style="color: green;">0<sup><b>th</b></sup> row</td>
						<td colspan="2" class="rowtdClass opacity00" id="rowOneId2" style="color: firebrick;">1<sup><b>st</b></sup> row</td>
						<td colspan="2" class="rowtdClass opacity00" id="rowOneId3" style="color: royalblue;">2<sup><b>nd</b></sup> row</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="col-xs-4 col-xs-offset-2 margin-top-2 border opacity00" id="exampleDiv2">
			<div id="secondExample" class=" margin-top-2">
				int a[3][2]={<span id="innerArray1">{<span id="inputTwo1">1</span>,<span id="inputTwos1">2</span>}</span>,
							<span id="innerArray2">{<span id="inputTwo2">3</span>,<span id="inputTwos2">4</span>}</span>,
							<span id="innerArray3">{<span id="inputTwo3">5</span>,<span id="inputTwos3">6</span>}</span>}; 
			</div>
			<div id="tableDiv2">
				<table align="center" class="margin-top-2">
					<tr>
						<td class="elementBox"><span class="opacity00" id="elementTwo1">a[0][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementTwo2">a[0][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementTwo3">a[1][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementTwo4">a[1][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementTwo5">a[2][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementTwo6">a[2][1]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox2">
						<td class="second-box-1"><span class="opacity00" id="valueTwo1">1</span></td>
						<td class="second-box-1"><span class="opacity00" id="valueTwos1">2</span></td>
						<td class="second-box-2"><span class="opacity00" id="valueTwo2">3</span></td>
						<td class="second-box-2"><span class="opacity00" id="valueTwos2">4</span></td>
						<td class="second-box-3"><span class="opacity00" id="valueTwo3">5</span></td>
						<td class="second-box-3"><span class="opacity00" id="valueTwos3">6</span></td>
					</tr>
					<tr class="opacity00" id="address2">
						<td class="addressBox">1020</td>
						<td class="addressBox">1022</td>
						<td class="addressBox">1024</td>
						<td class="addressBox">1026</td>
						<td class="addressBox">1028</td>
						<td class="addressBox">1030</td>
					</tr>
					<tr class="" id="rowSpan2">
						<td colspan="2" class="rowtdClass opacity00" id="rowTwoId1" style="color: green;">0<sup><b>th</b></sup> row</td>
						<td colspan="2" class="rowtdClass opacity00" id="rowTwoId2" style="color: firebrick;">1<sup><b>st</b></sup> row</td>
						<td colspan="2" class="rowtdClass opacity00" id="rowTwoId3" style="color: royalblue;">2<sup><b>nd</b></sup> row</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-6 margin-top-2 border opacity00" id="exampleDiv3">
			<div id="thirdExample" class="margin-top-2">
				int a[3][4]={<span id="inputThree1">1</span>,<span id="inputThree2">2</span>,
							<span id="inputThree3">3</span>,<span id="inputThree4">4</span>,<span id="inputThree5">5</span>}; 
			</div>
			<div id="tableDiv3">
				<table align="center" class="margin-top-2">
					<tr>
						<td class="elementBox"><span class="opacity00" id="elementThree1">a[0][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree2">a[0][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree3">a[0][2]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree4">a[0][3]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree5">a[1][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree6">a[1][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree7">a[1][2]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree8">a[1][3]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree9">a[2][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree10">a[2][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree11">a[2][2]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementThree12">a[2][3]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox3">
						<td class="three-box-1"><span class="opacity00" id="valueThree1">1</span></td>
						<td class="three-box-1"><span class="opacity00" id="valueThree2">2</span></td>
						<td class="three-box-1"><span class="opacity00" id="valueThree3">3</span></td>
						<td class="three-box-1"><span class="opacity00" id="valueThree4">4</span></td>
						<td class="three-box-2"><span class="opacity00" id="valueThree5">5</span></td>
						<td class="three-box-2"><span class="append-zero opacity00" id="valueThree6">0</span></td>
						<td class="three-box-2"><span class="append-zero opacity00" id="valueThree7">0</span></td>
						<td class="three-box-2"><span class="append-zero opacity00" id="valueThree8">0</span></td>
						<td class="three-box-3"><span class="append-zero opacity00" id="valueThree9">0</span></td>
						<td class="three-box-3"><span class="append-zero opacity00" id="valueThree10">0</span></td>
						<td class="three-box-3"><span class="append-zero opacity00" id="valueThree11">0</span></td>
						<td class="three-box-3"><span class="append-zero opacity00" id="valueThree12">0</span></td>
					</tr>
					<tr class="opacity00" id="address3">
						<td class="addressBox">1016</td>
						<td class="addressBox">1018</td>
						<td class="addressBox">1020</td>
						<td class="addressBox">1022</td>
						<td class="addressBox">1024</td>
						<td class="addressBox">1026</td>
						<td class="addressBox">1028</td>
						<td class="addressBox">1030</td>
						<td class="addressBox">1032</td>
						<td class="addressBox">1034</td>
						<td class="addressBox">1036</td>
						<td class="addressBox">1038</td>
					</tr>
					<tr id="rowSpan3">
						<td colspan="4" class="rowtdClass opacity00" id="rowThreeId1" style="color: green;">0<sup><b>th</b></sup> row</td>
						<td colspan="4" class="rowtdClass opacity00" id="rowThreeId2" style="color: firebrick;">1<sup><b>st</b></sup> row</td>
						<td colspan="4" class="rowtdClass opacity00" id="rowThreeId3" style="color: royalblue;">2<sup><b>nd</b></sup> row</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="col-xs-4 col-xs-offset-1 margin-top-2 border opacity00" id="exampleDiv5">
			<div id="fifthExample" class="margin-top-2">
				int a[<span id="emptyRowArray"> </span>][<span id="fifthColumn">2</span>] = {<span id="inputFifth1">1</span>,<span id="inputFifth2">2</span>,
								<span id="inputFifth3">3</span>,<span id="inputFifth4">4</span>};
			</div>
			<div id="tableDiv5">
				<table align="center" class="margin-top-2">
					<tr>
						<td class="elementBox"><span class="opacity00" id="elementFifth1">a[0][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFifth2">a[0][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFifth3">a[1][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFifth4">a[1][1]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox5">
						<td class="fifth-box-1"><span class="opacity00" id="valueFifth1">1</span></td>
						<td class="fifth-box-1"><span class="opacity00" id="valueFifth2">2</span></td>
						<td class="fifth-box-2"><span class="opacity00" id="valueFifth3">3</span></td>
						<td class="fifth-box-2"><span class="opacity00" id="valueFifth4">4</span></td>
					</tr>
					<tr class="opacity00" id="address5">
						<td class="addressBox">1032</td>
						<td class="addressBox">1034</td>
						<td class="addressBox">1036</td>
						<td class="addressBox">1038</td>
					</tr>
					<tr id="rowSpan5">
						<td colspan="2" class="rowtdClass opacity00" id="rowFifthId1" style="color: green;">0<sup><b>th</b></sup> row</td>
						<td colspan="2" class="rowtdClass opacity00" id="rowFifthId2" style="color: firebrick;">1<sup><b>st</b></sup> row</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-6 col-xs-offset-0 margin-top-2 border opacity00" id="exampleDiv4">
			<div id="fourthExample" class="margin-top-2">
				int a[3][4]={<span id="arrayBrace1">{<span id="inputFourth1">1</span>,<span id="inputFourths1">2</span>}</span>,
					<span id="arrayBrace2">{<span id="inputFourth3">3</span>,<span id="inputFourth4">4</span>,<span id="inputFourth5">5</span>}</span>}; 
			</div>
			<div id="tableDiv4">
				<table align="center" class="margin-top-2">
					<tr>
						<td class="elementBox"><span class="opacity00" id="elementFourth1">a[0][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth2">a[0][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth3">a[0][2]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth4">a[0][3]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth5">a[1][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth6">a[1][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth7">a[1][2]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth8">a[1][3]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth9">a[2][0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth10">a[2][1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth11">a[2][2]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementFourth12">a[2][3]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox4">
						<td class="four-box-1"><span class="opacity00" id="valueFourth1">1</span></td>
						<td class="four-box-1"><span class="opacity00" id="valueFourths1">2</span></td>
						<td class="four-box-1"><span class="zero-class opacity00">0</span></td>
						<td class="four-box-1"><span class="zero-class opacity00">0</span></td>
						<td class="four-box-2"><span class="opacity00" id="valueFourth3">3</span></td>
						<td class="four-box-2"><span class="opacity00" id="valueFourth4">4</span></td>
						<td class="four-box-2"><span class="opacity00" id="valueFourth5">5</span></td>
						<td class="four-box-2"><span class="zero-class opacity00">0</span></td>
						<td class="four-box-3"><span class="zero-class opacity00">0</span></td>
						<td class="four-box-3"><span class="zero-class opacity00">0</span></td>
						<td class="four-box-3"><span class="zero-class opacity00">0</span></td>
						<td class="four-box-3"><span class="zero-class opacity00">0</span></td>
					</tr>
					<tr class="opacity00" id="address4">
						<td class="addressBox">1030</td>
						<td class="addressBox">1032</td>
						<td class="addressBox">1034</td>
						<td class="addressBox">1036</td>
						<td class="addressBox">1038</td>
						<td class="addressBox">1040</td>
						<td class="addressBox">1042</td>
						<td class="addressBox">1044</td>
						<td class="addressBox">1046</td>
						<td class="addressBox">1048</td>
						<td class="addressBox">1050</td>
						<td class="addressBox">1052</td>
					</tr>
					<tr id="rowSpan4">
						<td colspan="4" class="rowtdClass opacity00" id="rowFourthId1" style="color: green;">0<sup><b>th</b></sup> row</td>
						<td colspan="4" class="rowtdClass opacity00" id="rowFourthId2" style="color: firebrick;">1<sup><b>st</b></sup> row</td>
						<td colspan="4" class="rowtdClass opacity00" id="rowFourthId3" style="color: royalblue;">2<sup><b>nd</b></sup> row</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="col-xs-4 col-xs-offset-2" id="exampleDiv6" style="margin-top: 7%">
			<div id="">
				<span id="sixthExample" class="opacity00">int a[<span id="emptySixRow"> </span>][<span id="emptySixColumn"> </span>]={1,2,3,4};</span>
			</div>
		</div>
	</div>
	<div class="col-xs-7 col-xs-offset-5" id="restartDiv">
		<a class="btn btn-warning opacity00 margin-top-2" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
	</div>
</div>

</body>

<script type="text/javascript">
$(document).ready(function() {
	introGuide();
	
	$("#restart").click(function() {
		location.reload();
	});
	
	$("body").keydown(function(e) {
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
});

function introGuide() {
	introjs = introJs();
	
	introjs.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		tooltip : false,
		steps :[{
			element :'#infoDiv',
			intro : '',
			tooltipClass : 'hide',
		},{
			element :'#exampleDiv1',
			intro : '',
			animateStep: 'firstExample',
		},{
			element :'#row1',
			intro : '',
		},{
			element :'#column1',
			intro : '',
		},{
			element :'#exampleDiv1',
			intro : '',
			animateStep: 'tdBoxAnimate',
		},{
			element :'#exampleDiv1',
			intro : '',
			animateStep: 'tweenmaxAnimate',
		},{
			element :'#exampleDiv2',
			intro : '',
			animateStep: 'secondExample',
		},{
			element :'#exampleDiv2',
			intro : '',
			animateStep: 'elementAnimation',
		}, {
			element :'#exampleDiv3',
			intro : '',
			animateStep: 'thirdExample',
		}, {
			element :'#exampleDiv3',
			intro : '',
			animateStep: 'tweenmaxAnimate',
		}, {
			element :'#exampleDiv3',
			intro : '',
			animateStep: 'appendingZero',
		}, {
			element :'#exampleDiv4',
			intro :'',
			animateStep:'fourthExample',
			position: 'right',
		}, {
			element :'#exampleDiv4',
			intro : '',
			animateStep: 'tweenmaxAnimate',
			position: 'right',
		}, {
			element :'#exampleDiv4',
			intro : '',
			animateStep: 'appendingZero',
			position: 'right',
		}, {
			element :'#exampleDiv5',
			intro :'',
			animateStep:'fifthExample',
		}, {
			element :'#exampleDiv5',
			intro : '',
			animateStep: 'tweenmaxAnimate',
		}, {
			element :'#sixthExample',
			intro : '',
		}, {
			element :"#restart",
			intro : "Click to restart",
			position : 'right',
		}]
	});
	introjs.onafterchange(function(targetElement) {
		$(".introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton").hide();
		var elementId = targetElement.id;
//		console.log("steps :" + introjs._currentStep);
		switch(elementId) {
		case 'infoDiv' :
			$("#infoDiv").css({height: $("#infoDiv").outerHeight()});
			var text = $("#infoDiv").html();
			typing($("#infoDiv"), text, function() {
				$("#infoDiv").addClass('z-index9999999');
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case 'heading':
			$(".introjs-nextbutton").show();
			break;
		case 'exampleDiv1':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
				case 'firstExample':
					$('.introjs-helperLayer').one('transitionend', function() {	
						$("#exampleDiv1").removeClass("opacity00", function() {
							typing('.introjs-tooltiptext', "Let us consider a example on <span class='ct-code-b-yellow'>two dimensional array</span>."
								, function() {
								$("#firstExample").removeClass("opacity00", function() {
									$(".introjs-nextbutton").show();
								});
							});
						});
					});
					break;
				case 'tdBoxAnimate':
					$('.introjs-helperLayer').one('transitionend', function() {
						typing('.introjs-tooltiptext', "Based on the size of the array memory can be allocated as 3 rows and 2 columns.", function() {
							$("#smallBox1").removeClass("visibility-hidden");
							$(".smallBox1, .smallBox2, .smallBox3").addClass("animated-border").one('animationend', function() {
								$(".smallBox1, .smallBox2, .smallBox3").off();
								$(".smallBox1").css("border-color", "green");
								$(".smallBox2").css("border-color", "firebrick");
								$(".smallBox3").css("border-color", "royalblue");
								rowsFirstRemove(1);
							});
						});
					});
					break;
				case 'tweenmaxAnimate':
					$("#address1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#address1").off();
						typing('.introjs-tooltiptext', "Here <span class='ct-code-b-yellow'>1024</span>" +
								" is the base address and every time the address stores two bytes of memory" +
								" because of it is an <span class='ct-code-b-yellow'>integer data type</span>.", function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
							$(".user-btn").click(function() {
								$(".user-btn").remove();
								typing('.introjs-tooltiptext',"The values in the braces are assigned to the array elements according to the" +
												" order of the storage in the memory.<span class='secondText'></span>", function() {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
									$(".user-btn").click(function() {
										$(".user-btn").remove();
										var text = '<ul>' +
														'<li>Here 0<sup><b>th</b></sup> row is initialised with the values 10 & 20.</li>' +
														'<li>1<sup><b>st</b></sup> row is initialised with the values 30 & 40.</li>' +
														'<li>2<sup><b>nd</b></sup> row is initialised with the values 50 & 60.</li>' +
													'</ul>'
										typing('.secondText', text, function() {
											firstAnimation(1);
										});
									});
								});
							});
						});
					});
					break;
			}
			break;
		case 'row1':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext', "In 2D array this can be representated as a <b>row</b>.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'column1':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext', "This can be representated as a <b>column</b>.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'exampleDiv2':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'secondExample':
				$('.introjs-helperLayer').one('transitionend', function() {
					$("#exampleDiv2").removeClass("opacity00", function() {
						typing('.introjs-tooltiptext', "Now consider another example on <span class='ct-code-b-yellow'>two dimensional array</span>."
							, function() {
							$("#secondExample").removeClass("opacity00", function() {
								$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
								$(".user-btn").click(function() {
									$(".user-btn").remove();
									typing('.introjs-tooltiptext', "Here three rows and two columns are given" +
										" so the memory allocated as follows.", function() {
										$("#smallBox2").removeClass("visibility-hidden");
										$(".second-box-1, .second-box-2, .second-box-3").addClass("animated-border").one('animationend', function() {
											$(".second-box-1, .second-box-2, .second-box-3").off();
											$(".second-box-1").css("border-color", "green");
											$(".second-box-2").css("border-color", "firebrick");
											$(".second-box-3").css("border-color", "royalblue");
											rowsSecondRemoving(1);
										});
									});
								});
							});
						});
					});
				});
				break;
			case 'elementAnimation':
				typing('.introjs-tooltiptext', "The elements a[0][0], a[0][1] of the 0 th row and a[1][0], a[1][1]" +
						"and a[1][2] of the 1 st row are initialised with the values 1,2,3,4,5 and 6 respectively.", function() {
					secondAnimation(1, 1);
				});
				break;
			}
			break;
		case 'exampleDiv3':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
				case 'thirdExample':
					$('.introjs-helperLayer').one('transitionend', function() {	
						$("#exampleDiv3").removeClass("opacity00", function() {
							typing('.introjs-tooltiptext', "Let us consider another example."
								, function() {
								$("#thirdExample").removeClass("opacity00", function() {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
									$(".user-btn").click(function() {
										$(".user-btn").remove();
										typing('.introjs-tooltiptext', "Here three rows and four columns are given" +
											" so the memory allocated as follows.", function() {
											$("#smallBox3").removeClass("visibility-hidden");
											$(".three-box-1, .three-box-2, .three-box-3").addClass("animated-border").one('animationend', function() {
												$(".three-box-1, .three-box-2, .three-box-3").off();
												$(".three-box-1").css("border-color", "green");
												$(".three-box-2").css("border-color", "firebrick");
												$(".three-box-3").css("border-color", "royalblue");
												rowsThirdRemoving(1);
											});
										});
									});
								});
							});
						});
					});
					break;
				case 'tweenmaxAnimate':
					typing('.introjs-tooltiptext', "The values are assigned from left end to a[0][0], a[0][1], a[0][2]," +
							"a[0][3] and a[1][0] according to the order of the storage representation.<span class='text-append'></span>", function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							var text = '<ul>' +
											'<li>0<sup><b>th</b></sup> row is initialised with the values 1,2,3 and 4.</li>' +
											'<li>1<sup><b>st</b></sup> row is initialised with the remaining value 5.</li>' +
										'</ul>'
							typing('.text-append', text, function() {
								thirdAnimation(1);
							});
						});
						/* thirdAnimation(1); */
					});
					break;
				case 'appendingZero':
					typing('.introjs-tooltiptext', "So the remaining regions filled with <span class='ct-code-b-yellow'>zero</span>", function() {
						$(".append-zero").removeClass("opacity00");
						TweenMax.staggerFrom(".append-zero", 1, {opacity:1, top:-95, onComplete: function() {
							$(".introjs-nextbutton").show();
						}});
					});
			}
			break;
		case 'exampleDiv4':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
				case 'fourthExample':
					$('.introjs-helperLayer').one('transitionend', function() {	
						$("#exampleDiv4").removeClass("opacity00", function() {
							typing('.introjs-tooltiptext', "Let us consider another example."
								, function() {
								$("#fourthExample").removeClass("opacity00", function() {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
									$(".user-btn").click(function() {
										$(".user-btn").remove();
										typing('.introjs-tooltiptext', "Here three rows and four columns are given" +
											" so the memory allocated as follows.", function() {
											$("#smallBox4").removeClass("visibility-hidden");
											$(".four-box-1, .four-box-2, .four-box-3").addClass("animated-border").one('animationend', function() {
												$(".four-box-1, .four-box-2, .four-box-3").off();
												$(".four-box-1").css("border-color", "green");
												$(".four-box-2").css("border-color", "firebrick");
												$(".four-box-3").css("border-color", "royalblue");
												rowsFourthRemoving(1);
											});
										});
									});
								});
							});
						});
					});
					break;
				case 'tweenmaxAnimate':
					var text = '<ul>' +
									'<li>The 0<sup><b>th</b></sup> row of elements a[0][0], a[0][1] are initialised with the values 1,2.</li>' +
									'<li>1<sup><b>st</b></sup> row of the elements a[1][0], a[1][1] and a[1][2] are initialised with the '+
										'values 3,4 and 5 respectively.</li>' +
								'</ul>'
					/* "The elements a[0][0], a[0][1] of the 0 th row and a[1][0], a[1][1] " + 
							"and a[1][2] of the 1 st row are initialised with the values 1,2,3,4 and 5 respectively." */
					typing('.introjs-tooltiptext', text, function() {
						fourthAnimation();
					});
					break;
				case 'appendingZero':
					typing('.introjs-tooltiptext', "If the number of values initialised for an array is less than the size mentioned, the " +
							"missing elements are assigned to zero. So the remaining regions filled with " +
							"<span class='ct-code-b-yellow'>zero</span>", function() {
						$(".zero-class").removeClass("opacity00");
						TweenMax.staggerFrom(".zero-class", 1, {opacity:1, top:-95, onComplete: function() {
							$(".introjs-nextbutton").show();
						}});
					});
			}
			break;
		case 'exampleDiv5':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
				case 'fifthExample':
					$('.introjs-helperLayer').one('transitionend', function() {	
						$("#exampleDiv5").removeClass("opacity00", function() {
							typing('.introjs-tooltiptext', "Let us consider another example."
								, function() {
								$("#fifthExample").removeClass("opacity00", function() {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
									$(".user-btn").click(function() {
										$(".user-btn").remove();
										$("#emptyRowArray").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
											typing('.introjs-tooltiptext', "Here zero rows and two columns are given. The initialization makes " + 
													"the array a having 2 rows and 2 columns because the memory depends on the column size." +
													" So the memory allocated as follows.", function() {
												$("#smallBox5").removeClass("visibility-hidden");
												$(".fifth-box-1, .fifth-box-2").addClass("animated-border").one('animationend', function() {
													$(".fifth-box-1, .fifth-box-2").off();
													$(".fifth-box-1").css("border-color", "green");
													$(".fifth-box-2").css("border-color", "firebrick");
													//$(".four-box-3").css("border-color", "royalblue");
													rowsFifthRemoving(1);
												});
											});
										});
									});
								});
							});
						});
					});
					break;
				case 'tweenmaxAnimate':
					typing('.introjs-tooltiptext', "The values in the braces are assigned to the array elements according to the" +
							" order of the storage in the memory.", function() {
						fifthAnimation(1);
					});
					break;
			}
			break;
		case 'sixthExample':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#sixthExample").removeClass("opacity00", function() {
					typing('.introjs-tooltiptext', "Here row and column size is not mentioned. Without column size the memory will not be created. " +
						"So it will gives an <span class='ct-color-red'>error.</span>", function() {
						$("#emptySixRow").effect( "highlight", {color:"red"}, 1000);
						$("#emptySixColumn").effect( "highlight", {color:"red"}, 1000, function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case "restart":
			$(".introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton").hide();
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#restart").fadeTo(1000, 1);
				$("#restart").removeClass("opacity00");
			});
			break;
		}
	});
	introjs.start();
}

function typing(selector, text, callBackFunction) {
	var typingSpeed = 10;
	$(selector).typewriting( text , {
		"typing_interval": typingSpeed,
		"cursor_color": 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		$(".introjs-nextbutton").removeClass("opacity00");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	})
}

function zooming(selector, callBackFunction) {
	$(selector).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}	
	});
}

function rowsFirstRemove(i) {
	$("#rowOneId" + i).removeClass("opacity00", function() {
		if (i < 3) {
			rowsFirstRemove(++i);
		} else {
			firstElementRecursion(1);
		}
	});
}

function firstElementRecursion(i) {
	$("#element" + i).removeClass("opacity00", function() {
		if (i < 6) {
			firstElementRecursion(++i);
		} else {
			$(".introjs-nextbutton").show();
		}
	});
}

function firstAnimation(i) {
	var l3 = $("#input" + i).offset();
	var l4 = $("#value" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$("#value" + i).removeClass("opacity00");
	TweenMax.from("#value" + i, 0.7, {top: topLength, left: leftLength, onComplete: function() {
		if (i < 6 ) {
			firstAnimation(++i);
		} else {
			$(".introjs-nextbutton").show();
		}
	}});
}

function rowsSecondRemoving(i) {
	$("#rowTwoId" + i).removeClass("opacity00", function() {
		if (i < 3) {
			rowsSecondRemoving(++i);
		} else{
			secondElementRecursion(1);
		}
	});
}

function secondElementRecursion(i) {
	$("#elementTwo" + i).removeClass("opacity00", function() {
		if (i < 6) {
			secondElementRecursion(++i);
		} else {
			$("#address2").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#address2").off();
			$(".introjs-nextbutton").show();
			});
		}
	});
}

function secondAnimation(i, j) {
	var l3 = $("#inputTwo" + i).offset();
	var l4 = $("#valueTwo" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	var l5 = $("#inputTwos" + j).offset();
	var l6 = $("#valueTwos" + j).offset();
	var topLen = l5.top - l6.top;
	var leftLen = l5.left-l6.left;
	$("#innerArray" + j).effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$("#valueTwo" + i).removeClass("opacity00");
		$("#valueTwos" + j).removeClass("opacity00");
		TweenMax.from("#valueTwo" + i, 1, {top: topLength, left: leftLength});
		TweenMax.from("#valueTwos" + j, 1, {top: topLen, left: leftLen, onComplete: function() {
			if (i < 3) {
				secondAnimation(++i, ++j);
			} else {
				$(".introjs-nextbutton").show();
			}
		}});
	});
}

function rowsThirdRemoving(i) {
	$("#rowThreeId" + i).removeClass("opacity00", function() {
		if (i < 3) {
			rowsThirdRemoving(++i);
		} else{
			thirdElementRecursion(1);
		}
	});
}

function thirdElementRecursion(i) {
	$("#elementThree" + i).removeClass("opacity00", function() {
		if (i < 12) {
			thirdElementRecursion(++i);
		} else {
			$("#address3").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#address3").off();
			$(".introjs-nextbutton").show();
			});
		}
	});
}

function thirdAnimation(i) {
	var l3 = $("#inputThree" + i).offset();
	var l4 = $("#valueThree" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$("#valueThree" + i).removeClass("opacity00");
	TweenMax.from("#valueThree" + i, 0.7, {top: topLength, left: leftLength, onComplete: function() {
		if (i < 5) {
			thirdAnimation(++i);
		} else {
			$(".introjs-nextbutton").show();
		}
	}});
}

function rowsFourthRemoving(i) {
	$("#rowFourthId" + i).removeClass("opacity00", function() {
		if (i < 3) {
			rowsFourthRemoving(++i);
		} else{
			fourthElementRecursion(1);
		}
	});
}

function fourthElementRecursion(i) {
	$("#elementFourth" + i).removeClass("opacity00", function() {
		if (i < 12) {
			fourthElementRecursion(++i);
		} else {
			$("#address4").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#address4").off();
			$(".introjs-nextbutton").show();
			});
		}
	});
}

/* function fourthAnimation(i) {
	var l3 = $("#inputFourth" + i).offset();
	var l4 = $("#valueFourth" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$("#valueFourth" + i).removeClass("opacity00");
	TweenMax.from("#valueFourth" + i, 0.5, {top: topLength, left: leftLength, onComplete: function() {
		if (i < 5) {
			fourthAnimation(++i);
		} else {
			$(".introjs-nextbutton").show();
		}
	}});
} */

function fourthAnimation() {
	var l3 = $("#inputFourth1").offset();
	var l4 = $("#valueFourth1").offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	var l5 = $("#inputFourths1").offset();
	var l6 = $("#valueFourths1").offset();
	var topLen = l5.top - l6.top;
	var leftLen = l5.left-l6.left;
	$("#arrayBrace1").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$("#valueFourth1").removeClass("opacity00");
		$("#valueFourths1").removeClass("opacity00");
		TweenMax.from("#valueFourth1", 1, {top: topLength, left: leftLength});
		TweenMax.from("#valueFourths1", 1, {top: topLen, left: leftLen, onComplete: function() {
			$("#arrayBrace2").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
				fourthAnimationSecond(3);
			});
		}});
	});
}

function fourthAnimationSecond(i) {
	var l3 = $("#inputFourth" + i).offset();
	var l4 = $("#valueFourth" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	//$("#arrayBrace2").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$("#valueFourth" + i).removeClass("opacity00");
		TweenMax.from("#valueFourth" + i, 0.7, {top: topLength, left: leftLength});//, onComplete: function() {
			if (i < 5) {
				fourthAnimationSecond(++i);
			} else {
				$(".introjs-nextbutton").show();
			}
		//}});
	//});
}

function rowsFifthRemoving(i) {
	$("#rowFifthId" + i).removeClass("opacity00", function() {
		if (i < 2) {
			rowsFifthRemoving(++i);
		} else{
			fifthElementRecursion(1);
		}
	});
}

function fifthElementRecursion(i) {
	$("#elementFifth" + i).removeClass("opacity00", function() {
		if (i < 4) {
			fifthElementRecursion(++i);
		} else {
			$("#address5").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#address5").off();
			$(".introjs-nextbutton").show();
			});
		}
	});
}

function fifthAnimation(i) {
	var l3 = $("#inputFifth" + i).offset();
	var l4 = $("#valueFifth" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$("#valueFifth" + i).removeClass("opacity00");
	TweenMax.from("#valueFifth" + i, 1, {top: topLength, left: leftLength, onComplete: function() {
		if (i < 4) {
			fifthAnimation(++i);
		} else {
			$(".introjs-nextbutton").show();
		}
	}});
}
</script>
</html>