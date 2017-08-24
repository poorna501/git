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

<title>Insert title here</title>

<style>

.info-div {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	font-size: 15px;
	padding: 11px 12px;
}

.border {
	border: 1px solid;
	border-radius: 8px;
	padding: 8px;
}

.margin-top-1 {
	margin-top: 1%;
}

.margin-top-2 {
	margin-top: 2%;
}

.margin-top-5 {
	margin-top: 5%;
}

.introjs-tooltip {
	min-width: 280px;
}

.creamPreTab4 {
	-moz-tab-size: 4;
	background-color: #fffae6;
	border-radius: 8px;
	font-size: 13px;
	margin: 5px;
	padding: 10px;
	white-space: pre;
}

.memory-box {
	height: 22px;
	border: 1px solid;
	text-align: center;	
}

.Vertical-text-center  {
	height: 62px;
	line-height: 62px;
	text-align: right; 
}

.Vertical-variable-text-center  {
	height: 62px;
	line-height: 74px;
	text-align: right; 
}

.small-box {
	border: 1px solid gray;
	padding: 1px;
	text-align: center;
	width: 55px;
	visibility: ;
}

.address-box, .element-box {
	padding: 4px;
	text-align: center;
	width: 55px;
	font-size: 13px;
}

.element-box {
	color: lightslategrey;
}

.ct-color-maroon {
	color: maroon;
}

.ct-color-springgreen {
	color: springgreen;
}

.syntax-class {
	font-size: 16px;
	color: seagreen;
	font-family: fantasy;
	background-color: wheat;
}

.z-index9999999 {
	z-index: 9999999;
	background-color: white;
}

.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 10px;
	margin-bottom: 14px;
	height: 50px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

.svg-css {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.svg-line {
	display: none;
	marker-end: url("#arrowEnd");
	position: relative;
	stroke: gray;
	stroke-width: 2; 
}

.svg-line-array {
	display: none;
	marker-end: url("#arrowEnd");
	position: relative;
	stroke: gray;
	stroke-width: 2;
}

.user-btn {
	background-color: green;
}

.ct-color-lime {
	color: lime;
}

.css-circle {
	border-radius: 9px;
	border : 1px solid;
	background-color: white;
	padding: 2px;
	z-index: 9999999;
	background-color: white;
}
.blinking {
	animation-name: blink;
	animation-duration: 1s;
	animation-iteration-count: 2;
}

@keyframes blink {
	50% {
		background:  turquoise;
	}
}

div, span {
	position: relative;
}

</style>

</head>
<body>

<div class="main-div col-xs-12">
	<div class="text-center margin-top-1">
		<h3 class='label ct-demo-heading' id="heading">
			<span>Usage of malloc( )</span>
		</h3>
	</div>
	<div class="col-xs-8 col-xs-offset-2 margin-top-2 info-div" id="infoDiv">
		<ul>
			<li>The <span class='ct-color-maroon'>malloc( )</span> function is used for memory allocation at the time of execution.</li>
			<li>The general format of <span class='ct-color-maroon'>malloc( )</span> is <span class="syntax-class">(Void *) malloc (number of bytes);</span></li>
		</ul>
	</div>
	<div class="col-xs-12 margin-top-5">
		<div class="col-xs-10 col-xs-offset-1">
			<div class="col-xs-12 margin-top-7"  id="firstDivExample">
				<div class="col-xs-4 border opacity00" id="exampleOne">
<pre class="creamPreTab4 opacity00" id="preCode">
<span id="firstExLine1"><span id="dataTypeFloat1">float</span> *p;</span>
<span id="firstExLine2">p = <span id="floatSpan">(<span id="dataTypeFloat2">float*</span>)<span id="mallocSpan1">malloc(<span id="sizeofSpan">sizeof(float)</span>);</span></span></span>
<span id="firstExLine3">*p = <span class="" id="pValue">20</span>;</span>
<span id="firstExLine4">printf("The value of *p = %d\n", *p);</span>
</pre>
				</div>
				<div class="col-xs-6 col-xs-offset-1 opacity00" id="totalfirstExDiv">
					<div class="col-xs-12 border" id="firstExDiv">
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line" x1="35%" y1="51%" x2="37%" y2="51%"/>
						</svg>
						<div class="col-xs-6 text-center">
							<div class="col-xs-12 opacity00" id="pBox">
								<div class="col-xs-4 Vertical-text-center">p</div>
								<div class="col-xs-6">
									<div style="color: lightslategrey;">2 bytes</div>
									<div class="memory-box"><span class="opacity00" id="cValue">1054</span></div>
									<div><span id="cBoxAddress">1024</span></div>
								</div>
							</div>
						</div>
						
						<div class="col-xs-6">
							<div class="col-xs-12 opacity00" id="newBox">
								<div class="col-xs-4 Vertical-text-center"></div>
								<div class="col-xs-6 text-center">
									<div style="color: lightslategrey;">4 bytes</div>
									<div class=" memory-box"><span class="opacity00" id="Value">20</span></div>
									<div><span id="newAddress">1054</span></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="col-xs-7 col-xs-offset-3">
							<div id="consoleId" class="center"  style="margin-top: 8%">
								<div class="output-console-title-bar">
									<span class="title"><b>Console</b></span>
								</div>
								<div class="output-console-body" id="consoleBodyDiv">
									<span class='visibility-hidden' id="printText">The value of *p = 20</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 margin-top-2">
		<div class="col-xs-10 col-xs-offset-1">
			<div class="col-xs-12 margin-top-7">
				<div class="col-xs-4 border opacity00" id="exampleTwo">
<pre class="creamPreTab4 opacity00" id="preCodeTwo">
<span id="secondExLine1"><span id="dataTypeInt1">int</span> *k;</span>
<span id="secondExLine2">k = (<span id="dataTypeInt2">int*</span>)<span id="mallocSpan2">malloc(5*(<span id="sizeofSpan2">sizeof(int)</span>);</span></span>
</pre>
				</div>
				<div class="col-xs-7 col-xs-offset-1 border opacity00" id="secondExDiv">
					<div class="col-xs-12">
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line-array" x1="35%" y1="51%" x2="37%" y2="51%"/>
						</svg>
						<div class="col-xs-5 margin-top-2">
							<div class="col-xs-12 opacity00" id="kBox">
								<div class="col-xs-4 Vertical-text-center">k</div>
								<div class="col-xs-8 text-center">
									<div style="color: lightslategrey;">2 bytes</div>
									<div class="memory-box" style="border: 1px solid gray;">
										<span class="opacity00" id="kValue" style="font-size: 13px;">1924</span>
									</div>
									<div style="font-size: 13px; margin-top: 3px;">1234</div>
								</div>
							</div>
						</div>
						<div class="col-xs-7 opacity00" id="arrayDiv">
							<div class="col-xs-12">
							<div class="col-xs-1 Vertical-variable-text-center"></div>
							<div class="col-xs-10">
								<table align="center">
									<tr class="" id="elementId">
										<td class="element-box"><span class="" id="element1">0</span></td>
										<td class="element-box"><span class="" id="element2">1</span></td>
										<td class="element-box"><span class="" id="element3">2</span></td>
										<td class="element-box"><span class="" id="element4">3</span></td>
										<td class="element-box"><span class="" id="element5">4</span></td>
									</tr>
									<tr class="" id="smallBox">
										<td class="small-box"><span class="opacity00" id="valuesId1">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId2">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId3">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId4">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId5">0</span></td>
									</tr>
									<tr class="" id="addressId">
										<td class="address-box"><span id="firstAddressId">1924</span></td>
										<td class="address-box">1926</td>
										<td class="address-box">1928</td>
										<td class="address-box">1930</td>
										<td class="address-box">1932</td>
									</tr>
								</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="text-center margin-top-5" id="restartDiv">
			<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
		</div>
	</div>
</div>

</body>

<script type="text/javascript">
$(document).ready(function() {
	introGuide();
});

function introGuide() {
	introjs = introJs();
	$("body").keydown(function(e) {
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
	
	$("#restart").click(function() {
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
			element : '#preCode',
			intro : '',
		}, {
			element : '#firstExLine1',
			intro : '',
		}, {
			element : '#pBox',
			intro : '',
		}, {
			element : '#sizeofSpan',
			intro : '',
		}, {
			element : '#mallocSpan1',
			intro : '',
		}, {
			element : '#firstExLine2',
			intro : '',
		}, {
			element : '#newBox',
			intro : '',
		}, {
			element : '#firstExDiv',
			intro : '',
			animateStep : 'tweenmaxSvg'
		}, {
			element : '#firstExLine3',
			intro : '',
		}, {
			element : '#firstExDiv',
			intro : '',
			animateStep : 'tweenmax'
		}, {
			element : '#firstExLine4',
			intro : '',
		}, {
			element : '#consoleId',
			intro : '',
			tooltipClass : 'hide',
		}, {
			element : '#preCodeTwo',
			intro : '',
		}, {
			element : '#secondExLine1',
			intro : '',
		}, {
			element : '#kBox',
			intro : '',
		}, {
			element : '#sizeofSpan2',
			intro : '',
		}, {
			element : '#mallocSpan2',
			intro : '',
		}, {
			element : '#secondExLine2',
			intro : '',
		}, {
			element : '#arrayDiv',
			intro : '',
		}, {
			element : '#secondExDiv',
			intro : '',
			animateStep: 'tweenmaxArrowAnimate',
		}, {
			element : '#secondExDiv',
			intro : '',
			animateStep: 'scaleFactor',
			position : 'left',
		}, {
			element :'#restart',
			intro : "Click to restart",
			position : 'right',
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		$(".introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton").hide();
		var elementId = targetElement.id;
		switch(elementId) {
		case 'infoDiv':
			$("#infoDiv").css({height: $("#infoDiv").outerHeight()});
			var text = $("#infoDiv").html();
			typing($("#infoDiv"), text, function() {
				$("#infoDiv").addClass('z-index9999999');
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case 'preCode':
			introjs.refresh();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleOne").removeClass("opacity00");
				typing('.introjs-tooltiptext',"Let us consider a sample code.", function() {
					TweenMax.to($("#preCode"), 1, {opacity: 1, onComplete: function(){
						$("#preCode").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					}});
				});
			});
			break;
		case 'firstExLine1':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext', "The pointer variable <span class='ct-code-b-yellow'>p</span> occupies " +
						"<span class='ct-color-lime'>2 bytes</span> of memory since it is a pointer " +
						"variable and it is declared with <span class='ct-code-b-yellow'>float datatype</span> so it " +
						"refer to <span class='ct-code-b-yellow'>float</span> variable.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'pBox':
			$('.introjs-fixParent').removeClass('introjs-fixParent');
			$("#totalfirstExDiv").removeClass("opacity00");
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> " +
							"occupies <span class='ct-color-lime'>2 bytes</span> of memory with some address " +
							"(i.e. location of memory), lets its address be as <span class='ct-code-b-yellow'>1024</span>.";
				typing('.introjs-tooltiptext', text, function() {
					boxAnimation("#pBox", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'sizeofSpan':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>sizeof</span> is an operator which returns the number of bytes " +
				"allocated by the datatype, variable, any constant.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'firstExLine2':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#dataTypeFloat1, #dataTypeFloat2").addClass("blinking");
				var text = "<span class='ct-code-b-yellow'>malloc( )</span> function always returns <span class='ct-code-b-yellow'>void</span> " +
				"type <span class='ct-code-b-yellow'>base address</span>." +
				" So we need to typecast that with that with the pointer type.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'mallocSpan1':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The <span class='ct-code-b-yellow'>malloc()</span> function returns the address of the " +
				"<span class='ct-code-b-yellow'>heap memory</span> allocated.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				 });
			});
			break;
		case 'firstExLine3':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "Here the <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>*p</span> is " +
							"assign with value <span class='ct-code-b-yellow'>20</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'firstExLine4':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = 'This line prints the <span class="ct-code-b-yellow">value</span> of <span class="ct-code-b-yellow">*p</span>.';
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'newBox':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The memory occupies <span class='ct-color-lime'>4 bytes</span> of <span class='ct-code-b-yellow'>heap memory</span> " +
							"because it is a <span class='ct-code-b-yellow'>float data type</span>. " +
							"Lets its address be as <span class='ct-code-b-yellow'>1054</span>.";
				typing('.introjs-tooltiptext', text, function() {
					boxAnimation("#newBox", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'firstExDiv':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'tweenmaxSvg':
				$('.introjs-helperLayer').one('transitionend', function() {
					var text = "So the address is copied into variable <span class='ct-code-b-yellow'>p</span> i.e. " +
					"<span class='ct-code-b-yellow'>1054</span> is copied.";
					typing('.introjs-tooltiptext', text, function() {
						tweenmaxAnimation();
					});
				});
				break;
			case 'tweenmax':
				$('.introjs-helperLayer').one('transitionend', function() {
					var text = "The <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> is " +
								"pointed with the address <span class='ct-code-b-yellow'>1054</span>.<br>" +
								"<span class='ct-code-b-yellow'>*p</span> represents value at that address. " +
								"So the value <span class='ct-code-b-yellow'>20</span> is copied into " +
								"<span class='ct-code-b-yellow'>1054</span>.";
					typing('.introjs-tooltiptext', text, function() {
						tweenmaxValueAnimation();
					});
				});
				break;
			}
			break;
		case 'consoleId':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#printText").removeClass("visibility-hidden");
				var text = $("#printText").html();
				typing($("#printText"), text, function() {
					setTimeout(function () {
						introjs.nextStep();
					}, 1000);
				});
			});
			break;
		case 'preCodeTwo':
			introjs.refresh();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleTwo").removeClass("opacity00");
				typing('.introjs-tooltiptext', "Let us consider another example.", function() {
					TweenMax.to($("#preCodeTwo"), 1, {opacity: 1, onComplete: function(){
						$("#preCodeTwo").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					}});
				});
			});
			break;
		case 'secondExLine1':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The pointer variable <span class='ct-code-b-yellow'>k</span> occupies " +
				"<span class='ct-color-lime'>2 bytes</span> of memory since it is a pointer " +
				"variable and it is declared with <span class='ct-code-b-yellow'>int datatype</span> so it " +
				"refer to <span class='ct-code-b-yellow'>int</span> variable."
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'kBox':
			$('.introjs-fixParent').removeClass('introjs-fixParent');
			$("#secondExDiv").removeClass("opacity00");
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>k</span> " +
							"occupies <span class='ct-color-lime'>2 bytes</span> of memory with some address " +
							"(i.e. location of memory), lets its address be as <span class='ct-code-b-yellow'>1234</span>."
				typing('.introjs-tooltiptext', text, function() {
					boxAnimation("#kBox", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'sizeofSpan2':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext', "<span class='ct-code-b-yellow'>sizeof(int)</span> returns the size of an integer.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'mallocSpan2':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "Here 5 is number of regions. i.e. it is used to create <span class='ct-code-b-yellow'>heap memory</span> " +
				"for one dimensional array.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'arrayDiv':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "Here each region occupies <span class='ct-color-lime'>2 bytes</span> of memory so the memory " +
							"allocated in <span class='ct-code-b-yellow'>5</span> regions."
				typing('.introjs-tooltiptext', text, function() {
					boxAnimation("#arrayDiv", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'secondExLine2':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#dataTypeInt1, #dataTypeInt2").addClass("blinking");
				var text = "It selects 10 bytes of memory from the heap and the address of first byte is typecasted to " +
							"<span class='ct-code-b-yellow'>int*</span> and " +
							"stored into <span class='ct-code-b-yellow'>int</span> type of pointer <span class='ct-code-b-yellow'>k</span>."; 
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'secondExDiv':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'tweenmaxArrowAnimate':
				$('.introjs-helperLayer').one('transitionend', function() {
					var text = "The base address of <span class='ct-code-b-yellow'>heap memory</span> is consider into " +
					"<span class='ct-code-b-yellow'>k</span><br> " +
					"i.e <span class='ct-code-b-yellow'>1924</span> is copied into <span class='ct-code-b-yellow'>k</span>." 
					typing('.introjs-tooltiptext', text, function() {
						tweenmaxArrayAnimation();
					});
				});
				break;
			case 'scaleFactor':
					scaleFactorExplanation();
				break;
			}
			break;
		case 'restart':
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

function tweenmaxAnimation() {
	var l3 = $("#newAddress").offset();
	var l4 = $("#cValue").offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left - l4.left;
	$("#newAddress").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$("#cValue").removeClass("opacity00");
		TweenMax.from("#cValue", 1, {top: topLength, left: leftLength, onComplete: function() {
			$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
			$(".user-btn").click(function() {
				$(".user-btn").remove();
				var text = "Here the <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> has the " +
				"address of <span class='ct-code-b-yellow'>dynamic memory</span> so it can access the " +
				"variable <span class='ct-code-b-yellow'>p</span>.";
				typing('.introjs-tooltiptext', text, function() {
					animationPointerArrow();
				});
			});
		}});
	});
}

function tweenmaxValueAnimation() {
	var l3 = $("#pValue").offset();
	var l4 = $("#Value").offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left - l4.left;
	$("#pValue").addClass("css-circle").effect( "highlight", {color:"white"}, 1000, function() {
		$("#Value").removeClass("opacity00");
		$("#pValue").removeClass("css-circle");
		TweenMax.from("#Value", 1.5, {top: topLength, left: leftLength, onComplete: function() {
			$(".introjs-nextbutton").show();
		}});
	});
}

function tweenmaxArrayAnimation() {
	var l3 = $("#firstAddressId").offset();
	var l4 = $("#kValue").offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left - l4.left;
	$("#firstAddressId").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$("#kValue").removeClass("opacity00");
		TweenMax.from("#kValue", 1, {top: topLength, left: leftLength, onComplete: function() {
			animationArrayPointerArrow();
		}});
	});
}

function boxAnimation(id, callBackFunction) {
	$(id).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		$(id).removeClass("animated zoomIn");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function animationPointerArrow() {
	TweenMax.to($('.svg-line').show(), 1, {attr: {x2: '70%'}, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function animationArrayPointerArrow() {
	TweenMax.to($('.svg-line-array').show(), 1, {attr: {x2: '54%'}, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function scaleFactorExplanation() {
	$(".introjs-tooltip").css("min-width", "370px");
	var text = "Here the regions are accesed using pointers has :<br><br>" +
				"<ul style='color: springgreen;'><li>(p + 0)--> (1924 + 0) --> (1924 + (0 x 2)) = 1924.</li>"+
					"<li>(p + 1)--> (1924 + 1) --> (1924 + (1 x 2)) = 1926.</li></ul><br>" +
				"The value at that address is given by using <span class='ct-code-b-yellow'>*</span> before the address.<br>" +
				"<ul><li style='color: springgreen;'>*(p + 0)--> *(1924)--> value at 1924.</li></ul>" +
					"<span class='ct-code-b-yellow'>Note:</span> In this (p + 0), p is address and 0 is a value. " +
					"The value cannot be added to the address." +
				" So we need to multiply value with the 2 because of <span class='ct-code-b-yellow'>scale factor</span> of " +
				"<span class='ct-code-b-yellow'>int</span> type is 2.";
	typing('.introjs-tooltiptext', text, function() {
		$('.introjs-nextbutton').show();
	});
}
</script>

</html>