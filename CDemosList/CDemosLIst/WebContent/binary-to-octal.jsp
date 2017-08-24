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
<title>Binary to Octal</title>
</head>

<style>
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

.smallBox {
    border: 2px solid gray;
    padding: 4px;
    text-align: center;
    width: 40px;
}

#boxDiv {
	background-color: seashell;
	border: 1px solid grey;
	/* height: 325px; */
	margin-top: 0.7%;
	margin-left: 20%;
	border-radius: 10px;
	font-family: monospace;
	
}

.square-Box {
	border-spacing: 10px;
	border-collapse: separate;
}

.binaryBox, .binaryBox1, .binaryBox2, .binaryBox3 {
	background-color: lightblue;
	border: 1px solid gray;
	border-radius: 6px;
	height: 30px;
	margin-left: 50px;
	text-align: center;
	width: 30px;
}

#infoDiv {
	/* height: 70px; */
	padding: 9px 7px;
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	margin-left: 19.5%;
	margin-top: 1%;
}

.binaryBox1 {
	background-color: #93f063;
}

.binaryBox3 {
	background-color:#8AE7F6;
}

.plus {
	color: RGB(128,0,0); 
}

.z-index9999999 {
	z-index: 9999999;
}

.binaryBox2 {
	background-color: #E7E99D;
}

.margin-top-1 {
	margin-top:1%;
}

div, span, tr, td {
	position: relative;
}

.font-size {
	font-size: 17px;
}

#finalDiv {
	border: 1px solid grey;
	height: 30px;
	margin-top: 1%;
	border-radius: 6px;
	box-shadow: 2px 2px 2px  #888888;
}

.squaring {
	display: inline-block;
	width: 18px;
}

#restart {
	margin-top: 3%;
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

.ct-aqua-color {
	color: aqua;
}

.output {
	display:inline-block;
}

.introjs-tooltip {
	min-width: 260px;
}

#finalResult {
	font-size: 16px;
	margin-top: 2%;
}

</style>

<body>
<div class="main-div col-sm-12">
	<div class="text-center" id="heading">
		<h3 class='label ct-demo-heading margin-top-1'>
			<span>Binary to Octal<sub>(<span id="radix">8</span>)</sub> conversion</span>
		</h3>
	</div>
	<div id="infoDiv" class="col-sm-7 col-sm-offset-2 margin-top-1" >
		<ul>
			<li id='list1' class='opacity00'>Binary numbers can only be <span class='ct-green-color'>1</span> and <span class='ct-green-color'>0</span>.</li>
			<li id='list2' class='opacity00'>The numbering system which uses base-<span class='ct-green-color'>8</span> 
				is called <span class='ct-Maroon-color'>Octal System</span>.</li>
			<li id='list3' class='opacity00'>Only combinations of <span class='ct-Maroon-color'>0</span>,<span class='ct-Maroon-color'>1</span>, 
				<span class='ct-Maroon-color'>2</span>,<span class='ct-Maroon-color'>3</span>,<span class='ct-Maroon-color'>4</span>, 
				<span class='ct-Maroon-color'>5</span>,<span class='ct-Maroon-color'>6</span> and <span class='ct-Maroon-color'>7</span> 
				are used to represent a value of any magnitude in <span class='ct-Maroon-color'>Octal System</span>.</li>
		</ul>	
	</div>
	<div id="informationDiv" class="col-sm-8 col-sm-offset-4 margin-top-1">
		<table id="table" class="opacity00">
			<tr>
				<td class="smallBox"><b>Binary:</b></td>
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
				<td class="smallBox"><b>Octal:</b></td>
				<td class="smallBox">0</td>
				<td class="smallBox">1</td>
				<td class="smallBox">2</td>
				<td class="smallBox">3</td>
				<td class="smallBox">4</td>
				<td class="smallBox">5</td>
				<td class="smallBox">6</td>
				<td class="smallBox">7</td>
			</tr>
		</table>
	</div>
	<div class="text-center">
		<div id="textDiv" class="col-sm-6 col-sm-offset-3 margin-top-1 opacity00" style="margin-top:1%">
			<span class='font-size-16'>Binary Value:</span>&nbsp;&nbsp;&nbsp;
			<input class="index-textbox-size row text-center" type="text" name="binaryValue"
				id="binaryValue" placeholder="binary Value" MaxLength="8" >&emsp;&emsp;
			<button type="text" class="btn btn-success disabled opacity40" id="convert">
				<i class="fa fa-arrow-right"></i> Convert to Octal 
			</button>
		</div>
	</div>
	<div id="boxDiv" class="col-sm-7 col-sm-offset-2 opacity00 text-center margin-top-1">
		<div id="binaryDiv" class="col-sm-12">
			<table  class="square-Box" align="center">
				<tr id="givenBox"></tr>
			</table>
		</div>
		<div id="getValues" class="col-xs-12 margin-top-1 opacity00">
			<table  class="square-Box" align="center">
				<tr id="numberBox"></tr>
			</table>
		</div>
		<div class="col-sm-12 opacity00" id="rowDiv">
			<div class="col-sm-4" id="row0">
				<table  class="square-Box" align="center">
					<tr id="columnDiv0"></tr>
				</table></div>
			<div class="col-sm-4" id="row3">
				<table  class="square-Box" align="center">
					<tr id="columnDiv3"></tr>
				</table>
			</div>
			<div class="col-sm-4" id="row6">
				<table  class="square-Box" align="center">
					<tr id="columnDiv6"></tr>
				</table>
			</div>
		</div>
		<div class="col-sm-12 opacity00" id="squareDiv">
			<div class="col-sm-4 " id="square0">
				<table  class="square-Box" align="center">
					<tr id="squareDiv0"></tr>
				</table></div>
			<div class="col-sm-4" id="square3">
				<table  class="square-Box" align="center">
					<tr id="squareDiv3"></tr>
				</table>
			</div>
			<div class="col-sm-4" id="square6">
				<table  class="square-Box" align="center">
					<tr id="squareDiv6"></tr>
				</table>
			</div>
		</div>
		<div class="col-xs-12" id="calculationIntroDiv">
			<div class="col-sm-12 opacity00 font-size" id="calculationDiv">
				<div class="col-sm-4" id="calculation0">
					<span id="equalId1"></span>
					<span id="calculationDiv0"></span>
				</div>
				<div class="col-sm-4" id="calculation3">
					<span id="calculationDiv3"></span>
				</div>
				<div class="col-sm-4" id="calculation6">
					<span id="calculationDiv6"></span>
				</div>
			</div>
			<div class="col-sm-12 opacity00 font-size" id="multiplicationDiv">
				<div class="col-sm-4" id="multiply0">
					<span id="equalId4"></span>
					<span id="multiplicationDiv0"></span>
				</div>
				<div class="col-sm-4" id="multiply3">
					<span id="multiplicationDiv3"></span>
				</div>
				<div class="col-sm-4" id="multiply6">
					<span id="multiplicationDiv6"></span>
				</div>
			</div>
			<div class="col-sm-12 opacity00 font-size" id="additionDiv">
				<div class="col-sm-4" id="addition0">
					<span id="equalId7"></span>
					<span id="additionDiv0"></span>
				</div>
				<div class="col-sm-4" id="addition3">
					<span id="additionDiv3"></span>
				</div>
				<div class="col-sm-4" id="addition6">
					<span id="additionDiv6"></span>
				</div>
			</div>
			<div class="col-sm-12 opacity00 font-size" id="resultDiv">
				<div class="col-sm-4" id="result0">
					<span id="equalId10"></span>
					<span id="resultDiv0"></span>
				</div>
				<div class="col-sm-4" id="result3">
					<span id="resultDiv3"></span>
				</div>
				<div class="col-sm-4" id="result6">
					<span id="resultDiv6"></span>
				</div>
			</div>
			</div>
	</div>
	<div class="col-sm-5 col-sm-offset-3 margin-top-1 opacity00" id="finalDiv">
			<span id="finalResult"></span>
		</div>
		<div class="col-sm-5 col-sm-offset-5 " id="restartDiv">
			<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
		</div>
</div>
</body>

<script>

var input;
var lenOfInput;
var sum;
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
			$("#convert").removeClass("disabled").removeClass("opacity40");
		} else {
			$("#convert").addClass("disabled").addClass("opacity40");
		}
	});
	
	$("#restart").click(function() {
		$("#binaryValue").val("");
		location.reload();
	});
	
	$("#convert").click(function() {
		input = $("#binaryValue").val();
		$("body").keydown(function(e) {
			if (e.keyCode == 13) {
				e.preventDefault();
			}
		});
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
			intro : '',
			position : 'right',
		}, {
			element : "#textDiv",
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
			element : "#boxDiv",
			intro : '',
			position : 'right',
		}, {
			element : "#finalDiv",
			intro : '',
			position : 'right',
			tooltipClass : 'hide',
		}, {
			element : "#restart",
			intro : 'Click to restart',
			position : 'right',
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		if (elementId == "finalDiv") {
			var input = $("#binaryValue").val();
			if (input.length > 6) {
				$("#finalResult").html("Octal representation of the given binary number <span class='ct-blue-color' style='font-family: monospace'>" 
						+ $("#binaryValue").val() + "</span>"+ " is: <span>(" + $("#output0").text() + "" + $("#output3").text() + "" 
							+ $("#output6").text() + "</span>" +")" + "<span class='ct-green-color' id='base'><sub>" + 8 + "</sub></span>");
			} else  if(input.length >3 && input.length <= 6){
				$("#finalResult").html("Octal representation of the given binary number <span class='ct-blue-color' style='font-family: monospace'>"
						+ $("#binaryValue").val() + "</span>"+ ''+ " is: <span>(" + $("#output0").text() + "" 
								+ $("#output3").text() + "</span>" +")" + "<span class='ct-green-color'><sub>" + 8 + "</sub></span>");
			} else {
				$("#finalResult").html("Octal representation of the given binary number <span class='ct-blue-color' style='font-family: monospace'>" 
						+ $("#binaryValue").val() + "</span>"+ ''+ " is: <span>(" + $("#output0").text() + "</span>" +")" 
						+ "<span class='ct-green-color'><sub>" + 8 + "</sub></span>");
			}
		}
		switch (elementId) {
		case 'infoDiv':
			$("#infoDiv").css({height: $("#infoDiv").outerHeight()});
			
			setTimeout(function () {
				$("#list1").fadeTo(800, 1, function() {
					$("#list2").fadeTo(800, 1, function() {
						$("#list3").fadeTo(800, 1, function() {
							$("#infoDiv").addClass('z-index9999999');
							setTimeout(function () {
								introjs.nextStep();
							}, 500);
						});
					});
				});
			});
			break;
		case 'table':
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#table").removeClass("opacity00");
				typing('.introjs-tooltiptext', "This shows <span class='ct-code-b-yellow'>Binary</span> to " +
						"<span class='ct-code-b-yellow'>Octal</span> Conversion chart.", function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case 'textDiv':
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#textDiv").removeClass("opacity00");
				var text = '<span id="inputText">Enter a <span class="ct-code-b-yellow">binary value</span> and click the \"Convert to Octal\" button to see how the Binary to Octal' + "" 
				+ ' conversion is done.<br><br><span class="ct-code-b-yellow">Note</span>:&nbsp;Enter a value of maximum length 8.</span>' + ""
				+ '<span id="appendInputText"></span>';
				typing('.introjs-tooltiptext', text, function() {
					$("#binaryValue").attr("disabled", false);
					$("#binaryValue").effect('highlight',{color:'#2F4F4F'}, 1000);
					$("#binaryValue").focus();
				});
				$("#convert").click(function() {
					introjs.nextStep();	
				});
			});
			break;
		case 'boxDiv':
			input = $("#binaryValue").val();
			$("#boxDiv").css({height: $("#boxDiv").outerHeight()});
			if(introjs._currentStep == 3) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#boxDiv").removeClass("opacity00");
					if(input.length <= 3) {
						typing('.introjs-tooltiptext', "The given binary value of length is <span class='ct-code-b-yellow'>"
								+ input.length + "</span>.", function() {
									$('.introjs-nextbutton').show();
						});
					} else {
						typing('.introjs-tooltiptext', "The given binary value of length is " + 
								"<span class='ct-code-b-yellow'>" + input.length + "</span>.<br>" +
								"First break up the number into groups of three for simple calculation.", function() {
							$('.introjs-nextbutton').show();
						});
					}
				});
			}
			if(introjs._currentStep == 4) {
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
							if($("#boxtd0").text() == 0 ) {
								$("#boxtd0").effect( "highlight", {color:"#FFA3A3"}, 5000);
							}
							if($("#boxtd1").text() == 0 ) {
								$("#boxtd1").effect( "highlight", {color:"#FFA3A3"}, 5000);
							}
							$('.introjs-nextbutton').show();
						});
					});
				}
			}
			if(introjs._currentStep == 5) {
				$('.introjs-nextbutton').hide();
				if(input.length <= 3) {
					typing('.introjs-tooltiptext', "Now calculation for <span class='ct-code-b-yellow'>Octal</span> conversion.", function() {
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
			if(introjs._currentStep == 6) {
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
			if(introjs._currentStep == 7) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext', "Calculation of <span class='ct-code-b-yellow'>binary</span> to <span class='ct-code-b-yellow'>octal</span> conversion.", function() {
					$("#calculationDiv").removeClass("opacity00");
					if(input.length <= 3) {
						$("#equalId1").append("=");
						$("#calculationDiv").removeClass("opacity00");
						$("#calculation0").removeClass("col-sm-4").addClass('col-sm-12');
					} else if(input.length > 3 && input.length <= 6) {
						$("#equalId1, #equalId2").append("=");
						$("#calculationDiv").removeClass("opacity00");
						$("#calculation0, #calculation3").removeClass("col-sm-4").addClass('col-sm-6');
					} else {
						$("#boxDiv").css("font-family", "arial");
						$("#equalId1, #equalId2, #equalId3").append("=");
						$("#calculationDiv").removeClass("opacity00");
					}
				collection($("#numberBox td").length-1, $("#numberBox td").length-2);
				console.log("inputlength: " + $("#numberBox td").length);
				});
			}
			if(introjs._currentStep == 8) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext', "Multiply the powers for example:" + 
						"<span class='ct-code-b-yellow'>2<sup>3</sup> = 2x2x2 = 8</span>.", function() {
					if(input.length <= 3) {
						$("#equalId4").append("=");
						$("#equalId4").removeClass("visibility-hidden");
						$("#multiplicationDiv").removeClass("opacity00");
						$("#multiply0").removeClass("col-sm-4").addClass('col-sm-12');
					} else if(input.length > 3 && input.length <= 6) {
						$("#equalId4, #equalId5").append("=");
						$("#multiplicationDiv").removeClass("opacity00");
						$("#multiply0, #multiply3").removeClass("col-sm-4").addClass('col-sm-6');
					} else {
						$("#equalId4, #equalId5, #equalId6").append("=");
						$("#multiplicationDiv").removeClass("opacity00");
					}
					dividing();
				});
			}
			if(introjs._currentStep == 9) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext', "By multiplying all the numbers in each brackets.", function() {
					if(input.length <= 3) {
						$("#equalId7").append("=");
						$("#addition0").removeClass("col-sm-4").addClass('col-sm-12');
						addition(0);
					} else if(input.length > 3 && input.length <= 6) {
						$("#equalId7, #equalId8").append("=");
						$("#additionDiv").removeClass("opacity00");
						$("#addition0, #addition3").removeClass("col-sm-4").addClass('col-sm-6');
						addition(0);
						addition(3);
					} else {
						$("#equalId7, #equalId8, #equalId9").append("=");
						$("#additionDiv").removeClass("opacity00");
						addition(0);
						addition(3);
						addition(6);
					}
				});
			}
			if(introjs._currentStep == 10) {
				$('.introjs-nextbutton').hide();
				typing('.introjs-tooltiptext', "By adding together ALL the decimal number values from right to left.", function() {
					$("#resultDiv").removeClass("opacity00");
					if(input.length <= 3) {
						$("#equalId10").append("=");
						$("#resultDiv").removeClass("opacity00");
						$("#result0").removeClass("col-sm-4").addClass('col-sm-12');
						resultStep(0);
					} else if(input.length > 3 && input.length <= 6) {
						$("#equalId10, #equalId11").append("=");
						$("#result0, #result3").removeClass("col-sm-4").addClass('col-sm-6');
						resultStep(0);
						resultStep(3);
					} else {
						$("#equalId10, #equalId11, #equalId12").append("=");
						$("#resultDiv").removeClass("opacity00");
						resultStep(0);
						resultStep(3);
						resultStep(6);
					}
				});
			}
			if (introjs._currentStep == 11) {
				if(input.length <= 3) {
					resultFlip(0);
				} else if(input.length > 3 && input.length <= 6) {
					resultFlip(0);
					resultFlip(3);
				} else {
					resultFlip(0);
					resultFlip(3);
					resultFlip(6);
				}
				typing(".introjs-tooltiptext", "This is the <span class='ct-code-b-yellow'>Octal</span> represantation.", function() {
					$(".introjs-nextbutton").show();
				});
			}
			break;
		case 'finalDiv':
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#finalDiv").removeClass("opacity00");
				setTimeout(function(){
					introjs.nextStep();
				}, 2000);
			});
			break;
		case "restart":
			$('.introjs-tooltipbuttons').addClass("hide");
			$(".introjs-tooltip").css("min-width", "-moz-max-content");
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
	TweenMax.from("#columnDiv0", 3, {top: topLen, left: leftLen, onComplete: function() {
	}}); 
	var l3 = $("#numberBox td:nth-child(4)").offset();
	var l4 = $("#columnDiv3").offset();
	var top = l3.top - l4.top;
	var left = l3.left - l4.left;
	TweenMax.from("#columnDiv3", 3, {top: top, left: left, onComplete: function() {
	}});
	var l5 = $("#numberBox td:nth-child(7)").offset();
	var l6 = $("#columnDiv6").offset();
	var top = l5.top - l6.top;
	var left = l5.left - l6.left;
	TweenMax.from("#columnDiv6", 3, {top: top, left: left, onComplete: function() {
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
	TweenMax.from("#columnDiv3", 3, {top: top, left: left, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function animationSquare() {
	var l1 = $("#rowDiv").offset();
	var l2 = $("#squareDiv").offset();
	var top = l1.top - l2.top;
	var left = l1.left - l2.left;
	TweenMax.from("#squareDiv", 3, {top: top, left: left, onComplete: function() {
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
	var l1 = $("#calculationDiv").offset();
	var l2 = $("#multiplicationDiv").offset();
	var topLen = l1.top - l2.top;
	var leftLen = l1.left - l2.left;
	$("#multiplicationDiv").removeClass("opacity00");
	TweenMax.from("#multiplicationDiv", 1.5, {top: topLen, onComplete: function() {
		squaringFirst(input.length-1, 0);
	}}); 
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
	TweenMax.from("#output" + index, 2, {top: topLength, onComplete: function() {
		$(".introjs-nextbutton").show();
	}});
}

function resultFlip(index) {
	$("#output" + index).effect( "highlight", {color:"#FFD700"}, 2000);
	flipValue($("#output" + index));
}

</script>

</html>
