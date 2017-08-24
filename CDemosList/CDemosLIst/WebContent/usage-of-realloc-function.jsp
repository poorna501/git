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
	font-size: 12px;
}

.border-invisible {
	border: 1px;
	visibility: ;
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

.ct-color-lime {
	color: lime;
}

.ct-color-teal {
	color: teal;
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
	/* background-color: wheat; */
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

.svg-line {
	display: none;
	marker-end: url("#arrowEnd");
	position: relative;
	stroke: gray;
	stroke-width: 2; 
}

.svg-line-two {
	display: none;
	marker-end: url("#arrowEnd");
	position: relative;
	stroke: gray;
	stroke-width: 2;
}

.user-btn {
	background-color: green;
}

.animated-border {
	border-color: rgba(255, 255, 255, 0);
    animation: 2s ease 0s normal none 1 running animated-border;
}

@keyframes animated-border {  
  100% { border-color: gray; }
}

</style>

</head>

<body>

<div class="main-div col-xs-12">
	<div class="text-center margin-top-1">
		<h3 class='label ct-demo-heading' id="heading">
			<span>Usage of realloc( )</span>
		</h3>
	</div>
	<div class="col-xs-8 col-xs-offset-2 margin-top-2 info-div" id="infoDiv">
		<ul>
			<li>The <span class='ct-color-teal'>realloc( )</span> is capable of increasing or decreasing the space that has been created by 
				<span class='ct-color-maroon'>malloc( )</span>, <span class='ct-color-maroon'>calloc( )</span>.</li>
			<!-- <li>The general format of <span class='ct-color-maroon'>calloc( )</span> is <span class="syntax-class">(void*) 
			realloc (pointer variable, number of bytes);</span></li> -->
		</ul>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-4 col-xs-offset-4 text-center margin-top-2 border opacity00" id="syntax">
			<span class="syntax-class">(<span id="voidType">void*</span>)<span id="realloc">realloc
			(<span id="pointer">pointer variable</span>, <span id="size">number of bytes</span>);</span></span>
		</div>
	</div>
	<div class="col-xs-12 margin-top-2">
		<div class="col-xs-11">
			<div class="col-xs-12 margin-top-7"  id="firstDivExample">
				<div class="col-xs-4 border opacity00" id="exampleOne">
<pre class="creamPreTab4 opacity00" id="preCode">
<span id="firstExLine1">int *p;</span>
<span id="firstExLine2">P = (int*)malloc(3*sizeof(int));</span>
<span id="firstExLine3">P = (int*)realloc(p, 12);</span>
</pre>
				</div>
				<div class="col-xs-7 col-xs-offset-1 opacity00" id="totalfirstExDiv">
					<div class="col-xs-12 border" id="firstExDiv">
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line" x1="30%" y1="48%" x2="31%" y2="47%"/>
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
										<td class="element-box"><span class="opacity00" id="element4">3</span></td>
										<td class="element-box"><span class="opacity00" id="element5">4</span></td>
										<td class="element-box"><span class="opacity00" id="element6">5</span></td>
									</tr>
									<tr class="" id="smallBox">
										<td class="small-box"><span class="opacity00" id="valuesId1">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId2">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId3">0</span></td>
										<td class="small-box border-invisible" id="smallBox4"><span class="opacity00" id="valuesId4">0</span></td>
										<td class="small-box border-invisible" id="smallBox5"><span class="opacity00" id="valuesId5">0</span></td>
										<td class="small-box border-invisible" id="smallBox6"><span class="opacity00" id="valuesId6">0</span></td>
									</tr>
									<tr class="" id="addressId">
										<td class="address-box"><span id="firstAddressId">1924</span></td>
										<td class="address-box">1926</td>
										<td class="address-box">1928</td>
										<td class="address-box opacity00" id="addressBox4">1930</td>
										<td class="address-box opacity00" id="addressBox5">1932</td>
										<td class="address-box opacity00" id="addressBox6">1934</td>
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
		<div class="col-xs-11">
			<div class="col-xs-12 margin-top-4"  id="secondDivExample">
				<div class="col-xs-4 border opacity00" id="exampleTwo">
<pre class="creamPreTab4 opacity00" id="preCodeTwo">
<span id="secondExLine1">int *p;</span>
<span id="secondExLine2">P = (int*)malloc(7*sizeof(int));</span>
<span id="secondExLine3">P = (int*)realloc(p, 10);</span>
</pre>
				</div>
				<div class="col-xs-7 col-xs-offset-1 opacity00" id="totalSecondExDiv">
					<div class="col-xs-12 border" id="secondExDiv">
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line-two" x1="30%" y1="49%" x2="31%" y2="49%"/>
						</svg>
						<div class="col-xs-5 text-center">
							<div class="col-xs-12 margin-top-4 opacity00" id="pBoxSecond">
								<div class="col-xs-4 Vertical-text-center">p</div>
								<div class="col-xs-6">
									<div style="color: lightslategrey;">2 bytes</div>
									<div class="memory-box"><span class="opacity00" id="pValueSecond" style="font-size: 13px">2012</span></div>
									<div><span id="pBoxSecondAddress">1024</span></div>
								</div>
							</div>
						</div>
						<div class="col-xs-7 opacity00" id="arraySecondDiv">
							<div class="col-xs-12">
							<div class="col-xs-1 Vertical-variable-text-center"></div>
							<div class="col-xs-10" id="">
								<table align="center">
									<tr class="" id="elementId">
										<td class="element-box"><span class="" id="SecondExElement1">0</span></td>
										<td class="element-box"><span class="" id="SecondExElement2">1</span></td>
										<td class="element-box"><span class="" id="SecondExElement3">2</span></td>
										<td class="element-box"><span class="" id="SecondExElement4">3</span></td>
										<td class="element-box"><span class="" id="SecondExElement5">4</span></td>
										<td class="element-box"><span class="" id="SecondExElement6">5</span></td>
										<td class="element-box"><span class="" id="SecondExElement7">6</span></td>
									</tr>
									<tr class="" id="smallBox">
										<td class="small-box"><span class="opacity00" id="valuesId1">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId2">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId3">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId4">0</span></td>
										<td class="small-box"><span class="opacity00" id="valuesId5">0</span></td>
										<td class="small-box" id="secondExBox6"><span class="opacity00" id="valuesId5">0</span></td>
										<td class="small-box" id="secondExBox7"><span class="opacity00" id="valuesId5">0</span></td>
									</tr>
									<tr class="" id="addressId">
										<td class="address-box"><span id="secondAddressId">2012</span></td>
										<td class="address-box">2014</td>
										<td class="address-box">2016</td>
										<td class="address-box">2018</td>
										<td class="address-box">2020</td>
										<td class="address-box" id="secondExAddressBox6">2022</td>
										<td class="address-box" id="secondExAddressBox7">2024</td>
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
		<div class="text-center margin-top-4" id="restartDiv">
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
			element : '#syntax',
			intro : '',
		},  {
			element : '#size',
			intro : '',
		}/* , {
			element : '#pointer',
			intro : '',
		} */, {
			element : '#realloc',
			intro : '',
		}/* , {
			element : '#voidType',
			intro : '',
		} */, {
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
			element : '#firstMemoryAllocation',
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
			animateStep : 'reallocMemory'
		}, {
			element : '#preCodeTwo',
			intro : '',
		}, {
			element : '#secondExLine1',
			intro : '',
		}, {
			element : '#pBoxSecond',
			intro : '',
		}, {
			element : '#secondExLine2',
			intro : '',
		}, {
			element : '#arraySecondDiv',
			intro : '',
		}, {
			element : '#secondExDiv',
			intro : '',
			animateStep : 'tweenmaxAnimation'
		}, {
			element : '#secondExLine3',
			intro : '',
		}, {
			element : '#secondExDiv',
			intro : '',
			animateStep : 'memoryDecrease',
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
		case 'syntax':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext',"The general format of <span class='ct-color-springgreen'>realloc( )</span> function.", function() {
					$(".syntax-class").removeClass("opacity00");
					$("#syntax").removeClass("opacity00");
					$(".introjs-nextbutton").show();
				});	
			});
			break;
		case 'preCode':
			introjs.refresh();
			$("#syntax").addClass('z-index9999999');
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleOne").removeClass("opacity00");
				typing('.introjs-tooltiptext',"Let us consider a sample example on <span class='ct-color-springgreen'>realloc( )</span>.", function() {
					TweenMax.to($("#preCode"), 1, {opacity: 1, onComplete: function() {
						$("#preCode").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					}});
				});
			});
			break;
		case 'size':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext',"This represents increasing or decreasing of size.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'pointer':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext',"This is the pointer to a memory block previously allocated " +
						"with malloc( ), calloc( ) to be reallocated.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'realloc':
			$('.introjs-helperLayer').one('transitionend', function() {
				typing('.introjs-tooltiptext',"By using <span class='ct-color-springgreen'>realloc( )</span> we can change the " +
						"memory allocated previously.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'voidType':
			$('.introjs-helperLayer').one("transitionend", function() {
				typing('.introjs-tooltiptext', "typecast this void type to any other primitive data type.", function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'firstExLine1':
			$('.introjs-helperLayer').one('transitionend', function() {
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
			$('.introjs-fixParent').removeClass('introjs-fixParent');
			$("#totalfirstExDiv").removeClass("opacity00");
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> " +
							"occupies <span class='ct-color-lime'>2 bytes</span> of memory with some address " +
							"(i.e. location of memory), lets its address be as <span class='ct-code-b-yellow'>1024</span>.";
				typing('.introjs-tooltiptext', text, function() {
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
				var text = "The <span class='ct-color-springgreen'>malloc( )</span> function returns the address of the " +
				"<span class='ct-code-b-yellow'>heap memory</span> allocated and it always returns void type base address.<br>" +
				"Here <span class='ct-code-b-yellow'>sizeof(int)</span> returns <span class='ct-color-lime'>2 bytes</span> of memory.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'firstExLine3':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "Here the size of dynamically allocated memory has 3 regions i.e <span class='ct-color-lime'>6 bytes</span>. " +
				"If we want to increase size of the memory we use <span class='ct-color-springgreen'>realloc()</span> method. " +
							"So the memory increases upto <span class='ct-color-lime'>12 bytes</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'firstMemoryAllocation':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "So the memory allocated into 3 regions and each region occupies <span class='ct-color-lime'>2 bytes</span> of memory.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						TweenMax.to($("#firstMemoryAllocation"), 1, {opacity: 1, onComplete: function() {
							$(".introjs-nextbutton").show();
						}});
					});
				});
			});
			break;
		case 'firstExDiv':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'tweenmaxAnimation':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "So the base address copied into pointer variable <span class='ct-code-b-yellow'>p</span> " +
							"i.e. <span class='ct-code-b-yellow'>1924</span> copied.", function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							tweenmaxAnimation("#firstAddressId", "#pValue", function() {
								$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
								$(".user-btn").click(function() {
									$(".user-btn").remove();
									var text = "Here the <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> " +
									"has the address of <span class='ct-code-b-yellow'>dynamic memory</span> so it can access by the " +
									"variable <span class='ct-code-b-yellow'>p</span>.";
									typing('.introjs-tooltiptext', text, function() {
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
			case 'reallocMemory':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "So the size of memory increases 3 regions to 6 regions.", function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							$("#smallBox4, #smallBox5, #smallBox6").removeClass("border-invisible");
							$("#smallBox4, #smallBox5, #smallBox6").addClass("animated-border").one('animationend', function() {
								$("#smallBox4, #smallBox5, #smallBox6").off();
								$("#smallBox4, #smallBox5, #smallBox6").css("border-color", "gray");
								addressRecursion(4);
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
				$("#exampleTwo").removeClass("opacity00");
				typing('.introjs-tooltiptext',"Let us consider an example on decreasing the size of memory using " +
						"<span class='ct-color-springgreen'>realloc( )</span>.", function() {
					TweenMax.to($("#preCodeTwo"), 1, {opacity: 1, onComplete: function(){
						$("#preCodeTwo").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					}});
				});
			});
			break;
		case 'secondExLine1':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The pointer variable <span class='ct-code-b-yellow'>p</span> occupies " +
				"<span class='ct-color-lime'>2 bytes</span> of memory since it is a pointer " +
				"variable and it is declared with <span class='ct-code-b-yellow'>int datatype</span> so it " +
				"refer to <span class='ct-code-b-yellow'>int</span> variable.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();	
				});
			});
			break;
		case 'pBoxSecond':
			$('.introjs-fixParent').removeClass('introjs-fixParent');
			$("#totalSecondExDiv").removeClass("opacity00");
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> " +
							"occupies <span class='ct-color-lime'>2 bytes</span> of memory with some address " +
							"(i.e. location of memory), lets its address be as <span class='ct-code-b-yellow'>1024</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#pBoxSecond", function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case 'secondExLine2':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "The <span class='ct-color-springgreen'>malloc( )</span> function returns the address of the " +
				"<span class='ct-code-b-yellow'>heap memory</span> allocated and it always returns void type base address.<br>" +
				"Here <span class='ct-code-b-yellow'>sizeof(int)</span> returns <span class='ct-color-lime'>2 bytes</span> of memory.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'arraySecondDiv':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "So the memory alloted into 7 regions and each region occupies <span class='ct-color-lime'>2 bytes</span> of memory.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
					$(".user-btn").click(function() {
						$(".user-btn").remove();
						boxAnimation("#arraySecondDiv", function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
			});
			break;
		case 'secondExLine3':
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "Here the size of dynamically allocated memory has 7 regions i.e <span class='ct-color-lime'>14 bytes</span>. " +
				"If we want to decreases the size of memory then we use <span class='ct-color-springgreen'>realloc()</span> method. " +
				"Now the memory decreases upto <span class='ct-color-lime'>10 bytes</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'secondExDiv':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'tweenmaxAnimation':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "So the base address copied into pointer variable <span class='ct-code-b-yellow'>p</span> " +
							"i.e. <span class='ct-code-b-yellow'>2012</span> copied.", function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							tweenmaxAnimation("#secondAddressId", "#pValueSecond", function() {
								$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
								$(".user-btn").click(function() {
									$(".user-btn").remove();
									var text = "Here the <span class='ct-code-b-yellow'>pointer</span> variable <span class='ct-code-b-yellow'>p</span> " +
									"has the address of <span class='ct-code-b-yellow'>dynamic memory</span> so it can access by the " +
									"variable <span class='ct-code-b-yellow'>p</span>.";
									typing('.introjs-tooltiptext', text, function() {
										animationPointerArrow('.svg-line-two', '53%', function() {
											$(".introjs-nextbutton").show();
										});
									});
								});
							});
						});
					});
				});
				break;
			case 'memoryDecrease':
				$('.introjs-helperLayer').one('transitionend', function() {
					typing('.introjs-tooltiptext', "So size of the dynamic memory decreased by 2 regions i.e. " +
							"<span class='ct-color-lime'>4 bytes</span>.", function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							$("#secondExBox6, #secondExBox7").addClass("border-invisible");
							tweenmaxAddressOpacity(6);
						});
					});
				});
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

function addressRecursion(i) {
	$("#addressBox" + i).removeClass("opacity00", function() {
		if (i < 6) {
			addressRecursion(++i);
		}
		else {
			elementRecursion(4);
		}
	});
}

function elementRecursion(i) {
	$("#element" + i).removeClass("opacity00", function() {
		if (i < 6) {
			elementRecursion(++i);
		}
		else {
			$(".introjs-nextbutton").show();
		}
	});
}

function tweenmaxElementOpacity(i) {
	$("#SecondExElement" + i).addClass("opacity00", function() {
	//TweenMax.to($("#SecondExElement" + i), 1, {opacity: 0}, function() {
		if (i < 7) {
			tweenmaxElementOpacity(++i);
		} else {
			$(".introjs-nextbutton").show();
		}
	});
}

function tweenmaxAddressOpacity(i) {
	$("#secondExAddressBox" + i).addClass("opacity00", function() {
	//TweenMax.to($("#secondExAddressBox" + i), 1, {opacity: 0}, function() {
		if (i < 7) {
			tweenmaxAddressOpacity(++i);
		} else {
			tweenmaxElementOpacity(6);
			
		}
	});
}

</script>
</html>