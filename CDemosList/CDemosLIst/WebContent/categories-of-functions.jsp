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

<title>function categories</title>

<style type="text/css">

.margin-top-20 {
	margin-top: 20px;
}

.box-border {
	border: 2px solid gray;
	border-radius: 8px;
	background-color: #f5f5f5;
}

.padding0 {
	padding: 0;
}

.center {
	margin-left: auto;
	margin-right: auto;
	display: block;
}

.btn-color {
	background-color: #90EE90;
	background: linear-gradient(0deg, #90ee90 30%, 4CAF50 70%);
	font-weight: bold;
	font-size: 13px;
}

.btn:hover {
	background-color: #4CAF50 !important;
	color: white;
}

.btn:active{
	background-color: #2E8B57 !important;
	color: white;
}

.box-shadow {
	box-shadow: 1px 2px 4px 0;
}

.output-console {
	margin: 0px !important;
}

div, span {
	position: relative;
}

.blinking-white {
	z-index: 10000000;
	animation-name: blink-background-white;
	animation-duration: 1.2s ;
	animation-iteration-count: infinite;
	animation-direction: alternate ;
}

@keyframes blink-background-white { 
	50% {
		background-color: white;
	}
}

.func-heading {
    color: orange;
    font-weight: bold;
    z-index: 1000000;
}

.introjs-tooltip {
	min-width: 300px;
}

.disabled {
	pointer-events: none;
}

#description {
    border: 1px solid gray;
}

.introjs-fixParent {
	position: relative !important;
}

</style>

</head>
<body>
	<script type="text/javascript">
		var introjs;
		var typingSpeed = 10;
		var tl;
		var i;
		var count = 1;
		
		$(document).ready(function() {
			introGuide();
			tl = new TimelineLite();
			$("#type1").click(function() {
				i = 1;
				$("#funcHeading").text("Function with No return type and No Arguments");
			});
			
			$("#type2").click(function() {
				i = 2;
				$("#funcHeading").text("Function with No return type and With Arguments");
			});
			
			$("#type3").click(function() {
				i = 3;
				$("#funcHeading").text("Function With return type and No Arguments");
			});
			
			$("#type4").click(function() {
				i = 4;
				$("#funcHeading").text("Function With return type and With Arguments");
			});
		});
		
		function introGuide() {
			introjs = introJs();
			introjs.setOptions({
				steps : [{
					element : "#heading",
					intro : "",
					position : "right"
				},{
					element : "#functionBox",
					intro : "",
					position : "right"
				}]
			});
			
			introjs.onafterchange(function(targetElement) {
				var elementId = targetElement.id;
				switch (elementId) {
				
				case "heading":
					$(".introjs-nextbutton").hide();
					var text = "Here we will discuss about different categories of <span class='ct-code-b-yellow'>functions</span>. " 
								+ "Click next to see various categories of <span class='ct-code-b-yellow'>functions</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
					break;
				
				case "functionBox":
					$("br").remove();
					$("#type" + i).removeClass("clicked");
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						$("#description").empty();
						$("#funcType" + i).addClass("hide opacity00");
						$(".output-text").remove();
						$("#funcHeading").empty();
						if($("#functionBox").hasClass('opacity00')) {
							var text = "These are the four different categories of functions with their <span class='ct-code-b-yellow'>return types</span>"
								+ " and <span class='ct-code-b-yellow'>arguments</span>. click on any type among these four to see the action.";
							tl.to("#functionBox", 1, {opacity: 1, onComplete: function() {
								$("#functionBox").removeClass("opacity00");
								typing(".introjs-tooltiptext", text, function() {
									$(".fun-btn").removeClass('disabled');
								});
							}});
						}
					});
					break;  
					
				case "funcType" + i:
					$(".introjs-nextbutton").hide();
					$("#funcHeading").removeClass('opacity00');
					$("#actionBox").removeClass('opacity00');
					$(".introjs-helperLayer").one("transitionend", function() {
						if($("#type1").hasClass("clicked")) {
							var text = "This is the code for  the function with <span class='ct-code-b-yellow'>No</span> return type " 
										+ " and <span class='ct-code-b-yellow'>No</span> arguments.";
						} else if($("#type2").hasClass("clicked")) {
							var text = "This is the code for  the function with <span class='ct-code-b-yellow'>No</span> return type " 
								+ " and <span class='ct-code-b-yellow'>with</span> arguments.";
						} else if($("#type3").hasClass("clicked")) {
							var text = "This is the code for  the function <span class='ct-code-b-yellow'>with</span> return type " 
										+ " and <span class='ct-code-b-yellow'>No</span> arguments.";
						} else if($("#type4").hasClass("clicked")) {
							var text = "This is the code for  the function <span class='ct-code-b-yellow'>with</span> return type " 
										+ " and <span class='ct-code-b-yellow'>with</span> arguments.";
						}
						
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "funDec" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						
						if($("#type1").hasClass("clicked")) {
							var text = "Here we are declaring the function <span class='ct-code-b-yellow'>void getName(void)</span> with " 
										+ " <span class='ct-code-b-yellow'>No</span> return type and "
										+ " with <span class='ct-code-b-yellow'>No</span> arguments."
						} else if($("#type2").hasClass("clicked")) {
							var text = "Here we are declaring the function <span class='ct-code-b-yellow'>void getValue(int)</span> with " 
										+ " <span class='ct-code-b-yellow'>No</span> return type and " 
										+ " <span class='ct-code-b-yellow'>with</span> one argument which is type <b>int</b>.";
						} else if($("#type3").hasClass("clicked")) {
							var text = "Here we are declaring the function <span class='ct-code-b-yellow'>int calculateSum()</span> " 
										+ " <span class='ct-code-b-yellow'>with</span> return type " 
										+ " and with <span class='ct-code-b-yellow'>No</span> arguments.";
						} else if($("#type4").hasClass("clicked")) {
							var text = "Here we are declaring the function <span class='ct-code-b-yellow'>int calculateSum(int, int)</span> " 
										+ " <span class='ct-code-b-yellow'>with</span> return type " 
										+ " and <span class='ct-code-b-yellow'>with</span> two arguments(<b>int</b>, <b>int</b>).";
						}
						
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "main" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "This is <span class='ct-code-b-yellow'>main()</span> function.";
						           
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "userPrintf" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						$("#userPrintf" + i).addClass("output-line1");
						var text = "After calling control goes to called function and executes the statements in it." 
									+ " here <span class='ct-code-b-yellow'>printf()</span> function will print the text in output.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "mainPrintf" + i:
					$(".introjs-nextbutton").hide();
					$("#callingFun" + i).removeClass("blinking-white");
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "Here the <span class='ct-code-b-yellow'>printf()</span> function will print the text in output.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
							
				case "funDef" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "This is the function defination which we have declared above.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
				
				case "callingFun" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						if($("#type1").hasClass("clicked")) {
				        	var text = "This is <span class='ct-code-b-yellow'>main()</span> function. here we will call the function " 
						         + " <span class='ct-code-b-yellow'>getName()</span>.";
						} else if($("#type2").hasClass("clicked")) {
							var text = "This is <span class='ct-code-b-yellow'>main()</span> function. here we will call the function " 
							     + " <span class='ct-code-b-yellow'>getValue(123)</span> by sending 123 as an argument which is type int.";
						} else if($("#type3").hasClass("clicked")) {
							var text = "Here we will call the function <span class='ct-code-b-yellow'>calculateSum()</span>. " 
								 + " And it will return an integer value, that will be stored in <span class='ct-code-b-yellow'>addition</span>.";
						} else if($("#type4").hasClass("clicked")) {
							var text = "Here we will call the function <span class='ct-code-b-yellow'>calculateSum(a, b)</span> by "
							     + " sending a and b are as arguments which are type int. And it will return an integer value, that " 
							     + " will be stored in variable <span class='ct-code-b-yellow'>addition</span>.";
						}
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "varInMain" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						if($("#type3").hasClass("clicked")) {
							var text = "Here we are declaring one integer variable <span class='ct-code-b-yellow'>addition</span>";
						} else if($("#type4").hasClass("clicked")) {
							var text = "Here we are initializing 3 integer variables <b>a</b>, <b>b</b> and <b>addition</b>." 
								+ "<ul><li> <b>a</b> value is delared to  10</li>"
								+ "<li> <b>b</b> value is delared to  20</li></ul>";
						}
						
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "varInit" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						if($("#type3").hasClass("clicked")) {
							var text = "Here we are initializing 3 integer variables <b>a</b>, <b>b</b> and <b>sum</b>." 
								+ "<ul><li> <b>a</b> value is delared to  10</li>"
								+ "<li> <b>b</b> value is delared to  20</li></ul>";
						} else if($("#type4").hasClass("clicked")) {
							var text = "Here we are initializing an integer variable <b>sum</b>." 
						}
						
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "varDec" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						if($("#type3").hasClass("clicked")) {
							var text = "In this statement we are adding <b>a</b>, <b>b</b> and storing the result in <b>sum</b>.";
						} else if($("#type4").hasClass("clicked")) {
							var text = "In this statement we are adding <b>x</b>, <b>y</b> and storing the result in <b>sum</b>.";
						}
						
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "returnVal" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						$("#callingFun" + i).addClass("blinking-white");
						var text = "This return value sum will be stored in <span class='ct-code-b-yellow'>addition</span> variable " 
									+ " which is in <span class='ct-code-b-yellow'>main()</span> function.<br/>" 
									+ " <b>Note:</b> Statements which have declared under the <span class='ct-code-b-yellow'>return</span> " 
									+ " statement will not executed. And control goes to called function and executes next statement which "
									+ " is after this function call.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "endFunction" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "After completing all statements in called function control goes to the " 
							+ " <span class='ct-code-b-yellow'>main()</span> function and executes next statement which is after this function call.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "endMain" + i:
					$(".introjs-nextbutton").hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "function <span class='ct-code-b-yellow'>main()</span> ended here.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
					
				case "description":
					$(".introjs-nextbutton").hide();
					$("#description").removeClass("opacity00");
					$(".introjs-helperLayer").one("transitionend", function() {
						if($("#type1").hasClass("clicked")) {
							var text = "<ul style='margin-top: 14px;'><li>Whenever the function has no arguments, it does not " 
								+ " receives any data from the calling function. </li><li>When the function has no return value, " 
								+ " the calling function doesn't receive any data from the called function.</li></ul>";
							typing("#description", text, function() {
								var text = "Click next to go function categories.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							});
						} else if($("#type2").hasClass("clicked")) {
							var text = "<ul style='margin-top: 14px;'><li>When function defination has arguments, it" 
								+ " recevies data from calling function </li><li>When the function has no return value, " 
								+ " the calling function doesn't receive any data from the called function.</li></ul>";
							typing("#description", text, function() {
								var text = "Click next to go function categories.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							});
						} else if($("#type3").hasClass("clicked")) {
							var text = "<ul style='margin-top: 14px;'><li>Whenever the function has no arguments, it does not " 
								+ " receives any data from the calling function. </li><li>After completion of function defination execution, " 
								+ " only one value will be returned from the called function to calling function through return statement.</li></ul>";
							typing("#description", text, function() {
								var text = "Click next to go function categories.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							});
						} else if($("#type4").hasClass("clicked")) {
							var text = "<ul style='margin-top: 14px;'><li>When function defination has arguments, it" 
								+ " recevies data from calling function </li><li>After completion of function defination execution, " 
								+ " only one value will be returned from the called function to calling function through return statement.</li></ul>";
							typing("#description", text, function() {
								var text = "Click next to go function categories.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							});
						}
						
					});
					break;
					
				case "consoleId":
					$(".introjs-nextbutton").hide();
					$("#consoleId").removeClass("opacity00");
					$(".introjs-helperLayer").one("transitionend", function() {
						if($("#type1").hasClass("clicked")) {
							if($("#userPrintf" + i).hasClass("output-line1")) {
								$("#userPrintf" + i).removeClass("output-line1");
								$("#outputPrint").append("<span id='runEditor1' class='output-text'></span><br>");
								var text = "Inside getName()";
								typing("#runEditor1", text, function() {
									setTimeout(function(){
										introjs.nextStep();
									}, 1000);
								});
							} else {
								$("#outputPrint").append("<span id='runEditor2' class='output-text'></span><br>");
								var text = "Inside main()";
								typing("#runEditor2", text, function() {
									setTimeout(function(){
										introjs.nextStep();
									}, 1000);							
								});
							}
						} else if($("#type2").hasClass("clicked")) {
							if($("#userPrintf" + i).hasClass("output-line1")) {
								$("#userPrintf" + i).removeClass("output-line1");
								$("#outputPrint").append("<span id='runEditor1' class='output-text'></span><br>");
								var text = "123 printed in getValue()";
								typing("#runEditor1", text, function() {
									setTimeout(function(){
										introjs.nextStep();
									}, 1000);
								});
							} else {
								$("#outputPrint").append("<span id='runEditor2' class='output-text'></span><br>");
								var text = "Inside main(), after getValue()";
								typing("#runEditor2", text, function() {
									setTimeout(function(){
										introjs.nextStep();
									}, 1000);							
								});
							}
						} else if($("#type3").hasClass("clicked")) {
							$("#outputPrint").append("<span id='runEditor1' class='output-text'></span><br>");
							var text = "Sum = 30";
							typing("#runEditor1", text, function() {
								setTimeout(function(){
									introjs.nextStep();
								}, 1000);
							});
						} else if($("#type4").hasClass("clicked")) {
							$("#outputPrint").append("<span id='runEditor1' class='output-text'></span><br>");
							var text = "Sum = 30";
							typing("#runEditor1", text, function() {
								setTimeout(function(){
									introjs.nextStep();
								}, 1000);
							});
						}
						
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
		
		function dynamicSteps() {
				setTimeout(function() {
					$("#type" + i).addClass("clicked");
					$("#funcType" + i).removeClass("hide opacity00");
					var dynamicStep = {
							"element" : "#funcType" + i,
							"intro" : "",
							"position" : "right"
					}
					introjs.insertOption(introjs._currentStep + 1, dynamicStep);
					
					var dynamicStep = {
							"element" : "#funDec" + i,
							"intro" : "",
							"position" : "right"
					}
					introjs.insertOption(introjs._currentStep + 2, dynamicStep);
					
					var dynamicStep = {
							"element" : "#main" + i,
							"intro" : "",
							"position" : "right"
					}
					introjs.insertOption(introjs._currentStep + 3, dynamicStep);
					
					if($("#type1").hasClass("clicked") || $("#type2").hasClass("clicked")) {
						
						var dynamicStep = {
								"element" : "#funDef" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 4, dynamicStep);
						
						var dynamicStep = {
								"element" : "#callingFun" + i, 
								"intro" : "",                 
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 5, dynamicStep);
						
						var dynamicStep = {
								"element" : "#userPrintf" + i,
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
								"element" : "#endFunction" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 8, dynamicStep);
						
						var dynamicStep = {
								"element" : "#mainPrintf" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 9, dynamicStep);
						
						var dynamicStep = {
								"element" : "#consoleId",
								"intro" : "",
								"tooltipClass" : "hide"
						}
						introjs.insertOption(introjs._currentStep + 10, dynamicStep);
						
						var dynamicStep = {
								"element" : "#endMain" + i,
								"intro" : "",
								"position" : "bottom"
						}
						introjs.insertOption(introjs._currentStep + 11, dynamicStep);
						
						var dynamicStep = {
								"element" : "#description",
								"intro" : "",
								"position" : "bottom"
						}
						introjs.insertOption(introjs._currentStep + 12, dynamicStep);
						
						var dynamicStep = {
								"element" : "#functionBox",
								"intro" : "",
								"tooltipClass" : "hide"
						}
						introjs.insertOption(introjs._currentStep + 13, dynamicStep);
						
					} else if($("#type3").hasClass("clicked") || $("#type4").hasClass("clicked")) {
						
						var dynamicStep = {
								"element" : "#funDef" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 4, dynamicStep);
						
						var dynamicStep = {
								"element" : "#varInMain" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 5, dynamicStep);
						
						var dynamicStep = {
								"element" : "#callingFun" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 6, dynamicStep);
						
						var dynamicStep = {
								"element" : "#varInit" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 7, dynamicStep);
						
						var dynamicStep = {
								"element" : "#varDec" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 8, dynamicStep);
						
						var dynamicStep = {
								"element" : "#returnVal" + i,
								"intro" : "",
								"position" : "right"
						}
						introjs.insertOption(introjs._currentStep + 9, dynamicStep);
						
						var dynamicStep = {
								"element" : "#mainPrintf" + i,
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
						
						var dynamicStep = {
								"element" : "#endMain" + i,
								"intro" : "",
								"position" : "bottom"
						}
						introjs.insertOption(introjs._currentStep + 12, dynamicStep);
						
						var dynamicStep = {
								"element" : "#description",
								"intro" : "",
								"position" : "bottom"
						}
						introjs.insertOption(introjs._currentStep + 13, dynamicStep);
						
						var dynamicStep = {
								"element" : "#functionBox",
								"intro" : "",
								"tooltipClass" : "hide"
						}
						introjs.insertOption(introjs._currentStep + 14, dynamicStep);
					}
					
					introjs.nextStep();
					
				}, 100);
				
		}
		
	</script>

	<div class="text-center margin-top-20">
		<h1 id="heading" class="label ct-demo-heading text-center">Different
			Categories of Functions</h1>
	</div>
	
	<div class="col-xs-12"  style="margin-top: 50px;">
		<div class="function-box col-xs-3">
			<div id="functionBox" class="box-border opacity00" style="height: 375px;">
				<h4 class="text-center">Function Categories</h4>
				<div class="text-center">
					<span id="type1" class="btn text-center btn-color box-shadow fun-btn disabled" style="margin-top: 35px;" onclick="dynamicSteps()">
						No return type and No Arguments
					</span>
				</div>
				<div class="text-center">
					<span id="type2" class="btn text-center btn-color box-shadow fun-btn disabled" style="margin-top: 35px;" onclick="dynamicSteps()">
						No return type and With Arguments
					</span>
				</div>
				<div class="text-center">
					<span id="type3" class="btn text-center btn-color box-shadow fun-btn disabled" style="margin-top: 35px;" onclick="dynamicSteps()">
						With return type and No Arguments
					</span>
				</div>
				<div class="text-center">
					<span id="type4" class="btn text-center btn-color box-shadow fun-btn disabled" style="margin-top: 35px;" onclick="dynamicSteps()">
						With return type and With Arguments
					</span>
				</div>
			</div>
		</div>
		
		<div id="actionBox" class="col-xs-9 box-border opacity00" style="height: 455px;">
			<div class='col-xs-12' style="margin-top: 10px;">
				<div id="funcHeading"
					class="text-center opacity00 func-heading">No return type No Arguments</div>
			</div>
			
			<div id="descriptionDiv" class="col-xs-12 margin-top-20">
				<div class="col-xs-12">
					<div id="description" class="box-border opacity00" style="height: 90px;"></div>
				</div>
			</div>

			<div id="animationDiv" class="col-xs-12 animation-div" style="margin-top: 50px;">
				
				<div class="col-xs-6">
						<pre id="funcType1" class="creampretab hide opacity00" id="code">#include&lt;stdio.h&gt;
<span id="funDec1">void getName(void);</span>
<div id="main1" style="display: inline-block;"><span>main() {</span>
  <span id="callingFun1">getName();</span>
  <span id="mainPrintf1">printf("Inside main()");</span>
<span id="endMain1">}</span></div>
<div id="funDef1" style="display: inline-block;">void getName() {
  <span id="userPrintf1">printf("Inside getName()");</span>
<span id="endFunction1">}</span></div>
</pre>
<pre id="funcType2" class="creampretab hide opacity00" id="code">#include&lt;stdio.h&gt;
<span id="funDec2">void getValue(int);</span>
<div id="main2" style="display: inline-block;">main() {
  <span id="callingFun2">getValue(123);</span>
  <span id="mainPrintf2">printf("inside main(), after getValue()");</span>
<span id="endMain2">}</span></div>
<div id="funDef2" style="display: inline-block;">void getValue(int b) {
  <span id="userPrintf2">printf("%d printed in getValue()\n", b);</span>
<span id="endFunction2">}</span></div>	
</pre>
<pre id="funcType3" class="creampretab hide opacity00" id="code">#include&lt;stdio.h&gt;
<span id="funDec3">int calculateSum();</span>
<div id="main3" style="display: inline-block;">main() {
  <span id="varInMain3">int addition;</span>
  <span id="callingFun3">addition = calculateSum();</span>
  <span id="mainPrintf3">printf("Sum = %d", addition);</span>
<span id="endMain3">}</span></div>
<div id="funDef3" style="display: inline-block;">int calculateSum() {
  <span id="varInit3">int a = 10, b = 20, sum;</span>
  <span id="varDec3">sum = a + b;</span>
  <span id="returnVal3">return sum;</span>
<span id="endFunction3">}</span></div>	
</pre>
<pre id="funcType4" class="creampretab hide opacity00" id="code">#include&lt;stdio.h&gt;
<span id="funDec4">int calculateSum(int, int);</span>
<div id="main4" style="display: inline-block;">main() {
  <span id="varInMain4">int a = 10, b = 20, addition;</span>
  <span id="callingFun4">addition = calculateSum(a, b);</span>
  <span id="mainPrintf4">printf("Sum = %d", addition);</span>
<span id="endMain4">}</span></div>
<div id="funDef4" style="display: inline-block;">int calculateSum(int x, int y) {
  <span id="varInit4">int sum;</span>
  <span id="varDec4">sum = x + y;</span>
  <span id="returnVal4">return sum;</span>
<span id="endFunction4">}</span></div>	
</pre>
				</div>
				<div class="col-xs-6">
<div class="output-console padding0 opacity00" id="consoleId" style="">
						<div class="output-console-title-bar">
								<span class="title">Output</span>
						</div>
								
<div id="outputPrint" class="output-console-body" style="color: white; height: 150px;">
</div>
</div>
</div>
			</div>
		</div>
	</div>

</body>
</html>