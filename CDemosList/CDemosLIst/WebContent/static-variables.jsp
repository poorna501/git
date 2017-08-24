<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<title>Static Variables</title>
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
	height: 110px;
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

</style>
</head>
<body>
	<script type="text/javascript">
		var introjs;
		var typingSpeed = 10;
		var tl;
		var i = 1;
		var j = 1;
		var count = 0;
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
					element : "#functionDec",
					intro : "",
					position : "right"
				},{
					element : "#mainFunction",
					intro : "",
					position : "right"
				},{
					element : "#functionDef",
					intro : "",
					position : "right"
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
					var text = "Let us consider an example on working of <span class='ct-code-b-yellow'>static variables</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
					break;
					
				case "codeAnimation":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						if(count == 1) {
							var text = "Now we will try the same program by taking the <span class='ct-code-b-yellow'>static variable</span> " 
										+ " in display(). The program will <span class='ct-code-b-yellow'>complie</span> first.";
						} else {
							var text = "This is the program to know the behavior of <span class='ct-code-b-yellow'>static variables</span>.";
						}
						
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "functionDec":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "This is a function declaration with name <span class='ct-code-b-yellow'>display()</span> " 
							+ " and with <span class='ct-code-b-yellow'>No</span> return type.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "mainFunction":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "This is <span class='ct-code-b-yellow'>main()</span> function";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "functionDef":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "This is the function definition of <span class='ct-code-b-yellow'>display()</span> ";
						typing(".introjs-tooltiptext", text, function() {
							if(count == 0) {
								dynamicSteps();
							}
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "functionCall" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "The function call was made to <span class='ct-code-b-yellow'>display()</span>. so the"
									+ " control is transfered from main() to display().";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "varDec":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						if(count == 0) {
							var text = "It is a declaration of <b>int</b> variable <b>i</b>. It is declared inside "
								+ " <span class='ct-code-b-yellow'>dispaly()</span> so we called it as " 
								+ " <span class='ct-code-b-yellow'>local</span> variable to the <span class='ct-code-b-yellow'>display()</span>.";
							typing(".introjs-tooltiptext", text, function() {
								$(".introjs-nextbutton").show();
							});
						} else {
							flipEffect("#varDec", "static int i = 1;", function() {
								introjs.refresh()
								var text = "We are initializing the local variable with <span class='ct-code-b-yellow'>static</span> " 
											+ " keyword with <b>int</b>.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							});
						}
					});
					break;
					
				case "animationBox":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						if((i < 4) && (count == 0)) {
							$("#lVal").text(1);
							if( i == 1) {
								tl.to("#boxHeading, #functionBox", 1, {opacity: 1, onComplete: function() {
									$("#varDec").addClass("blinking-white");
									$("#localVal").removeClass("opacity00");
								}});
							}
							tl.to("#localVal", 1, {opacity: 1, onComplete: function() {
								$("#localVal").removeClass("opacity00");
							}});
							tl.to("#lVal", 1, {opacity: 1, onComplete: function() {
								$("#lVal").removeClass("opacity00");
								var text = "The variable <b>i</b> has stored somewhere in the memory location at the respected " 
											+ " <span class='ct-code-b-yellow'>address</span> in the " 
											+ " <span class='ct-code-b-yellow'>display()</span> function.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						} else {
							flipEffect("#lVal", i, function() {
								tl.to("#localVal", 1, {opacity: 1, onComplete: function() {
									$("#localVal").removeClass("opacity00");
								}});
								tl.to("#lVal", 1, {opacity: 1, onComplete: function() {
									$("#lVal").removeClass("opacity00");
									var text = "The variable <b>i</b> has stored somewhere in the memory location at the respected " 
												+ " <span class='ct-code-b-yellow'>address</span> in the " 
												+ " <span class='ct-code-b-yellow'>display()</span> function.";
									typing(".introjs-tooltiptext", text, function() {
										if(i < 4) {
											dynamicSteps();
										}
										$(".introjs-nextbutton").show();
									});
								}});
							});
						}
						
					});
					break;
					
				case "printf":
					$(".introjs-nextbutton").hide();
					$("#varDec").removeClass("blinking-white");
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "This <span class='ct-code-b-yellow'>printf()</span> function will print the message on the standard " 
									+ " output device(monitor).";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "iInc":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "First <span class='ct-code-b-yellow'>i</span> value printed in the console then it will get incremented "  
									+" in next statement.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "consoleId":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						if(count == 1) {
							var text = "i = " + i;
						} else {
							var text = "i = 1";
						}
						
						typing("#runEditor" + j, text, function() {
							j++;
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					});
					break;
					
				case "endFunc":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
							if(i < 4 && count == 0) {
								$("#localVal").addClass("blinking-white");
								var text = "<span class='ct-code-b-yellow'>display()</span> ended here. The local variable i will get vanished "
									+ " after getting out of the function.";
								tl.to("#localVal", 1, {opacity: 0, onComplete: function() {
									typing(".introjs-tooltiptext", text, function() {
										$("#localVal").addClass("opacity00");
										$("#lVal").addClass("opacity00");
										$("#lVal").css("opacity", 0);
										$("#localVal").removeClass("blinking-white");
										++i;
										if(i < 4) {
											dynamicSteps();
										}
										
										$(".introjs-nextbutton").show();
									});
								}});
							} else {
								++i;
								var text = "<span class='ct-code-b-yellow'>display()</span> ended here. The static variable i will not vanished "
									+ " here  because static variable will run only at compilation time not at run time. " 
									+ " So i value is incremented to "+i+".";
								
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}
					});
					break;
					
				case "endMain":
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "function <span class='ct-code-b-yellow'>main()</span> ended here.";
						typing(".introjs-tooltiptext", text, function() {
							++count;
							if(count == 1) {
								i = 1;
								staticSteps();
							}
							$(".introjs-nextbutton").show();
						});
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
			var n = 0;
			var dynamicStep = {
					"element" : "#functionCall" + i,
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
		
			if(count != 1) {
				var dynamicStep = {
						"element" : "#varDec",
						"intro" : "",
						"position" : "right"
				}
				introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
			
				var dynamicStep = {
						"element" : "#animationBox",
						"intro" : "",
						"position" : "left"
				}
				introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
			
			}
			
			var dynamicStep = {
					"element" : "#printf",
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
			
			var dynamicStep = {
					"element" : "#iInc",
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
			
			var dynamicStep = {
					"element" : "#consoleId",
					"intro" : "",
					"tooltipClass" : "hide"
			}
			introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
			
			var dynamicStep = {
					"element" : "#endFunc",
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
			
			if(count == 1) {
				var dynamicStep = {
						"element" : "#animationBox",
						"intro" : "",
						"position" : "left"
				}
				introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
			
			}
			
			if(i == 3 && count == 0) {
				var dynamicStep = {
						"element" : "#endMain",
						"intro" : "",
						"position" : "right"
				}
				introjs.insertOption(introjs._currentStep + ++n, dynamicStep);
			}
		}
		
		function staticSteps() {
			var step = 0;
			var dynamicStep = {
					"element" : "#codeAnimation",
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
		
			var dynamicStep = {
					"element" : "#functionDec",
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
			
			var dynamicStep = {
					"element" : "#mainFunction",
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
			
			var dynamicStep = {
					"element" : "#functionDef",
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
			
			var dynamicStep = {
					"element" : "#varDec",
					"intro" : "",
					"position" : "top"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
			
			var dynamicStep = {
					"element" : "#animationBox",
					"intro" : "",
					"position" : "left"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
		}
		
	</script>
	
	<div class="text-center margin-top-20">
		<h1 id="heading" class="label ct-demo-heading text-center">Static Variables</h1>
	</div>
	
	<div id="mainDiv" class="col-xs-12" style="margin-top: 45px;">
		<div class="col-xs-12">
				<div class="col-xs-4 col-xs-offset-1" id="codeBox">
				<pre id="codeAnimation" class="creampretab4 box-border code-div">			#include&lt;stdio.h&gt;
			<span id="functionDec">void display();</span>
			<span id="mainFunction">main() {
				<span id="functionCall1">display();</span>
				<span id="functionCall2">display();</span>
				<span id="functionCall3">display();</span>
			<span id="endMain">}</span></span>
			<div id="functionDef" style="display:inline-block; position:relative;">void display() {
	<div id="varDec" style="display:inline-block; position:relative;">int i = 1;</div>
	<span id="printf">printf("i = %d", <span id="iInc">i++</span>);</span>
<span id="endFunc">}</span></div>
				</pre>
				<div style="margin-top: 40px;">
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
<span id="runEditor6"></span>
</div>
</div>
</div>
			</div>

			<div id="animationBox" class="col-xs-4 col-xs-offset-2 box-border"
				style="height: 350px;">
				<div class="col-xs-12 text-center"
					style="font-weight: bold; color: rgb(47, 79, 79); margin-top: 55px;">
					<div id="boxHeading" class="col-xs-6 col-xs-offset-3 opacity00">In display()</div>
				</div>
				<div class="col-xs-12">
					<div id="functionBox" style="margin-top: 10px;"
						class="box-border col-xs-6 col-xs-offset-3  text-center opacity00">
						<div id="localVal" class="col-xs-8 col-xs-offset-2">
							<div>
								<b style="color: maroon;">i</b>
							</div>
							<div style="line-height: 50px; height: 50px;" class="box-border">
								<span id="lVal" class="opacity00">1</span>
							</div>
							<div>0012</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 text-center"><span id="restart" class="btn btn-warning opacity00">Restart</span></div>
</body>
</html>