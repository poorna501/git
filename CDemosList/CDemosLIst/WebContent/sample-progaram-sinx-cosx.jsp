<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/font-awesome.min.css" />
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css" />
<link rel="stylesheet" href="/css/animate.css" />

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenLite.min.js" type="text/javascript"></script>
<script src="/js/gs/TimelineLite.min.js" type="text/javascript"></script>

<title>Sample program of functions</title>
<style type="text/css">

.margin-top-20 {
	margin-top: 20px;
}

.box-border {
	border: 1px solid gray;
	border-radius: 8px;
	background-color: #f5f5f5;
}

.center {
	margin-left: auto !important;
	margin-right: auto !important;
	display: block;
}

.output-console-body {
	height: 175px;
}

.output-console {
	margin: 0;
}

.creampretab4 {
	font-size: 11px;
	-moz-tab-size: 2;
	background-color: lavender !important;
	line-height: 1.50;
}

#outputDiv {
	margin-top: 45px;
}

.introjs-tooltip {
	min-width: 300px;
}

.blinking-white {
	animation-name: blink-border-background-white ;
	animation-duration: 1s ;
	animation-iteration-count: infinite;
	animation-direction: alternate ;
	z-index: 10000000;
	position: relative;
}

@keyframes blink-border-background-white { 
	50% {
		border-color: white;
		background: white;
	}
}

.blinking-orange {
	animation-name: blink-border-background-orange ;
	animation-duration: 1s ;
	animation-iteration-count: infinite;
	animation-direction: alternate ;
	z-index: 10000000;
	position: relative;
}

@keyframes blink-border-background-orange { 
	50% {
		border-color: orange;
		background: orange;
	}
}

.ui-effects-transfer {
    background-color: blue;
    z-index: 99999999 !important;
}

.memory-box {
	height: 40px;
	line-height: 40px;
}

.address-font {
	font-size: 10px;
}

.box-font {
	font-size: 12px;
}

.errMsg {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

[contenteditable=true] {
	 outline: none;
}

</style>
</head>
<body>
	<script type="text/javascript">
	var introjs;
	var typingSpeed = 10;
	var tl;
	var xResult;
	var i = 1;
	var iCount = 1;	
	var sum;
	var term;
	var tanVal;
	$(document).ready(function() {
		introGuide();
		tl = new TimelineLite();
	});
	
	function introGuide() {
		introjs = introJs();
		introjs.setOptions({
			steps : [{
				element : "#heading",
				intro : "",
				position : "right"
			},{
				element : "#codeAnimation",
				intro : "",
				position : "right"
			},{
				element : "#funcDec1",
				intro : "",
				position : "right"
			},{
				element : "#funcDec2",
				intro : "",
				position : "right"
			},{
				element : "#mainFun",
				intro : "",
				position : "right"
			},{
				element : "#funcDef1",
				intro : "",
				position : "right"
			},{
				element : "#funcDef2",
				intro : "",
				position : "right"
			},{
				element : "#mainVar1",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#mainVar2",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#mainPrintf1",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#nScanf",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				position : "left"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#mainPrintf2",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#xScanf",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				position : "left"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#xInDeg",
				intro : "",
				position : "right"
			},{
				element : "#mainPrintf3",
				intro : "",
				position : "right"
			},{
				element : "#sinCall",
				intro : "",
				position : "right"
			},{
				element : "#sinFunc",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#sinVar1",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#sinVar2",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#termDec1",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#forLoop1",
				intro : "",
				position : "right"
			},{
				element : "#iDec1",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#restart",
				intro : "",
				tooltipClass : "hide"
			}]
		});
		
		introjs.onafterchange(function(targetElement) {
			var elementId = targetElement.id;
			switch (elementId) {
			
			case "heading":
				$(".introjs-nextbutton").hide();
				var text = "Let us consider an example on working of <span class='ct-code-b-yellow'>functions</span>.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
				break;
				
			case "codeAnimation":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the program to find the <span class='ct-code-b-yellow'>sin</span>, " 
								+ " <span class='ct-code-b-yellow'>cos</span> and <span class='ct-code-b-yellow'>tan</span> " 
								+ " series values by using functions.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funcDec1":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is a function declaration with name <span class='ct-code-b-yellow'>sine(int n, float x)</span> " 
								+ " with <span class='ct-code-b-yellow'>return type</span> float and with " 
								+ "<span class='ct-code-b-yellow'>two</span> arguments <b>int</b> and <b>float</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funcDec2":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is a function declaration with name <span class='ct-code-b-yellow'>cosi(int n, float x)</span> " 
						+ " with <span class='ct-code-b-yellow'>return type</span> float and with " 
						+ "<span class='ct-code-b-yellow'>two</span> arguments <b>int</b> and <b>float</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainFun":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is <span class='ct-code-b-yellow'>main()</span> function";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funcDef1":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the function definition of <span class='ct-code-b-yellow'>sine(int n, float x)</span> ";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funcDef2":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the function definition of <span class='ct-code-b-yellow'>cosi(int n, float x)</span>";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainVar1":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of <b>float</b> variable <b>x</b>. It is declared inside "
								+ " <span class='ct-code-b-yellow'>main()</span> " 
								+ " so we called it as <span class='ct-code-b-yellow'>local</span> variable to the " 
								+ " <span class='ct-code-b-yellow'>main()</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainVar2":
				$(".introjs-nextbutton").hide();
				$("#mainVar1").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of <b>int</b> variable <b>n</b>. It is declared inside "
								+ " <span class='ct-code-b-yellow'>main()</span> so we called it as " 
								+ " <span class='ct-code-b-yellow'>local</span> variable to the <span class='ct-code-b-yellow'>main()</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainPrintf1":
			case "mainPrintf2":
			case "mainPrintf3":
			case "mainPrintf4":
			case "mainPrintf5":
				$(".introjs-nextbutton").hide();
				$("#mainVar2").removeClass("blinking-white");
				$("#localVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This <span class='ct-code-b-yellow'>printf()</span> function will print the message on the standard " 
								+ " output device(monitor).";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "nScanf":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Here <span class='ct-code-b-yellow'>scanf()</span> function is used to read <b>integer</b> value.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "xScanf":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Here <span class='ct-code-b-yellow'>scanf()</span> function is used to read <b>float</b> value.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "xInDeg":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Here we are converting x degrees into radians. <ul> <li class='ct-code-b-yellow'> <span id='xDegRes'>x =</span> " 
								+ " <span id='degVal' style='display: inline-block; position: relative;'> " 
								+ " (<span id='xFlip' style='display: inline-block; position: relative;'>x</span> * 3.14) / 180</span>; </li> </ul>";
					
					typing(".introjs-tooltiptext", text, function() {
						var xValue = parseFloat($("#num2").text());
						xResult = (xValue * 3.14 / 180).toFixed(6);
						xResult = parseFloat(xResult);
						flipEffect("#xFlip", xValue, function() {
							flipEffect("#degVal", xResult, function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
				
			case "sinCall":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					if(introjs._currentStep == 23) {
						var text = "The function call was made to <span class='ct-code-b-yellow'>sine(n, x)</span>. so the"
									+ " control is transfered from main() to sine().";
					} else {
						var text = "The returned value sum will comes here.";
					}
					
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "cosCall":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					if(introjs._currentStep == 55) {
						var text = "The returned value sum will comes here.";
					} else {
						var text = "The function call was made to <span class='ct-code-b-yellow'>cosi(n, x)</span>. so the"
									+ " control is transfered from main() to cosi().";
					}
					
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "tanCall":
				$(".introjs-nextbutton").hide();
				tanVal = parseFloat($("#sinReturn").text())/parseFloat($("#cosReturn").text());
				tanVal = parseFloat(tanVal);
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "The function call was made to <span class='ct-code-b-yellow'>sine(n, x)</span>. so the"
								+ " and <span class='ct-code-b-yellow'>cosi(n, x)</span>. And we are dividing the return values of"
								+ " these function calls. <ul><li id='liFlip' class='ct-code-b-yellow'><span id='flipSinCall'>sine(n, x)</span> / " 
								+ " <span id='flipCosCall'>cosi(n, x)</span></li></ul>";
					typing(".introjs-tooltiptext", text, function() {
						flipEffect("#flipSinCall", $("#sinReturn").text(), function() {
							flipEffect("#flipCosCall", $("#cosReturn").text(), function() {
								flipEffect("#liFlip", tanVal, function() {
									$(".introjs-nextbutton").show();
								});
							});
						});
					});
				});
				break;
				
			case "sinFunc":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					$("#ntransfer1").effect( "transfer", { to: $("#sineFormArg1"), className: "ui-effects-transfer" }, 1000 , function() {
						$("#xtransfer1").effect( "transfer", { to: $("#sineFormArg2"), className: "ui-effects-transfer" }, 1000 , function() {
							var text = "Here the two integer variables <b>n</b> and <b>x</b> are called "
										+ " <span class='ct-code-b-yellow'>formal arguments</span>. The n and x values of main() " 
										+ " are copied into the variables n and x of sine()."
							typing(".introjs-tooltiptext", text, function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				
				});
				break;
				
			case "cosFunc":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					$("#ntransfer2").effect( "transfer", { to: $("#cosFormArg1"), className: "ui-effects-transfer" }, 1000 , function() {
						$("#xtransfer2").effect( "transfer", { to: $("#cosFormArg2"), className: "ui-effects-transfer" }, 1000 , function() {
							var text = "Here the two integer variables <b>n</b> and <b>x</b> are called "
								+ " <span class='ct-code-b-yellow'>formal arguments</span>. The n and x values of main() " 
								+ " are copied into the variables n and x of cosi()."
							typing(".introjs-tooltiptext", text, function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				
				});
				break;
				
			case "sinVar1":
				$(".introjs-nextbutton").hide();
				$("#formalDec1").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of <b>int</b> variable <b>i</b>. It is declared inside "
						+ " <span class='ct-code-b-yellow'>sine()</span> so we called it as " 
						+ " <span class='ct-code-b-yellow'>local</span> variable to the <span class='ct-code-b-yellow'>sine()</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "cosVar1":
				$(".introjs-nextbutton").hide();
				$("#formalDec1").removeClass("blinking-white");
				$("#cosVar1").addClass("check");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of <b>int</b> variable <b>i</b>. It is declared inside "
						+ " <span class='ct-code-b-yellow'>cosi()</span> so we called it as " 
						+ " <span class='ct-code-b-yellow'>local</span> variable to the <span class='ct-code-b-yellow'>cosi()</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "sinVar2":
				$(".introjs-nextbutton").hide();
				$("#sinVar1").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of two <b>float</b> variables <b>sum</b> and <b>term</b>. These are declared inside "
						+ " <span class='ct-code-b-yellow'>sine()</span> so we called them as " 
						+ " <span class='ct-code-b-yellow'>local</span> variables to the <span class='ct-code-b-yellow'>sine()</span>.";
								
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "cosVar2":
				$(".introjs-nextbutton").hide();
				$("#cosVar2").addClass("check");
				$("#cosVar1").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of two <b>float</b> variables <b>sum</b> and <b>term</b>. These are declared inside "
						+ " <span class='ct-code-b-yellow'>cosi()</span> so we called them as " 
						+ " <span class='ct-code-b-yellow'>local</span> variables to the <span class='ct-code-b-yellow'>cosi()</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "termDec1":
				$(".introjs-nextbutton").hide();
				$("#sinVar2").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "<b>x</b> value is assigned to <span class='ct-code-b-yellow'>term</span> " 
								+ "and <span class='ct-code-b-yellow'>sum</span>"
					typing(".introjs-tooltiptext", text, function() {
						term = xResult;
						sum = xResult; 
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "termDec2":
				$(".introjs-nextbutton").hide();
				$("#cosVar2").removeClass("blinking-white");
				$("#termDec2").addClass("check");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Now we are declaring <b>term</b>, <b>sum</b> variables to the value <b>1</b>. Now term = sum = <b>1</b>.";
					typing(".introjs-tooltiptext", text, function() {
						term = 1;
						sum = 1; 
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "forLoop" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(i == 1) {
						var text = "By using for loop calculate the <span class='ct-code-b-yellow'>sin</span> series value.";
					} else {
						var text = "By using for loop calculate the <span class='ct-code-b-yellow'>cos</span> series value.";
					}
					
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "iDec" + i:
				$(".introjs-nextbutton").hide();
				if(i == 2) {
					$("#iDec2").addClass("check");
				}
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "<span class='ct-code-b-yellow'>i</span> is initialized with value <span class='ct-code-b-yellow'>1</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			
			case "forCond" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					
					if(iCount < parseInt($("#num1").text())) {
						var text = "In this statement we are checking the condition <span class='ct-code-b-yellow'>i < n</span>."
									+ " <ul><li>Now <b>i = "+iCount+"</b> and <b>n = "+$("#num1").text()+"</b>.</li>"
									+ " <li><span class='ct-code-b-yellow'>"+iCount+" < "+$("#num1").text()+"</span> evaluates to "  
									+ " <span class='ct-code-b-yellow'>true</span>. Now control goes to next statement.</li></ul>";
					} else {
						var text = "In this statement we are checking the condition <span class='ct-code-b-yellow'>i < n</span>."
									+ " <ul><li>Now <b>i = "+iCount+"</b> and <b>n = "+$("#num1").text()+"</b>.</li>"
									+ " <li><span class='ct-code-b-yellow'>"+iCount+" < "+$("#num1").text()+"</span> evaluates to "  
									+ " <span class='ct-code-b-yellow'>false</span>. So for loop terminates.</li></ul>";
					}
					typing(".introjs-tooltiptext", text, function() {
						if(i == 1) {
							$("#mainPrintf3").addClass("print-output");
						} else if( i == 2 ) {
							$("#mainPrintf4").addClass("print-output");
						}
						$(".introjs-nextbutton").show();
					});
				});
				break;
			
			
			case "termInFor" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if($("#cosVal4").hasClass("check")) {
						term = (((-term) * (xResult * xResult )) / ((2 * iCount ) * ((2 * iCount)-1))).toFixed(6);
						var text = "In this statement we are calculating term by using below formula." 
									+ " <ul><li>term = <span id='flipTerm' style='display: inline-block; position: relative;'>" 
									+ " ((-term) * (x*x )) / ((2*i ) * ((2*i)-1))</span>;</li><ul>";
					} else {
						term = (((-term) * (xResult * xResult )) / ((2 * iCount ) * ((2 * iCount)+1))).toFixed(6);
						var text = "In this statement we are calculating term by using below formula." 
									+ " <ul><li>term = <span id='flipTerm' style='display: inline-block; position: relative;'>" 
									+ " ((-term) * (x*x )) / ((2*i ) * ((2*i)+1))</span>;</li><ul>";
					}
					
					typing(".introjs-tooltiptext", text, function() {
						flipEffect("#flipTerm", term, function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
				break;
			
			case "sumInFor" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					sum = (parseFloat(sum) + parseFloat(term)).toFixed(6);
					var text = "In this statement we are adding sum and term and declaring it to the sum. <ul><li>Now sum = "
								+ " <span id='flipSum' class='ct-code-b-yellow' style='display: inline-block; position: relative;'> " 
								+ " sum + term</span>.</li></ul>";
					typing(".introjs-tooltiptext", text, function() {
						flipEffect("#flipSum", sum, function() {
							$(".introjs-nextbutton").show();
						});
					});
				});
				break;
				
			case "iInc" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					iCount++;
					var text = "In this statement we are incrementing i value by <span class='ct-code-b-yellow'>i++</span>. "
								+ " Now <span class='ct-code-b-yellow'>i = " + iCount + "</span>";
					typing(".introjs-tooltiptext", text, function() {
						if(iCount < parseInt($("#num1").text())) {
							dynamicSteps();
						} else {
							if($("#cosVal4").hasClass("check")) {
								steps2();
							} else {
								steps();
							}
						}
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "endFor" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "For loop ended here.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "returnVal" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here <span class='ct-code-b-yellow'>sine()</span> function <span class='ct-code-b-yellow'>returns</span> " 
								+ " the value sum = "+sum+".";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "animationBox":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if($("#mainVal1").hasClass("check")) {
						$("#mainVal1").removeClass("check");
						if(introjs._currentStep == 8) {
							tl.to("#boxHeading1, #mainBox", 1, {opacity: 1, onComplete: function() {
								$("#mainVar1").addClass("blinking-white");
								$("#boxHeading1").removeClass("opacity00");
							}});
							tl.to("#mainVal1", 1, {opacity: 1, onComplete: function() {
								$("#mainVal1").removeClass("opacity00");
								$("#mainVal2").addClass("check");
								var text = "The variable <b>x</b> has stored somewhere in the memory location at the respected " 
											+ " <span class='ct-code-b-yellow'>address</span> in the " 
											+ "<span class='ct-code-b-yellow'>main()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						} else if(introjs._currentStep == 15) {
							$("[contenteditable=true]").attr("contenteditable", false);
							$("#nMainVal").text($("#num1").text());
							var l1 = $("#dAddr").offset();
							$("#nMainVal").offset({"top": l1.top, "left": l1.left});
							$("#dScan").addClass("blinking-white");
							$("#dAddr").delay(1000).queue(function() {
								$("#dScan").removeClass("blinking-white");
								$("#nMainVal").removeClass("opacity00");
								$("#dAddr").addClass("blinking-white");
								$("#nMainVal").addClass("blinking-white");
								tl.to("#nMainVal", 1, {opacity: 1, top:0, left:0, onComplete: function() {
									$("#dAddr").removeClass("blinking-white");
									$("#nMainVal").removeClass("blinking-white");
									var text = "The value <b>"+$("#num1").text()+"</b> is stored in the memory of the variable " 
												+ "<span class='ct-code-b-yellow'>n</span>.";
									typing(".introjs-tooltiptext", text, function() {
										$("#mainVal1").removeClass("check");
										$("#mainVal2").addClass("check");
										$(".introjs-nextbutton").show();
									});
								}});
							});
						}
						
					} else if($("#mainVal2").hasClass("check")) {
						if(introjs._currentStep == 10) {
							$("#mainVar2").addClass("blinking-white");
							tl.to("#mainVal2", 1, {opacity: 1, onComplete: function() {
								$("#mainVal2").removeClass("opacity00");
								$("#mainVal1").addClass("check");
								var text = "The variable <b>n</b> has stored somewhere in the memory location at the respected " 
											+ " <span class='ct-code-b-yellow'>address</span> in the " 
											+ " <span class='ct-code-b-yellow'>main()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						} else if(introjs._currentStep == 20) {
							$("[contenteditable=true]").attr("contenteditable", false);
							if($("#num2").text().includes(".")) {
								$("#num2").text($("#num2").text());
							} else {
								$("#num2").text($("#num2").text() + ".0");
							}
							$("#xMainVal").text($("#num2").text());
							var l2 = $("#fAddr").offset();
							$("#xMainVal").offset({"top": l2.top, "left": l2.left});
							$("#fScan").addClass("blinking-white");
							$("#fAddr").delay(1000).queue(function() {
								$("#fScan").removeClass("blinking-white");
								$("#xMainVal").removeClass("opacity00");
								$("#fAddr").addClass("blinking-white");
								$("#xMainVal").addClass("blinking-white");
								tl.to("#xMainVal", 1, {opacity: 1, top:0, left:0, onComplete: function() {
									$("#fAddr").removeClass("blinking-white");
									$("#xMainVal").removeClass("blinking-white");
									var text = "The value <b>"+$("#num2").text()+"</b> is stored in the memory of the variable " 
												+ "<span class='ct-code-b-yellow'>x</span>.";
									typing(".introjs-tooltiptext", text, function() {
										$("#mainVal2").removeClass("check");
										$("#sineVal1").addClass("check");
										$(".introjs-nextbutton").show();
									});
								}});
							});
						}
						
					} else if($("#sineVal1").hasClass("check")) {
						if(introjs._currentStep == 25) {
							var l1 = $("#sineFormArg1").offset();
							var l2 = $("#sineFormArg2").offset();
							$("#nSineVal").offset({"top": l1.top, "left": l1.left});
							$("#xSineVal").offset({"top": l2.top, "left": l2.left});
							$("#nSineVal").text($("#num1").text());
							$("#xSineVal").text(xResult);
							
							tl.to("#boxHeading2, #sineBox", 1, {opacity: 1, onComplete: function() {
								$("#boxHeading2").removeClass("opacity00");
								$("#formalDec1").addClass("blinking-white");
							}});
							tl.to("#sineVal1", 1, {opacity: 1, onComplete: function() {
								$("#sineVal1").removeClass("opacity00");
							}});
							tl.to("#sineVal2", 1, {opacity: 1, onComplete: function() {
								$("#sineVal2").removeClass("opacity00");
								$("#formalDec1").removeClass("blinking-white");
								$("#nSineVal").addClass("blinking-white");
								$("#sineFormArg1").addClass("blinking-white");
								$("#nSineVal").removeClass("opacity00");
							}});
							tl.to("#nSineVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
								$("#nSineVal").removeClass("blinking-white");
								$("#sineFormArg1").removeClass("blinking-white");
								$("#xSineVal").addClass("blinking-white");
								$("#sineFormArg2").addClass("blinking-white");
								$("#xSineVal").removeClass("opacity00");
							}});
							tl.to("#xSineVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
								$("#xSineVal").removeClass("blinking-white");
								$("#sineFormArg2").removeClass("blinking-white");
								var text = "The variables <b>n</b> and <b>x</b> are stored somewhere in the memory " 
											+ " location with values "+$("#num1").text()+" and "+$("#num2").text()+" respectively "
											+ " at the respected <span class='ct-code-b-yellow'>addresses</span> in the "
											+ " <span class='ct-code-b-yellow'>sine()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$("#sineVal1").removeClass("check");
									$("#sineVal3").addClass("check");
									$(".introjs-nextbutton").show();
								});
							}});
						}
					} else if($("#sineVal3").hasClass("check")) {
						if(introjs._currentStep == 27) {
							tl.to("#sineVal3", 1, {opacity: 1, onComplete: function() {
								$("#sinVar1").addClass("blinking-white");
								$("#sineVal3").removeClass("opacity00");
								var text = "The variable <b>i</b> has stored somewhere in the memory location at the respected " 
											+ " <span class='ct-code-b-yellow'>address</span> in the " 
											+ " <span class='ct-code-b-yellow'>sine()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$("#sineVal3").removeClass("check");
									$("#sineVal4").addClass("check");
									$(".introjs-nextbutton").show();
								});
							}});
						} else if(introjs._currentStep == 34) {
							$("#iSineVal").text(1);
							tl.to("#iSineVal", 1, {opacity: 1, onComplete: function() {
								$("#iSineVal").removeClass("opacity00");
								var text = "Here the value <b>1</b> has stored in the variable <b>i</b> in " 
											+ " <span class='ct-code-b-yellow'>sine()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									if(iCount < parseInt($("#num1").text())) {
										dynamicSteps();
									} else {
										steps();
									}
									$("#sineVal3").removeClass("check");
									$("#sineVal4").addClass("check")
									$(".introjs-nextbutton").show();
								});
							}});
						}
					} else if($("#sineVal4").hasClass("check")) {
						if(introjs._currentStep == 29) {
							tl.to("#sineVal4", 1, {opacity: 1, onComplete: function() {
								$("#sinVar2").addClass("blinking-white");
								$("#sineVal4").removeClass("opacity00");
							}});
							tl.to("#sineVal5", 1, {opacity: 1, onComplete: function() {
								$("#sineVal5").removeClass("opacity00");
								var text = "The variables <b>sum</b> and <b>term</b> are stored somewhere in the memory location at the " 
											+ " respected <span class='ct-code-b-yellow'>addresses</span> in the " 
											+ " <span class='ct-code-b-yellow'>sine()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						} else if(introjs._currentStep == 31) {
							$("#sumSineVal").text(xResult);
							$("#tSineVal").text(xResult);
							tl.to("#sumSineVal", 1, {opacity: 1, onComplete: function() {
								$("#sumSineVal").removeClass("opacity00");
							}});
							tl.to("#tSineVal", 1, {opacity: 1, onComplete: function() {
								$("#tSineVal").removeClass("opacity00");
								var text = "Now the value of <b>x</b> has stored in <b>sum</b> and <b>term</b> variables.";
								typing(".introjs-tooltiptext", text, function() {
									$("#sineVal4").removeClass("check");
									$("#sineVal3").addClass("check");
									$(".introjs-nextbutton").show();
								});
							}});
						} else {
							$("#sumSineVal").addClass("blinking-orange");
							$("#tSineVal").addClass("blinking-orange");
							var text = "Now the values of <span class='ct-code-b-yellow'>sum</span> and " 
										+ " <span class='ct-code-b-yellow'>term</span> have changed after " 
										+ " the for loop in <span class='ct-code-b-yellow'>sine()</span> function.";
							typing(".introjs-tooltiptext", text, function() {
								flipEffect("#sumSineVal", sum, function() {
									flipEffect("#tSineVal", term, function() {
										$("#sumSineVal").removeClass("blinking-orange");
										$("#tSineVal").removeClass("blinking-orange");
										$("#sineVal4").removeClass("check");
										$("#cosVal1").addClass("check")
										$(".introjs-nextbutton").show();
									});
								});
							});
						}
					} else if($("#cosVal1").hasClass("check")) {
						i = 2;
						var l1 = $("#cosFormArg1").offset();
						var l2 = $("#cosFormArg2").offset();
						$("#nCosVal").offset({"top": l1.top, "left": l1.left});
						$("#xCosVal").offset({"top": l2.top, "left": l2.left});
						$("#nCosVal").text($("#num1").text());
						$("#xCosVal").text(xResult);
						
						tl.to("#boxHeading3, #cosBox", 1, {opacity: 1, onComplete: function() {
							$("#boxHeadin3").removeClass("opacity00");
							$("#formalDec2").addClass("blinking-white");
						}});
						tl.to("#cosVal1", 1, {opacity: 1, onComplete: function() {
							$("#cosVal1").removeClass("opacity00");
						}});
						tl.to("#cosVal2", 1, {opacity: 1, onComplete: function() {
							$("#cosVal2").removeClass("opacity00");
							$("#formalDec2").removeClass("blinking-white");
							$("#nCosVal").addClass("blinking-white");
							$("#cosFormArg1").addClass("blinking-white");
							$("#nCosVal").removeClass("opacity00");
						}});
						tl.to("#nCosVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
							$("#nCosVal").removeClass("blinking-white");
							$("#cosFormArg1").removeClass("blinking-white");
							$("#xCosVal").addClass("blinking-white");
							$("#cosFormArg2").addClass("blinking-white");
							$("#xCosVal").removeClass("opacity00");
						}});
						tl.to("#xCosVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
							$("#xCosVal").removeClass("blinking-white");
							$("#cosFormArg2").removeClass("blinking-white");
							var text = "The variables <b>n</b> and <b>x</b> are stored somewhere in the memory " 
										+ " location with values "+$("#num1").text()+" and "+$("#num2").text()+" respectively "
										+ " at the respected <span class='ct-code-b-yellow'>addresses</span> in the "
										+ " <span class='ct-code-b-yellow'>cosi()</span> function.";
							typing(".introjs-tooltiptext", text, function() {
								$("#cosVal1").removeClass("check");
								$("#cosVal3").addClass("check");
								$(".introjs-nextbutton").show();
							});
						}});
					} else if($("#cosVal3").hasClass("check")) {
						if($("#cosVar1").hasClass("check")) {
							$("#cosVar1").removeClass("check")
							tl.to("#cosVal3", 1, {opacity: 1, onComplete: function() {
								$("#cosVar1").addClass("blinking-white");
								$("#cosVal3").removeClass("opacity00");
								var text = "The variable <b>i</b> has stored somewhere in the memory location at the respected " 
											+ " <span class='ct-code-b-yellow'>address</span> in the " 
											+ " <span class='ct-code-b-yellow'>cosi()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$("#cosVal3").removeClass("check");
									$("#cosVal4").addClass("check");
									$(".introjs-nextbutton").show();
								});
							}});
						} else if($("#iDec2").hasClass("check")) {
							$("#iDec2").removeClass("check")
							$("#iCosVal").text(1);
							tl.to("#iCosVal", 1, {opacity: 1, onComplete: function() {
								$("#iCosVal").removeClass("opacity00");
								var text = "Here the value <b>1</b> has stored in the variable <b>i</b> in " 
											+ " <span class='ct-code-b-yellow'>cosi()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$("#cosVal3").removeClass("check");
									$("#cosVal4").addClass("check");
									iCount = 1;
									if(iCount < parseInt($("#num1").text())) {
										dynamicSteps();
									} else {
										steps2();
									}
									$(".introjs-nextbutton").show();
								});
							}});
						}
					} else if($("#cosVal4").hasClass("check")) {
						if($("#cosVar2").hasClass("check")) {
							$("#cosVar2").removeClass("check");
							tl.to("#cosVal4", 1, {opacity: 1, onComplete: function() {
								$("#cosVar2").addClass("blinking-white");
								$("#cosVal4").removeClass("opacity00");
							}});
							tl.to("#cosVal5", 1, {opacity: 1, onComplete: function() {
								$("#cosVal5").removeClass("opacity00");
								var text = "The variables <b>sum</b> and <b>term</b> are stored somewhere in the memory location at the " 
											+ " respected <span class='ct-code-b-yellow'>addresses</span> in the " 
											+ " <span class='ct-code-b-yellow'>cos()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						} else if($("#termDec2").hasClass("check")) {
							$("#termDec2").removeClass("check")
							$("#sumCosVal").text(1);
							$("#tCosVal").text(1);
							tl.to("#sumCosVal", 1, {opacity: 1, onComplete: function() {
								$("#sumCosVal").removeClass("opacity00");
							}});
							tl.to("#tCosVal", 1, {opacity: 1, onComplete: function() {
								$("#tCosVal").removeClass("opacity00");
								var text = "Now the value <b>1</b> has stored in <b>sum</b> and <b>term</b> variables.";
								typing(".introjs-tooltiptext", text, function() {
									$("#cosVal4").removeClass("check");
									$("#cosVal3").addClass("check");
									$(".introjs-nextbutton").show();
								});
							}});
						} else {
							$("#sumCosVal").addClass("blinking-orange");
							$("#tCosVal").addClass("blinking-orange");
							var text = "Now the values of <span class='ct-code-b-yellow'>sum</span> and " 
										+ " <span class='ct-code-b-yellow'>term</span> have changed after " 
										+ " the for loop in <span class='ct-code-b-yellow'>cosi()</span> function.";
							typing(".introjs-tooltiptext", text, function() {
								flipEffect("#sumCosVal", sum, function() {
									flipEffect("#tCosVal", term, function() {
										$("#sumCosVal").removeClass("blinking-orange");
										$("#tCosVal").removeClass("blinking-orange");
										$("#cosVal4").removeClass("check");
										$("#cosVal1").addClass("check")
										$(".introjs-nextbutton").show();
									});
								});
							});
						}
					} 
				});
				break;
				
			case "consoleId":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(introjs._currentStep == 12) {
						var text = "Enter number of terms : <span id='scanfVal1'></span>";
						typing("#runEditor1", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					} else if(introjs._currentStep == 14) {
						var text1 = "<span id='num1' contenteditable = 'true' maxlength='0' spellcheck='false' class='text-center int-num span-box'></span>";
						typing("#scanfVal1", text1, function() {
							var text2 = "Enter an int number in the output at blinking cursor."
							typing(".introjs-tooltiptext", text2, function() {
								charAtEnd("num1");
								
								$('.int-num').on("keydown", function(e) {
									$(".errMsg").remove();
									var max = $(this).attr("maxlength"); 
									
									if ($.inArray(e.keyCode, [46, 8, 9, 27, 35, 36, 37, 39]) !== -1) {
										return;
									}
									if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 53)) && ((e.keyCode < 96) || (e.keyCode > 101))) {
										e.preventDefault();
									}
									
									if ($(this).text().length > max) {
										$(".introjs-tooltiptext").append("<div class='errMsg'>Max Length 1 digit only</div>");
										e.preventDefault();
									}
									
								});
								
								$(".int-num").on("keyup", function(e) {
									$(".errMsg").remove();
									var max = $(this).attr("maxlength");
									
									if ($(this).text() == "") {
										$(".introjs-nextbutton").hide();
										$(".introjs-tooltiptext").append("<div class='errMsg'>Please enter a number below 6.</div>");
									} else {
										$(".introjs-nextbutton").show();
									}
									
									if ($(".int-num").text().length < 1) {
										$(".introjs-nextbutton").hide();
									}
								});
							});
						});
					} else if(introjs._currentStep == 17) {
						var text = "Enter number of degrees : <span id='scanfVal2'></span>";
						typing("#runEditor2", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					} else if(introjs._currentStep == 19) {
						var text1 = "<span id='num2' contenteditable = 'true' maxlength='2' spellcheck='false' class='text-center float-num span-box'></span>";
						typing("#scanfVal2", text1, function() {
							var text2 = "Enter a float number in the output at blinking cursor."
							typing(".introjs-tooltiptext", text2, function() {
								charAtEnd("num2");
								$('.float-num').on("keydown", function(e) {
									$(".errMsg").remove();
									var max = $(this).attr("maxlength"); 
									
									if ($(this).text().length > max) {
										if (e.keyCode == 110 || e.keyCode == 190) {
											e.preventDefault();
										}
									}
									
									if ($.inArray(e.keyCode, [46, 8, 9, 27, 35, 36, 37, 39, 110, 190]) !== -1) {
										return;
									}
									if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
										e.preventDefault();
									}
									
									if ($(this).text().length > max) {
										$(".introjs-tooltiptext").append("<div class='errMsg'>Max Length 3 digits only</div>");
										e.preventDefault();
									}
									
								});
								
								$(".float-num").on("keyup", function(e) {
									$(".errMsg").remove();
									var max = $(this).attr("maxlength");
									
									if ($(this).text() == "") {
										$(".introjs-nextbutton").hide();
										$(".introjs-tooltiptext").append("<div class='errMsg'>Please enter a float number.</div>");
									} else {
										$(".introjs-nextbutton").show();
									}
									
									if ($(".float-num").text().length < 1) {
										$(".introjs-nextbutton").hide();
									}
									
									if (($("#num2").text().charAt(0) == ".") || ($("#num2").text().charAt($(".float-num").text().length-1) == ".")) {
										$(".introjs-nextbutton").hide();
										if (($("#num2").text().charAt(0) == ".")) {
											$(".introjs-tooltiptext").append("<div class='errMsg'>Enter number first</div>");
										} else {
											$(".introjs-tooltiptext").append("<div class='errMsg'>Number can't end with dot</div>");
										}
									}
								});
							});
						});
					} else if($("#mainPrintf3").hasClass("print-output")) {
						$("#mainPrintf3").removeClass("print-output");
						var text = "The sine value = <span id='sinReturn'>"+sum+"</span>";
						typing("#runEditor3", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					} else if($("#mainPrintf4").hasClass("print-output")) {
						$("#mainPrintf4").removeClass("print-output");
						var text = "The cosine value = <span id='cosReturn'>"+sum+"</span>";
						typing("#runEditor4", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					} else {
						var text = "The tan value = "+tanVal+"";
						typing("#runEditor5", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					}
				});
				break;
				
			case "restart":
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#restart").removeClass("opacity00");
					$("#restart").click(function() {
						location.reload();
					})
				});
				break;
			}
		});
		
		introjs.setOption('showStepNumbers', false);
		introjs.setOption('exitOnOverlayClick', false);
		introjs.setOption('exitOnEsc', false);
		introjs.setOption('keyboardNavigation', false);
		introjs.start();
		$('.introjs-prevbutton').hide();
		$('.introjs-skipbutton').hide();
		$('.introjs-bullets').hide();
	}
	
	function typing(selector, text, callBackFunction) {
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
	
	function charAtEnd(elementId) {
		var element = document.getElementById(elementId);
		element.focus();
		var range = document.createRange();
		range.selectNodeContents(element);
		range.collapse(false);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
	}
	
	function flipEffect(element, value, callBackFunction) {
		tl.to(element, 0.5, {opacity:1, rotationX: -90, onComplete: function() {
			$(element).text(value);
		}});
		
		tl.to(element, 0.5, {opacity:1, rotationX: 0, onComplete: function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}
	
	function dynamicSteps() {
		var dynamicStep = {
				"element" : "#forCond" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 1, dynamicStep);
	
		var dynamicStep = {
				"element" : "#termInFor" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 2, dynamicStep);
		
		var dynamicStep = {
				"element" : "#sumInFor" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 3, dynamicStep);
		
		var dynamicStep = {
				"element" : "#iInc" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 4, dynamicStep);
	}
	
	function steps() {
		var dynamicStep = {
				"element" : "#forCond" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 1, dynamicStep);
		
		var dynamicStep = {
				"element" : "#endFor" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 2, dynamicStep);
		
		var dynamicStep = {
				"element" : "#animationBox",
				"intro" : "",
				"position" : "left"
		}
		introjs.insertOption(introjs._currentStep + 3, dynamicStep);
		
		var dynamicStep = {
				"element" : "#returnVal" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 4, dynamicStep);
		
		var dynamicStep = {
				"element" : "#sinCall",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 5, dynamicStep);
		
		var dynamicStep = {
				"element" : "#mainPrintf3",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 6, dynamicStep);
		
		var dynamicStep = {
				"element" : "#consoleId",
				"intro" : "",
				"tooltipClass" : "hide"
		}
		introjs.insertOption(introjs._currentStep + 7, dynamicStep);
		
		var dynamicStep = {
				"element" : "#mainPrintf4",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 8, dynamicStep);
		
		var dynamicStep = {
				"element" : "#cosCall",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 9, dynamicStep);
		
		var dynamicStep = {
				"element" : "#cosFunc",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 10, dynamicStep);
		
		var dynamicStep = {
				"element" : "#animationBox",
				"intro" : "",
				"position" : "left"
		}
		introjs.insertOption(introjs._currentStep + 11, dynamicStep);
		
		var dynamicStep = {
				"element" : "#cosVar1",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 12, dynamicStep);
		
		var dynamicStep = {
				"element" : "#animationBox",
				"intro" : "",
				"position" : "left"
		}
		introjs.insertOption(introjs._currentStep + 13, dynamicStep);
		
		var dynamicStep = {
				"element" : "#cosVar2",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 14, dynamicStep);
		
		var dynamicStep = {
				"element" : "#animationBox",
				"intro" : "",
				"position" : "left"
		}
		introjs.insertOption(introjs._currentStep + 15, dynamicStep);
		
		var dynamicStep = {
				"element" : "#termDec2",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 16, dynamicStep);
		
		var dynamicStep = {
				"element" : "#animationBox",
				"intro" : "",
				"position" : "left"
		}
		introjs.insertOption(introjs._currentStep + 17, dynamicStep);
		
		var dynamicStep = {
				"element" : "#forLoop2",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 18, dynamicStep);
		
		var dynamicStep = {
				"element" : "#iDec2",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 19, dynamicStep);
		
		var dynamicStep = {
				"element" : "#animationBox",
				"intro" : "",
				"position" : "left"
		}
		introjs.insertOption(introjs._currentStep + 20, dynamicStep);
	}
	
	function steps2() {
		var dynamicStep = {
				"element" : "#forCond" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 1, dynamicStep);
		
		var dynamicStep = {
				"element" : "#endFor2",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 2, dynamicStep);
		
		var dynamicStep = {
				"element" : "#animationBox",
				"intro" : "",
				"position" : "left"
		}
		introjs.insertOption(introjs._currentStep + 3, dynamicStep);
		
		var dynamicStep = {
				"element" : "#returnVal" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 4, dynamicStep);
		
		var dynamicStep = {
				"element" : "#cosCall",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 5, dynamicStep);
		
		var dynamicStep = {
				"element" : "#mainPrintf4",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 6, dynamicStep);
		
		var dynamicStep = {
				"element" : "#consoleId",
				"intro" : "",
				"tooltipClass" : "hide"
		}
		introjs.insertOption(introjs._currentStep + 7, dynamicStep);
		
		var dynamicStep = {
				"element" : "#mainPrintf5",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 8, dynamicStep);
		
		var dynamicStep = {
				"element" : "#tanCall",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 9, dynamicStep);
		
		var dynamicStep = {
				"element" : "#mainPrintf5",
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + 10, dynamicStep);
		
		var dynamicStep = {
				"element" : "#consoleId",
				"intro" : "",
				"tooltipClass" : "hide"
		}
		introjs.insertOption(introjs._currentStep + 11, dynamicStep);
	}
	
	</script>
	
	<div class="text-center margin-top-20">
		<h1 id="heading" class="label ct-demo-heading text-center">Sample Program Of Functions</h1>
	</div>
	
	<div id="mainDiv" class="col-xs-12" style="margin-top: 30px;">
		<div class="col-xs-5" id="codeBox">
	<pre id="codeAnimation" class='creampretab4 box-border code-div'>
	#include&lt;stdio.h&gt;
	<span id="funcDec1">float sine(int, float);</span>
	<span id="funcDec2">float cosi(int, float);</span>
	<span id="mainFun">main() {
		<span id="mainVar1">float x;</span>
		<span id="mainVar2">int n;</span>
		<span id="mainPrintf1">printf("Enter number of terms : ");</span>
		<span id="nScanf">scanf("<span id="dScan">%d</span>", <span id="dAddr">&n</span>);</span>
		<span id="mainPrintf2">printf("Enter number of degrees : ");</span>
		<span id="xScanf">scanf("<span id="fScan">%f</span>", <span id="fAddr">&x</span>);</span>
		<span id="xInDeg">x = (x * 3.14) / 180;</span>
		<span id="mainPrintf3">printf("The sine value = %f", <span id="sinCall">sine(<span id="ntransfer1">n</span>, <span id="xtransfer1">x</span>)</span>);</span>
		<span id="mainPrintf4">printf("The cosine value = %f", <span id="cosCall">cosi(<span id="ntransfer2">n</span>, <span id="xtransfer2">x</span>)</span>);</span>
		<span id="mainPrintf5">printf("The tan value = %f", <span id="tanCall">sine(n, x) / cosi(n, x)</span>);</span>
	<span id="endMain">}</span></span>
	
	<span id="funcDef1"><span id="sinFunc">float sine(<span id="formalDec1">int <span id="sineFormArg1">n</span>, float <span id="sineFormArg2">x</span></span>)</span> {
		<span id="sinVar1">int i;</span>
		<span id="sinVar2">float sum, term;</span>
		<span id="termDec1">term = sum = x;</span>
		<span id="forLoop1"><span id="forstatement1">for( <span id="iDec1">i = 1</span>; <span id="forCond1">i &lt; n</span>; <span id="iInc1">i++</span> )</span> {
			<span id="termInFor1">term = <span id="termCal1">((-term) * (x*x )) / ((2*i ) * ((2*i)+1))</span>;</span>
			<span id="sumInFor1">sum = <span id="sumCal1">sum + term</span>;</span>
		<span id="endFor1">}</span></span>
		<span id="returnVal1">return(sum);</span>
	}</span>
	
	<span id="funcDef2"><span id="cosFunc">float cosi(<span id="formalDec2">int <span id="cosFormArg1">n</span>, float <span id="cosFormArg2">x</span></span>)</span> {
		<span id="cosVar1">int i;</span>
		<span id="cosVar2">float sum, term;</span>
		<span id="termDec2">term = sum = 1;</span>
		<span id="forLoop2"><span id="forstatement2">for( <span id="iDec2">i = 1</span>; <span id="forCond2">i &lt; n</span>; <span id="iInc2">i++</span> )</span> {
			<span id="termInFor2">term = <span id="termCal2">((-term) * (x*x)) / ((2*i) * ((2*i)-1))</span>;</span>
			<span id="sumInFor2">sum = <span id="sumCal2">sum + term</span>;</span>
		<span id="endFor2">}</span></span>
		<span id="returnVal2">return(sum);</span>
	}</span>
	</pre>
		</div>

		<div id="animationBox"
			class="col-xs-6 col-xs-offset-1 box-border"
			style="height: 430px;">
			<div class="col-xs-12 margin-top-20">
				<div class="col-xs-12 text-center"
					style="font-weight: bold; color: rgb(47, 79, 79); padding: 0px;">
					<div id="boxHeading1" class="col-xs-4 col-xs-offset-4 opacity00">In
						main()</div>
				</div>
			</div>
			<div class="col-xs-12 box-font" style="margin-top: 10px">
				<div id="mainBox"
					class="box-border col-xs-10 col-xs-offset-1  text-center opacity00">
					<div id="mainVal1" class="col-xs-2 col-xs-offset-3 opacity00 check">
						<div>
							<b style="color: maroon;">x</b>
						</div>
						<div class="box-border memory-box">
							<span id="xMainVal" class="opacity00"></span>
						</div>
						<div class="address-font">3478</div>
					</div>
					<div id="mainVal2" class="col-xs-2 col-xs-offset-2 opacity00">
						<div>
							<b style="color: maroon;">n</b>
						</div>
						<div class="box-border memory-box">
							<span id="nMainVal" class="opacity00"></span>
						</div>
						<div class="address-font">4516</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 margin-top-20">
				<div class="col-xs-12 text-center"
					style="font-weight: bold; color: rgb(47, 79, 79); padding: 0px;">
					<div id="boxHeading2" class="col-xs-4  col-xs-4 col-xs-offset-4 opacity00">In
						sine()</div>
				</div>
			</div>
			<div class="col-xs-12 box-font" style="margin-top: 10px;">
				<div id="sineBox"
					class="box-border col-xs-10 col-xs-offset-1  text-center opacity00">
					<div id="sineVal1" class="col-xs-2 col-xs-offset-1 opacity00">
						<div>
							<b style="color: maroon;">n</b>
						</div>
						<div class="box-border memory-box">
							<span id="nSineVal" class="opacity00"></span>
						</div>
						<div class="address-font">0516</div>
					</div>
					<div id="sineVal2" class="col-xs-2 opacity00">
						<div>
							<b style="color: maroon;">x</b>
						</div>
						<div class="box-border memory-box">
							<span id="xSineVal" class="opacity00"></span>
						</div>
						<div class="address-font">1125</div>
					</div>
					<div id="sineVal3" class="col-xs-2 opacity00">
						<div>
							<b style="color: maroon;">i</b>
						</div>
						<div class="box-border memory-box">
							<span id="iSineVal" class="opacity00"></span>
						</div>
						<div class="address-font">2216</div>
					</div>

					<div id="sineVal4" class="col-xs-2 opacity00">
						<div>
							<b style="color: maroon;">sum</b>
						</div>
						<div class="box-border memory-box">
							<span id="sumSineVal" class="opacity00" style="font-size: 9px; display: inline-block; position: relative;"></span>
						</div>
						<div class="address-font">8836</div>
					</div>
					<div id="sineVal5" class="col-xs-2 opacity00">
						<div>
							<b style="color: maroon;">term</b>
						</div>
						<div class="box-border memory-box">
							<span id="tSineVal" class="opacity00" style="font-size: 9px; display: inline-block; position: relative;"></span>
						</div>
						<div class="address-font">0024</div>
					</div>
				</div>
			</div>
			
			<div class="col-xs-12 margin-top-20">
				<div class="col-xs-12 text-center"
					style="font-weight: bold; color: rgb(47, 79, 79); padding: 0px;">
					<div id="boxHeading3" class="col-xs-4  col-xs-4 col-xs-offset-4 opacity00">In
						cosi()</div>
				</div>
			</div>
			<div class="col-xs-12 box-font" style="margin-top: 10px;">
				<div id="cosBox"
					class="box-border col-xs-10 col-xs-offset-1  text-center opacity00">
					<div id="cosVal1" class="col-xs-2 col-xs-offset-1 opacity00">
						<div>
							<b style="color: maroon;">n</b>
						</div>
						<div class="box-border memory-box">
							<span id="nCosVal" class="opacity00"></span>
						</div>
						<div class="address-font">0012</div>
					</div>
					<div id="cosVal2" class="col-xs-2 opacity00">
						<div>
							<b style="color: maroon;">x</b>
						</div>
						<div class="box-border memory-box">
							<span id="xCosVal" class="opacity00"></span>
						</div>
						<div class="address-font">1144</div>
					</div>
					<div id="cosVal3" class="col-xs-2 opacity00">
						<div>
							<b style="color: maroon;">i</b>
						</div>
						<div class="box-border memory-box">
							<span id="iCosVal" class="opacity00"></span>
						</div>
						<div class="address-font">1020</div>
					</div>

					<div id="cosVal4" class="col-xs-2 opacity00">
						<div>
							<b style="color: maroon;">sum</b>
						</div>
						<div class="box-border memory-box">
							<span id="sumCosVal" class="opacity00" style="font-size: 9px; display: inline-block; position: relative;"></span>
						</div>
						<div class="address-font">3421</div>
					</div>
					<div id="cosVal5" class="col-xs-2 opacity00">
						<div>
							<b style="color: maroon;">term</b>
						</div>
						<div class="box-border memory-box">
							<span id="tCosVal" class="opacity00" style="font-size: 9px; display: inline-block; position: relative;"></span>
						</div>
						<div class="address-font">4513</div>
					</div>
				</div>
			</div>
			
		</div>
		<div class="col-xs-4 col-xs-offset-2" style="margin-top: 40px;">
<div style="" id="consoleId" class="output-console padding0">
						<div class="output-console-title-bar">
								<span class="title">Output</span>
						</div>
								
<div style="color: white;" class="output-console-body">
<span id="runEditor1"></span>
<span id="runEditor2"></span>
<span id="runEditor3"></span>
<span id="runEditor4"></span>
<span id="runEditor5"></span>
</div>
</div>
</div>
	</div>
	<div class="col-xs-12 text-center"><span id="restart" class="btn btn-warning opacity00">Restart</span></div>
</body>
</html>