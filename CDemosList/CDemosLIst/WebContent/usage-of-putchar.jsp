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

<title>usage of putchar()</title>
</head>

<style>
#infoDiv {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	font-size: 15px;
	padding: 11px 12px;
}

.margin-top-2 {
	margin-top: 2%;
}

#heading {
	margin-top:10px;
}

.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 14px;
	margin-bottom: 14px;
	height: 70px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

.z-index9999999 {
	z-index: 9999999;
}

.input-char {
	width: 30px;
	/* padding: 8px; */
	border-width: 0px 0 0 0;
	background-color: #000;
	color: #0f0;
}

.output-char {
	width: 30px;
	border-width: 0px 0 0 0;
	background-color: #000;
	color: #0f0;
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
.ct-color-red {
	color: red;
}

.ct-Maroon-color {
	color: Maroon;
}

.ct-greenyellow-color {
	color: greenyellow;
}

.ct-color-gold {
	color: gold;
}

.ct-color-spring {
	color: mediumspringgreen;
}

.ct-code-b-teal {
	font-family: message-box;
	color: teal;
}
#restart {
    margin-top: 13%;
}

#animationBox, #addressBox {
	border: 1px;
	border-radius: 4%;
	height: 130px;
}

.panel-heading {
	padding: 2px;
}
.panel-body {
	padding: 18px;	
}

.panel-group {
	margin-top: 29px;
	margin-bottom: 7px;
}

.syntax {
	color: navy;
}

.creamPreTab4 {
	-moz-tab-size: 4;
	background-color: #fffae6;
	border-radius: 8px;
	font-size: 15px;
	margin: 5px;
	padding: 10px;
	white-space: pre;
}

.ui-effects-transfer {
	border: 1px solid green;
	 z-index: 9999999 !important;
}

.introjs-tooltip {
	min-width: 235px;
}

.fa-arrow-right {
	color: green;
	position: relative;
	-webkit-animation: myfirst 1s infinite; /* Chrome, Safari, Opera */
	-webkit-animation-direction: alternate; /* Chrome, Safari, Opera */
	animation: myfirst 1s infinite;
	/* animation-direction:alternate; */
}

div, span {
	position: relative;
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
			<span>Usage of putchar( )</span>
		</h3>
	</div>
	<div class="col-xs-8 col-xs-offset-2 margin-top-2 infoDiv" id="infoDiv">
		<ul>
			<li><span class="ct-code-b-teal">putchar( )</span> is used to print only a single character on console.</li>
			<li><span class="ct-code-b-teal">putchar( )</span> is a standard output library function which 
				is available at <b>stdio.h</b>.</li>
			<li>General format of <span class="syntax"><b>putchar (variable);</b></span></li>
			<li>When a character entered from keyboard the <span class="ct-Maroon-color">getchar( ) </span>function read the character and 
			converted into <span class="ct-green-color">ASCII</span> value and stored in a memory then the <span class="ct-code-b-teal">putchar( )
			</span> function transmits the given character to a standard out put device.</li>
		</ul>
	</div>
	<div class='col-xs-12 margin-top-2'>
		<div class="col-xs-4 col-xs-offset-1">
			<div class="col-xs-9 col-xs-offset-3">
	<pre id="preTableDiv" class="creamPreTab4 opacity00" style="margin-top: 4%">
	<span id="line2">char</span><span id="variable"> c</span>;
	<span id="line3">c = getchar();</span>
	<span id="line4">putchar(<span id="variableId">c</span>);</span>
	</pre>
			</div>
	
		</div>
		<div class="col-xs-3">
			<div class="col-xs-12 " id="animationBox" style="margin-top: 4%">
				<div class="address-box" id="addressBox">
					<div class="col-xs-5 text-center visibility-hidden" id="memoryBox">
						<div class="panel-group" id="panelBox">
							<div class="panel panel-info">
								<div class="panel-heading"><b>c</b></div>
								<div class="panel-body" id="panelBody"></div>
							</div>
			 			</div>
				 		<div>
				 		<span id="addressId">2034</span>
				 		</div>
					</div>
					<div class="col-xs-1">
						<div class="visibility-hidden arrowId" id="arrowId1" style="margin-top: 35px;"><i class="fa fa-arrow-right" 
							aria-hidden="true"></i></div>
						<div class="visibility-hidden arrowId" id="arrowId2" style="margin-top: 15px;"><i class="fa fa-arrow-right" 
							aria-hidden="true"></i></div>
						<div class="visibility-hidden arrowId" id="arrowId3" style="margin-top: 20px;"><i class="fa fa-arrow-right" 
							aria-hidden="true"></i></div>
					</div>
				 	<div class="col-xs-4 col-xs-offset-1">
						<div class="visibility-hidden byteId" id="byteId1" style="margin-top: 29px;"><i>variable</i></div>
						<div class="visibility-hidden byteId" id="byteId2" style="margin-top: 12px;"><i>1 byte</i></div>
						<div class="visibility-hidden byteId" id="byteId3" style="margin-top: 12px;"><i>Address</i></div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-2">
			<div id="consoleId" class="center opacity00"  style="margin-top: 12%">
				<div class="output-console-title-bar">
					<span class="title"><b>Console</b></span>
				</div>
				<div class="output-console-body" id="consoleBodyDiv">
					<span id='inputValue'><input id='inputChar' maxlength='1' class='input-char' tabindex='0'/></span>
					<span id="typingChar"><input id='outputChar' maxlength='0' class='output-char' tabindex='0' contenteditable="false"/></span>
				</div>
			</div>
		</div>
	</div>
	<div class='col-xs-12 margin-top-2'>
		<div class="col-xs-4 col-xs-offset-1">
				<div class="col-xs-9 col-xs-offset-3 margin-top-2">
	<pre id="preDiv" class="creamPreTab4 visibility-hidden" style="margin-top: 8%">

	<span id="line5" class="visibility-hidden">putchar('<span id="constantId">p</span>');</span>
	<span id="line6" class="visibility-hidden">putchar('63');</span>
	<span id="line7" class="visibility-hidden">putchar("AB");</span>
	<span id="line8" class="visibility-hidden">putchar(<span id="asciiId">56</span>);</span>
	</pre>
			</div>
		</div>
		<div class="col-xs-2 col-xs-offset-1">
			<div id="consoleId1" class="center opacity00"  style="margin-top: 22%">
				<div class="output-console-title-bar">
					<span class="title"><b>Console</b></span>
				</div>
				<div class="output-console-body" id="consoleBodyDiv">
					<span id="constantChar"></span>
					<span id="asciiChar"></span>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-1 col-xs-offset-5" id="restartDiv">
		<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
	</div>
</div>

</body>

<script type="text/javascript">
var typingInterval = 10;
var inputVar;
$(document).ready(function() {
	introGuide();
	$("body").keydown(function(e) {
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
});

function introGuide() {
	introjs = introJs();
	$("body").keydown(function(e) {
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
	
	$("#restart").click(function() {
		$("#inputChar").val("");
		location.reload();
	});
	
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
		}, {
			element :'#preTableDiv',
			intro : '',
			position : "right",
		}, {
			element :'#line2',
			intro : '',
			position : "left",
		}, {
			element :'#variable',
			intro : '',
			position : "right",
		}, {
			element :'#addressBox',
			intro : '',
			position : "right",
		}, {
			element :'#line3',
			intro : '',
			position : "right",
		}, {
			element :'#consoleId',
			intro : '',
			position : "right",
		}, {
			element :'#animationBox',
			intro : '',
			position : "right",
		}, {
			element :'#line4',
			intro : '',
			position : "left",
		}, {
			element :'#consoleId',
			intro : '',
			position : "right",
		}, {
			element :'#preDiv',
			intro : '',
			position : "right",
		}, {
			element :'#line5',
			intro : '',
			position : "right",
		}, {
			element :'#consoleId1',
			intro : '',
			position : "right",
		}, {
			element :'#line6',
			intro : '',
			position : "right",
		}, {
			element :'#line7',
			intro : '',
			position : "right",
		}, {
			element :'#line8',
			intro : '',
			position : "right",
		}, {
			element :'#consoleId1',
			intro : '',
			position : "right",
		}, {
			element :"#restart",
			intro : "Click to restart",
			position : 'right',
		}]
	});

	introjs.onafterchange(function(targetElement) {
		$(".introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton").hide();
		var elementId = targetElement.id;
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
		case 'preTableDiv':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#preTableDiv").removeClass("opacity00", function() {
					typing('.introjs-tooltiptext', "Let us consider an example on putchar( ) function.", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'line2':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext', "To declare a variable of type character we use datatype <span class='ct-code-b-yellow'>char</span>.<br>" +
						"<span class='ct-code-b-yellow'>char</span> allocates one byte of memory to the character variable.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'variable':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext', "<span class='ct-code-b-yellow'>c</span> is a character variable used to store " +
						"only one character at a time.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'addressBox':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The variable <span class='ct-code-b-yellow'>c</span> " +
				"occupies <span class='ct-color-lime'>1 byte</span> of memory with address (i.e. location), " +
				"let it address be <span class='ct-code-b-yellow'>2034</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$("#memoryBox").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
						$("#arrowId1, #arrowId2, #arrowId3").removeClass("visibility-hidden", function() {
							$("#byteId1, #byteId3, #byteId2").removeClass("visibility-hidden", function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
			});
			break;
		case 'line3':
			$("#animationBox").css("border", "1px solid green");
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "getchar( ) is library function which reads only <span class='ct-code-b-yellow'>one</span> char at a time from keyboard.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
				
			});
			break;
		case 'animationBox':
			$('.introjs-helperLayer').one('transitionend', function() {
				$(".panel-body").text(inputVar).css({"padding": "8px", "color": "green", "font-weight": "bold"}).addClass("animated zoomIn").
				one('animationend', function() {
					$("#arrowId2").removeClass("visibility-hidden", function() {
						var text = "&#9733; Given input character is <span class='ct-code-b-yellow'><b>" + inputVar + "</b></span>.<br>" +
									"&#9733; <span class='ct-greenyellow-color'>ASCII</span> value of given character is " +
									"<span class='ct-orange-color'><b>" + inputVar.charCodeAt(0) + "</b></span>.<br>" +
									"&#9733; The getchar( ) function read the input character and converted into " +
									"<span class='ct-greenyellow-color'>ASCII</span> value and stored in a memory." +
									"<br>Here : " +
									"<ul><li><span class='ct-code-b-gold'><b>c</b></span> is a character variable.</li>" + 
									"<li><span class='ct-code-b-gold'><b>" + inputVar + "</b></span> is a character and  stored in " +
										"<span class='ct-code-b-yellow'>c</span>.</li>" +
									"<li><span class='ct-code-b-gold'><b>2034</b></span> is the address of the variable " +
									"<span class='ct-code-b-yellow'>c</span>.</li></ul>";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case 'line4':
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing('.introjs-tooltiptext', "putchar( ) is used to write a character on to the standard output (monitor).", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'preDiv':
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#consoleId").addClass("opacity00");
				$("#preDiv").removeClass("visibility-hidden", function() {
					typing('.introjs-tooltiptext', "Let us consider different examples on putchar( ) function.", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'line5':
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#line5").removeClass("visibility-hidden", function() {
					typing('.introjs-tooltiptext', "If a constant specified in a single quotations, then it is displayed on the output device (monitor).", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'line6':
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#line6").removeClass("visibility-hidden", function() {
					typing('.introjs-tooltiptext', "If two characters placed in single quotes then it will gives an " +
							"<span class='ct-color-red'>error</span>. Because putchar( ) function " +
							"writes only a single character at a time.", function() {
						$("#line6").css("color", "red");
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'line7':
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#line7").removeClass("visibility-hidden", function() {
					typing('.introjs-tooltiptext', "If two characters placed in double quotes that will treated as a string but not a character." +
							" So this can be also gives an <span class='ct-color-red'>error</span>.", function() {
								$("#line7").css("color", "red");
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'line8':
			$('.introjs-helperLayer ').one('transitionend', function() {
				/* $("#panelBody").text("8").css("padding", "8px"); */
				$("#line8").removeClass("visibility-hidden", function() {
					typing('.introjs-tooltiptext', "Any integer placed without quotes in putchar( ) that will " +
							"be treated as <span class='ct-color-gold'>ASCII</span> value. " +
							"So the putchar( ) converted the <span class='ct-color-gold'>ASCII</span> value into it's own character.<br>" +
							"Here 56 is the <span class='ct-color-gold'>ASCII</span> value of 8.", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
		case 'consoleId':
			if(introjs._currentStep == 6) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#consoleId").removeClass("opacity00", function() {
						typing('.introjs-tooltiptext', "The console is waiting for a character, when the character has been " +
								"given by the user by using keyboard.<br>"+
								"So enter a character.", function() {
							$("#inputChar").focus();
							checking();
						});
					});
				});
			}
			if(introjs._currentStep == 9) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#typingChar").text(inputVar).addClass("opacity00");
					typing('.introjs-tooltiptext', "putchar( ) displays the character on the console.", function() {
						$("#panelBody").effect("transfer", { to: $("#typingChar")}, 2000).addClass(".ui-effects-transfer", function() {
							$("#typingChar").removeClass("opacity00");
							$(".introjs-nextbutton").show();
						});
					})
				});
			}
			break;
		case 'consoleId1':
			if(introjs._currentStep == 12) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#consoleId1").removeClass("opacity00", function() {
						typing('.introjs-tooltiptext', "Constant value displayed on the console.", function() {
							//$("#constantId").effect( "highlight", {color:"#FFA3A3"}, 5000);
							$("#constantChar").text("p");
							$(".introjs-nextbutton").show();
						});
					});
				});
			}
			if(introjs._currentStep == 16) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing('.introjs-tooltiptext', "The converted character displyed on console.", function() {
						$("#asciiChar").text("8");
						$(".introjs-nextbutton").show();
					});
				});
			}
			break;
		case "restart":
			$(".introjs-tooltip").css("min-width", "-moz-max-content");
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

function checking() {
	$("#inputChar").on("click keyup keydown", function() {
		inputVar = $("#inputChar").val();
		if($("#inputChar").val() == "") {
			$(".introjs-nextbutton").hide();
		} else {
			$(".introjs-nextbutton").show();
		}
	});
}

</script>

</html>