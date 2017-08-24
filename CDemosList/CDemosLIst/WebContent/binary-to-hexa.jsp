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
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src='/js/intro.js'></script>
<link rel="stylesheet" href="/css/font-awesome.min.css">
<title>Binary to hexaDecimal</title>
</head>
<style>

.binaryBox {
	background-color: lightblue;
	border: 1px solid gray;
	border-radius: 6px;
	height: 30px;
	margin-left: 50px;
	text-align: center;
	width: 30px;
}

.supBox {
	background-color: #F4A460;
	border: 1px solid gray;
	border-radius: 6px;
	height: 30px;
	text-align: center;
	width: 30px;
}

.squareDivBox {
	background-color: #93F063;
	border: 1px solid gray;
	border-radius: 6px;
	height: 30px;
	text-align: center;
	width: 30px;
}

#infoDiv {
	height: 110px;
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	margin-left: 19.5%;
	margin-top: 1%;
}

.index-textbox-size {
	width: 18%;
	height: 30px !important;
	border: 1px solid gold;
	display: inline !important;
	border-radius: 4px;
	padding: 6px 10px;
	text-align: center;
}

#heading {
	margin-top:10px;
}

.z-index9999999 {
	z-index: 9999999;
}

.ct-green-color {
	color: green;
}
.smallBox {
	border: 1px solid gray;
	width: 500px;
	height: 35px;
	text-align:center;
	padding: 5px;
}

#boxDiv {
	background-color: seashell;
	border: 1px solid grey;
	/* height: 270px; */
	margin-top: 0.7%;
	border-radius: 10px;
	box-shadow: 5px 5px 5px  #888888;
}

ul {
	margin-left: -17px;
	margin-top: 0.7%;
}

#calculation {
	font-size: 18px;
}

#calculationDiv {
	margin-top: 8%;
}

.plus1, .plus2 {
	color: RGB(128,0,0); 
}

#binaryDiv {
	margin-top: 3%;
}

.square-Box {
	border-spacing: 10px;
	border-collapse: separate;
}

.square {
	text-align: center;
}

#calculationPart {
	font-family: monospace;
	font-size: 15px;
	/* margin-top: 2%; */
}

.position-relative {
	position: relative;
}

#finalDiv {
	border: 1px solid grey;
	height: 30px;
	margin-top: 1%;
	border-radius: 6px;
	box-shadow: 2px 2px 2px  #888888;
}

.margin-top-1 {
	margin-top: 1%;
}

#finalResult {
	font-size: 16px;
	margin-top: 2%;
}

#result1, #result2 {
	display: inline-block;
	position: relative;
}

.opacity00 {
	opacity: 0;
	pointer-events: none;
	cursor: default;
}

#restart {
	margin-top: 3%;
} 

div, span, tr, td {
	position: relative;
}

.twoHalf, .firstHalf {
	display: inline-block;
	width: 18px;
}

.ct-Maroon-color {
	color: Maroon;
}

.ct-aqua-color {
	color: aqua;
}

.introjs-tooltip {
	min-width: 210px;
}

</style>

<body>
<div class="main-div col-xs-12">
	<div class="text-center" id="heading">
		<h3 class='label ct-demo-heading margin-top-1'>
			<span>Binary to Hexadecimal<sub>(<span id="radix">16</span>)</sub> conversion</span>
		</h3>
	</div>
	<div class="" id="informationDiv" >
		<div id="infoDiv" class="col-xs-7 col-xs-offset-2 margin-top-1" ></div>
	</div>
	<div id="inputDiv" class="col-xs-8 col-xs-offset-2 margin-top-1 ">
		<table id="table" class="visibility-hidden">
			<tr>
				<td class="smallBox"><b>Binary:</b></td>
				<td class="smallBox">0000</td>
				<td class="smallBox">0001</td>
				<td class="smallBox">0010</td>
				<td class="smallBox">0011</td>
				<td class="smallBox">0100</td>
				<td class="smallBox">0101</td>
				<td class="smallBox">0110</td>
				<td class="smallBox">0111</td>
				<td class="smallBox">1000</td>
				<td class="smallBox">1001</td>
				<td class="smallBox">1010</td>
				<td class="smallBox">1011</td>
				<td class="smallBox">1100</td>
				<td class="smallBox">1101</td>
				<td class="smallBox">1110</td>
				<td class="smallBox">1111</td>
			</tr>
			<tr>
				<td class="smallBox"><b>Hexadecimal:</b></td>
				<td class="smallBox">0</td>
				<td class="smallBox">1</td>
				<td class="smallBox">2</td>
				<td class="smallBox">3</td>
				<td class="smallBox">4</td>
				<td class="smallBox">5</td>
				<td class="smallBox">6</td>
				<td class="smallBox">7</td>
				<td class="smallBox">8</td>
				<td class="smallBox">9</td>
				<td class="smallBox">A</td>
				<td class="smallBox">B</td>
				<td class="smallBox">C</td>
				<td class="smallBox">D</td>
				<td class="smallBox">E</td>
				<td class="smallBox">F</td>
			</tr>
		</table>
	</div>
	<div class="text-center">
		<div id="input" class="col-xs-6 col-xs-offset-3 margin-top-1 visibility-hidden" style="margin-top:1%">
			<span class='font-size-16'>Binary Value:</span>&nbsp;&nbsp;&nbsp;
			<input class="index-textbox-size" type="text" name="binaryValue"
				id="binaryValue" placeholder="binary Value" MaxLength="8" >&emsp;&emsp;
			<button type="text" class="btn btn-success disabled opacity00" id="convert">
				<i class="fa fa-arrow-right"></i> Convert to Hexadecimal 
			</button>
		</div>
	</div>
	<div class="col-xs-12" >
		<div id="boxDiv" class="col-xs-8 col-xs-offset-2 margin-top-1 visibility-hidden">
			<!-- <div id="binaryDiv" class="col-xs-12"></div> -->
			<div id="getValues" class="col-xs-12">
				<table  class="square-Box" id="tableDiv" align="center">
					<tr id="numberBox"></tr>
				</table>
			</div>
			<div id="supPart" class="col-xs-12">
				<div class="col-xs-6">
					<table class="square-Box visibility-hidden" id="tableDiv1" align="center">
						<tr id="numberBox2"></tr>
					</table>
				</div>
				<div class="col-xs-6" id="getDiv">
					<table class="square-Box visibility-hidden" id="tableDiv2" align="center">
						<tr id="numberBox1"></tr>
					</table>
				</div>
			</div>
			<div class="col-xs-12 visibility-hidden" id="squareDiv">
				<div class="col-xs-6">
					<table class="square-Box" id="tableDiv" align="center">
						<tr id="twoPowerDiv1"></tr>
					</table>
				</div>
				<div class="col-xs-6" id="square">
					<table class="square-Box" id="tableDiv" align="center">
						<tr id="twoPowerDiv2"></tr>
					</table>
				</div>
			</div>
			<div class="col-xs-12 text-center" id="calculationPart">
				<div class="col-xs-12">
					<div class="col-xs-6 opacity00" id="multiplyDiv2">
						<span>=</span>
						<span id="multiplySpan"></span>
					</div>
					<div class="col-xs-6 opacity00" id="multiplyDiv1">
					</div>
				</div>
				<div class="col-xs-12">
					<div class="col-xs-6 opacity00" id="multiplicationDiv1">
						<span id='equalSpan1' class="opacity00">=</span>
						<span id="multiDiv1"></span>
					</div>
					<div class="col-xs-6 opacity00" id="multiplicationDiv2">
						<span id='equalSpan2' class='opacity00'>=</span>
						<span id="multiDiv2"></span>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="col-xs-6 opacity00" id="additionDiv1">
						<span id='equalSpan3' class='opacity00'>=</span>
						<span id="addition1"></span>
					</div>
					<div class="col-xs-6 opacity00" id="additionDiv2">
						<span id='equalSpan4' class='opacity00'>=</span>
						<span id="addition2"></span>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="col-xs-6 opacity00" id="total1">
						<span id='equalSpan5' class='opacity00'>=</span>
						<span id="result1"></span>
					</div>
					<div class="col-xs-6 opacity00" id="total2">
						<span id='equalSpan6' class='opacity00'>=</span>
						<span id="result2"></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-6 col-xs-offset-3 text-center margin-top-1 visibility-hidden" id="finalDiv">
		<span id="finalResult"></span>
	</div>
	<div class="col-xs-5 col-xs-offset-5" id="restartDiv">
		<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
	</div>
</div>
</body>

<script type="text/javascript">
var introjs;
var l1,l2;
var sum1 = 0;
var sum2 = 0;
var value1;
var value2;
var x;
var typingInterval = 50;

$(document).ready(function() {
	introGuide();
	if ($("#binaryValue").val().length == 0) {
		 $("#convert").attr("disabled", true);
	}	
	$("#binaryValue").keydown(function(e) {
		if (e.which == 48 || e.which == 49 || e.which == 8 || e.which == 96 || e.which == 97) {
			return true;
		} else {
			e.preventDefault();
		}
	});
	
	$("#binaryValue").keyup(function() {
		$("#convert").attr("disabled", false);
		var yourInput = $(this).val();
		re = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi;
		var isSplChar = re.test(yourInput);
		if(isSplChar) {
			var no_spl_char = yourInput.replace(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, '');
			$(this).val(no_spl_char);
		}
		if ($("#binaryValue").val().length >= 0) {
			$("#convert").removeClass("disabled").removeClass("opacity00");
		} else {
			$("#convert").addClass("disabled").addClass("opacity00");
		}
	});
	$("#restart").click(function(){
		$("#binaryValue").val("");
		location.reload();
	});
	$("#convert").click(function() {
		var input = $("#binaryValue").val();
		$("body").keydown(function(e) {
			if (e.keyCode == 13) {
				e.preventDefault();
			}
		});
		for (var i = 0; i < input.length; i++) {
			$("#numberBox").append("<td class='binaryBox' id='box"+ i +"'><span id='text"+ i +"'>" + input[i] + "</span></td>");
			//$("#box" + i).text(input.charAt(i));
		}
	/* if given input length <= 4 */	
		if (input.length <= 4) {
			var count = 0;
			if (input.length != 4) {
				for (var i = input.length; i < 4; i++) {
					input = "0" + input;
					count++;
				}
			}
			
			for (var i = 0; i < input.length; i++) {
				$("#numberBox1").append("<td class='squareDivBox' id='sup'><span id='a"+ i +"'>" + input[i] + "</span></td>");
			}
			
			for (var i = 0; i < count; i++) {
				$("#numberBox1 td:nth-child(" + (i + 1) + ")").addClass('visibility-hidden zeros');
			}
			
			for (var i = input.length-1, j = 0; i >= 0; i--, j++) {
				$('#twoPowerDiv2').append('<td class="supBox" id="power2' + i + '"></td>');
				$("#power2" + i).append('<span class="square" id="twoPower' + j + '">' + "2" + '<sup>' + i + '</sup></span>');
			}

		// Collection of elements
			for (var i = input.length-1, j = 0; i >= 0; i--, j++) {
				if(i > 0) {
					$("#multiplySpan").append("<span class='openBracket opacity00' id='openBracket" + j + "'>(</span>" +
							"<span class='opacity00' id='valueHalf" + j +"'>" + input[j] + "</span>" +
							"<span class='ct-blue-color opacity00' id='multi" + j + "'>x</span>" + 
							"<span class='opacity00' id='twoSecondHalf" + j + "'>" + "2" + "<sup>" + i + "</sup></span>" +
							"<span class='closedBracket opacity00' id='closedBracket" + j + "'>)</span>" +
							"<span class='opacity00 plus2' id='plus2" + i + "'>+</span>");
					
					$("#multiDiv2").append("<span id='openBracket" + j + "'>(</span><span id='valueHalf" + j +"'>" + input[j] + "</span>" +
							"<span class='ct-blue-color ' id='multi" + j + "'>x</span>" + 
							"<span class='twoHalf' id='twoHalf" + i + "'>" + "2" + "<sup>" + i + "</sup></span>" +
							"<span class='closedBracket' id='closedBracket" + j + "'>)</span>" +
							"<span class=' plus2' id='plus2" + i + "'>+</span>");
				} else {
					$("#multiplySpan").append("<span class='openBracket opacity00' id='openBracket" + j + "'>(</span>" +
							"<span class='opacity00' id='valueHalf" + j +"'>" + input[j] + "</span>" +
							"<span class='ct-blue-color opacity00' id='multi" + j + "'>x</span>" + 
							"<span class='opacity00' id='twoSecondHalf" + j + "'>" + "2" + "<sup>" + i + "</sup></span>" +
							"<span class='closedBracket opacity00' id='closedBracket" + j + "'>)</span>");
					
					$("#multiDiv2").append("<span class='openBracket' id='openBracket" + j + "'>(</span>" +
							"<span id='valueHalf" + j +"'>" + input[j] + "</span><span class='ct-blue-color' id='multi" + j + "'>x</span>" + 
							"<span class='twoHalf' id='twoHalf" + i + "'>" + "2" + "<sup>" + i + "</sup></span>" +
							"<span class='closedBracket' id='closedBracket" + j + "'>)</span>");
				}
			}
		
		// Calculatiion part start here..
			for (var i = input.length-1, j = 0; i >= 0; i--, j++) {
				var c = Math.pow(2, i);
				var b = input[j] * c;
				sum2 += b;
				if(i > 0) {
					$("#addition2").append('(' + b + ')' + "<span class='plus2' id='plus'>+</span>");
				} else {
					$("#addition2").append('(' + b + ')');
				}
			}
			$("#result2").append(sum2);
		}
	
		if (input.length > 4) {
				x = input.substring(input.length-4, input.length);
				input = input.substring(0, input.length-4);
			
			var count = 0;
			if (input.length != 4) {
				for (var i = input.length; i < 4; i++) {
					input = "0" + input;
					count++;
				}
			}
			
			for (var i = 0; i < x.length; i++) {
				$("#numberBox1").append("<td class='squareDivBox' id='sup'><span class='position-relative' id='a"+ i +"'>" + x[i] + "</span></td>");
			}
			for (var i = 0; i < input.length; i++) {
				$("#numberBox2").append("<td class='squareDivBox' id='sup'><span class='position-relative' id='d"+ i +"'>" + input[i] + "</span></td>");
			}
			for (var i = 0; i < count; i++) {
				$("#numberBox2 td:nth-child(" + (i + 1) + ")").addClass('visibility-hidden zeros');
			}
			
			for (var i = x.length-1, j = 0; i >= 0; i--, j++) {
				$('#twoPowerDiv1').append('<td class="supBox" id="power1' + i + '"></td>');
				$("#power1" + i).append('<span class="square" id="twoPower' + j + '">' + "2" + '<sup>' + i + '</sup></span>');
				$('#twoPowerDiv2').append('<td class="supBox" id="power2' + i + '"></td>');
				$("#power2" + i).append('<span class="square" id="twoPowerId' + j + '">' + "2" + '<sup>' + i + '</sup></span>');
			}
		// Collection of elements
			for (var i = x.length-1, j = 0; i >= 0; i--, j++) {
				if(i > 0) {
					$("#multiplyDiv1").append("<span class='openBrace opacity00' id='openBrace" + j + "'>(</span>" +
							"<span class='value opacity00' id='value" + j +"'>" + x[j] + "</span>" +
							"<span class='ct-blue-color opacity00' id='mSymbol" + j + "'>x</span></span>" + 
							"<span class='opacity00' id='twoFirstHalf" + j + "'>" + "2" + "<sup>" + i + "</sup></span>" +
							"<span class='closeBrace opacity00' id='closeBrace" + j + "'>)</span>" +
							"<span class='opacity00 plus1' id='plus1" + i + "'>+</span>");
					
					$("#multiDiv2").append("(" + x[j] + "<span class='ct-blue-color' id='mSymbol" + j + "'>x</span>" + 
							"<span class='firstHalf' id='firstHalf" + i + "'>" + 2 + '<sup>' + i + "</sup></span>" + ")<span class='plus1'>+</span>");
				} else {
					$("#multiplyDiv1").append("<span class='openBrace opacity00' id='openBrace" + j + "'>(</span>" +
							"<span class='value opacity00' id='value" + j +"'>" + x[j] + "</span>" +
							"<span class='ct-blue-color opacity00' id='mSymbol" + j + "'>x</span>" + 
							"<span class='opacity00' id='twoFirstHalf" + j + "'>" + "2" + "<sup>" + i + "</sup></span><span>" +
							"<span class='closeBrace opacity00' id='closeBrace" + j + "'>)</span>");
					
					$("#multiDiv2").append("(" + x[j] + "<span class='ct-blue-color' id='mSymbol" + j + "'>x</span>" + 
							"<span class='firstHalf' id='firstHalf" + i + "'>" + 2 + '<sup>' + i + "</sup></span>" + ")");
				}
			}
		
			for (var i = input.length-1, j = 0; i >= 0; i--, j++) {
				if(i > 0) {
					$("#multiplyDiv2").append("<span class='openBracket opacity00' id='openBracket" + j + "'>(</span>" +
							"<span class='opacity00' id='valueHalf" + j +"'>" + input[j] + "</span>" +
							"<span class='ct-blue-color opacity00' id='multi" + j + "'>x</span>" + 
							"<span class='opacity00' id='twoSecondHalf" + j + "'>" + "2" + "<sup>" + i + "</sup></span>" +
							"<span class='closedBracket opacity00' id='closedBracket" + j + "'>)</span>" +
							"<span class='opacity00 plus2' id='plus2" + i + "'>+</span>");
					
					$("#multiDiv1").append("(" + input[j] + "<span class='ct-blue-color' id='multi" + j + "'>x</span>" + 
							"<span class='twoHalf' id='twoHalf"+ i + "'>" + "2" + "<sup>" + i + "</sup></span>" + ")<span class='plus2'>+</span>");
				} else {
					$("#multiplyDiv2").append("<span class='openBracket opacity00' id='openBracket" + j + "'>(</span>" +
							"<span class='opacity00' id='valueHalf" + j +"'>" + input[j] + "</span>" +
							"<span class='ct-blue-color opacity00' id='multi" + j + "'>x</span>" + 
							"<span class='opacity00' id='twoSecondHalf" + j + "'>" + "2" + "<sup>" + i + "</sup></span>" +
							"<span class='closedBracket opacity00' id='closedBracket" + j + "'>)</span>");
					
					$("#multiDiv1").append("(" + input[j] + "<span class='ct-blue-color' id='multi" + j + "'>x</span>" + 
							"<span class='twoHalf' id='twoHalf"+ i + "'>" + "2" + "<sup>" + i + "</sup></span>" + ")");
				}
			} 
		// Calculatiion part start here..
			for (var i = x.length-1, j = 0; i >= 0; i--, j++) {
				var c = Math.pow(2, i);
				var b = x[j] * c;
				sum2 += b;
				
				if(i > 0) {
					$("#addition2").append('(' + b + ')' + "<span class='plus2' id='plus'>+</span>");
				} else {
					$("#addition2").append('(' + b + ')');
				}
			} 
			$("#result2").append(sum2);
			
			for (var i = input.length-1, j = 0; i >= 0; i--, j++) {
				var c = Math.pow(2, i);
				var b = input[j] * c;
				sum1 += b;
				
				if(i > 0) {
					$("#addition1").append('(' + b + ')' + "<span class='plus1' id='plus'>+</span>");
				} else {
					$("#addition1").append('(' + b + ')');
				}
			}
			$("#result1").append(sum1);
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
			element :"#infoDiv",
			intro : "",
			tooltipClass : 'hide',
		}, {
			element : "#table",
			intro : "",
			position : 'right',
		}, {
			element : "#input",
			intro :"",
			position : 'right',
		}, {
			element :"#boxDiv",
			intro : "",
			position : 'right',
		}, {
			element :"#boxDiv",
			intro : "",
			position : 'right',
		}, {
			element :"#boxDiv",
			intro : "",
			position : 'right',
		}, {
			element :"#boxDiv",
			intro : "",
			position : 'right',
			
		}, {
			element :"#boxDiv",
			intro : "",
			position : 'right',
		
		}, {
			element :"#boxDiv",
			intro : "",
			position : 'right',
		
		}, {
			element :"#boxDiv",
			intro : "",
			position : 'right',
		
		}, {
			element :"#boxDiv",
			intro : "",
			position : 'right',
		
		}, {
			element : "#finalDiv",
			intro : "",
			tooltipClass: 'hide',
		},{
			element : "#restart",
			intro : "Click to restart",
			position : 'right',
		}]
	});

	introjs.onafterchange(function(targetElement) {	
		var elementId = targetElement.id;
		console.log("step : " + introjs._currentStep);
		if (elementId == "infoDiv") {
			$("#infoDiv").html("<ul><li id='list1' class='opacity00'>Binary numbers can only be <span class='ct-green-color'>1</span> and " + 
								"<span class='ct-green-color'>0</span>.</li>" + "" 
					+ "<li id='list2' class='opacity00'>The numbering system which uses base-<span class='ct-green-color'>16</span> " +
							"is called <span class='ct-green-color'>Hexadecimal System</span>.</li>" + ""
					+ "<li id='list3' class='opacity00'>Only combinations of <span class='ct-Maroon-color'>0</span>," +
						"<span class='ct-Maroon-color'>1</span>," +
						"<span class='ct-Maroon-color'>2</span>,<span class='ct-Maroon-color'>3</span>,<span class='ct-Maroon-color'>4</span>," +
						"<span class='ct-Maroon-color'>5</span>,<span class='ct-Maroon-color'>6</span>,<span class='ct-Maroon-color'>7</span>," +
						"<span class='ct-Maroon-color'>8</span>,<span class='ct-Maroon-color'>9</span>,<span class='ct-Maroon-color'>A</span>," +
						"<span class='ct-Maroon-color'>B</span>,<span class='ct-Maroon-color'>C</span>,<span class='ct-Maroon-color'>D</span>," +
						"<span class='ct-Maroon-color'>E</span> and <span class='ct-Maroon-color'>F</span> are " +
							"used to represent a value of any magnitude in <span class='ct-green-color'>Hexadecimal System</span>.</li>" + ""
					+ "<li id='list4' class='opacity00'>In the <span class='ct-green-color'>Hexadecimal System</span> the values " +
						"<span class='ct-green-color'>10</span>," +
						"<span class='ct-green-color'>11</span>,<span class='ct-green-color'>12</span>,<span class='ct-green-color'>13</span>," +
						"<span class='ct-green-color'>14</span> and <span class='ct-green-color'>15</span> are represented as " +
						"<span class='ct-green-color'>A</span>,<span class='ct-green-color'>B</span>,<span class='ct-green-color'>C</span>," +
						"<span class='ct-green-color'>D</span>,<span class='ct-green-color'>E</span> and <span class='ct-green-color'>F</span>." +
						"</li></ul>");
			setTimeout(function () {
				$("#list1").fadeTo(800, 1, function() {
					$("#list2").fadeTo(800, 1, function() {
						$("#list3").fadeTo(800, 1, function() {
							$("#list4").fadeTo(800, 1, function() {
								$("#infoDiv").addClass('z-index9999999');
								setTimeout(function () {
									introjs.nextStep();
								}, 500);
							});
						});
					});
				});
			});
		}
		if (elementId == "input") {
			$("#binaryValue").attr("disabled", false);
			$("#binaryValue").effect('highlight',{color:'yellow'}, 1000);
			$("#binaryValue").focus();
		}
		if (elementId == "finalDiv") {
			if (elementId == "finalDiv") {
				var input = $("#binaryValue").val();
				if (input.length > 4) {
					$("#finalResult").html("Hexadecimal representation of the given number <span class='ct-blue-color' style='font-family: monospace'>" 
							+ $("#binaryValue").val() + "</span> is: " 
							+ "<span>(" + sum1.toString(16).toUpperCase() + "" + sum2.toString(16).toUpperCase() + "</span>" +")" 
							+ "<span class='ct-green-color' id='base'><sub>" + 16 + "</sub></span>");
				} else {
					$("#finalResult").html("Hexadecimal representation of the given number <span class='ct-blue-color' style='font-family: monospace'>" 
							+ $("#binaryValue").val() + "</span> is: " 
							+ "<span>(" + sum2.toString(16).toUpperCase() + "</span>" +")" + "<span class='ct-green-color'><sub>" + 16 + "</sub></span>");
				}
			}
		}
		switch (elementId) {
		case 'table':
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#table").removeClass("visibility-hidden");
				typing('.introjs-tooltiptext', "This shows Binary to Hexadecimal Conversion Chart.", function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case 'input':
			$(".introjs-nextbutton").hide();
			/* if ($("#binaryValue").val() = "") {
				$("#convert").attr("disabled", true);
			} */
			$('.introjs-helperLayer ').one('transitionend', function() {
			$("#input").removeClass("visibility-hidden");
			$("#binaryValue").attr("disabled", true);
			var text = '<span id="inputText">Enter a <span class="ct-code-b-yellow">binary value</span> and click the \"Convert to Hexadecimal\" button to see how the Binary to ' +
			'Hexadecimal conversion is done.<br><br><span class="ct-code-b-yellow">Note</span>:&nbsp;Enter a value of maximum length 8.</span>' + ""
			+ '<span id="appendInputText"></span>';
			typing('.introjs-tooltiptext', text, function(){
						$("#binaryValue").attr("disabled", false);
						$("#binaryValue").effect('highlight',{color:'#2F4F4F'}, 1000);
						$("#binaryValue").focus();
						});
			
			$("#convert").click(function() {
				introjs.nextStep();
			});
			});
			break;
		case 'numberBox':
			$('.introjs-helperLayer ').one('transitionend', function() {
			$(".introjs-nextbutton").show();
			$("#boxDiv").removeClass("visibility-hidden");
			$("#getValues").removeClass("visibility-hidden");
			});
			break;
		case 'boxDiv':
			$(".introjs-nextbutton").hide();
			//$("#boxDiv").css({height: $("#boxDiv").outerHeight()});
			var input = $("#binaryValue").val();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#boxDiv").removeClass("visibility-hidden");
			//	$("#boxDiv").css({height: $("#boxDiv").outerHeight()});
				//$(".introjs-nextbutton").show();
			});
			if (introjs._currentStep == 3) {
				$("#getValues").removeClass("visibility-hidden");
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#input").removeClass("visibility-hidden");
					if (input.length > 4){
						typing('.introjs-tooltiptext', "The given binary value of length is " +
								"<span class='ct-code-b-yellow'>" + input.length + "</span><br>" +
								"first break up the number into groups of four for simple calculation.", function() {
							$(".introjs-nextbutton").show();
						});
					} else {
						typing('.introjs-tooltiptext', "The given binary value of length is " +
								"<span class='ct-code-b-yellow'>" + input.length + "</span>.", function() {
							$(".introjs-nextbutton").show();
						});
					}
				});
			}
			if (introjs._currentStep == 4) {
				$(".introjs-nextbutton").hide();
				$("#tableDiv2").removeClass("visibility-hidden");
				var input = $("#binaryValue").val();
				if (input.length <= 4) {
					$("#getDiv").addClass("col-xs-offset-3");
					var input = $("#binaryValue").val();
					var l3 = $("#numberBox").offset();
					var l4 = $("#numberBox1").offset();
					var topLen = l3.top - l4.top;
					var leftLen = l3.left - l4.left - ($("#numberBox1").width() - $("#numberBox").width());
					TweenMax.from("#numberBox1", 2, {top: topLen, left: leftLen, onComplete: function() {
	            		typing('.introjs-tooltiptext', "If given binary length is not equal to 4 then we add " +
	            				"<span class='ct-code-b-yellow'>0</span>\'s from left side for simple calculation.", function() {
							$("#numberBox1 td").removeClass("visibility-hidden");
							$(".zeros").effect( "highlight", {color:"#FFA3A3"}, 2000);
							$(".introjs-nextbutton").show();
            			});
					}}); 
				}
				else {
					var l1 = $("#numberBox td:nth-child(" + (input.length - 3) + ")").offset();
					var l2 = $("#numberBox1").offset();
					var topLength = l1.top - l2.top;
					var leftLength = l1.left-l2.left;
					TweenMax.from("#numberBox1", 2, {top: topLength, left: leftLength, onComplete: function() {
					}});
					$("#tableDiv1").removeClass("visibility-hidden");
					var l3 = $("#numberBox td:nth-child(" + (input.length - 4) + ")").offset();
					var l4 = $("#numberBox2").offset();
					var topLen = l3.top - l4.top;
					var leftLen = (l3.left + $("#numberBox td:nth-child(" + (input.length - 4) + ")").outerWidth()) - l4.left - $("#numberBox2").width();
					TweenMax.from("#numberBox2", 2, {top: topLen, left: leftLen, onComplete: function() {
						typing('.introjs-tooltiptext',"If last group of length isnot equals to 4 then we add " +
								"<span class='ct-code-b-yellow'>0</span>\'s from left side.", function() {
									$("#numberBox2 td").removeClass("visibility-hidden");
									$(".zeros").effect( "highlight", {color:"#FFA3A3"}, 2000);
									$(".introjs-nextbutton").show();
						});
					}});
				}
			}
			if (introjs._currentStep == 5) {
				$(".introjs-nextbutton").hide();
				var input = $("#binaryValue").val();
				$("#squareDiv").removeClass("visibility-hidden");
				if (input.length <= 4) {
					$("#square").addClass("col-xs-offset-3");
				}
				var l1 = $('#numberBox2').offset();
				var l2 = $('#twoPowerDiv1').offset();
				var topLength = l1.top - l2.top;
				var leftLength = l1.left-l2.left;
				TweenMax.from('#squareDiv', 3, {top: topLength, left: leftLength, onComplete: function() {
					typing('.introjs-tooltiptext',"Each binary digit is multiplied by an appropriate power of <span class='ct-aqua-color'>2</span> "
							+"based on the position in the number.", function() {
						$(".introjs-nextbutton").show();
					});
				}});  
			}
			if (introjs._currentStep == 6) {
				$(".introjs-nextbutton").hide();
				var input = $("#binaryValue").val();
				typing('.introjs-tooltiptext', "Calculation of <span class='ct-code-b-yellow'>binary</span> to " +
						"<span class='ct-code-b-yellow'>hexadecimal</span> conversion.", function() {
					if (input.length <= 4) {
						$("#multiplyDiv1, #multiplicationDiv1, #additionDiv1, #total1").remove();
						$("#multiplyDiv2").addClass("col-xs-6 col-xs-offset-3").removeClass("opacity00", function() {
							lowerCalculation(3);
						});
					} else {
						$("#multiplyDiv1").removeClass("opacity00");
					 	$("#multiplyDiv2").removeClass("opacity00");
						collFirstHalf(3);
					}
				});
			}
			if (introjs._currentStep == 7) {
				var input = $("#binaryValue").val();
				typing('.introjs-tooltiptext', "Multiply the powers for example: <span class='ct-code-b-yellow'>2" +
						"<sup>3</sup> = 2x2x2 = 8</span>.", function() {
					if (input.length <= 4) {
						$("#multiplyDiv1, #multiplicationDiv1, #additionDiv1, #total1").remove();
						$("#equalSpan2").removeClass("opacity00");
					 	$("#multiplicationDiv2").addClass("col-xs-6 col-xs-offset-3").removeClass("opacity00");
					 	$("#equalSpan5").removeClass("opacity00");
					 	resultFirstStep();
					} else {
						var l3 = $("#multiplyDiv1").offset();
						var l4 = $("#multiplicationDiv2").offset();
						var topLength = l3.top - l4.top;
					 	var leftLength = l3.left-l4.left;
					 	var l1 = $("#multiplyDiv2").offset();
						var l2 = $("#multiplicationDiv1").offset();
						var topLen = l1.top - l2.top;
					 	var leftLen = l1.left-l2.left;
						$("#multiplicationDiv2").removeClass("opacity00");
						$("#multiplicationDiv1").removeClass("opacity00");
						$("#equalSpan1").removeClass("opacity00");
						TweenMax.from("#multiplicationDiv2", 2, {top: topLength, left: leftLength, onComplete: function() {
						}});
						TweenMax.from("#multiplicationDiv1", 2, {top: topLen, left: leftLen, onComplete: function() {
							squaringSecond(0);
						}});
					}
				});
			}
			if (introjs._currentStep == 8) {
				if (input.length <= 4) {
					$("#multiplyDiv1, #multiplicationDiv1, #additionDiv1, #total1").remove();
					typing('.introjs-tooltiptext', "By multiplying all the numbers in each brackets.", function() {
						lowInputAddition();
					});
				} else {
					typing('.introjs-tooltiptext', "By multiplying all the numbers in each brackets.", function() {
						addition();
					});
				}
			}
			if (introjs._currentStep == 9) {
				if (input.length <= 4) {
					$("#multiplyDiv1, #multiplicationDiv1, #additionDiv1, #total1").remove();
					typing('.introjs-tooltiptext', "By adding together ALL the decimal number values from right to left.", function() {
					lowInputResultStep();
				//	$("#total2").removeClass("opacity00");
					});
				} else {
					typing('.introjs-tooltiptext', "By adding together ALL the decimal number values from right to left.", function() {
						resultStep();
					});
				}
			}
			if (introjs._currentStep == 10) {
				if(input.length <=4) {
					$("#multiplyDiv1, #multiplicationDiv1, #additionDiv1, #total1").remove();
					$("#result2").effect( "highlight", {color:"#FFD700"}, 2000);
					flipValue($("#result2"), parseInt($("#result2").text()).toString(16).toUpperCase());
					typing(".introjs-tooltiptext", "This is the <span class='ct-code-b-yellow'>hexadecimal</span> represantation.", function() {
						$(".introjs-nextbutton").show();
					});
				} else {
					$("#result1, #result2").effect( "highlight", {color:"#FFD700"}, 2000);
					flipValue($("#result1"), parseInt($("#result1").text()).toString(16).toUpperCase());
					flipValue($("#result2"), parseInt($("#result2").text()).toString(16).toUpperCase());
					typing(".introjs-tooltiptext", "This is the <span class='ct-code-b-yellow'>hexadecimal</span> represantation.", function() {
						$(".introjs-nextbutton").show();
					});
				}
			}
			break;
		case 'finalDiv':
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#finalDiv").removeClass("visibility-hidden");
				setTimeout(function(){
					introjs.nextStep();
				}, 2000);
			});
			break;
		case "restart":
			$('.introjs-tooltipbuttons').addClass("hide");
			$(".introjs-tooltip").css("min-width", "-moz-max-content");
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#restart").fadeTo(1000, 1);
				$("#restart").removeClass("opacity00");
			});
			break;
		}
	});
	introjs.start();
	$(".introjs-skipbutton").hide();
	$(".introjs-nextbutton").hide();
	$(".introjs-prevbutton").hide();
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

function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {css: {top : -1, rotationX : 0,}, onComplete:function() {
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

var p = 1;
function collFirstHalf(index) {
	TweenMax.to("#closeBrace" + index, 0.2,{opacity: 1, onComplete: function() {
		var l3 = $("#twoPowerId" + index).offset();
		var l4 = $("#twoFirstHalf" + index).offset();
		var topLength = l3.top - l4.top;
		var leftLength = l3.left-l4.left;
		$("#twoFirstHalf" + index).removeClass("opacity00");
		TweenMax.from("#twoFirstHalf" + index, 0.5, {top: topLength, left: leftLength, onComplete: function() {
			TweenMax.to("#mSymbol" + index, 0.2, {opacity: 1, onComplete: function() {
				var l1 = $("#a" + index).offset();
				var l2 = $("#value" + index).offset();
				var topLen = l1.top - l2.top;
				var leftLen = l1.left-l2.left;
				$("#value" + index).removeClass("opacity00");
				TweenMax.from("#value" + index, 0.5, {top: topLen, left: leftLen, onComplete: function() {
					TweenMax.to("#openBrace" + index, 0.2, {opacity: 1, onComplete: function() {
						TweenMax.to("#plus1"+ p, 0.2,{opacity: 1, onComplete: function() {
							p++;
							if (index > 0) {
					 			collFirstHalf(--index);
					     	} else {
				     			collSecondHalf(3);
					     	}
						}});
					}});
				}});
			}});
		}});
	}});
}

var s = 1;
function collSecondHalf(index) {
	TweenMax.to("#closedBracket" + index, 0.2,{opacity: 1, onComplete: function() {
		var l3 = $("#twoPower" + index).offset();
		var l4 = $("#twoSecondHalf" + index).offset();
		var topLength = l3.top - l4.top;
	 	var leftLength = l3.left-l4.left;
		$("#twoSecondHalf" + index).removeClass("opacity00");
		TweenMax.from("#twoSecondHalf" + index, 0.5, {top: topLength, left: leftLength, onComplete: function() {
			TweenMax.to("#multi" + index, 0.2, {opacity: 1, onComplete: function() {
				var l1 = $("#d" + index).offset();
				var l2 = $("#valueHalf" + index).offset();
				var topLen = l1.top - l2.top;
				var leftLen = l1.left-l2.left;
				$("#valueHalf" + index).removeClass("opacity00");
				TweenMax.from("#valueHalf" + index, 0.5, {top: topLen, left: leftLen, onComplete: function() {
					TweenMax.to("#openBracket" + index, 0.2, {opacity: 1, onComplete: function() {
						TweenMax.to("#plus2" + s, 0.2,{opacity: 1, onComplete: function() {
							s++;
							if (index > 0) {
								collSecondHalf(--index);
					     	} else {
					     		$(".introjs-nextbutton").show();
					     	}
						}});
					}});
				}});
			}});
		}});
	}});
}

var z = 1;
function lowerCalculation(index) {
	TweenMax.to("#closedBracket" + index, 0.2,{opacity: 1, onComplete: function() {
		var l3 = $("#twoPower" + index).offset();
		var l4 = $("#twoSecondHalf" + index).offset();
		var topLength = l3.top - l4.top;
		var leftLength = l3.left-l4.left;
		$("#twoSecondHalf" + index).removeClass("opacity00");
		TweenMax.from("#twoSecondHalf" + index, 0.5, {top: topLength, left: leftLength, onComplete: function() {
			TweenMax.to("#multi" + index, 0.2, {opacity: 1, onComplete: function() {
				var l1 = $("#a" + index).offset();
				var l2 = $("#valueHalf" + index).offset();
				var topLen = l1.top - l2.top;
				var leftLen = l1.left-l2.left;
				$("#valueHalf" + index).removeClass("opacity00");
				TweenMax.from("#valueHalf" + index, 0.5, {top: topLen, left: leftLen, onComplete: function() {
					TweenMax.to("#openBracket" + index, 0.2, {opacity: 1, onComplete: function() {
						TweenMax.to("#plus2"+ z, 0.2,{opacity: 1, onComplete: function() {
							z++;
							if (index > 0) {
								lowerCalculation(--index);
					     	} else {
					     		$(".introjs-nextbutton").show();
					     		$(".twoHalf").css("width", "auto");
								halfCalculation();
					     	}
				     	}});
					}});
				}});
    		}});
		}});
	}});
}

function squaringFirst(index) {
	$("#twoHalf" + index).effect( "highlight", {color:"skyblue"}, 1000);
	flipEffect($("#twoHalf" + index), Math.pow(2, index), function() {
		if (index < 3) {
		squaringFirst(++index);
		} else {
			$(".twoHalf").css("width", "auto");
			$(".firstHalf").css("width", "auto");
			$(".introjs-nextbutton").show();
		}
	});
}

function squaringSecond(index) {
	$("#firstHalf" + index).effect( "highlight", {color:"skyblue"}, 1000);
	flipEffect($("#firstHalf" + index), Math.pow(2, index), function() {
		if (index < 3) {
			squaringSecond(++index);
		} else {
			squaringFirst(0);
		}
	});
}

function resultFirstStep() {
	var l3 = $("#multiplySpan").offset();
	var l4 = $("#multiDiv2").offset();
	var topLength = l3.top - l4.top;
 	$("#multiplySpan").effect( "highlight", {color:"#FF9900"}, 2000);
	TweenMax.from("#multiDiv2", 2, {top: topLength, onComplete: function() {
		squaringLowPart(0);
	}});
}

function squaringLowPart(index) {
	$("#twoHalf" + index).effect( "highlight", {color:"skyblue"}, 1000);
	flipEffect($("#twoHalf" + index), Math.pow(2, index), function() {
		if (index < 3) {
			squaringLowPart(++index);
		} else {
		//	$(".twoHalf").css("width", "auto");
			$(".introjs-nextbutton").show();
			//halfCalculation();
		}
	});
}

function lowInputResultStep() {
	var l1 = $("#additionDiv2").offset();
	var l2 = $("#total2").offset();
	var topLen = l1.top - l2.top;
	var leftLen = l1.left-l2.left;
	$("#addition2").effect( "highlight", {color:"#FF9900"}, 2000);
	$("#total2").removeClass("opacity00");
	$("#equalSpan6").removeClass("opacity00");
	TweenMax.from("#total2", 2, {top: topLen, left: leftLen, onComplete: function() {
		$(".introjs-nextbutton").show();
	}});
}

function resultStep() {
	var l3 = $("#additionDiv1").offset();
	var l4 = $("#total1").offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	var l1 = $("#additionDiv2").offset();
	var l2 = $("#total2").offset();
	var topLen = l1.top - l2.top;
	var leftLen = l1.left-l2.left;
	$("#addition1, #addition2").effect( "highlight", {color:"#FF9900"}, 2000);
	$("#total1").removeClass("opacity00");
	$("#total2").removeClass("opacity00");
	$("#equalSpan5").removeClass("opacity00");
	TweenMax.from("#total1", 2, {top: topLength, left: leftLength, onComplete: function() {
	}});
	TweenMax.from("#total2", 2, {top: topLen, left: leftLen, onComplete: function() {
		$(".introjs-nextbutton").show();
	}});
}

function lowInputAddition() {
	var l1 = $("#multiplicationDiv2").offset();
	var l2 = $("#additionDiv2").offset();
	var topLen = l1.top - l2.top;
	var leftLen = l1.left-l2.left;
	$("#additionDiv2").removeClass("opacity00");
	$("#equalSpan4").removeClass("opacity00");
	TweenMax.from("#additionDiv2", 2, {top: topLen, left: leftLen, onComplete: function() {
		$("#additionDiv2").removeAttr("style");
		$(".introjs-nextbutton").show();
	}});
}

function addition() {
	var l3 = $("#multiplicationDiv1").offset();
	var l4 = $("#additionDiv1").offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	var l1 = $("#multiplicationDiv2").offset();
	var l2 = $("#additionDiv2").offset();
	var topLen = l1.top - l2.top;
	var leftLen = l1.left-l2.left;
	$("#multiDiv1, #multiDiv2").effect( "highlight", {color:"#FFD700"}, 2000);
	$("#additionDiv1").removeClass("opacity00");
	$("#additionDiv2").removeClass("opacity00");
	$("#equalSpan3").removeClass("opacity00");
	TweenMax.from("#additionDiv1", 2, {top: topLength, left: leftLength, onComplete: function() {
		$("#additionDiv1").removeAttr("style");
	}});
	TweenMax.from("#additionDiv2", 2, {top: topLen, left: leftLen, onComplete: function() {
		$("#additionDiv2").removeAttr("style");
		$(".introjs-nextbutton").show();
	}});
}

function halfCalculation() {
	$("#multiplyDiv1, #multiplicationDiv1, #additionDiv1, #total1").removeClass("col-xs-6").remove();
	$("#additionDiv2").removeClass("col-xs-6").addClass("col-xs-6 col-xs-offset-3");
	$("#total2").removeClass("col-xs-6").addClass("col-xs-6 col-xs-offset-3");
	$(".introjs-nextbutton").show();
}

</script>
</html>