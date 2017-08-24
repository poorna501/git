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
<title>Dynamic memory allocation</title>

<style>
.margin-top-2 {
	margin-top: 2%;
}

.heading-css {
    margin: 20px 0 10px;
}

.border {
	border: 1px solid;
	border-radius: 8px;
	padding: 10px;
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

.memory-box {
	height: 22px;
	/* width: 20px; */
	border: 1px solid;
	text-align: center;	
}

.margin-top-7 {
	margin-top: 7%;
}

 .margin-top-2 {
 	margin-top: 2%;
 }
 
.introjs-tooltip {
	min-width: 280px;
}

.ct-color-lime {
	color: lime;
}

.ct-color-teal {
	color: teal;
}

.introjs-duplicate-nextbutton {
	background-color: green;
}

.user-btn {
	background-color: green;
}

.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 14px;
	margin-bottom: 14px;
	height: 60px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
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

div, span {
	position: relative;
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

.ct-color-red {
	color:red;
}

.ct-color-purple {
	color: purple;
}

.svg-css {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.svg-line, .svg-line-cross {
	display: none;
	marker-end: url("#arrowEnd");
	position: relative;
	stroke: gray;
	stroke-width: 2; 
}

.svg-line-right {
	display: none;
	marker-end: url("#arrowRightEnd");
	position: relative;
	stroke: gray;
	stroke-width: 2;
}

.small-box {
	border: 1px solid gray;
	padding: 1px;
	text-align: center;
	width: 55px;
	visibility: hidden;
}

.ui-effects-transfer {
	border: 1px solid green;
	 z-index: 9999999 !important;
}

.final-div {
	margin-top: 3%;
	padding: 10px 30px;
}

.z-index9999999 {
	z-index: 9999999;
	background-color: white;
}


</style>

</head>
<body>

<div class="main-div col-xs-12">
	<div class="text-center heading-css" id="heading">
		<h3 class='label ct-demo-heading margin-top-2'>
			<span>Why DMA?</span>
		</h3>
	</div>
	<div class="text-center margin-top-2" id="restartDiv">
		<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-8 col-xs-offset-2">
			<div class="col-xs-12 margin-top-7">
				<div class="col-xs-4 border" id="example">
<pre class="creamPreTab4 opacity00" id="preCode">
<span id="line1">int c = <span id="cInputValue">10</span>;</span>
<span id="line2">int *k;</span>
<span id="line3">k = &c;</span>
<span id="line4">*k = <span id="kInputValue">50</span>;</span>
</pre>
				</div>
				<div class="col-xs-7 col-xs-offset-1 border" id="memoryDiv">
					<div class="col-xs-12">
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line" x1="59%" y1="51%" x2="59%" y2="51%"/>
						</svg>
						<div class="col-xs-6 text-center">
							<div class="col-xs-12 opacity00" id="cBox">
								<div class="col-xs-4 Vertical-text-center">c</div>
								<div class="col-xs-8">
									<div>2 bytes</div>
									<div class="memory-box"><span class="opacity00" id="cValue">10</span></div>
									<div><span id="cBoxAddress">1024</span></div>
								</div>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-12 opacity00" id="kBox">
								<!-- <div class="col-xs-4 Vertical-text-center">k</div> -->
								<div class="col-xs-8 text-center">
									<div>2 bytes</div>
									<div class=" memory-box"><span class="opacity00" id="kValue">1024</span></div>
									<div>1054</div>
								</div>
								<div class="col-xs-3 Vertical-text-center">k</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-9 col-xs-offset-2">
			<div class="col-xs-12 margin-top-7">
				<div class="col-xs-3 border opacity00" id="exampleTwo">
<pre class="creamPreTab4" id="preCodeTwo">
<span id="secondExLine1">int a[5] = <span id="inputArray">{10,20,30}</span>;</span>
<span id="secondExLine2">int *p;</span>
<span id="secondExLine3">p = &a;</span>
<span id="secondExLine4" class="opacity00">int a[10];</span>
</pre>
				</div>
				<div class="col-xs-7 col-xs-offset-1 border opacity00" id="secondExDiv">
					<div class="col-xs-12">
						<div class="col-xs-5 margin-top-2">
							<div class="col-xs-12 opacity00" id="pBox">
								<div class="col-xs-4 Vertical-text-center">p</div>
								<div class="col-xs-8 text-center">
									<div style="color: lightslategrey;">2 bytes</div>
									<div class="memory-box" style="border: 1px solid gray;">
										<span class="opacity00" id="pValue" style="font-size: 13px;">1112</span>
									</div>
									<div style="font-size: 13px; margin-top: 3px;">1044</div>
								</div>
							</div>
						</div>
						<div class="col-xs-7 opacity00" id="arrayDiv">
							<div class="col-xs-12">
							<div class="col-xs-1 Vertical-variable-text-center">a</div>
							<div class="col-xs-10">
								<table align="center">
									<tr class="opacity00" id="elementId">
										<td class="element-box"><span class="" id="element1">a[0]</span></td>
										<td class="element-box"><span class="" id="element2">a[1]</span></td>
										<td class="element-box"><span class="" id="element3">a[2]</span></td>
										<td class="element-box"><span class="" id="element4">a[3]</span></td>
										<td class="element-box"><span class="" id="element5">a[4]</span></td>
									</tr>
									<tr class="opacity00" id="smallBox">
										<td class="small-box"><span class="opacity00" id="valuesId1">10</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId2">20</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId3">30</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId4">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId5">0</span></td>
									</tr>
									<tr class="opacity00" id="addressId">
										<td class="address-box"><span id="firstAddressId">1112</span></td>
										<td class="address-box">1114</td>
										<td class="address-box">1116</td>
										<td class="address-box">1118</td>
										<td class="address-box">1120</td>
									</tr>
								</table>
								</div>
							</div>
						</div>
					</div>
					<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line-cross" x1="56%" y1="76%" x2="54%" y2="75%"/>
						</svg>
						<svg class='svg-css'>
						<marker id="arrowRightEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
							<path d="M0,0 L5,2.5 L0,5 Z"/>
						</marker>
							
						<line class="svg-line-right" x1="34%" y1="50%" x2="35%" y2="50%"/>
					</svg>
					
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-8 col-xs-offset-2 final-div opacity00" id="finalDiv">
			The problems are :
			<ul>
				<li>Without knowing the variable the value can be accessed or changed by it's pointer variable.</li>
				<li>If an array is declared once with some size it can't be modified throughout the program since once memory is allocated 
					at compile time or run time we can't modify the memory.</li>
			</ul><br>
			So these problems can be solved by <b>DMA</b> <span class='ct-color-teal'>(Dynamic memory allocation)</span> with 
			<span class='ct-color-purple'>heap memory</span>.
		</div>
	</div>
</div>

</body>

<script type="text/javascript">
var typingInterval = 10;
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
			element :'#preCode',
			intro : '',
		}, {
			element :'#line1',
			intro : '',
		}, {
			element : '#cBox',
			intro : '',
		}, {
			element :'#line2',
			intro : '',
		}, {
			element : '#kBox',
			intro : '',
			animateStep : 'kBoxZooming',
		}, {
			element :'#line3',
			intro : '',
		}, {
			element : '#kBox',
			intro : '',
			animateStep : 'kBoxAddressing',
		}, {
			element : '#memoryDiv',
			intro : '',
			animateStep : 'accessVariable',
		}, {
			element :'#line4',
			intro : '',
		}, {
			element : '#memoryDiv',
			intro : '',
			animateStep : 'bounceEffect',
		}, {
			element : '#exampleTwo',
			intro : '',
		}, {
			element : '#secondExLine1',
			intro : '',
			animateStep : 'introduction',
		}, {
			element : '#arrayDiv',
			intro : '',
			animateStep : 'memoryAnimate'
		}, {
			element : '#secondExLine1',
			intro : '',
			animateStep : 'valuesInitilization',
		}, {
			element : '#arrayDiv',
			intro : '',
			animateStep : 'initializingValues'
		}, {
			element : '#secondExLine2',
			intro : '',
		}, {
			element : '#pBox',
			intro : '',
		}, {
			element : '#secondExLine3',
			intro : '',
		}, {
			element : '#secondExDiv',
			intro : '',
			animateStep : 'svgAnimate',
		}, {
			element : '#secondExLine4',
			intro : '',
		}, {
			element : '#secondExDiv',
			intro : '',
			animateStep : 'arraySizeError',
		}, {
			element : '#finalDiv',
			intro : '',
			tooltipClass : 'hide',
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
			case 'preCode':
				typing('.introjs-tooltiptext', "Let us consider a sample example.", function() {
					$(".introjs-nextbutton").show();
					$("#preCode").removeClass("opacity00");
				});
				break;
			case 'line1':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "Here the <span class='ct-code-b-yellow'>int</span> variable <span class='ct-code-b-yellow'>" +
							"c</span> which is initialized " +
							"with value <span class='ct-code-b-yellow'>10</span>.", function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'line2':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "The pointer variable <span class='ct-code-b-yellow'>k</span> occupies " +
							"<span class='ct-color-lime'>2 bytes</span> of memory since it is a pointer " +
							"variable and it is declared with <span class='ct-code-b-yellow'>int datatype</span> so it " +
							"refer to <span class='ct-code-b-yellow'>int</span> variable.", function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'line3':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "Here the pointer variable <span class='ct-code-b-yellow'>k</span> is " +
							"assign with <span class='ct-code-b-yellow'>&c</span> i.e. the address of " +
							"<span class='ct-code-b-yellow'>c</span> is copied in <span class='ct-code-b-yellow'>k</span>.", function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'line4':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "Here the pointer variable <span class='ct-code-b-yellow'>*k</span> is assign with " +
							"value <span class='ct-code-b-yellow'>50</span>.<br>" +
							"In this case pointer variable <span class='ct-code-b-yellow'>k</span> is pointed to " +
							"<span class='ct-code-b-yellow'>c</span> so that it changes <span class='ct-code-b-yellow'>c</span> " +
							"value to <span class='ct-code-b-yellow'>50</span>.", function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'cBox':
				$('.introjs-helperLayer').one('transitionend', function() {
					var text = "let the variable <span class='ct-code-b-yellow'>c</span> is of type " +
								"<span class='ct-code-b-yellow'>int</span> it occupies <span class='ct-color-lime'>2 bytes</span> of memory " +
								"with some address (i.e. location of memory), lets its address be as <span class='ct-code-b-yellow'>1024</span>." +
								"<br><br>" +
								"Then the value <span class='ct-code-b-yellow'>10</span> is initialized."
					typing('.introjs-tooltiptext', text, function() {
						cBoxAnimation();
					});
				});
				break;
			case 'kBox':
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch(animateStep) {
				case 'kBoxZooming':
					$('.introjs-helperLayer').one('transitionend', function() {
						typing('.introjs-tooltiptext', "let the variable <span class='ct-code-b-yellow'>k</span> is of type " +
								"<span class='ct-code-b-yellow'>int</span> it occupies <span class='ct-color-lime'>2 bytes</span> of memory " +
								"with some address (i.e. location of memory), lets its address be as " +
								"<span class='ct-code-b-yellow'>1054</span>.", function() {
							kBoxAnimation();
						});
					});
					break;
				 case 'kBoxAddressing':
					$('.introjs-helperLayer').one('transitionend', function() {
						typing('.introjs-tooltiptext', "Here the address of <span class='ct-code-b-yellow'>c</span> is copied to " +
								"<span class='ct-code-b-yellow'>k</span> i.e. <span class='ct-code-b-yellow'>1024</span> is copied to " +
								"<span class='ct-code-b-yellow'>k</span>.", function() {
							$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
							$(".introjs-duplicate-nextbutton").click(function() {
								$(".introjs-duplicate-nextbutton").remove();
								tweenmaxAnimation("#cBoxAddress", "#kValue", function() {
									$(".introjs-nextbutton").show();
								});
							});
						});
					});
					break;
				}
				break; 
			case 'memoryDiv':
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch(animateStep) {
				case 'accessVariable':
					$('.introjs-helperLayer').one('transitionend', function() {
						typing('.introjs-tooltiptext', "Here the pointer variable <span class='ct-code-b-yellow'>k</span> has the " +
								"address of <span class='ct-code-b-yellow'>c</span> so it can access the " +
								"variable <span class='ct-code-b-yellow'>c</span>.", function() {
									animationPointerStraightArrow();
							$(".introjs-nextbutton").show();
						});
					});
					break;
				case 'bounceEffect':
					$('.introjs-helperLayer').one('transitionend', function() {
						var text = "The pointer variable <span class='ct-code-b-yellow'>k</span> is pointed to <span class='ct-code-b-yellow'>c</span>" +
						" so <span class='ct-code-b-yellow'>*k</span> means the value of <span class='ct-code-b-yellow'>c</span>.<br><br> " +
						"Hence the value of <span class='ct-code-b-yellow'>c</span> is changed to <span class='ct-code-b-yellow'>50</span>."
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
							$(".introjs-duplicate-nextbutton").click(function() {
								$(".introjs-duplicate-nextbutton").remove();
								bounceFromEffectWithTimelineMax("#kInputValue", "#cValue", function() {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
									$(".user-btn").click(function() {
										$(".user-btn").remove();
										var text = "Here this is a controversy, <br>" +
													"Without knowing the variable <span class='ct-code-b-yellow'>c</span>, the pointer " +
													"<span class='ct-code-b-yellow'>k</span> has changed the value of " +
													"<span class='ct-code-b-yellow'>c</span>."
													/* "This can be solved by this <b>DMA</b> <span class='ct-code-b-yellow'>" +
													"(Dynamic memory allocation)</span> with <span class='ct-code-b-yellow'>heap memeory</span>." */
										typing('.introjs-tooltiptext', text, function() {
											$(".introjs-nextbutton").show();
										});
									});
								});
							});
						});
					});
					break;
				}
				break;
			case 'exampleTwo':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "Let us consider another example.", function() {
						$("#exampleTwo, #secondExDiv").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'secondExLine1':
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch(animateStep) {
				case 'introduction':
					$('.introjs-helperLayer').one('transitionend', function() {
						var text = "Here the int variable <span class='ct-code-b-yellow'>a</span> with size of the " +
									"array <span class='ct-code-b-yellow'>5</span> is declared."
						typing('.introjs-tooltiptext', text, function() {
						$(".introjs-nextbutton").show();
						});
					});
					break;
				case 'valuesInitilization':
					$('.introjs-helperLayer').one('transitionend', function() {
						var text = "The values within the braces are <span class='ct-code-b-yellow'>three</span> but the memory alloted in " +
									"<span class='ct-code-b-yellow'>five</span> regions so after initializing the values into memory " +
									"the remaining regions filled with the <span class='ct-code-b-yellow'>zero's</span>."
						typing('.introjs-tooltiptext', text, function() {
						$(".introjs-nextbutton").show();
						});
					});
					break;
				}
				break;
			case 'secondExLine2':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "The pointer variable <span class='ct-code-b-yellow'>p</span> occupies " +
							"<span class='ct-color-lime'>2 bytes</span> of memory since it is a pointer " +
							"variable and it is declared with <span class='ct-code-b-yellow'>int datatype</span> so it " +
							"refer to <span class='ct-code-b-yellow'>int</span> variable.", function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'secondExLine3':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "Here the pointer variable <span class='ct-code-b-yellow'>p</span> is " +
							"assign with <span class='ct-code-b-yellow'>&a</span> i.e. the address of " +
							"<span class='ct-code-b-yellow'>a</span> is copied in <span class='ct-code-b-yellow'>p</span>.", function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'arrayDiv':
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch(animateStep) {
				case 'memoryAnimate':
					$('.introjs-helperLayer').one('transitionend', function() {
						var text = "Based on the array size the memory can be allocated. Here size of the array is " +
									"<span class='ct-code-b-yellow'>5</span> " +
									"so the memory allocated for <span class='ct-code-b-yellow'>5</span> regions."
						typing('.introjs-tooltiptext', text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
							$(".user-btn").click(function() {
								$(".user-btn").remove();
								$(".small-box").css("visibility", "visible");
								$("#arrayDiv").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
								$("#arrayDiv").removeClass("animated zoomIn");
								$("#smallBox").effect("transfer", { to: $("#addressId")}, 1000).addClass(".ui-effects-transfer", function() {
									$("#addressId").removeClass("opacity00", function() {
										$("#elementId").removeClass("opacity00");
										$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
										$(".user-btn").click(function() {
											$(".user-btn").remove();
											var text = "Here <span class='ct-code-b-yellow'>1112</span> is the base address and everytime " +
														"the address increased by <span class='ct-color-lime'>2 bytes</span> because it is " +
														"an <span class='ct-code-b-yellow'>int datatype</span>."
											typing('.introjs-tooltiptext', text, function() {
												$(".introjs-nextbutton").show();
											});
										});
									});
									});
								});
							});
						});
					});
					break;
				case 'initializingValues':
					$('.introjs-helperLayer').one('transitionend', function() {
						$("#inputArray").effect("transfer", { to: $("#smallBox")}, 1000).addClass(".ui-effects-transfer", function() {
							$("#smallBox").removeClass("opacity00");
							$("#valuesId1, #valuesId2, #valuesId3").removeClass("opacity00");
							typing('.introjs-tooltiptext', "The remaining regions filled with " +
									"<span class='ct-code-b-yellow'>zero's</span>.", function() {
								$("#valuesId4").removeClass("opacity00").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
									$("#valuesId5").removeClass("opacity00").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
										$(".introjs-nextbutton").show();
									});
								});
							});
						});
					});
					break;
				}
				break;
			case 'pBox':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "let <span class='ct-code-b-yellow'>p</span> is a " +
							"<span class='ct-code-b-yellow'>pointer</span> variable it occupies <span class='ct-color-lime'>2 bytes</span> of memory " +
							"with some address (i.e. location of memory), lets its address be as " +
							"<span class='ct-code-b-yellow'>1044</span>.", function() {
						pBoxAnimation();
					});
				});
				break;
			case 'secondExDiv':
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch(animateStep) {
				case 'svgAnimate':
					$('.introjs-helperLayer').one('transitionend', function() {
						typing('.introjs-tooltiptext', "Here the base address of <span class='ct-code-b-yellow'>a</span> is copied to " +
								"<span class='ct-code-b-yellow'>p</span> i.e. <span class='ct-code-b-yellow'>1112</span> is copied to " +
								"<span class='ct-code-b-yellow'>p</span>.", function() {
							tweenmaxAnimation("#firstAddressId", "#pValue", function() {
								$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
								$(".user-btn").click(function() {
									$(".user-btn").remove();
									$('.svg-line-cross').hide();
									typing('.introjs-tooltiptext', "Here the pointer variable <span class='ct-code-b-yellow'>p</span> has the " +
											"address of <span class='ct-code-b-yellow'>a</span> so it can access the " +
											"variable <span class='ct-code-b-yellow'>a</span>.", function() {
										TweenMax.to($('.svg-line-right').show(), 1, {attr: {x2: '50%'}, onComplete: function() {
											$(".introjs-nextbutton").show();
										}});
									});
								});
							});
						});
					});
					break;
				case 'arraySizeError':
					$('.introjs-helperLayer').one('transitionend', function() {
						typing('.introjs-tooltiptext', "But here the size of the array <span class='ct-code-b-yellow'>a</span> " +
								"is already declared with <span class='ct-code-b-yellow'>5</span>. Once the memory is allocated " +
								"at compile time or run time we can't modify the memory. So it gives an <span class='ct-color-red'>error</span>.", function() {
									$("#secondExLine4").addClass("ct-color-red");
							$(".introjs-nextbutton").show();
						});
					});
					break;
				}
				break;
			case 'secondExLine4':
				$('.introjs-helperLayer').one('transitionend', function() {
					$("#secondExLine4").removeClass("opacity00");
					typing('.introjs-tooltiptext', "Now I want to increase the size of array <span class='ct-code-b-yellow'>5</span> " +
							"to <span class='ct-code-b-yellow'>10.</span>", function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'finalDiv':
				$('.introjs-helperLayer').one('transitionend', function() {
					$("#finalDiv").removeClass("opacity00").css({height: $("#finalDiv").outerHeight()});
					var text = $("#finalDiv").html();
					typing('.final-div', text, function() {
						$("#finalDiv").addClass('z-index9999999');
						setTimeout(function () {
							introjs.nextStep();
						}, 1000);
					});
				});
				break;
			case 'restart':
				$(".introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton").hide();
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

function cBoxAnimation() {
	$("#cBox").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		$("#cBox").removeClass("animated zoomIn");
		$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
		$(".introjs-duplicate-nextbutton").click(function() {
			$(".introjs-duplicate-nextbutton").remove();
			tweenmaxAnimation("#cInputValue", "#cValue", function() {
				$(".introjs-nextbutton").show();	
			});
		});
	});
}

function kBoxAnimation() {
	$("#kBox").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		$("#kBox").removeClass("animated zoomIn");
		$(".introjs-nextbutton").show();
	});
}

function pBoxAnimation() {
	$("#pBox").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		$("#pBox").removeClass("animated zoomIn");
		$(".introjs-nextbutton").show();
	});
}

function animationPointerStraightArrow() {
	$('.introjs-duplicate-nextbutton').remove();
	TweenMax.to($('.svg-line').show(), 1, {attr: {x2: '42%'}, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function animationPointerArrow() {
	TweenMax.to($('.svg-line-cross').show(), 2, {attr: {x2: '35%', y2: '52%'}, onComplete: function() {
		$("#pValue").removeClass("opacity00");
		$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
		$(".user-btn").click(function() {
			$(".user-btn").remove();
			$('.svg-line-cross').hide();
			typing('.introjs-tooltiptext', "Here the pointer variable <span class='ct-code-b-yellow'>p</span> has the " +
					"address of <span class='ct-code-b-yellow'>a</span> so it can access the " +
					"variable <span class='ct-code-b-yellow'>a</span>.", function() {
				TweenMax.to($('.svg-line-right').show(), 1, {attr: {x2: '50%'}, onComplete: function() {
					$(".introjs-nextbutton").show();
				}});
			});
		});
	}});
}

function tweenmaxAnimation(selector1, selector2, callBackFunction) {
	var l3 = $(selector1).offset();
	var l4 = $(selector2).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$(selector1).effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$(selector2).removeClass("opacity00");
		TweenMax.from(selector2, 1, {top: topLength, left: leftLength, onComplete: function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	});
}

function bounceFromEffectWithTimelineMax(selector1, selector2, callBackFunction) {
	var timelineMax = new TimelineMax();
	var l1 = $(selector1).offset();
	var l2 = $(selector2).offset();
	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	$(selector2).parent().append('<span id="temp" style="position: absolute;"></span>');
	$('#temp').offset({top: l2.top, left: l2.left}).text($(selector2).text());
	$(selector2).text($(selector1).text());
	timelineMax.from(selector2, 3, {ease:  Bounce.easeOut, top: topLength, left: leftLength, onComplete: function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}}).to('#temp', 1, { ease: Sine.easeOut, top: "-=100", opacity: 0, onComplete: function() {
		$('#temp').remove();
	}}, "-=2");
}

</script>

</html>