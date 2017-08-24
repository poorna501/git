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

<style type="text/css">

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

.margin-top-4 {
	margin-top: 4%;
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
	padding: 1px;
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
	/* width: 55px; */
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

.ct-color-teal {
	color: teal;
}

.ct-color-lime {
	color: lime;
}

.box {
	border: 1px solid;
	height: 20px;
	width: 20px;
}

.syntax-class {
	font-size: 16px;
	color: seagreen;
	font-family: fantasy;
}

.z-index9999999 {
	z-index: 9999999;
	background-color: white;
}

div, span {
	position: relative;
}

.svg-css {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.svg-line, .svg-line-two, .svg-line-three {
	display: none;
	marker-end: url("#arrowEnd");
	position: relative;
	stroke: gray;
	stroke-width: 2; 
}

.svg-line-left, .svg-line-right {
	display: none;
	position: relative;
	stroke: gray;
	stroke-width: 2; 
}

.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 11px;
	margin-bottom: 14px;
	height: 80px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

.user-btn {
	background-color: green;
}

.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: rgb(252, 66, 66);
}

.console-input-line {
	font-weight: normal;
	outline: medium none;
}

.console-input-line:empty::before {
	color: lightblue !important;
	content: attr(placeholder);
}

.animated-border {
	border-color: rgba(255, 255, 255, 0);
    animation: 2s ease 0s normal none 1 running animated-border;
}

@keyframes animated-border {  
  100% { border-color: gray; }
}

.blinking {
	animation-name: blink;
	animation-duration: 1s;
	animation-iteration-count: 2;
}

@keyframes blink {
	50% {
		background:  red;
	}
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
}

.output-value-circle {
	background: white;
	color: black;
}

</style>

</head>

<body>

<div class="main-div col-xs-12">
	<div class="text-center margin-top-1">
		<h3 class='label ct-demo-heading' id="heading">
			<span>Usage of free( )</span>
		</h3>
	</div>
	<div class="col-xs-8 col-xs-offset-2 margin-top-2 info-div" id="infoDiv">
		<ul>
			<li>The memory created by using <span class='ct-color-maroon'>malloc( )</span>, <span class='ct-color-maroon'>calloc( )</span>, 
			<span class='ct-color-maroon'>realloc( )</span> is destroyed by using <span class='ct-color-teal'>free( )</span>.</li>
			<li>The <span class='ct-color-teal'>free( )</span> function releases the memory pointed to by pointer variable.</li>
			<li>After destroying the memory <b>NULL</b> is specified with the pointer.</li>
		</ul>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-4 col-xs-offset-4 text-center margin-top-2 border opacity00" id="syntax">
			<span class="syntax-class">free (pointer variable);</span>
		</div>
	</div>
	<div class="col-xs-12 margin-top-2">
		<div class="col-xs-11">
			<div class="col-xs-12 margin-top-7"  id="firstDivExample">
				<div class="col-xs-4 border opacity00" id="exampleOne">
<pre class="creamPreTab4 opacity00" id="preCode">
<span id="firstExLine1">int *p;</span>
<span id="firstExLine2">P = (int*)malloc(5*sizeof(int));</span>
<span id="firstExLine3">free(p);</span>
</pre>
				</div>
				<div class="col-xs-7 col-xs-offset-1" id="totalfirstExDiv">
					<div class="col-xs-12 border opacity00" id="firstExDiv">
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line" id="svgLine" x1="30%" y1="48%" x2="31%" y2="47%"/>
						</svg>
						<div class="col-xs-5 text-center">
							<div class="col-xs-12 margin-top-4 opacity00" id="pBox">
								<div class="col-xs-4 Vertical-text-center">p</div>
								<div class="col-xs-6">
									<div style="color: lightslategrey;">2 bytes</div>
									<div class="memory-box"><span class="opacity00" id="pValue" style="font-size: 13px">1924</span></div>
									<div><span id="pBoxAddress">1024</span></div>
								</div>
							</div>
						</div>
						<div class="col-xs-7" id="arrayDiv">
							<div class="col-xs-12">
							<div class="col-xs-1 Vertical-variable-text-center"></div>
							<div class="col-xs-10 opacity00" id="firstMemoryAllocation">
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
										<td class="small-box" id="smallBox4"><span class="opacity00" id="valuesId4">0</span></td>
										<td class="small-box" id="smallBox5"><span class="opacity00" id="valuesId5">0</span></td>
									</tr>
									<tr class="" id="addressId">
										<td class="address-box" id="addressBox1"><span id="firstAddressId">1924</span></td>
										<td class="address-box" id="addressBox2">1926</td>
										<td class="address-box" id="addressBox3">1928</td>
										<td class="address-box" id="addressBox4">1930</td>
										<td class="address-box" id="addressBox5">1932</td>
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
		<div class="col-xs-4">
			<div class="col-xs-12 margin-top-4 border opacity00"  id="secondDivExample">
				<!-- <div class="col-xs-4 border" id="exampleTwo"> -->
<pre class="creamPreTab4 opacity00" id="preCodeTwo">
void main() {
	<span id="codeLine1">int *p,*q;</span>
	<span id="codeLine2">p = (int*)malloc(sizeof(int));</span>
	<span id="codeLine3">q = (int*)malloc(sizeof(int));</span>
	<span id="codeLine4">printf("enter two integer values : \n");</span>
	<span id="codeLine5">scanf("%d %d", p, q);</span>
	<span id="codeLine6">printf("sum is :%d",<span id="sum">*p+*q</span>);</span>
	<span id="codeLine7">free(p);</span>
	<span id="codeLine8">free(q);</span>
}
</pre>
				</div>
			</div>
			<div class="col-xs-4 border opacity00" id="secondExMemory" style="margin-top: 3%; margin-left: 3%;">
				<div class="col-xs-12" id="secondEx1">
					<svg class='svg-css'>
						<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
							<path d="M0,0 L5,2.5 L0,5 Z"/>
						</marker>
						<line class="svg-line-two" x1="39%" y1="52%" x2="40%" y2="52%"/>
					</svg>
					<div class="col-xs-6 text-center">
						<div class="col-xs-12 margin-top-4 opacity00" id="pBox2">
							<div class="col-xs-4 Vertical-text-center">p</div>
							<div class="col-xs-8">
								<div style="color: lightslategrey;">2 bytes</div>
								<div class="memory-box"><span class="opacity00" id="pSecondExValue" style="font-size: 13px">1038</span></div>
								<div><span id="pBoxAddress2">1016</span></div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 text-center">
						<div class="col-xs-12 margin-top-2 opacity00" id="heapMemoryBox1">
							<div class="col-xs-4 Vertical-text-center"></div>
							<div class="col-xs-8" id="dynamicDiv1">
								<div class="" style="color: lightslategrey;">2 bytes</div>
								<div class="memory-box"><span class="heap-value" id="pHeapValue" style="font-size: 13px"></span></div>
								<div><span id="pHeapAddress">1038</span></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 margin-top-2" id="secondEx2">
					<svg class='svg-css'>
						<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
							<path d="M0,0 L5,2.5 L0,5 Z"/>
						</marker>
						<line class="svg-line-three" x1="39%" y1="52%" x2="40%" y2="52%"/>
					</svg>
					<div class="col-xs-6 text-center">
						<div class="col-xs-12 margin-top-4 opacity00" id="qBox">
							<div class="col-xs-4 Vertical-text-center">q</div>
							<div class="col-xs-8">
								<div style="color: lightslategrey;">2 bytes</div>
								<div class="memory-box"><span class="opacity00" id="qValue" style="font-size: 13px">1992</span></div>
								<div><span id="qBoxAddress">1024</span></div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 text-center">
						<div class="col-xs-12 margin-top-4 opacity00" id="heapMemoryBox2">
							<div class="col-xs-4 Vertical-text-center"></div>
							<div class="col-xs-8" id="dynamicDiv2">
								<div class="" style="color: lightslategrey;">2 bytes</div>
								<div class="memory-box"><span class="heap-value" id="qHeapValue" style="font-size: 13px"></span></div>
								<div><span id="qHeapAddress">1992</span></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-3 col-xs-offset-1" style="margin-left: 4%; margin-top: 4%;">
				<div class="col-xs-12">
					<div id="consoleId" class="center opacity00" style="margin-top: 0%">
						<div class="output-console-title-bar">
							<span class="title"><b>Console</b></span>
						</div>
						<div class="output-console-body" id="consoleBodyDiv">
							<span class='visibility-hidden' id="printText1">enter two integer values :</span>
							<span class="console-input-line" id="consoleInputLine"></span>
							<span class='visibility-hidden' id="printText2">sum is :<span id="result"></span></span>
						</div>
					</div>
				</div>
			</div>
	</div>
	<div class="col-xs-12">
		<div class="text-center margin-top-2" id="restartDiv">
			<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
		</div>
	</div>
</div>

</body>

<script type="text/javascript">

var typingInterval = 10;
var arr = [];
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
	
	var maxNumberOfInputs = 2;
	var maxLengthOfInput = 2;
	$('.console-input-line').on("keydown", function(e) {
		if (arr.length == maxNumberOfInputs) {
			if (e.keyCode == 32) {
				e.preventDefault();
			}
		}
		if ($.inArray(e.keyCode, [46, 8, 9, 27, 32, 35, 36, 37, 39]) !== -1) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
	});
	
	$('.console-input-line').on("keyup", function(e) {
		$('.length-error-text').remove();
		if ($(this).text() == "") {
			$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
												"Please enter " + maxNumberOfInputs + " number and separate each with space.</span>");
		}
		
		var givenText = $(this).text();
		var splittedText = givenText.split(" ");
		arr = [];
		
		$.each(splittedText, function(idx, val) {
			if (val != '') {
				arr.push(val);
			}
		});
		
		if (arr.length < maxNumberOfInputs) {
			$(".introjs-nextbutton").hide();
		} else if (arr.length == maxNumberOfInputs) {
			$(".introjs-nextbutton").show();
		}
		
		$.each(arr, function(idx, val) {
			if (val.length > maxLengthOfInput) {
				$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
														"Please limit the index " + idx + " number length to " + maxLengthOfInput + ".</span>");
				$(".introjs-nextbutton").hide();
			}
		});
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
			element : '#syntax',
			intro : '',
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
			element : '#firstExLine2',
			intro : '',
		}, {
			element : '#arrayDiv',
			intro : '',
		}, {
			element : '#firstExDiv',
			intro : '',
			animateStep : 'tweenmaxAnimation',
		}, {
			element : '#firstExLine3',
			intro : '',
		}, {
			element : '#firstExDiv',
			intro : '',
			animateStep : 'freeAction',
		}, {
			element : '#preCodeTwo',
			intro : '',
		}, {
			element : '#codeLine1',
			intro : '',
		}, {
			element : '#secondExMemory',
			intro : '',
			animateStep : 'variableZooming'
		}, {
			element : '#codeLine2',
			intro : '',
		}, {
			element : '#heapMemoryBox1',
			intro : '',
		}, {
			element : '#secondExMemory',
			intro : '',
			animateStep : 'pBoxTweenmax'
		}, {
			element : '#codeLine3',
			intro : '',
		}, {
			element : '#heapMemoryBox2',
			intro : '',
		}, {
			element : '#secondExMemory',
			intro : '',
			animateStep : 'qBoxTweenmax'
		}, {
			element : '#codeLine4',
			intro : '',
			tooltipClass: 'hide',
		}, {
			element : '#consoleId',
			intro : '',
			animateStep : 'printText',
			tooltipClass: 'hide',
		}, {
			element : '#codeLine5',
			intro : '',
			tooltipClass: 'hide',
		}, {
			element : '#consoleId',
			intro : '',
			animateStep : 'inputValue',
		}, {
			element : '#secondExMemory',
			intro : '',
			animateStep : 'scaningValues',
		}, {
			element : '#codeLine6',
			intro : '',
			tooltipClass: 'hide',
		}, {
			element : '#consoleId',
			intro : '',
			animateStep : 'outputPrint',
			tooltipClass: 'hide',
		}, {
			element : '#sum',
			intro : '',
			tooltipClass : 'hide',
			tooltipClass: 'hide',
		}, {
			element : '#secondExMemory',
			intro : '',
			animateStep : 'valueSum',
		}, {
			element : '#consoleId',
			intro : '',
			animateStep : 'sumPrint',
			tooltipClass: 'hide',
		}, {
			element : '#codeLine7',
			intro : '',
		}, {
			element : '#secondExMemory',
			intro : '',
			animateStep : 'pHeapRemove',
		}, {
			element : '#codeLine8',
			intro : '',
		}, {
			element : '#secondExMemory',
			intro : '',
			animateStep : 'qHeapRemove',
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
			var typingContent = $("#infoDiv").html();
			typing('#infoDiv', typingContent, typingInterval, 'white', function() {
				$("#infoDiv").addClass('z-index9999999');
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case 'syntax':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The general format of <span class='ct-color-springgreen'>free( )</span> function.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$("#syntax").removeClass("opacity00").addClass('z-index9999999');
					$(".introjs-nextbutton").show();
				});	
			});
			break;      
		case 'preCode':
			introjs.refresh();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleOne").removeClass("opacity00");
				var typingContent = "Let us consider a sample example on <span class='ct-color-springgreen'>free( )</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					TweenMax.to($("#preCode"), 1, {opacity: 1, onComplete: function() {
						$("#preCode").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					}});
				});
			});
			break;
		case 'firstExLine1':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The pointer variable <span class='ct-code-b-yellow'>p</span> occupies " +
				"<span class='ct-color-lime'>2 bytes</span> of memory since it is a pointer " +
				"variable and it is declared with <span class='ct-code-b-yellow'>int datatype</span> so it " +
				"refer to <span class='ct-code-b-yellow'>int</span> variable.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();	
				});
			});
			break;
		case 'pBox':
			$('.introjs-fixParent').removeClass('introjs-fixParent');
			$("#firstExDiv").removeClass("opacity00");
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> " +
							"occupies <span class='ct-color-lime'>2 bytes</span> of memory with some address " +
							"(i.e. location of memory), lets its address be as <span class='ct-code-b-yellow'>1024</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#pBox", function() {
							$(".introjs-nextbutton").show();
						});
					});
				});;
			});
			break;
		case 'firstExLine2':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The <span class='ct-color-springgreen'>malloc( )</span> function returns the address of the " +
				"<span class='ct-code-b-yellow'>heap memory</span> allocated " +
				"and it always returns void type <span class='ct-code-b-yellow'>base address</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'arrayDiv':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "So the dynamically memory allocated as follows.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#firstMemoryAllocation", function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case 'firstExLine3':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The <span class='ct-color-springgreen'>free( )</span> is used to destroy the memory of the address " +
				"which contains in pointer variable <span class='ct-code-b-yellow'>p</span>. i.e. <span class='ct-code-b-yellow'>1924</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'firstExDiv':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'tweenmaxAnimation':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "So the base address copied into pointer variable <span class='ct-code-b-yellow'>p</span>. " +
					"i.e. <span class='ct-code-b-yellow'>1924</span> copied.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							tweenmaxAnimation("#firstAddressId", "#pValue", function() {
								$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
								$(".user-btn").click(function() {
									$(".user-btn").remove();
									var typingContent = "Here the <span class='ct-code-b-yellow'>pointer</span> variable " 
									+"<span class='ct-code-b-yellow'>p</span> " +
									"has the address of <span class='ct-code-b-yellow'>dynamic memory</span> so it can access by the " +
									"variable <span class='ct-code-b-yellow'>p</span>.";
									typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
										animationPointerArrow('.svg-line', '53%', function() {
											$(".introjs-nextbutton").show();
										});
									});
								});
							});
						});
					});
				});
				break;
			case 'freeAction':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "So the heap memory destroyed and return <span class='ct-code-b-yellow'>NULL</span> value.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							bounceFromEffectWithTimelineMax("#pValue", function() {
								$("#firstMemoryAllocation").effect( "highlight", {color:"red"}, 1000, function() {
									TweenMax.to($(".svg-line, #firstMemoryAllocation"), 1, {opacity: 0, onComplete: function() {
										$(".introjs-nextbutton").show();
									}});
								});
							});
						});
					});
				});
				break;
			}
			break;
		case 'preCodeTwo':
			introjs.refresh();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#secondDivExample").removeClass("opacity00");
				var typingContent = "Let us learn <span class='ct-color-springgreen'>free( )</span> in " +
				"<span class='ct-code-b-yellow'>C</span> using this sample code.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {	
					TweenMax.to($("#preCode"), 1, {opacity: 1, onComplete: function() {
						$("#preCodeTwo").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					}});
				});
			});
			break;
		case 'codeLine1':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The pointer variables <span class='ct-code-b-yellow'>p</span> and <span class='ct-code-b-yellow'>q</span> " +
				"are occupies <span class='ct-color-lime'>2 bytes</span> of memory since they are pointer " +
				"variables and they are declared with <span class='ct-code-b-yellow'>int datatype</span> so these " +
				"refer to <span class='ct-code-b-yellow'>int</span> variables.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'secondExMemory':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'variableZooming':
				$('.introjs-fixParent').removeClass('introjs-fixParent');
				$("#secondExMemory, #consoleId").removeClass("opacity00");
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "The <span class='ct-code-b-yellow'>pointer</span> variables <span class='ct-code-b-yellow'>p</span> " +
								"and <span class='ct-code-b-yellow'>q</span> occupies <span class='ct-color-lime'>2 bytes</span> of memory " +
								"with some address (i.e. location of memory), lets their address be " +
								"<span class='ct-code-b-yellow'>1016</span> and <span class='ct-code-b-yellow'>1024</span>.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							boxAnimation("#pBox2");
							boxAnimation("#qBox", function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
			case 'pBoxTweenmax':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "The base address copied into pointer variable <span class='ct-code-b-yellow'>p</span>. " +
					"i.e. <span class='ct-code-b-yellow'>1038</span> copied.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							tweenmaxAnimation("#pHeapAddress", "#pSecondExValue", function() {
								$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
								$(".user-btn").click(function() {
									$(".user-btn").remove();
									var typingContent = "Here the <span class='ct-code-b-yellow'>pointer</span> variable " +
									"<span class='ct-code-b-yellow'>p</span> " +
									"has the address of <span class='ct-code-b-yellow'>dynamic memory</span> so it can access by the " +
									"variable <span class='ct-code-b-yellow'>p</span>.";
									typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
										animationPointerArrow('.svg-line-two', '70%', function() {
											$(".introjs-nextbutton").show();
										});
									});
								});
							});
						});
					});
				});
				break;
			case 'qBoxTweenmax':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "The base address copied into pointer variable <span class='ct-code-b-yellow'>q</span>. " +
					"i.e. <span class='ct-code-b-yellow'>1992</span> copied.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							tweenmaxAnimation("#qHeapAddress", "#qValue", function() {
								$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
								$(".user-btn").click(function() {
									$(".user-btn").remove();
									var typingContent = "Here the <span class='ct-code-b-yellow'>pointer</span> variable " +
									"<span class='ct-code-b-yellow'>q</span> " +
									"has the address of <span class='ct-code-b-yellow'>dynamic memory</span> so it can access by the " +
									"variable <span class='ct-code-b-yellow'>q</span>.";
									typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
										animationPointerArrow('.svg-line-three', '70%', function() {
											$(".introjs-nextbutton").show();
										});
									});
								});
							});
						});
					});
				});
				break;
			case 'scaningValues':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "Entered the values copied into the dynamically allocated memory.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {	
						$('#consoleInputLine').removeAttr('contenteditable placeholder');
						var splittedText = $('#consoleInputLine').text().split(" ");
						$('#consoleInputLine').html('');
						$.each(splittedText, function(idx, val) {
							if (val != '') {
								$('#consoleInputLine').append('<span class="scanfValue">' + val + '</span> ');
								//$('#outputPrintfLine').append('<span class="printfValue visibility-hidden">' + val + '</span> ');
							} else {
								$('#consoleInputLine').append(' ');
							}
						});
						$('.scanfValue').addClass('output-value-circle circle-css');
						TweenMax.fromTo($('.scanfValue'), 1, {backgroundColor: '#FFFFFF'}, {backgroundColor: 'inherit', onComplete: function() {
							$('.scanfValue').removeClass('output-value-circle circle-css');
							$.each(arr, function(idx, val) {
								$('.heap-value').eq(idx).text(parseInt(val));
							});
							TweenMax.to($('.heap-value'), 1, {opacity: 1, onComplete: function() {
							//fromEffectWithTweenMax($('.scanfValue'), $('.heap-value'), function() {
								$(".introjs-nextbutton").show();
							}});
						}});
					});
				});
				break;
			case 'valueSum':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "<span class='ct-code-b-yellow'>*p</span> & <span class='ct-code-b-yellow'>*q</span> " +
					"returns the value at that address.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'pHeapRemove':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "So the variable <span class='ct-code-b-yellow'>p</span> of dynamic memory destroyed and " +
					"return <span class='ct-code-b-yellow'>NULL</span> value.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							bounceFromEffectWithTimelineMax("#pSecondExValue", function() {
								$("#dynamicDiv1").effect( "highlight", {color:"red"}, 1000, function() {
									TweenMax.to($(".svg-line-two, #dynamicDiv1"), 1, {opacity: 0, onComplete: function() {
										$(".introjs-nextbutton").show();
									}});
								});
							});
						});
					});
				});
				break;
			case 'qHeapRemove':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "So the variable <span class='ct-code-b-yellow'>q</span> of dynamic memory destroyed and " +
					"return <span class='ct-code-b-yellow'>NULL</span> value.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							bounceFromEffectWithTimelineMax("#qValue", function() {
								//$("#dynamicDiv2").effect( "highlight", {color:"red"}, 1000, function() {
									$("#dynamicDiv2").addClass("blinking", function() {
									TweenMax.to($(".svg-line-three, #dynamicDiv2"), 1, {opacity: 0, onComplete: function() {
										$(".introjs-nextbutton").show();
									}});
								});
							});
						});
					});
				});
				break;
			}
			break;
		case 'codeLine2':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "Here <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> is " +
							"assigned with <span class='ct-color-springgreen'>malloc( )</span> method.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'heapMemoryBox1':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The memory occupies <span class='ct-color-lime'>2 bytes</span> of memory because it is an " +
				"<span class='ct-code-b-yellow'>int data type</span>. Lets its address be as <span class='ct-code-b-yellow'>1038</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#heapMemoryBox1", function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case 'codeLine3':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "Here <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>q</span> is " +
							"assigned with <span class='ct-color-springgreen'>malloc( )</span> method.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'heapMemoryBox2':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The memory occupies <span class='ct-color-lime'>2 bytes</span> of memory because it is an " +
				"<span class='ct-code-b-yellow'>int data type</span>. Lets its address be as <span class='ct-code-b-yellow'>1992</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#heapMemoryBox2", function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case 'codeLine4':
			$('.introjs-helperLayer').one('transitionend', function() {
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case 'codeLine5':
			$('.introjs-helperLayer').one('transitionend', function() {
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case 'codeLine6':
			$('.introjs-helperLayer').one('transitionend', function() {
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case 'codeLine7':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The <span class='ct-color-springgreen'>free( )</span> is used to destroy the memory of the address " +
				"which contains in pointer variable <span class='ct-code-b-yellow'>p</span>. i.e. <span class='ct-code-b-yellow'>1038</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'codeLine8':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "The <span class='ct-color-springgreen'>free( )</span> is used to destroy the memory of the address " +
				"which contains in pointer variable <span class='ct-code-b-yellow'>q</span>. i.e. <span class='ct-code-b-yellow'>1992</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'consoleId':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'printText':
				$('.introjs-helperLayer').one('transitionend', function() {
					$("#printText1").removeClass("visibility-hidden");
					var typingContent = $("#printText1").html();
					typing('#printText1', typingContent, '30', 'white', function() {
						setTimeout(function () {
							introjs.nextStep();
						}, 1000);
					});
				});
				break;
			case 'inputValue':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = 'Here enter <span class="ct-code-b-yellow">2</span> values and separate each with space.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.console-input-line').attr({contenteditable: 'true', placeholder: 'Enter 2 values'});
						charAtEnd(document.getElementById('consoleInputLine'));
					});
				});
				break;
			case 'outputPrint':
				$('.introjs-helperLayer').one('transitionend', function() {
					$("#printText2").removeClass("visibility-hidden");
					var typingContent = $("#printText2").html();
					typing('#printText2', typingContent, '30', 'white', function() {
						setTimeout(function () {
							introjs.nextStep();
						}, 1000);
					});
				});
				break;
			case 'sumPrint':
				$('.introjs-helperLayer').one('transitionend', function() {
					$("#result").append(parseInt($("#pHeapValue").text()) + parseInt($("#qHeapValue").text()));
					setTimeout(function () {
						introjs.nextStep();
					}, 1000);
				});
				break;
			}
			break;
		case 'sum':
			$('.introjs-helperLayer').one('transitionend', function() {
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
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

function typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval": typingInterval,
		"cursor_color": cursorColor
	}, function() {
		$(typingId).removeClass('typingCursor');
		if (typeof typingCallbackFunction === "function") {
			typingCallbackFunction();
		}
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

function tweenmaxAnimation(selector1, selector2, callBackFunction) {
	var l3 = $(selector1).offset();
	var l4 = $(selector2).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left - l4.left;
	$(selector1).effect( "highlight", {color:"dodgerblue"}, 1000, function() {
		$(selector2).removeClass("opacity00");
		TweenMax.from(selector2, 1, {top: topLength, left: leftLength, onComplete: function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	});
}

function animationPointerArrow(selector, value, callBackFunction) {
	TweenMax.to($(selector).show(), 1, {attr: {x2: value}, onComplete: function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}

function charAtEnd(element) {
	element.focus();
	if (typeof window.getSelection != "undefined"&& typeof document.createRange != "undefined") {
		var range = document.createRange();
		range.selectNodeContents(element);
		range.collapse(false);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
	}    	   
}
function bounceFromEffectWithTimelineMax(selector2, callBackFunction) {
	var timelineMax = new TimelineMax();
	var l2 = $(selector2).offset();
	$(selector2).parent().append('<span id="temp" style="position: absolute;"></span>');
	$('#temp').offset({top: l2.top, left: l2.left}).text($(selector2).text());
	$(selector2).text("NULL");
	timelineMax.staggerFrom(selector2, 1, {ease:  Bounce.easeOut, opacity:1, top:-45, onComplete: function() {
	//timelineMax.from(selector2, 3, {ease:  Bounce.easeOut, top: topLength, left: leftLength, onComplete: function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}}).to('#temp', 1, { ease: Sine.easeOut, top: "-=100", opacity: 0, onComplete: function() {
		$('#temp').remove();
	}}, "-=2");
}
	
function fromEffectWithTweenMax(selector1, selector2, callBackFunction) {
	var l1 = $(selector1).offset();
	var l2 = $(selector2).offset();
	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	TweenMax.from($(selector2), 1, {top: topLength, left: leftLength, onComplete: function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}

</script>
</html>
