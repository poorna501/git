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
.border {
	border: 1px solid;
	border-radius: 8px;
	padding: 8px;
}

.info-div {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	font-size: 15px;
	padding: 11px 12px;
}

.margin-top-1 {
	margin-top: 1%;
}

.margin-top-2 {
	margin-top: 2%;
}

.margin-top-3 {
	margin-top: 3%;
}

.margin-top-5 {
	margin-top: 5%;
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

.rowtdClass {
	padding: 4px;
	text-align: center;
	width: 55px;
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

.address-box, .element-box {
	padding: 4px;
	text-align: center;
	width: 55px;
	font-size: 13px;
}

.element-box {
	color: lightslategrey;
}

.small-box, .small-box-royalblue, .small-box-green, .small-box-firebrick {
	border: 1px solid;
	padding: 1px;
	text-align: center;
}

.small-box-royalblue {
	border-color: royalblue;
}

.small-box-green {
	border-color: green;
}

.small-box-firebrick {
	border-color: firebrick;
}

.ct-color-springgreen {
	color: springgreen;
}

.user-btn {
	background-color: green;
}

.ui-effects-transfer {
	border: 1px solid green;
	 z-index: 9999999 !important;
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

.z-index9999999 {
	z-index: 9999999;
	background-color: white;
}

.syntax-class {
	font-size: 16px;
	color: seagreen;
	background-color: wheat;
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

.introjs-tooltip {
	min-width: 280px;
}

.ct-color-lime {
	color: lime;
}

.ct-color-maroon {
	color: maroon;
}

</style>
</head>
<body>

<div class="main-div col-xs-12">
	<div class="text-center margin-top-1">
		<h3 class='label ct-demo-heading' id="heading">
			<span>Usage of calloc( )</span>
		</h3>
	</div>
	<div class="col-xs-8 col-xs-offset-2 margin-top-2 info-div" id="infoDiv">
		<ul>
			<li>The <span class='ct-color-maroon'>calloc( )</span> function is used for memory allocation at the time of execution.</li>
			<li>The name <span class='ct-color-maroon'>calloc( )</span> stands for "contiguous allocation".</li>
			<li>The general format of <span class='ct-color-maroon'>calloc( )</span> is  <span class="syntax-class">(Void *) calloc (number of objects, bytes of each object);</span></li>
		</ul>
	</div>
	<div class="col-xs-12 margin-top-2">
		<div class="col-xs-10 col-xs-offset-1">
			<div class="col-xs-12 margin-top-5"  id="firstDivExample">
				<div class="col-xs-4 border opacity00" id="exampleOne">
<pre class="creamPreTab4 opacity00" id="preCode">
<span id='firstExLine1'><span id='dataTypeInt1'>int</span> *p;</span>
<span id='firstExLine2'>P = (<span id='dataTypeInt2'>int*</span>)<span id='callocFunction'>calloc(<span id='memory'>5</span>, <span id='size'>sizeof(int)</span></span>);</span>
</pre>
				</div>
				<div class="col-xs-7 col-xs-offset-1">
					<div class="col-xs-12 border opacity00" id="firstExDiv">
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line" x1="29%" y1="51%" x2="30%" y2="51%"/>
						</svg>
						<div class="col-xs-5 text-center margin-top-2">
							<div class="col-xs-12 opacity00" id="pBox">
								<div class="col-xs-4 Vertical-text-center">p</div>
								<div class="col-xs-6">
									<div style="color: lightslategrey;">2 bytes</div>
									<div class="memory-box"><span class="opacity00" id="baseAddress" style="font-size: 13px;">1056</span></div>
									<div><span id="cBoxAddress"></span>1112</div>
								</div>
							</div>
						</div>
						<div class="col-xs-7 opacity00" id="oneDArrayDiv">
							<div class="col-xs-12">
							<div class="col-xs-1 Vertical-variable-text-center"></div>
							<div class="col-xs-10">
								<table align="center">
									<tr class="opacity00" id="elementId">
										<td class="element-box"><span class="" id="element1">0</span></td>
										<td class="element-box"><span class="" id="element2">1</span></td>
										<td class="element-box"><span class="" id="element3">2</span></td>
										<td class="element-box"><span class="" id="element4">3</span></td>
										<td class="element-box"><span class="" id="element5">4</span></td>
									</tr>
									<tr class="" id="smallBox">
										<td class="small-box"><span class="append-zero opacity00" id="valuesId1">0</span></td>
										<td class="small-box"><span class="append-zero opacity00" id="valuesId2">0</span></td>
										<td class="small-box"><span class="append-zero opacity00" id="valuesId3">0</span></td>
										<td class="small-box"><span class="append-zero opacity00" id="valuesId4">0</span></td>
										<td class="small-box"><span class="append-zero opacity00" id="valuesId5">0</span></td>
									</tr>
									<tr class="opacity00" id="addressId">
										<td class="address-box"><span id="firstAddressId">1056</span></td>
										<td class="address-box">1058</td>
										<td class="address-box">1060</td>
										<td class="address-box">1062</td>
										<td class="address-box">1064</td>
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
	<div class="col-xs-12 margin-top-2">
		<div class="col-xs-11 col-xs-offset-1">
			<div class="col-xs-12 margin-top-5">
				<div class="col-xs-4 border opacity00" id="exampleTwo">
<pre class="creamPreTab4 opacity00" id="preCodeTwo">
<span id="secondExLine1"><span id='dataTypeFloat1'>float</span> *q;</span>
<span id="secondExLine2">q = <span id='dataTypeFloat2'>(float*)</span><span id='callocFor2D'>calloc(3*2, sizeof(float))</span>;</span>
</pre>
				</div>
				<div class="col-xs-7 col-xs-offset-1 border opacity00" id="secondExDiv" style="margin-left: 6%;">
					<div class="col-xs-12">
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line-array" x1="30%" y1="42%" x2="31%" y2="41%"/>
						</svg>
						<div class="col-xs-5 margin-top-3">
							<div class="col-xs-12 opacity00" id="qBox">
								<div class="col-xs-4 Vertical-text-center">q</div>
								<div class="col-xs-6 text-center">
									<div style="color: lightslategrey;">2 bytes</div>
									<div class="memory-box" style="border: 1px solid gray;">
										<span class="opacity00" id="qValue" style="font-size: 13px;">1002</span>
									</div>
									<div style="font-size: 13px; margin-top: 3px;">1044</div>
								</div>
							</div>
						</div>
						<div class="col-xs-7 opacity00 margin-top-1" id="twoDArrayDiv">
							<div class="col-xs-12">
								<div class="col-xs-1 Vertical-variable-text-center"></div>
								<div class="col-xs-10">
									<table align="center">
										<tr class="" id="elementId">
											<td class="element-box"><span class="" id="element1">[0][0]</span></td>
											<td class="element-box"><span class="" id="element2">[0][1]</span></td>
											<td class="element-box"><span class="" id="element3">[1][0]</span></td>
											<td class="element-box"><span class="" id="element4">[1][1]</span></td>
											<td class="element-box"><span class="" id="element5">[2][0]</span></td>
											<td class="element-box"><span class="" id="element6">[2][1]</span></td>
										</tr>
										<tr class="" id="smallBoxTwoD">
											<td class="small-box-green"><span class="zero-twoD opacity00" id="valuesId1">0</span></td>
											<td class="small-box-green"><span class="zero-twoD opacity00" id="valuesId2">0</span></td>
											<td class="small-box-firebrick"><span class="zero-twoD opacity00" id="valuesId3">0</span></td>
											<td class="small-box-firebrick"><span class="zero-twoD opacity00" id="valuesId4">0</span></td>
											<td class="small-box-royalblue"><span class="zero-twoD opacity00" id="valuesId5">0</span></td>
											<td class="small-box-royalblue"><span class="zero-twoD opacity00" id="valuesId6">0</span></td>
										</tr>
										<tr class="opacity00" id="twoDAddressId">
											<td class="address-box"><span id="twoDBaseAddress">1002</span></td>
											<td class="address-box">1006</td>
											<td class="address-box">1010</td>
											<td class="address-box">1014</td>
											<td class="address-box">1018</td>
											<td class="address-box">1022</td>
										</tr>
										<tr id="rowSpan4">
											<td colspan="2" class="rowtdClass" id="rowId1" style="color: green;">0<sup><b>th</b></sup> row</td>
											<td colspan="2" class="rowtdClass" id="rowId2" style="color: firebrick;">1<sup><b>st</b></sup> row</td>
											<td colspan="2" class="rowtdClass" id="rowId3" style="color: royalblue;">2<sup><b>nd</b></sup> row</td>
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

<script>
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
			element : '#size',
			intro : '',
		}, {
			element : '#memory',
			intro : '',
		}, {
			element : '#callocFunction',
			intro : '',
		}, {
			element : '#firstExLine2',
			intro : '',
		}, {
			element : '#oneDArrayDiv',
			intro : '',
		}, {
			element : '#firstExDiv',
			intro : '',
			animateStep : 'tweenmax',
		}, {
			element : '#firstExDiv',
			intro : '',
			animateStep : 'appendZeros',
		}, {
			element : '#preCodeTwo',
			intro : '',
		}, {
			element : '#secondExLine1',
			intro : '',
		}, {
			element : '#qBox',
			intro : '',
		}, {
			element : '#callocFor2D',
			intro : '',
		}, {
			element : '#secondExLine2',
			intro : '',
		}, {
			element : '#twoDArrayDiv',
			intro : '',
			animateStep : 'boxZooming',
		}, {
			element : '#secondExDiv',
			intro : '',
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
		case 'size':
			$('.introjs-helperLayer').one("transitionend", function() {
				typing('.introjs-tooltiptext', "This represents the size of each element.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'memory':
			$('.introjs-helperLayer').one("transitionend", function() {
				typing('.introjs-tooltiptext', "This represents total number of regions to be allocated.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'callocFunction':
			$('.introjs-helperLayer').one("transitionend", function() {
				typing('.introjs-tooltiptext', " <span class='ct-color-springgreen'>calloc( )</span> creates " +
						"<span class='ct-code-b-yellow'>heap memory</span> and " +
						"initializes it with value <span class='ct-code-b-yellow'>0</span>.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'preCode':
			introjs.refresh();
			$("#syntax").addClass('z-index9999999');
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#exampleOne").removeClass("opacity00");
				typing('.introjs-tooltiptext', "Let us consider an example on <span class='ct-color-springgreen'>calloc( )</span>, " +
						"how to create a memory for <span class='ct-code-b-yellow'>one dimensional array</span>.", function() {
				TweenMax.to($("#preCode"), 1, {opacity: 1, onComplete: function() {
					$("#preCode").removeClass("opacity00");
					$(".introjs-nextbutton").show();
					}});
				});
			});
			break;
		case 'firstExLine1':
			$('.introjs-helperLayer').one("transitionend", function() {
				var text = "The pointer variable <span class='ct-code-b-yellow'>p</span> occupies " +
				"<span class='ct-color-lime'>2 bytes</span> of memory since it is a pointer " +
				"variable and it is declared with <span class='ct-code-b-yellow'>int datatype</span> so it " +
				"refer to <span class='ct-code-b-yellow'>int</span> variable.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();	
				});
			});
			break;
		case 'pBox':
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#firstExDiv").removeClass("opacity00");
				var text = "The <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> " +
				"occupies <span class='ct-color-lime'>2 bytes</span> of memory with some address " +
				"(i.e. location of memory), lets its address be as <span class='ct-code-b-yellow'>1112</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#pBox", function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case 'firstExLine2':
			$('.introjs-helperLayer').one("transitionend", function() {
				var text = "<span class='ct-color-springgreen'>calloc( )</span> also returns the base address of the " +
				"entire memory and the void type is the reference to that memory.";
				typing('.introjs-tooltiptext', text, function() {
					$("#dataTypeInt1, #dataTypeInt2").addClass("blinking", function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
		case 'oneDArrayDiv':
			$('.introjs-helperLayer').one("transitionend", function() {
				var text = "So the memory alloted into <span class='ct-code-b-yellow'>5</span> regions and each regions occupied " +
				"with <span class='ct-color-lime'>2 bytes</span> and let it base " +
				"address is <span class='ct-code-b-yellow'>1056</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$("#oneDArrayDiv").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#oneDArrayDiv").removeClass("animated zoomIn");
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							$("#smallBox").effect("transfer", { to: $("#addressId")}, 1000).addClass(".ui-effects-transfer", function() {
								$("#addressId").removeClass("opacity00", function() {
									$("#elementId").removeClass("opacity00");
									$(".introjs-nextbutton").show();
								});
							});
						});
					});
				});
			});
			break;
		case 'firstExDiv':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'tweenmax':
				$('.introjs-helperLayer').one("transitionend", function() {
					typing('.introjs-tooltiptext', "So the base address copied into <span class='ct-code-b-yellow'>pointer</span> " +
							"variable of <span class='ct-code-b-yellow'>p</span>.", function() {
						tweenmaxAnimation();
					});
				});
				break;
			case 'appendZeros':
				typing('.introjs-tooltiptext', "The memory which allocated by <span class='ct-color-springgreen'>calloc( )</span> " +
						"function by default assigns initial values as " +
						"<span class='ct-code-b-yellow'>zeros</span>.", function() {
					$(".append-zero").removeClass("opacity00");
					TweenMax.staggerFrom(".append-zero", 1, {opacity:1, top:-45, onComplete: function() {
						$(".introjs-nextbutton").show();
					}});
				});
				break;
			}
			break;
		case 'preCodeTwo':
			introjs.refresh();
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#exampleTwo").removeClass("opacity00");
				typing('.introjs-tooltiptext', "Let us consider an example on <span class='ct-color-springgreen'>calloc( )</span>, " +
						"how to create a memory for <span class='ct-code-b-yellow'>two dimensional array</span>.", function() {
					TweenMax.to($("#preCodeTwo"), 1, {opacity: 1, onComplete: function(){
						$("#preCodeTwo").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					}});
				});
			});
			break;
		case 'secondExLine1':
			$('.introjs-helperLayer').one("transitionend", function() {
				var text = "The pointer variable <span class='ct-code-b-yellow'>q</span> occupies " +
				"<span class='ct-color-lime'>2 bytes</span> of memory since it is a pointer " +
				"variable and it is declared with <span class='ct-code-b-yellow'>float datatype</span> so it " +
				"refer to <span class='ct-code-b-yellow'>float</span> variable.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();	
				});
			});
			break;
		case 'qBox':
			$('.introjs-fixParent').removeClass('introjs-fixParent');
			$("#secondExDiv").removeClass("opacity00");
			$('.introjs-helperLayer').one("transitionend", function() {
				var text = "The <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>q</span> " +
				"occupies <span class='ct-color-lime'>2 bytes</span> of memory with some address " +
				"(i.e. location of memory), lets its address be as <span class='ct-code-b-yellow'>1044</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#qBox", function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case 'callocFor2D':
			$('.introjs-helperLayer').one("transitionend", function() {
				var text = "Here 3 represents as row and 2 represents as column.<br>" +
							"So the memory alloted into 3 rows and 2 columns and each " +
							"region occupied with <span class='ct-color-lime'>4 bytes</span> of memory because " +
							"<span class='ct-code-b-yellow'>size(float)</span> " +
							"represents <span class='ct-code-b-yellow'>float datatype</span>."
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});

			break;
		case 'secondExLine2':
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#dataTypeFloat1, #dataTypeFloat2").addClass("blinking");
				var text = "<span class='ct-color-springgreen'>calloc( )</span> also returns the base address of the entire " +
				"memory and the void type is the reference to that memory.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'twoDArrayDiv':
			$('.introjs-helperLayer').one("transitionend", function() {
				var text = "So the memory alloted with 3 rows and and each row contains 2 columns.<br>" + 
							"Let it base address be <span class='ct-code-b-yellow'>1002</span> and each region occupied with " +
							"<span class='ct-color-lime'>4 bytes</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#twoDArrayDiv", function() {
							$("#smallBoxTwoD").effect("transfer", { to: $("#twoDAddressId")}, 1000).addClass(".ui-effects-transfer", function() {
								$("#twoDAddressId").removeClass("opacity00", function() {
									$(".introjs-nextbutton").show();
								});
							});
						});
					});
				});
			});
			break;
		case 'secondExDiv':
			$('.introjs-helperLayer').one("transitionend", function() {
				typing('.introjs-tooltiptext', "So the base address copied into <span class='ct-code-b-yellow'>pointer q</span> " +
						"i.e. <span class='ct-code-b-yellow'>1002</span> is copied.", function() {
					tweenmaxTwoDAnimation();
				});
			});
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

function boxAnimation(id, callBackFunction) {
	$(id).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		$(id).removeClass("animated zoomIn");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function tweenmaxAnimation() {
	var l3 = $("#firstAddressId").offset();
	var l4 = $("#baseAddress").offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left - l4.left;
	$("#firstAddressId").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$("#baseAddress").removeClass("opacity00");
		TweenMax.from("#baseAddress", 1, {top: topLength, left: leftLength, onComplete: function() {
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

function tweenmaxTwoDAnimation() {
	var l3 = $("#twoDBaseAddress").offset();
	var l4 = $("#qValue").offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left - l4.left;
	$("#twoDBaseAddress").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$("#qValue").removeClass("opacity00");
		TweenMax.from("#qValue", 1, {top: topLength, left: leftLength, onComplete: function() {
			$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
			$(".user-btn").click(function() {
				$(".user-btn").remove();
				var text = "Here the <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>q</span> has the " +
				"address of <span class='ct-code-b-yellow'>dynamic memory</span> so it can access by the " +
				"variable <span class='ct-code-b-yellow'>q</span>.";
				typing('.introjs-tooltiptext', text, function() {
					animationArrayPointerArrow();
				});
			});
		}});
	});
}

function animationPointerArrow() {
	TweenMax.to($('.svg-line').show(), 1, {attr: {x2: '54%'}, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function animationArrayPointerArrow() {
	TweenMax.to($('.svg-line-array').show(), 1, {attr: {x2: '53%'}, onComplete: function() {
		$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
		$(".user-btn").click(function() {
			$(".user-btn").remove();
			typing('.introjs-tooltiptext', "The memory which allocated by <span class='ct-color-springgreen'>calloc( )</span> function " +
					"by default assigns initial values as " +
				"<span class='ct-code-b-yellow'>zeros</span>.", function() {
					$(".zero-twoD").removeClass("opacity00");
				TweenMax.staggerFrom(".zero-twoD", 1, {opacity:1, top:-45, onComplete: function() {
					$(".introjs-nextbutton").show();
				}});
			});
		});
	}});
}
</script>

</html>