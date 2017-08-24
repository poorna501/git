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

<title>usage of getchar()</title>
</head>

<style>

#infoDiv {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	font-size: 15px;
	padding: 9px 14px;
	/* margin-left: 19.5%;
	margin-top: 1%; */
	
}

#introduction {
	background-color: rgb(243, 235, 235);
}

#heading {
	margin-top:10px;
}

#restart {
    margin-top: 13%;
} 

.margin-top-2 {
	margin-top: 2%;
}

#line1 {
	color: maroon;
}

.ct-sgreen-color {
	color: springgreen;
}

.ct-orange-color {
	color: orange;
}

.ct-code-b-gold {
	color: gold;
}

.ct-green-color {
	color: green;
}

.ct-Maroon-color {
	color: Maroon;
}

.ct-greenyellow-color {
	color: greenyellow;
}

.ct-color-spring {
	color: mediumspringgreen;
}

.ct-code-b-teal {
	font-family: message-box;
	color: teal;
}

.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 14px;
	margin-bottom: 14px;
	height: 51px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

.input-char {
	width: 30px;
	border-width: 0px 0 0 0;
	background-color: #000;
	color: #0f0;
}

div, span {
	position: relative;
}

.z-index9999999 {
	z-index: 9999999;
}

.creamPreTab4 {
	-moz-tab-size: 4;
	background-color: #fffae6;
	border-radius: 8px;
	font-size: 14px;
	margin: 5px;
	padding: 10px;
	white-space: pre;
}

.margin-top-4 {
	margin-top: 4%;
}

.panel-heading, .panel-body {
	padding: 5px;
}

.panel-group {
	margin-top: 40px;
	margin-bottom: 7px;
}

.introjs-tooltip {
	min-width: 280px;
}

.syntax {
	color: navy;
}

#animationBox {
	border: 1px solid green;
	border-radius: 4%;
	height: 154px;
}

.fa-arrow-left {
	color: green;
	position: relative;
	-webkit-animation: myfirst 1s infinite; /* Chrome, Safari, Opera */
	-webkit-animation-direction: alternate; /* Chrome, Safari, Opera */
	animation: myfirst 1s infinite;
	/* animation-direction:alternate; */
}

@keyframes blinker {  
  100% { opacity: 0.0; }
}

@keyframes myfirst { 0% {
	left: 0px;
	top: 0px;
}
100%{
	left:10px;
	top:0px;
	}
}


</style>

<body>
<div class="main-div col-xs-12">
	<div class="row text-center" id="heading">
		<h3 class='label ct-demo-heading margin-top-2'>
			<span>Usage of getchar( )</span>
		</h3>
	</div>
	<div class="col-xs-8 col-sm-offset-2 margin-top-2 infoDiv" id="infoDiv">
		<ul>
		 	<li>The function <span class="ct-code-b-teal">getchar( )</span> is used to read a single character from the keyboard.</li> 
		 	<li>Function <span class="ct-code-b-teal">getchar( )</span> is standard input library function available at <b>stdio.h</b>.</li>
		 	<li>General format of <span class="ct-code-b-teal">getchar( )</span> is <span class="syntax"><b>variable=getchar ( );</b></span></li>
		 	<li>This function returns the integer value of the character in the machine’s character code. If the system uses the 
		 		<span class="ct-green-color">ASCII</span> character code, then the <span class="ct-green-color">ASCII</span> value of 
		 		the character is returned. Then the <span class="ct-green-color">ASCII</span> value converted into binary value.</li>
		</ul>
	</div>
	<div class='col-xs-12 margin-top-2'>
	<br>
	<div class="col-xs-offset-3 col-xs-3">
	<pre id="preTableDiv" class="creamPreTab4 opacity00">
	<span id="line2">char</span><span id="line3"> ch</span>;
	<span id="line4">ch = getchar();</span>
	</pre>
	</div>
		<div class="col-sm-2">
			<div id="consoleId" class="center opacity00" style="margin-top: 6%">
				<div class="output-console-title-bar">
					<span class="title"><b>Console</b></span>
				</div>
				<div class="output-console-body" id="consoleBodyDiv">
					<span id="hiddenTypingChar" ><input id='inputChar' maxlength='1' class='input-char' tabindex='0'/></span>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-xs-3 col-sm-offset-4">
		<div class="address-box" id="addressBox">
	  		<div class="col-sm-12 opacity00" id="animationBox" style="margin-top: 7%">
				<div class="col-xs-4 col-sm-offset-1 visibility-hidden" id="bytes">
	     	 		<div class=" byteId" id="byteId1" style="margin-top: 45px;"><i>variable</i></div>
	     	 		<div class=" byteId" id="byteId2" style="margin-top: 11px;"><i>1 byte</i></div>
	     	 		<div class=" byteId" id="byteId3" style="margin-top: 12px;"><i>Address</i></div>
	     	 	</div>
	     	 	<div class="col-xs-1 visibility-hidden" id="arrows">
	     	 		<div class=" arrowId" id="arrowId1" style="margin-top: 50px;"><i class="fa fa-arrow-left" aria-hidden="true"></i></div>
	     	 		<div class=" arrowId" id="arrowId2" style="margin-top: 20px;"><i class="fa fa-arrow-left" aria-hidden="true"></i></div>
	     	 		<div class=" arrowId" id="arrowId3" style="margin-top: 16px;"><i class="fa fa-arrow-left" aria-hidden="true"></i></div>
	     	 	</div>
	     	 	
	     	 	<div class="col-xs-5 text-center visibility-hidden" id="memoryBox">
	  				<div class="panel-group " id="panelBox">
						<div class="panel panel-info">
							<div class="panel-heading"><b>ch</b></div>
							<div class="panel-body"><span class="opacity00">0</span></div>
						</div>
	 				</div>
	 				<div>
	 					<span id="addressId">2034</span>
	 				</div>
	     	 	</div>
			</div>
		</div>
		<div class="col-sm-5 col-sm-offset-4 margin-top-4" id="restartDiv">
			<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
		</div>
	</div>
</div>	


</body>

<script type="text/javascript">

var asciiVal;
var binaryVal;
var typingInterval = 50;
$(document).ready(function() {
	introGuide();
	$("body").keydown(function(e) {
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
	$("#restart").click(function(){
		$("#inputChar").val("");
		location.reload();
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
			element :"#preTableDiv",
			intro : "",
			position : 'right',
		}, {
			element :"#line2",
			intro : "",
			position : 'left',
		}, {
			element :"#line3",
			intro : "",
			position : 'right',
		}, {
			element :"#animationBox",
			intro : "",
			position : 'right',
			animateStep : 'memoryZooming',
		}, {
			element :"#line4",
			intro : "",
			position : 'right',
		}, {
			element :"#consoleId",
			intro : "",
			position : 'right',
			animateStep : 'checking',
		}, {
			element :"#consoleId",
			intro : "",
			position : 'right',
			animateStep : 'animation'
		}, {
			element :"#animationBox",
			intro : "",
			position : 'right',
			animateStep : 'animationPart',
		}, {
			element :"#restart",
			intro : "Click to restart",
			position : 'right',
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		$(".introjs-skipbutton, .introjs-nextbutton, .introjs-prevbutton").hide();
		var elementId = targetElement.id;
		if (elementId == "line5") {
			$("#line5").addClass('z-index9999999');
		}
		switch (elementId) {
		case 'infoDiv':
			$("#infoDiv").removeClass("opacity00");
			$("#infoDiv").css({height: $("#infoDiv").outerHeight()});
			var text = $("#infoDiv").html();
			typing($("#infoDiv"), text, function() {
				$("#infoDiv").addClass('z-index9999999');
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case 'preTableDiv':
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#preTableDiv").removeClass("opacity00");
				typing('.introjs-tooltiptext', "Let us consider an example on getchar( ) function.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'line2':
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing('.introjs-tooltiptext', "To declare a variable of type character we use datatype <span class='ct-code-b-yellow'>char</span>.<br>" +
						"<span class='ct-code-b-yellow'>char</span> allocates one byte of memory to the character variable.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'line3':
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing('.introjs-tooltiptext', "<span class='ct-code-b-yellow'>ch</span> is a character variable used to store " +
						"only one character at a time.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'line4':
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing('.introjs-tooltiptext', "getchar( ) is library function which reads only " +
						"one character at a time from keyboard.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'consoleId':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'checking':
				$("#consoleId").removeClass("opacity00");
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing('.introjs-tooltiptext', "The console is waiting for a character, when the character has been " +
							"given by the user by using keyboard.<br>"+
							"So enter a character.", function() {
						$("#inputChar").focus();
						checking();
					});
				});
				break;
			case 'animation':
				var givenInput = $("#inputChar").val();
				asciiVal = givenInput.charCodeAt(0);
				binaryVal = Number(asciiVal).toString(2);
				convertToBinary(asciiVal);
				
				$("#line5").focus();
				var text = '<ul><li>Given input character is <span id="getvalue" class="ct-code-b-yellow opacity00">'+ ""
					+ $("#inputChar").val() + '</span></li><span id="lines"></span></ul>';
				typing('.introjs-tooltiptext', text, function() {
					animation();
				});
				break;
			}
			break;
		case 'animationBox':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'memoryZooming':
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#animationBox").removeClass("opacity00");
					var text = "The variable <span class='ct-code-b-yellow'>ch</span> " +
					"occupies <span class='ct-color-lime'>1 byte</span> of memory with address (i.e. location), " +
					"let it address be <span class='ct-code-b-yellow'>2034</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$("#memoryBox").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
							$("#arrows").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
								$("#memoryBox, #arrows").removeClass("animated zoomIn");
								$("#bytes").removeClass("visibility-hidden", function() {
									$(".introjs-nextbutton").show();
								});
							});
						});
					});
				});
				break;
			case 'animationPart':
				$('.introjs-helperLayer').one('transitionend', function() {
					$(".panel-body").text($("#inputChar").val()).addClass("opacity00");
					var text = "Here :<br>" +
								"<ul><li><span class='ct-code-b-gold'><b>ch</b></span> is a character variable.</li>" + 
								"<li><span class='ct-code-b-gold'><b>" + $('#inputChar').val() + "</b></span> is a character " +
								"and stored in <span class='ct-code-b-yellow'>ch</span>.</li>" +
								"<li><span class='ct-code-b-gold'><b>2034</b></span> is address of the " +
								"variable <span class='ct-code-b-yellow'>ch</span>.</li></ul>";
					$(".panel-body").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
				break;
			}
			break;
		case "restart":
			$(".introjs-skipbutton, .introjs-nextbutton, .introjs-prevbutton").hide();
			$(".introjs-tooltip").css("min-width", "-moz-max-content");
			$('.introjs-tooltipbuttons').addClass("hide");
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#restart").fadeTo(1000, 1);
				$("#restart").removeClass("opacity00");
			});
			break;
		}
	});
	
	introjs.start();
}

	
function convertToBinary(asciiVal) {
	console.log(asciiVal);
	binaryVal = Number(asciiVal).toString(2);
	console.log("binaryVal = " + binaryVal);
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

function checking() {
	$("#inputChar").on("click keyup keydown", function(){
		if($("#inputChar").val() == "") {
			$(".introjs-nextbutton").hide();
		} else {
			$(".introjs-nextbutton").show();
		}
	});
}

function animation() {
	var l3 = $("#inputChar").offset();
	var l4 = $("#getvalue").offset();
	var topLen = l3.top - l4.top;
	var leftLen = l3.left - l4.left;
	$("#getvalue").removeClass("opacity00");
	TweenMax.from("#getvalue", 2, {top: topLen, left: leftLen, onComplete: function() {
		afterAnimation();
	}});
}

function afterAnimation() {
	var text = "<li>The <span class='ct-greenyellow-color'>ASCII</span> value of the given character " +
				"is <span class='ct-orange-color'><b>"+ asciiVal +"</b></span>.</li>" +
				"<li>Now the <span class='ct-greenyellow-color'>ASCII</span> value converted into binary value is " + 
					"<span class='ct-sgreen-color'><b>" + binaryVal + "</b></span> and it is stored in the variable " +
					"<span class='ct-code-b-yellow'>ch</span>.</li>";
	typing('#lines', text, function() {
		$(".introjs-nextbutton").show();
	});
}
</script>
</html>