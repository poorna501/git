<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

<title>Local and Global Variables</title>
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

.address-div {
	height: 250px;
}

.output-console-body {
	height: 100px;
}

.output-console {
	margin: 0;
}

.creampretab4 {
	font-size: 13px;
	-moz-tab-size: 2;
	background-color: lavender !important;
	line-height: 1.75;
}

#outputDiv {
	margin-top: 45px;
}

.main-div {
	margin-top: 55px;
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

.ui-effects-transfer {
    background-color: orange;
    z-index: 99999999 !important;
}

#gVal {
	position: relative;
	display: inline-block;
}

</style>
</head>
<body>

	<script type="text/javascript">
	var introjs;
	var typingSpeed = 10;
	var tl;
	
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
				element : "#funcDec",
				intro : "",
				position : "right"
			},{
				element : "#globalVar",
				intro : "",
				position : "right"
			},{
				element : "#addressDiv",
				intro : "",
				position : "left"
			},{
				element : "#mainFunc",
				intro : "",
				position : "right"
			},{
				element : "#funcDef",
				intro : "",
				position : "right"
			},{
				element : "#localVar",
				intro : "",
				position : "right"
			},{
				element : "#addressDiv",
				intro : "",
				position : "left"
			},{
				element : "#mainPf1",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#functionCall",
				intro : "",
				position : "right"
			},{
				element : "#valRes",
				intro : "",
				position : "right"
			},{
				element : "#valDec",
				intro : "",
				position : "right"
			},{
				element : "#valAddition",
				intro : "",
				position : "right"
			},{
				element : "#addressDiv",
				intro : "",
				position : "left"
			},{
				element : "#userPrintf",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#endFunc",
				intro : "",
				position : "right"
			},{
				element : "#mainPf2",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#endMain",
				intro : "",
				position : "right"
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
				var text = "Here we are going to discuss about different types of function " 
							+ " <span class='ct-code-b-yellow'>argument variables</span> (parameters).";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
				break;
				
			case "codeAnimation":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the code to understand <span class='ct-code-b-yellow'>local</span> " 
								+ " and <span class='ct-code-b-yellow'>global</span> varibales in functions.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funcDec":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we are declaring a function with name <span class='ct-code-b-yellow'>display()</span> with " 
								+ " <span class='ct-code-b-yellow'>no</span> return value and with <span class='ct-code-b-yellow'>no</span> arguments.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "globalVar":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we are declaring the variable <span class='ct-code-b-yellow'>value</span> out side " 
								+ "<span class='ct-code-b-yellow'>main()</span>. so that it can be used anywhere in the program. " 
								+ " This type of variables are called <span class='ct-code-b-yellow'>global variables</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainFunc":
				$(".introjs-nextbutton").hide();
				$("#globalVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is <span class='ct-code-b-yellow'>main()</span> function";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funcDef":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the defination of the function <span class='ct-code-b-yellow'>display()</span>, which we have declared above.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "addressDiv":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(introjs._currentStep == 4) {
						$("#gVal").text(50);
						var l1 = $("#tweenVal1").offset();
						$("#gVal").offset({"top": l1.top, "left": l1.left});
						$("#globalVar").addClass("blinking-white");
						tl.to("#globalVal", 1, {opacity: 1, onComplete: function() {
							$("#globalVar").removeClass("opacity00");
							$("#globalVar").removeClass("blinking-white");
							$("#tweenVal1").addClass("blinking-white");
							$("#gVal").addClass("blinking-white");
							$("#gVal").removeClass("opacity00");
							tl.to("#gVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
								$("#tweenVal1").removeClass("blinking-white");
								$("#gVal").removeClass("blinking-white");
								var text = "The variable <span class='ct-code-b-yellow'>value</span> has stored in the memory location at the " 
											+ " respected <span class='ct-code-b-yellow'>address</span> with value <b>50</b>.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						}});
						
					} else if(introjs._currentStep == 8) {
						$("#lVal").text(20);
						var l1 = $("#tweenVal2").offset();
						$("#lVal").offset({"top": l1.top, "left": l1.left});
						$("#localVar").addClass("blinking-white");
						tl.to("#boxHeading, #varBox", 1, {opacity: 1, onComplete: function() {
							$("#localVar").removeClass("opacity00");
							$("#localVar").removeClass("blinking-white");
							$("#tweenVal2").addClass("blinking-white");
							$("#lVal").addClass("blinking-white");
							$("#lVal").removeClass("opacity00");
							tl.to("#lVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
								$("#tweenVal2").removeClass("blinking-white");
								$("#lVal").removeClass("blinking-white");
								var text = "The variable <span class='ct-code-b-yellow'>value</span> has store in the memory location " 
											+ " at the respected <span class='ct-code-b-yellow'>address</span> " 
											+ " with value <b>20</b> in <span class='ct-code-b-yellow'>main()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						}});
					} else {
						$("#valRes").effect( "transfer", { to: $("#gVal"), className: "ui-effects-transfer" }, 1000 , function() {
							
							tl.to("#gVal", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
								$("#gVal").text(70);
								tl.to("#gVal", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
									var text = "Now <span class='ct-code-b-yellow'>global</span> variable value has changed to <b>70</b>.";
									typing(".introjs-tooltiptext", text, function() {
										$(".introjs-nextbutton").show();
									});
								}});
							}});
						});
					}
				});
				break;
				
			case "functionCall":
				$(".introjs-nextbutton").hide();
				$("#localVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Now we are calling function <span class='ct-code-b-yellow'>display()</span> without any arguments and return type.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "localVar":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we are decalring an integer variable with same name as <span class='ct-code-b-yellow'>global</span> " 
								+ " variable i.e <span class='ct-code-b-yellow'>value</span> which is initialized to <b>20</b>."
								+ "  This is called as <span class='ct-code-b-yellow'>local</span> variable to the " 
								+ " <span class='ct-code-b-yellow'>main()</span> function, which can be used only in this function.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainPf1":
			case "mainPf2":
			case "userPrintf":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This <span class='ct-code-b-yellow'>printf()</span> function will print the text in the output.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "valRes":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we are adding <b>20</b> to the <span class='ct-code-b-yellow'>value</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "valDec":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = " At first function will search for the <span class='ct-code-b-yellow'>local variable</span> <b>value</b>, " 
								+ " if it is not declared in the function then it will search for <span class='ct-code-b-yellow'>global variable</span>."
								+ " Here <span class='ct-code-b-yellow'>value</span>, is not present locally. " 
								+ " it has declared as <span class='ct-code-b-yellow'>global variable</span> in above.";
					typing(".introjs-tooltiptext", text, function() {
						$("#globalVar").addClass("blinking-white");
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "valAddition":
				$(".introjs-nextbutton").hide();
				$("#globalVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Here we are declaring the value to the addition of <b>20</b> and itself " 
								+ "i.e <span class='ct-code-b-yellow'>value + 20</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "endFunc":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "After completing all statements in called function control goes to the " 
								+ " <span class='ct-code-b-yellow'>main()</span> function and executes next " 
								+ " statement which is after this function call.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "endMain":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "function <span class='ct-code-b-yellow'>main()</span> ended here.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "consoleId":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(introjs._currentStep == 10) {
						var text = "value in main() before call : 20";
						typing("#runEditor1", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					} else if(introjs._currentStep == 17) {
						var text = "value in display() : 70";
						typing("#runEditor2", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					} else {
						var text = "value in main() after call : 20";
						typing("#runEditor3", text, function() {
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
	
	</script>

	<div class="text-center margin-top-20">
		<h1 id="heading" class="label ct-demo-heading text-center">Local
			and Global Variables</h1>
	</div>

	<div class="main-div col-xs-12" id="mainDiv">
		<div class="col-xs-5" id="codeDiv">
	<pre id="codeAnimation" class='creampretab4 box-border code-div'>
	#include&lt;stdio.h&gt;
	<span id="funcDec">void display();</span>
	<span id="globalVar">int value = <span id="tweenVal1">50</span>;</span>
	<span id="mainFunc">main()
	{
		<span id="localVar">int value = <span id="tweenVal2">20</span>;</span>
		<span id="mainPf1">printf("value in main() before call : %d", value);</span>
		<span id="functionCall">display();</span>
		<span id="mainPf2">printf("value in main() after call : %d", value);</span>
	<span id="endMain">}</span></span>
	<span id="funcDef"><span id="userFunc">void display()</span>
	{
		<span id="valAddition"><span id="valDec">value</span> = <span id="valRes">value + 20</span>;</span>
		<span id="userPrintf">printf("value in dispaly() : %d", value);</span>
	<span id="endFunc">}</span></span>
	</pre>
		</div>

		<div id="addressDiv"
			class="col-xs-6 col-xs-offset-1 box-border address-div">

			<div class="col-xs-12" style="margin-top: 55px;">
			
				<div class="col-xs-12 text-center"
					style="font-weight: bold; color: rgb(47, 79, 79);">
					<div id="boxHeading" class="col-xs-4 col-xs-offset-7 opacity00">In main()</div>
				</div>

				<div class="col-xs-12" style="margin-top: 10px;">
					<div id="globalVal" class="col-xs-2 col-xs-offset-2 text-center opacity00">
						<div>
							<b style="color: maroon;">value</b>
						</div>
						<div class="box-border" style="line-height: 50px; height: 50px;">
							<span id="gVal" class="opacity00"></span>
						</div>
						<div>1564</div>
					</div>


					<div id="varBox"
						class="box-border col-xs-4 col-xs-offset-3  text-center opacity00">
						<div id="localVal" class="col-xs-7 col-xs-offset-2">
							<div>
								<b style="color: maroon;">value</b>
							</div>
							<div style="line-height: 50px; height: 50px;" class="box-border">
								<span id="lVal" class="opacity00"></span>
							</div>
							<div>4516</div>
						</div>
					</div>
				</div>

			</div>
		</div>
			<div class="col-xs-4 col-xs-offset-2" style="margin-top: 35px;">
<div style="" id="consoleId" class="output-console padding0">
						<div class="output-console-title-bar">
								<span class="title">Output</span>
						</div>
								
<div style="color: white;" class="output-console-body">
<span id="runEditor1"></span>
<span id="runEditor2"></span>
<span id="runEditor3"></span>
</div>
</div>
</div>
	</div>
	
<div class="col-xs-12 margin-top-20 text-center"><span id="restart" class="btn btn-warning opacity00">Restart</span></div>
</body>
</html>