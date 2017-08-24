<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<title>hex to oct</title>
</head>
<style>

.color-brown {
	color: #A0522D;
}

.color-purple {
	color: purple;
}
.z-index9999999 {
	z-index: 9999999;
}

.box,.box3 {
	background-color: #4dff4d;
    width:30px;
	height:30px;
	position:relative;
    display:inline-block;
	box-shadow: 0 0 7px rgba(0, 0, 0, 0.3);
    border-radius: 2px; 
	margin-left: 10px;
	line-height: 32px;
}

.box1 {
    width:20px;
	height:15px;
}

.box4 , .box1 {
    border-radius: 5px;
    width:35px;
	height:20px;
	position:relative;
    display:inline-block;
    border-radius: 2px; 
	margin-left: 10px;
}

.color-lightrose {
	color: #990033;
}

.color-red {
	color: red;
}

.padding0 {
	padding : 0;
}

#totaldiv {
	margin-top: 25px;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0.0;
	border-radius: 10px;
	font-size: 20px;
	position: relative;
	z-index: 9999999;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
}
.row {
	margin-right : 0px !important;
}
#informationdiv {
    border-radius: 0px;
    height:85px;
    margin-top: 20px;
    color: black;
}

#numberconversion {
    border: 1px solid Black;
    margin-top: 10px;
    text-align: left;
}

#numberconversiontitle {
	border: 1px solid Black;
    font-size: 15px;
    text-align: center;
    margin-top: 10px;
}

.font-size-16 {
	font-size: 16px;
}

.index-textbox-size {
	width: 18%;
	height: 30px !important;
	border: 1px solid gold;
	display: inline !important;
	border-radius: 4px;
	padding: 6px 10px;
	text-align: center
}
#calculationTable, #boxDiv {
	border: 1px solid black;
	height: 100px;
	margin-top: 4px;
	border-radius: 6px;
	background-color: #dcdcdc;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3); 
}

#boxDiv {
	height: 220px !important;
}

#tablecal {
	color: green;
	font-size: 14px;
	text-decoration: underline;
	font-weight: bold;
	margin-bottom: 5%;
}

#power {
    bacground-color: blue;
}

.box2 {
   width:30px;
   height:30px;
   position:relative;
   display:inline-block;
   box-shadow: 0 0 9px rgba(0, 0, 0, 0.3);
   border-radius: 2px; 
   margin-left: 10px;
   padding: 7.2px;
   margin-top: 0px;
   background-color: #F0E68C;
}

.ct-code-b-green {
	color: green;
}

.ct-code-b-red {
	color: red;
	position: relative;
}

.ct-code-b-blue {
	color: blue;
}

.ct-code-b-yellow {
	color: yellow;
}

.ct-code-b-black {
	color:	black;
	position: relative;
}

#powervalues {
	background-color: white;
}
.color-lightrose {
	color: #990033;
}

.square-Box {
	border-spacing: 10px 5px;
	border-collapse: separate;
}

.binaryBox, .binaryBox1, .binaryBox2, .binaryBox3 {
	border: 1px solid gray;
	border-radius: 6px;
	height: 24px;
	margin-left: 50px;
	text-align: center;
	width: 30px;
}

.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 1000000 !important;
}

div, span, tr, td {
	position: relative;
}

.font-size {
	font-size: 14px;
}

#finalDiv {
	border: 1px solid grey;
	height: 30px;
	border-radius: 6px;
	font-size : 16px;
	box-shadow: 2px 2px 2px  #888888;
}

.squaring {
	display: inline-block;
	width: 18px;
}

.smallBox {
    border: 2px solid gray;
    padding: 4px;
    text-align: center;
    width: 50px;
}

.ct-green-color {
	color: green;
}

.ct-Maroon-color {
	color: Maroon;
}

.opacity40 {
	opacity: 0.4;
}

.output {
	display:inline-block;
}
.introjs-tooltip {
	min-width: 180px;
}

.marginleft10 {
	margin-left : 10px !important;
}

.margin5 {
	margin-top:5px;
}
</style>

<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Hexadecimal<sub>(<span id="radix16">16</span>)</sub> to Octal<sub>(<span id="radix2">8</span>)</sub> Conversion</span>
</div>

<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-6 col-xs-offset-3'>
	</div>
</div>
<div class="col-xs-12" id="totalbox">
	<table id="numberconversion" class='col-xs-offset-2 col-xs-8 visibility-hidden'>
		<tr>
			<td class="numberconversiontitle"
				style="background-color: #8FBC8F; color: white; border: 1px solid black; text-align: center"><b>Hexadecimal</b></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>0</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>1</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>2</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>3</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>4</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>5</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>6</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>7</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>8</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>9</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>A</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>B</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>C</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>D</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>E</b></span></td>
			<td id="numberconversiontitle"><span class='ct-demo-number'><b>F</b></span></td>
		</tr>
		<tr>
		<td class="numberconversiontitle"
				style="background-color: #8FBC8F; color: white; border: 1px solid black; text-align: center"><b>Binary</b></td>
			<td id="numberconversiontitle" class='color-brown'>0000</td>
			<td id="numberconversiontitle" class='color-brown'>0001</td>
			<td id="numberconversiontitle" class='color-brown'>0010</td>
			<td id="numberconversiontitle" class='color-brown'>0011</td>
			<td id="numberconversiontitle" class='color-brown'>0100</td>
			<td id="numberconversiontitle" class='color-brown'>0101</td>
			<td id="numberconversiontitle" class='color-brown'>0110</td>
			<td id="numberconversiontitle" class='color-brown'>0111</td>
			<td id="numberconversiontitle" class='color-brown'>1000</td>
			<td id="numberconversiontitle" class='color-brown'>1001</td>
			<td id="numberconversiontitle" class='color-brown'>1010</td>
			<td id="numberconversiontitle" class='color-brown'>1011</td>
			<td id="numberconversiontitle" class='color-brown'>1100</td>
			<td id="numberconversiontitle" class='color-brown'>1101</td>
			<td id="numberconversiontitle" class='color-brown'>1110</td>
			<td id="numberconversiontitle" class='color-brown'>1111</td>
		</tr>
	</table>
</div>
<div id="informDiv" class="col-sm-8 col-sm-offset-4 margin5">
	<table id="table" class="opacity00">
		<tr>
			<td class="smallBox" style="background-color: #8FBC8F;"><b>Binary:</b></td>
			<td class="smallBox">000</td>
			<td class="smallBox">001</td>
			<td class="smallBox">010</td>
			<td class="smallBox">011</td>
			<td class="smallBox">100</td>
			<td class="smallBox">101</td>
			<td class="smallBox">110</td>
			<td class="smallBox">111</td>
		</tr>
		<tr>
			<td class="smallBox" style="background-color: #8FBC8F;"><b>Octal:</b></td>
			<td class="smallBox color-brown">0</td>
			<td class="smallBox color-brown">1</td>
			<td class="smallBox color-brown">2</td>
			<td class="smallBox color-brown">3</td>
			<td class="smallBox color-brown">4</td>
			<td class="smallBox color-brown">5</td>
			<td class="smallBox color-brown">6</td>
			<td class="smallBox color-brown">7</td>
		</tr>
	</table>
</div>
<div id="conversiondiv" class="row text-center col-xs-12 padding0">
	<div id="inputDiv" class="col-sm-6 col-sm-offset-3 opacity00" style="margin-top: 5px">
		<span class='font-size-16'><span>Hexadecimal Value</span> <b>:</b></span>&nbsp;&nbsp;&nbsp;<input
			class="index-textbox-size text-center" type="text" name="binaryValue"
			id="octalValue" placeholder="hexadecimal" Maxlength='3'  >&nbsp;&nbsp;&nbsp;
			<button type="button" class="btn btn-success disabled opacity40" id="convert">
			<i class="fa fa-arrow-right"></i> Convert to Octal </button>
	</div>
</div>
		
<div id='calculationTable' class='col-xs-offset-2 col-xs-8 padding0 visibility-hidden'>
	<div  id='octalValuesDiv' class='col-xs-12 opacity00' style='margin-top: 3px;'>
		<span class='col-xs-offset-3 col-xs-3 padding0'  style='font-size: 14px;' id='octalValuesText'><span class='<!-- color-lightrose -->'>Hexadecimal Value</span> <b>:</b></span>
		<span class='col-xs-2 padding0' style='display: block; height: 32px;' id='octalValuesGet'></span>
	</div>
	
	<div id='binaryValuesDiv' class='col-xs-12 opacity00' style='margin-top: 3px;'>
		<span class='col-xs-offset-3 col-xs-3 padding0' style='font-size: 14px;' id='binaryValuesText'><span class='<!-- color-lightrose -->'>Binary Digits</span> <b>:</b></span>
		<span class='col-xs-2 padding0'  id='binaryValuesGet'></span>
	</div>
	
	<div id='combineBinaryNumbers' class='col-xs-12 opacity00'>
		<span style='font-size: 14px;' class='col-xs-offset-3 col-xs-3 padding0'><span >Combine Binary Digits</span> <b>:</b></span>
		<span id='numbersCombine' class='col-xs-2 padding0 opacity00'></span>
	</div>
	
	<div id='binaryResult' class='col-xs-12 opacity00'>
		<span class='col-xs-offset-3 col-xs-3 padding0' style='font-size: 14px;'><span  class='color-lightrose'>Binary Result</span><b>:</b></span>
		<span id='binaryResultValue' class='col-xs-2 append padding0 marginleft10'></span>
	</div>
</div>

 <div id="boxDiv" class="col-xs-offset-2 col-xs-8 opacity00 text-center padding0">
		<div id="binaryDiv" class="col-xs-12">
			<table  class="square-Box" align="center">
				<tr id="givenBox"></tr>
			</table>
		</div>
		<div id="getValues" class="col-xs-12  opacity00">
			<table  class="square-Box" align="center">
				<tr id="numberBox"></tr>
			</table>
		</div>
		<div class="col-xs-12 opacity00 padding0" id="rowDiv">
			<div class="col-xs-3 padding0" id="row0">
				<table  class="square-Box" align="center">
					<tr id="columnDiv0"></tr>
				</table></div>
			<div class="col-xs-3 padding0" id="row3">
				<table  class="square-Box" align="center">
					<tr id="columnDiv3"></tr>
				</table>
			</div>
			<div class="col-xs-3 padding0" id="row6">
				<table  class="square-Box" align="center">
					<tr id="columnDiv6"></tr>
				</table>
			</div>
			<div class="col-xs-3 padding0" id="row9">
				<table  class="square-Box" align="center">
					<tr id="columnDiv9"></tr>
				</table>
			</div>
		</div>
		<div class="col-xs-12 opacity00" id="squareDiv">
			<div class="col-xs-3 " id="square0">
				<table  class="square-Box" align="center">
					<tr id="squareDiv0"></tr>
				</table></div>
			<div class="col-xs-3" id="square3">
				<table  class="square-Box" align="center">
					<tr id="squareDiv3"></tr>
				</table>
			</div>
			<div class="col-xs-3" id="square6">
				<table  class="square-Box" align="center">
					<tr id="squareDiv6"></tr>
				</table>
			</div>
			<div class="col-xs-3" id="square9">
				<table  class="square-Box" align="center">
					<tr id="squareDiv9"></tr>
				</table>
			</div>
		</div>
		<div class="col-xs-12" id="calculationIntroDiv">
			<div class="col-sm-12 opacity00 font-size" id="calculationDiv">
				<div class="col-sm-3" id="calculation0">
					<span id="equalId1"></span>
					<span id="calculationDiv0"></span>
				</div>
				<div class="col-sm-3" id="calculation3">
					<span id="equalId2"></span>
					<span id="calculationDiv3"></span>
				</div>
				<div class="col-sm-3" id="calculation6">
					<span id="equalId3"></span>
					<span id="calculationDiv6"></span>
				</div>
				<div class="col-sm-3" id="calculation9">
					<span id="equalId4"></span>
					<span id="calculationDiv9"></span>
				</div>
			</div>
			<div class="col-sm-12 opacity00 font-size" id="multiplicationDiv">
				<div class="col-sm-3" id="multiply0">
					<span id="equalId5"></span>
					<span id="multiplicationDiv0"></span>
				</div>
				<div class="col-sm-3" id="multiply3">
					<span id="equalId6"></span>
					<span id="multiplicationDiv3"></span>
				</div>
				<div class="col-sm-3" id="multiply6">
				<span id="equalId6"></span>
					<span id="multiplicationDiv6"></span>
				</div>
				<div class="col-sm-3" id="multiply9">
				<span id="equalId8"></span>
					<span id="multiplicationDiv9"></span>
				</div>
			</div>
			<div class="col-sm-12 opacity00 font-size" id="additionDiv">
				<div class="col-sm-3" id="addition0">
					<span id="equalId9"></span>
					<span id="additionDiv0"></span>
				</div>
				<div class="col-sm-3" id="addition3">
					<span id="equalId10"></span>
					<span id="additionDiv3"></span>
				</div>
				<div class="col-sm-3" id="addition6">
					<span id="equalId11"></span>
					<span id="additionDiv6"></span>
				</div>
				<div class="col-sm-3" id="addition9">
					<span id="equalId12"></span>
					<span id="additionDiv9"></span>
				</div>
				
			</div>
			<div class="col-sm-12 opacity00 font-size" id="resultDiv">
				<div class="col-sm-3" id="result0">
					<span id="equalId13"></span>
					<span id="resultDiv0"></span>
				</div>
				<div class="col-sm-3" id="result3">
					<span id="equalId14"></span>
					<span id="resultDiv3"></span>
				</div>
				<div class="col-sm-3" id="result6">
					<span id="equalId15"></span>
					<span id="resultDiv6"></span>
				</div>
				<div class="col-sm-3" id="result9">
					<span id="equalId16"></span>
					<span id="resultDiv9"></span>
				</div>
			</div>
			</div>
	</div>
	<div class="col-sm-offset-2 col-sm-6 opacity00" id="finalDiv">
			<span id="finalResult"></span>
	</div>
</div>

<div class="button col-xs-12 text-center " id="button">
	<button class="btn btn-success glyphicon glyphicon-refresh opacity00" type="button" id='restartBtn' style='margin-top:8px'>Restart</button>
</div>
</body>
<script>
var valuelength;
var numberlength;
var p;
var z = 0;
var input;
var lenOfInput;
$(document).ready(function() {
	intro = introJs();
	$('#restartBtn').click(function() {
		location.reload();
		});
	$("body").keypress(function(e) {
		 if (e.which === 13) {
			 e.preventDefault();
			}
	});
	intro.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		
		steps :	[{
			element :'#informationdiv',
			intro :'',
			position:"right",
			tooltipClass : 'hide',
		},
		{
			element :'#numberconversion',
			intro :'',
			position:"right" 
		},
		{
			element : "#table",
			intro : '',
			position : 'right',
		}, 
		{
			element :'#inputDiv',
			intro :'',
			position:"right" 
		},{
			element :'#octalValuesDiv',
			intro :'',
			position:"right",
			tooltipClass : 'hide'
		},{
			element :'#binaryValuesDiv',
			intro :'',
			position:"right",
			tooltipClass : 'hide'
		},{
			element :'#binaryResult',
			intro :'',
			position:"right",
			tooltipClass : 'hide'
		},{
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#finalDiv",
			intro : '',
			position : 'right',
			tooltipClass : 'hide',
		},
		{
			element :'#restartBtn',
			intro :'',
			position:"right"
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		case "informationdiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			});
		break;
		case "inputDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#inputDiv').removeClass('opacity00');
		  		typing('.introjs-tooltiptext',"Enter an hexadecimal value and click the 'Convert to Octal' button to see how the hexadecimal to Octal conversion is done</span>.<br><span class='color-yellow'>Note:</span> Enter a value of maximum length 3." ,function() { 
					$('#octalValue').focus();  
		  		});
				});
		break; 
		case "octalValuesDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#calculationTable').removeClass('visibility-hidden');
				$('#octalValuesDiv').removeClass('opacity00');
				$('.box').removeClass('opacity00');
				TweenMax.staggerFrom(".box", 0.95, {opacity:0, top: -20}, -0.1, function() {
					$('.introjs-tooltip').removeClass("hide");
					typing('.introjs-tooltiptext',"Consider each hexadecimal digit as a seperate digit." ,function() { 
					$('.introjs-nextbutton').show();	
				  });
				});
			});
		break; 
		case "numberconversion" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberconversion').removeClass('visibility-hidden');
		  		typing('.introjs-tooltiptext',"This shows Hexadecimal to Binary Conversion Chart." ,function() { 
					$('.introjs-nextbutton').show();	
				  	});
				});
		break;
		case 'table':
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#table").removeClass("opacity00");
				typing('.introjs-tooltiptext', "This shows Binary to Octal Conversion Chart.", function() {
					$('.introjs-nextbutton').show();
				});
			});
		break;
		case "binaryValuesDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#binaryValuesDiv').removeClass('opacity00');
				$('.box4').removeClass('opacity00');
				TweenMax.staggerFrom(".box4", 0.5, {opacity:0, top: -20}, -0.1, function() {
					$('.introjs-tooltip').removeClass("hide");
					typing('.introjs-tooltiptext',"<ul><li>Convert each hexadecimal digit to a <span class='color-yellow'>four</span> digit binary number.</li>"+
		  				"<li>Divide the binary digits into <span class='color-yellow'>groups of four</span> (<span class='color-yellow'>starting from right</span>).</li></ul>" ,function() { 
					$('.introjs-nextbutton').show();	
				  });
				});
			});
		break; 
	
		case "binaryResult" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#binaryResult').removeClass('opacity00');
				var l = $("#numbersCombine").offset();
				$("#binaryResultValue").effect('highlight',  {color: "#ff9900"}, 1000);
				$("#binaryResultValue").offset({"top": l.top,"left": l.left});
				TweenMax.to("#binaryResultValue", 0.5, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
					$('.introjs-tooltip').removeClass("hide");
					typing('.introjs-tooltiptext',"The binary equivalent to the decimal number is <span class='color-red'>" +  $('#binaryResultValue').text()  + "<sub class='color-yellow'>(<span>2</span>)</sub></span>." ,function() { 
					$('.introjs-nextbutton').show();
		  		 	});
				  }});
				});
		break;
		case 'boxDiv':
			input = $("#binaryResultValue").text();
			if(intro._currentStep == 7) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#boxDiv").removeClass("opacity00");
					if(input.length <= 3) {
						typing('.introjs-tooltiptext', "The binary value is of length <span class='ct-code-b-yellow'> "
								+ input.length + "</span>.", function() {
						$('.introjs-nextbutton').show();
						});
					} else {
						typing('.introjs-tooltiptext', "The binary value is of length " + 
								"<span class='ct-code-b-yellow'>" + input.length + "</span>.<br>" +
								"First break up the number into groups of three for simple calculation.", function() {
						$('.introjs-nextbutton').show();
						});
					}
				});
			}
			if(intro._currentStep == 8) {
				$('.introjs-nextbutton').hide();
				if(input.length <= 3) {
					typing('.introjs-tooltiptext', "If binary length is not equal to 3 then we add " +
							"<span class='ct-code-b-yellow'>0</span>\'s from left side for simple calculation.", function() {
							$("#getValues").removeClass("opacity00", function() {
								$('.introjs-nextbutton').show();
							});
						});
				} else {
					typing('.introjs-tooltiptext', "If last group of binary length is not equal to 3 then we add " +
							"<span class='ct-code-b-yellow'>0</span>\'s from left side for simple calculation.", function() {
						$("#getValues").removeClass("opacity00", function() {
							$('.introjs-nextbutton').show();
						});
					});
				}
				lenOfInput = input.length;
				console.log("len    "+lenOfInput);
				for(var i = lenOfInput;i>=9;i--) {
					  $('#boxtd'+i).css({'background-color':'#FAEBD7'}); 
					}

					for(var i =8;i>=6;i--) {
					  $('#boxtd'+i).css({'background-color':'#FFE4E1'}); 
					}

					for(var i = 5;i>=3;i--) {
					  $('#boxtd'+i).css({'background-color':'#bee5f4'}); 
					}

					for(var i = 2;i>=0;i--) {
					  $('#boxtd'+i).css({'background-color':'#b3ffb3'}); 
					}
			}
			if(intro._currentStep == 9) {
				$('.introjs-nextbutton').hide();
				if(input.length <= 3) {
					typing('.introjs-tooltiptext', "Now calculation for Octal conversion.", function() {
						$("#rowDiv").removeClass("opacity00");
						$("#row0").removeClass("col-sm-4").addClass('col-sm-12');
						var l1 = $("#numberBox").offset();
						var l2 = $("#columnDiv0").offset();
						var topLen = l1.top - l2.top;
						var leftLen = l1.left - l2.left;
						TweenMax.from("#columnDiv0", 3, {top: topLen, left: leftLen, onComplete: function() {
							$('.introjs-nextbutton').show();
						}}); 
					});
				} 
				else if(input.length > 3 && input.length <= 6) {
					typing('.introjs-tooltiptext', "Now divide the binary values into groups.", function() {
						$("#rowDiv").removeClass("opacity00");
						$("#row0, #row3").removeClass("col-sm-4").addClass('col-sm-6');
						$("#row6").hide();
						$("#calculation6").hide();
						$("#square6").hide();
						animationHalf();
					});
				} else {
					typing('.introjs-tooltiptext', "Now divide the binary values into groups.", function() {
						$("#rowDiv").removeClass("opacity00");
						animation();
					});
				}
			}
			if(intro._currentStep == 10) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext',"Each binary digit is multiplied by an appropriate power of <span class='ct-aqua-color'>2</span> " +
						"based on the position in the number.", function() {
					$("#squareDiv").removeClass("opacity00");
					if(input.length <= 3) {
						$("#squareDiv").removeClass("opacity00");
						$("#square0").removeClass("col-sm-4").addClass('col-sm-12');
					} else if(input.length > 3 && input.length <= 6) {
						$("#squareDiv").removeClass("opacity00");
						$("#square0, #square3").removeClass("col-sm-4").addClass('col-sm-6');
					} else {
						$("#squareDiv").removeClass("opacity00");
					}
					animationSquare();
				});
			}
			if(intro._currentStep == 11) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext', "Calculation of binary to octal conversion.", function() {
					$("#calculationDiv").removeClass("opacity00");
					if(input.length <= 3) {
						$("#calculationDiv").removeClass("opacity00");
						$("#calculation0").removeClass("col-sm-4").addClass('col-sm-12');
					} else if(input.length > 3 && input.length <= 6) {
						$("#calculationDiv").removeClass("opacity00");
						$("#calculation0, #calculation3").removeClass("col-sm-4").addClass('col-sm-6');
					} else {
						$("#boxDiv").css("font-family", "arial");
						$("#calculationDiv").removeClass("opacity00");
					}
				collection($("#numberBox td").length-1, $("#numberBox td").length-2);
				console.log("inputlength: " + $("#numberBox td").length);
				});
			}
			if(intro._currentStep == 12) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext', "Multiply the powers for example:" + 
						"<span class='ct-code-b-yellow'>2<sup>3</sup> = 2x2x2 = 8</span>.", function() {
					if(input.length <= 3) {
						$("#equalId4").removeClass("visibility-hidden");
						$("#multiplicationDiv").removeClass("opacity00");
						$("#multiply0").removeClass("col-sm-4").addClass('col-sm-12');
					} else if(input.length > 3 && input.length <= 6) {
						$("#multiplicationDiv").removeClass("opacity00");
						$("#multiply0, #multiply3").removeClass("col-sm-4").addClass('col-sm-6');
					} else {
						$("#multiplicationDiv").removeClass("opacity00");
					}
					dividing();
				});
			}
			if(intro._currentStep == 13) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext', "By multiplying all the numbers in each brackets.", function() {
					if(input.length <= 3) {
						$("#addition0").removeClass("col-sm-4").addClass('col-sm-12');
						addition(0);
					} else if(input.length > 3 && input.length <= 6) {
						$("#additionDiv").removeClass("opacity00");
						$("#addition0, #addition3").removeClass("col-sm-4").addClass('col-sm-6');
						addition(0);
						addition(3);
					} else {
						$("#additionDiv").removeClass("opacity00");
						addition(0);
						addition(3);
						addition(6);
						addition(9);
					}
				});
			}
			if(intro._currentStep == 14) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext', "By adding together all the decimal number values from right to left.", function() {
					$("#resultDiv").removeClass("opacity00");
					if(input.length <= 3) {
						$("#resultDiv").removeClass("opacity00");
						$("#result0").removeClass("col-sm-4").addClass('col-sm-12');
						resultStep(0);
					} else if(input.length > 3 && input.length <= 6) {
						$("#result0, #result3").removeClass("col-sm-4").addClass('col-sm-6');
						resultStep(0);
						resultStep(3);
					} else {
						$("#resultDiv").removeClass("opacity00");
						resultStep(0);
						resultStep(3);
						resultStep(6);
						resultStep(9);
					}
				});
			}
			if (intro._currentStep == 15) {
				if(input.length <= 3) {
					resultFlip(0);
				} else if(input.length > 3 && input.length <= 6) {
					resultFlip(0);
					resultFlip(3);
				} else {
					resultFlip(0);
					resultFlip(3);
					resultFlip(6);
					resultFlip(9);
				}
				typing(".introjs-tooltiptext", "This is the conversion.", function() {
					$(".introjs-nextbutton").show();
				});
			}
			break;
		case 'finalDiv':
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				input = $("#binaryResultValue").text();
				if (input.length > 6) {
					$("#finalResult").html("Octal representation of the given hexadecimal number <span class='ct-blue-color' style='font-family: monospace'>" 
							+ $("#octalValue").val() + "</span>"+ " is: <span>(" + $("#output0").text() + "" + $("#output3").text() + "" 
								+ $("#output6").text() + "</span>" +  $("#output9").text() + "</span>)" + "<span class='ct-green-color' id='base'><sub>" + 8 + "</sub></span>");
				} else  if(input.length >3 && input.length <= 6){
					$("#finalResult").html("Octal representation of the given hexadecimal number <span class='ct-blue-color' style='font-family: monospace'>"
							+ $("#octalValue").val() + "</span>"+ ''+ " is: <span>(" + $("#output0").text() + "" 
									+ $("#output3").text() + "</span>" +")" + "<span class='ct-green-color'><sub>" + 8 + "</sub></span>");
				} else {
					$("#finalResult").html("Octal representation of the given hexadecimal number <span class='ct-blue-color' style='font-family: monospace'>" 
							+ $("#octalValue").val() + "</span>"+ ''+ " is: <span>(" + $("#output0").text() + "</span>" +")" 
							+ "<span class='ct-green-color'><sub>" + 8 + "</sub></span>");
				}
				$("#finalDiv").removeClass("opacity00");
				setTimeout(function(){
					intro.nextStep();
				}, 2000);
			});
			break;
		case "restartBtn":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#restartBtn").removeClass("opacity00");
				typing('.introjs-tooltiptext', "Click to restart.", function() {
					});
					$('.introjs-nextbutton').hide();
					$('#octalValue').val("");
				});
		break;
		}
	});

intro.start();
$('.introjs-skipbutton').hide();
$('.introjs-prevbutton').hide();
$('.introjs-nextbutton').hide();

text = "<ul><li id='list1'><span class='ct-green-color'>Hexadecimal System</span> also known as <span class='ct-green-color'>hex</span>,"
	+" is a numbering system which uses base-<span class='ct-green-color'>16</span>.</li>"
	+ "<li id='list2'>Only combinations of <span class='ct-Maroon-color'>0</span>, " 
	+"<span class='ct-Maroon-color'>1</span>, " 
	+"<span class='ct-Maroon-color'>2</span>, <span class='ct-Maroon-color'>3</span>, <span class='ct-Maroon-color'>4</span>, " 
	+"<span class='ct-Maroon-color'>5</span>, <span class='ct-Maroon-color'>6</span>, <span class='ct-Maroon-color'>7</span>, " 
	+"<span class='ct-Maroon-color'>8</span>, <span class='ct-Maroon-color'>9</span>, <span class='ct-Maroon-color'>A</span>, " 
	+"<span class='ct-Maroon-color'>B</span>, <span class='ct-Maroon-color'>C</span>, <span class='ct-Maroon-color'>D</span>, " 
	+"<span cla is ss='ct-Maroon-color'>E</span> and <span class='ct-Maroon-color'>F</span> are "
	+"used to represent a value of any magnitude in <span class='ct-green-color'>Hexadecimal System</span>.</li>" 
	+"<li id='list3'>The numbering system which uses base-<span class='ct-green-color'>8</span> " 
	+"is called <span class='ct-Maroon-color'>Octal System</span>.</li>	<li id='list4'>Only combinations of <span class='ct-Maroon-color'>0</span>,<span class='ct-Maroon-color'>1</span>," 
	+"<span class='ct-Maroon-color'>2</span>,<span class='ct-Maroon-color'>3</span>,<span class='ct-Maroon-color'>4</span>," 
	+"<span class='ct-Maroon-color'>5</span>,<span class='ct-Maroon-color'>6</span> and <span class='ct-Maroon-color'>7</span> " 
	+"are used to represent a value of any magnitude in <span class='ct-Maroon-color'>Octal System</span>.</li></ul>"	
	typing('#informationdiv', text, function() {
		$("#informationdiv").addClass('z-index1000000');
		setTimeout(function () {
			intro.nextStep();
		}, 500);
	});	
	
});

$("#octalValue").keydown(function(e) {
	if (e.which == 46 || (e.which >= 48 && e.which <= 57) || e.which == 8 || e.which == 46 || (e.which >= 65 && e.which <= 70)) {
		return true;
	} else {
		e.preventDefault();
		}
	});
	
$("#convert").click(function() {
	if ($('#convert').hasClass('disabled')) {
		return;
	}
	 numberlength = $('#octalValue').val().length;
	 p = numberlength - 1;
	 
	valuelength = $("#octalValue").val();
	
	$('.introjs-nextbutton').click();
	
	for (var i=0; i<valuelength.length; i++) {
		$("#octalValuesGet").append("<span id= octal"+i+ " class='box  opacity00 text-center ct-code-b-black '><span id= octalNumbers"+ i +">"+ valuelength[i] +"</span></span>");
	}
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i],16).toString(2);
		if (finalBinaryVal.length < 4) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "000" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 3) finalBinaryVal = "0" +  finalBinaryVal;
		}
		$("#binaryValuesGet").append("<span id= binary"+i+ " class='box4 opacity00 text-center ct-code-b-black '><span id= binaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
	}
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i],16).toString(2);
		if (finalBinaryVal.length < 4) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "000" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 3) finalBinaryVal = "0" +  finalBinaryVal;
		}
		$("#numbersCombine").append("<span id= combineBinary"+i+ "opacity00 class='text-center ct-code-b-black'><span class='opacity00' id= combineBinaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
	} 
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i],16).toString(2);
		if (finalBinaryVal.length < 4) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "000" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 3) finalBinaryVal = "0" +  finalBinaryVal;
			}
		$("#binaryResultValue").append("<span id= binaryresult"+i+ "class='text-center ct-code-b-black '><span id= BinaryDigitsResult"+ i +">"+ finalBinaryVal +"</span></span>");
	}
	input = $("#binaryResultValue").text();
	for (var i = 0; i < input.length; i++) {
		$("#givenBox").append("<td class='binaryBox' id='box"+ i +"'><span id='text"+ i +"'>" + input[i] + "</span></td>");
	}
	
	lenOfInput = input.length;
	if (lenOfInput % 3 == 2) {
		input = "0" + input;
	} else if(lenOfInput % 3 == 1) {
		input = "00" + input;
	}
	lenOfInput = input.length;
	for (var i = 0; i < input.length; i++) {
		$("#numberBox").append("<td class='binaryBox1' id='boxtd"+ i +"'><span id='text"+ i +"'>" + input[i] + "</span></td>");
	}
	recursion(0);
	});

	$("#octalValue").keyup(function() {
		var yourInput = $(this).val();
		re = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi;
		var isSplChar = re.test(yourInput);
		if(isSplChar)
		{
			var no_spl_char = yourInput.replace(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, '');
			$(this).val(no_spl_char);
		}
		if ($("#octalValue").val().length > 0) {
			$("#convert").removeClass("disabled").removeClass("opacity40");
		} else {
			$("#convert").addClass("disabled").addClass("opacity40");
			}
		 
	});
	
	$('#octalValue').keyup(function() {
        this.value = this.value.toUpperCase();
    });
	
function binary() {
 if (p >= 0 ) {
	var s = $("#binaryDigits" + p).offset();
	$("#combineBinaryDigits" + p).effect('highlight',  {color: "#ff9900"}, 1000);
	$("#combineBinaryDigits" + p).offset({"top": s.top,"left": s.left});
 	TweenMax.to("#combineBinaryDigits" + p, 0.5, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
	  if (p >= 0) {
       p--;
 		binary();
      		}
  		}});
  	}
}
	
function typing(typingId, typingContent, callbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval":10,
		"cursor_color": "blue"
	}, function() {
		$(typingId).removeClass('typingCursor');
		callbackFunction();
	});
}

function recursion(index) {
	var inputSubstring = input.substring(index, index + 3);
	for (var i = index, j = 2; i < index + 3, j >= 0; i++, j--) {
		$("#columnDiv" + index).append("<td class='binaryBox3' id='box"+ i +"'><span id='number"+ i +"'>" + input[i] + "</span></td>");
	}
	for (var i = index, j = 2; i < index + 3, j >= 0; i++, j--) {
		$("#squareDiv" + index).append('<td class="binaryBox2" id="power' + i + '"></td>');
		$("#power" + i).append("<span class='square' id='twoPower" + i + "'>" + '2' + "<sup>" + j + "</sup></span>");
	}
	for (var i = index, j = 2; i < index + 3, j >= 0; i++, j--) {
		if(j > 0) {
			$("#calculationDiv" + index).append('<span class="opacity00" id="openBrace' + i + '">(</span><span class="opacity00" id="value' + i +
					'">' + input[i] + "</span><span class='ct-blue-color opacity00' id='multi" + i +"'>x</span>" + 
					'<span class="opacity00" id="squaring' + i + '">' + "2" + '<sup>' + j + '</sup></span><span>' 
					+ '<span class="opacity00" id="closeBrace' + i + '">)</span>' + "<span class='plus opacity00' id='plus" + i + "'>+</span>");
		} else {
			$("#calculationDiv" + index).append('<span class="opacity00" id="openBrace' + i + '">(</span><span class="opacity00" id="value' + i +
					'">' + input[i] + "</span><span class='ct-blue-color opacity00' id='multi" + i +"'>x</span>" + 
					'<span class="opacity00" id="squaring' + i + '">' + "2" + '<sup>' + j + '</sup></span><span>' +
					'<span class="opacity00" id="closeBrace' + i + '">)</span>');
		}
	}
	for (var i = index, j = 2; i < index + 3, j >= 0; i++, j--) {
		var c = Math.pow(2, j);
		var b = input[i] * c;
		if (i % 3 == 0) {
			sum = 0;
		}
		sum += b;
		if(j > 0) {
			$("#multiplicationDiv" + index).append('(<span id="value' + j +'">' + input[i] + "</span><span class='ct-blue-color'>x</span>" + 
					'<span class="squaring" id="twoSquare' + i + '">' + "2" + '<sup>' + j + '</sup></span>' + ')<span class="plus">+</span>');
			$("#additionDiv" + index).append('(' + b + ')' + "<span class='plus' id='plus'>+</span>");
		} else {
			$("#multiplicationDiv" + index).append('(<span id="value' + j +'">' + input[i] + "</span><span class='ct-blue-color'>x</span>" + 
					'<span class="squaring" id="twoSquare' + i + '">' + "2" + '<sup>' + j + '</sup></span>' + ')');
			$("#additionDiv" + index).append('(' + b + ')');
		}
		if (i % 3 == 2) {
			$("#resultDiv" + index).append('<span class="output" id="output'+ index +'">' + sum + '</span>');	
		}
	}
	lenOfInput = lenOfInput - 3;
	if (lenOfInput >= 3) {
		recursion(index + 3);
	} 
}

function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {css: {top : -1, rotationX : 0}, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}

function flipValue(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {css: {top : -1, rotationX : 0, color : 'green'}, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}

function animation() {
	var l1 = $("#numberBox").offset();
	var l2 = $("#columnDiv0").offset();
	var topLen = l1.top - l2.top;
	var leftLen = l1.left - l2.left;
	TweenMax.from("#columnDiv0", 0.5, {top: topLen, left: leftLen, onComplete: function() {
	}}); 
	var l3 = $("#numberBox td:nth-child(4)").offset();
	var l4 = $("#columnDiv3").offset();
	var top = l3.top - l4.top;
	var left = l3.left - l4.left;
	TweenMax.from("#columnDiv3", 0.5, {top: top, left: left, onComplete: function() {
	}});
	var l5 = $("#numberBox td:nth-child(7)").offset();
	var l6 = $("#columnDiv6").offset();
	var top = l5.top - l6.top;
	var left = l5.left - l6.left;
	TweenMax.from("#columnDiv6", 0.5, {top: top, left: left, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function animationHalf() {
	var l1 = $("#numberBox").offset();
	var l2 = $("#columnDiv0").offset();
	var topLen = l1.top - l2.top;
	var leftLen = l1.left - l2.left;
	TweenMax.from("#columnDiv0", 3, {top: topLen, left: leftLen, onComplete: function() {
	}}); 
	var l3 = $("#numberBox td:nth-child(4)").offset();
	var l4 = $("#columnDiv3").offset();
	var top = l3.top - l4.top;
	var left = l3.left - l4.left;
	TweenMax.from("#columnDiv3", 0.5, {top: top, left: left, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function animationSquare() {
	var l1 = $("#rowDiv").offset();
	var l2 = $("#squareDiv").offset();
	var top = l1.top - l2.top;
	var left = l1.left - l2.left;
	TweenMax.from("#squareDiv", 0.5, {top: top, left: left, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function calculation(index) {
	TweenMax.to("#openBrace" + index, 0.8, {opacity: 1, onComplete: function() {
		var l1 = $("#number" + index).offset();
		var l2 = $("#value" + index).offset();
		var topLen = l1.top - l2.top;
		var leftLen = l1.left-l2.left;
		$("#value" + index).removeClass("opacity00");
		TweenMax.from("#value" + index, 0.5, {top: topLen, left: leftLen, onComplete: function() {
		  	if (index < 2) {
				calculation(++index);
	  		}
		}});
	}});
}

function collection(index, plusIndex) {
	TweenMax.to("#closeBrace" + index, 0.2,{opacity: 1, onComplete: function() {
		var l3 = $("#twoPower" + index).offset();
		var l4 = $("#squaring" + index).offset();
		var topLength = l3.top - l4.top;
	 	var leftLength = l3.left-l4.left;
		$("#squaring" + index).removeClass("opacity00");
		TweenMax.from("#squaring" + index, 0.5, {top: topLength, left: leftLength, onComplete: function() {
    		TweenMax.to("#multi" + index, 0.2, {opacity: 1, onComplete: function() {
    			var l1 = $("#number" + index).offset();
    			var l2 = $("#value" + index).offset();
    			var topLen = l1.top - l2.top;
    			var leftLen = l1.left-l2.left;
    			$("#value" + index).removeClass("opacity00");
    			TweenMax.from("#value" + index, 0.5, {top: topLen, left: leftLen, onComplete: function() {
    				TweenMax.to("#openBrace" + index, 0.2, {opacity: 1, onComplete: function() {
    					TweenMax.to("#plus"+ plusIndex, 0.2,{opacity: 1, onComplete: function() {
							if (index > 0) {
								collection(--index, --plusIndex);
					     	} else {
					     		$('.introjs-nextbutton').show();
					     	}
				     	}});
					}});
				}});
    		}});
		}});
	}});
}

function dividing() {
	$("#multiplicationDiv").removeClass("opacity00");
	squaringFirst(input.length-1, 0);
}

function squaringFirst(index, p) {
	if (index % 3 == 2) {
		p = 0;
	}
	$("#twoSquare" + index).effect( "highlight", 1500);
	flipEffect($("#twoSquare" + index), Math.pow(2, p), function() {
		if (index > 0) {
			squaringFirst(--index, ++p);
		} else {
			$(".squaring").css("width", "auto");
			$('.introjs-nextbutton').show();
		}
	});
}

function addition(index) {
	var l3 = $("#multiplicationDiv" + index).offset();
	var l4 = $("#additionDiv" + index).offset();
	var topLength = l3.top - l4.top;
	$("#multiplicationDiv" + index).effect( "highlight", {color:"#FFD700"}, 2000);
	$("#additionDiv").removeClass("opacity00");
	TweenMax.from("#additionDiv" + index, 2, {top: topLength, onComplete: function() {
		$(".introjs-nextbutton").show();
	}});
}

function resultStep(index) {
	var l3 = $("#additionDiv" + index).offset();
	var l4 = $("#output" + index).offset();
	var topLength = l3.top - l4.top;
 	$("#additionDiv" + index).effect( "highlight", {color:"#FF9900"}, 2000);
 	$("#resultDiv").removeClass("opacity00");
	TweenMax.from("#output" + index, 0.5, {top: topLength, onComplete: function() {
		$(".introjs-nextbutton").show();
	}});
}

function resultFlip(index) {
	$("#output" + index).effect( "highlight", {color:"#FFD700"}, 2000);
	flipValue($("#output" + index));
}

</script>
</html>