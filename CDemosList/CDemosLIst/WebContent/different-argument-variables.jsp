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

<title>function argument-variables</title>
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
	height: 275px;
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

.blinking-orange {
	animation-name: blink-border-background-orange ;
	animation-duration: 2s ;
	animation-iteration-count: infinite;
	animation-direction: alternate ;
	z-index: 10000000;
	position: relative;
}

@keyframes blink-border-background-orange { 
	50% {
		border-color: white;
		background: orange;
	}
}

.zIndex {
	z-index: 10000000;
	position: relative;
}

.span-box {
    height: 17px;
    width: 3%;
}

[contenteditable=true] {
	 outline: none;
}

.ct-code-b-red {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

.ui-effects-transfer {
    background-color: white;
    z-index: 99999999 !important;
}

</style>
</head>
<body>
	<script type="text/javascript">
	var introjs;
	var typingSpeed = 10;
	var tl;
	var sum;
	var arr;
	
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
				element : "#printf1",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#scanf",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				position : "left"
			},{
				element : "#addressDiv",
				intro : "",
				position : "left"
			},{
				element : "#functionCall",
				intro : "",
				position : "right"
			},{
				element : "#formalArgs",
				intro : "",
				position : "right"
			},{
				element : "#addressDiv",
				intro : "",
				position : "left"
			},{
				element : "#sumRes",
				intro : "",
				position : "right"
			},{
				element : "#sumDec",
				intro : "",
				position : "right"
			},{
				element : "#addVar",
				intro : "",
				position : "right"
			},{
				element : "#addressDiv",
				intro : "",
				position : "left"
			},{
				element : "#endFunction",
				intro : "",
				position : "right"
			},{
				element : "#printf2",
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
					var text = "This is the code to understand the different types of function <span class='ct-code-b-yellow'>arguments</span> " 
								+ " or <span class='ct-code-b-yellow'>parameters</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funcDec":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we are declaring a function with name <span class='ct-code-b-yellow'>addition(int, int)</span> "
								+ " with no return value and with two arguments. which are of type <b>int</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "addressDiv":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if($("#sumAddress").hasClass("check")) {
						$("#sumAddress").removeClass("check");
						if(introjs._currentStep == 4) {
							$("#globalVar").addClass("blinking-white");
							tl.to("#sumAddress", 1, {opacity: 1, onComplete: function() {
								$("#aAddress").addClass("check");
								var text = "The variable <span class='ct-code-b-yellow'>sum</span> has stored somewhere in the memory location "  
											+ " at the respected <span class='ct-code-b-yellow'>address</span>.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						} else {
							$("#globalVar").removeClass("blinking-white");
							sum = parseInt($("#num1").text().substring(0, $("#num1").text().indexOf(" "))) + parseInt($("#num1").text().substring($("#num1").text().indexOf(" ") + 1));
							$("#sumVal").text(sum);
							var l1 = $("#sumRes").offset();
							$("#sumVal").offset({"top": l1.top, "left": l1.left});
							$("#sumVal").addClass("blinking-white");
							$("#sumRes").addClass("blinking-white");
							$("#sumVal").removeClass("opacity00");
							tl.to("#sumVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
								$("#sumVal").removeClass("blinking-white");
								$("#sumRes").removeClass("blinking-white");
								var text = "Now the result has stored in the variable <span class='ct-code-b-yellow'>sum</span>."
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						}
						
					} else if($("#aAddress").hasClass("check")) {
						if(introjs._currentStep == 8) {
							$("#localVar").addClass("blinking-white");
							tl.to("#boxHeading1, #varBox1", 1, {opacity: 1, onComplete: function() {
								  $("#boxHeading1, #varBox1").removeClass("opacity00");
								  tl.to("#aAddress", 1, {opacity: 1});
									tl.to("#bAddress", 1, {opacity: 1, onComplete: function() {
										$("#aAddress, #bAddress").removeClass("opacity00");
										var text = "The variables <b>a</b> and <b>b</b> are stored somewhere in the memory location at their " 
													+ " respected <span class='ct-code-b-yellow'>address</span>.";
										typing(".introjs-tooltiptext", text, function() {
											$(".introjs-nextbutton").show();
										});
									}});
							}});
							
						} else if(introjs._currentStep == 13) {
							$("#aAddress").removeClass("check");
							$("#aVal").text($("#num1").text().substring(0, $("#num1").text().indexOf(" ")));
							$("#bVal").text($("#num1").text().substring($("#num1").text().indexOf(" ") + 1));
							
							var l1 = $("#addr1").offset();
							var l2 = $("#addr2").offset();
							$("#aVal").offset({"top": l1.top, "left": l1.left});
							$("#bVal").offset({"top": l2.top, "left": l2.left});
							
							$("#d1").addClass("blinking-white");
							$("#aVal").delay(1000).queue(function() {
								$("#d1").removeClass("blinking-white");
								$("#aVal").addClass("blinking-white");
								$("#addr1").addClass("blinking-white");
								$("#aVal").removeClass("opacity00");
								tl.to("#aVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
									$("#aVal").removeClass("blinking-white");
									$("#addr1").removeClass("blinking-white");
									$("#d2").addClass("blinking-white");
									$("#bVal").delay(1000).queue(function() {
										$("#bVal").addClass("blinking-white");
										$("#addr2").addClass("blinking-white");
										$("#d2").removeClass("blinking-white");
										$("#bVal").removeClass("opacity00");
										tl.to("#bVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
											$("#bVal").removeClass("blinking-white");
											$("#addr2").removeClass("blinking-white");
											var text = "The two input values have stored in variables <b>a</b> and <b>b</b> respectively.";
											typing(".introjs-tooltiptext", text, function() {
												$("#xAddress").addClass("check");
												$(".introjs-nextbutton").show();
											});
										}});
									});
								}});
							});
						}
						
					} else if($("#xAddress").hasClass("check")) {
						$("#xVal").text($("#num1").text().substring(0, $("#num1").text().indexOf(" ")))
						$("#yVal").text($("#num1").text().substring($("#num1").text().indexOf(" ") + 1));
						$("#xAddress").removeClass("check");
						$("#formalArgs").addClass("blinking-white");
						tl.to("#boxHeading2, #varBox2", 1, {opacity: 1, onComplete: function() {
							$("#boxHeading2, #varBox2").removeClass("opacity00");
								tl.to("#xAddress", 1, {opacity: 1, onComplete: function() {
									$("#xAddress").removeClass("opacity00");
									tl.to("#yAddress", 1, {opacity: 1, onComplete: function() {
										$("#yAddress").removeClass("opacity00");
										$("#formalArgs").removeClass("blinking-white");
										var l1 = $("#formArg1").offset();
										var l2 = $("#formArg2").offset();
										$("#xVal").offset({"top": l1.top, "left": l1.left});
										$("#yVal").offset({"top": l2.top, "left": l2.left});
										
										$("#formArg1").addClass("blinking-white");
										$("#xVal").addClass("blinking-white");
										$("#xVal").delay(1000).queue(function() {
											$("#formArg1").removeClass("blinking-white");
											$("#xVal").removeClass("opacity00");
											tl.to("#xVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
												$("#xVal").removeClass("blinking-white");
												$("#formArg2").addClass("blinking-white");
												$("#yVal").addClass("blinking-white");
												$("#yVal").removeClass("opacity00");
												tl.to("#yVal", 1, {opacity: 1, top: 0, left: 0, onComplete: function() {
													$("#formArg2").removeClass("blinking-white");
													$("#yVal").removeClass("blinking-white");
													$("#sumAddress").addClass("check");
													var text = "The variables <b>x</b> and <b>y</b> are stored somewhere in the memory location at " 
																+ " their respected <span class='ct-code-b-yellow'>address</span>."
																+ " Now <b>x = "+$("#num1").text().substring(0, $("#num1").text().indexOf(" "))+" " 
																+ "</b> and <b>y = "+$("#num1").text().substring($("#num1").text().indexOf(" ") + 1)+" " 
																+ "</b>.";
													typing(".introjs-tooltiptext", text, function() {
														$(".introjs-nextbutton").show();
													});
												}});
											}});
										});
									}});
								}});
						}});
					}
				});
				break;
				
			case "globalVar":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we are declaring the variable sum out side <span class='ct-code-b-yellow'>main()</span>. " 
								+ " so that it can be used anywhere in the program. This type of variables "
								+ " are called <span class='ct-code-b-yellow'>global variables</span>.";
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
					var text = "This is the defination of the function <span class='ct-code-b-yellow'>addition(int x, int y)</span>, " 
								+ " which we have declared above.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "localVar":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we are decalring two integer variables <b>a</b> and <b>b</b>. These are called " 
								+ " <span class='ct-code-b-yellow'>local variables</span> to the <span class='ct-code-b-yellow'>main()</span> "
								+ " function, which can be used only in this function.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "printf1":
			case "printf2":
				$(".introjs-nextbutton").hide();
				$("#localVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This <span class='ct-code-b-yellow'>printf()</span> function will print the text in the output.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "consoleId":
				$(".introjs-nextbutton").hide();
				$("#localVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					if(introjs._currentStep == 10) {
						var text = "Enter two numbers : <span id='inputVal'></span>";
						typing("#runEditor1", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					} else if(introjs._currentStep == 12) {
						var text1 = "<span id='num1' contenteditable = 'true' maxlength='1' spellcheck='false' class='text-center span-box output-scanf-line'></span>";
						typing("#inputVal", text1, function() {
							var text2 = "Enter two integer numbers in the output at blinking cursor. press space to enter another number."
							typing(".introjs-tooltiptext", text2, function() {
								charAtEnd("num1");
								arr = [];
								$('.output-scanf-line').on("keydown", function(e) {
									if (arr.length == 2) {
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
								
								$('.output-scanf-line').on("keyup", function(e) {
									$('.length-error-text').remove();
									if ($(this).text() == "") {
										$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
																			"Please enter 2 number and separate each with space.</span>");
									}
									var givenText = $(this).text();
									var splittedText = givenText.split(" ");
									arr = [];
									
									$.each(splittedText, function(idx, val) {
										if (val != '') {
											console.log("idx1 = " + idx + "val1 = " + val);
											arr.push(val);
										}
									});
									
									if (arr.length < 2) {
										$(".introjs-nextbutton").hide();
									} else if (arr.length == 2) {
										$(".introjs-nextbutton").show();
									}
									
									$.each(arr, function(idx, val) {
										if (val.length > 2) {
											console.log("idx2 = " + idx + "val2 = " + val);
											$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
																					"Please limit the number length to 2.</span>");
											$(".introjs-nextbutton").hide();
										}
									});
								});
							});
						});
					} else {
						var text = "sum = " + sum;
						typing("#runEditor2", text, function() {
							setTimeout(function() {
								introjs.nextStep();
							}, 1000);
						});
					}
					
				});
				break;
				
			case "scanf":
				$(".introjs-nextbutton").hide();
				$("#localVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Here we are implementing the <span class='ct-code-b-yellow'>scanf()</span> function with " 
								+ " <span class='ct-code-b-yellow'>%d</span>, as the variables are integers.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "sumRes":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we are adding values of <b>x</b> and <b>y</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "sumDec":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = " At first function will search for the <span class='ct-code-b-yellow'>local variable</span> <b>sum</b>, " 
								+ " if it is not declared in the function then it will search for <span class='ct-code-b-yellow'>global variable</span>."
								+ " Here <span class='ct-code-b-yellow'>sum</span>, is not present locally. " 
								+ " it has declared as <span class='ct-code-b-yellow'>global variable</span> in above.";
					typing(".introjs-tooltiptext", text, function() {
						$("#globalVar").addClass("blinking-white");
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "addVar":
				$(".introjs-nextbutton").hide();
				$("#localVar").removeClass("blinking-white");
				$("#globalVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Here we are declaring the addition of <b>x</b> and <b>y</b> to the variable <span class='ct-code-b-yellow'>sum</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "functionCall":
				$(".introjs-nextbutton").hide();
				$("[contenteditable=true]").attr("contenteditable", false);
				$("#localVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Now we are calling function <span class='ct-code-b-yellow'>addition(a, b)</span> by sending " 
								+ " two parameters <b>a</b> and <b>b</b> (actual arguments).";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "formalArgs":
				$(".introjs-nextbutton").hide();
				$("#localVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() { 
					$("#actArg1").effect( "transfer", { to: $("#formArg1"), className: "ui-effects-transfer" }, 1000 , function() {
						$("#actArg2").effect( "transfer", { to: $("#formArg2"), className: "ui-effects-transfer" }, 1000 , function() {
							var text = "Here the two integer variable <b>x</b> and <b>y</b> are called "
										+ " <span class='ct-code-b-yellow'>formal arguments</span>. " 
										+ " <b>x</b> and <b>y</b> will store the values of <b>a</b> and <b>b</b> respectively.";
							typing(".introjs-tooltiptext", text, function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				
				});
				break;
				
			case "endFunction":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "After completing all statements in called function control goes to the " 
						+ " <span class='ct-code-b-yellow'>main()</span> function and executes next statement which is after this function call.";
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
		<h1 id="heading" class="label ct-demo-heading text-center">Different
			Argument Variables</h1>
	</div>

	<div class="main-div col-xs-12" id="mainDiv">
	<div class="col-xs-4" id="codeDiv">
	<pre id="codeAnimation" class='creampretab4 box-border code-div'>
	#include&lt;stdio.h&gt;
	<span id="funcDec">void addition(int, int)</span>
	<span id="globalVar">int sum;</span>
	<span id="mainFunc">main() 
	{
		<span id="localVar">int a, b;</span>
		<span id="printf1">printf("Enter two numbers : ");</span>
		<span id="scanf">scanf("<span id="d1">%d</span> <span id="d2">%d</span>", <span id="addr1">&a</span>, <span id="addr2">&b</span>);</span>
		<span id="functionCall">addition(<span id='actArg1'>a</span>,<span id='actArg2'>b</span>);</span>
		<span id="printf2">printf("sum = %d", sum);</span>
	<span id="endMain">}</span></span>
	
	<span id="funcDef"><span id="formalArgs">void addition(int <span id='formArg1'>x</span>, int <span id='formArg2'>y</span>)</span>
	{
		<span id="addVar"><span id="sumDec">sum</span> = <span id="sumRes">x+y</span>;</span>
	<span id="endFunction">}</span></span></pre>
	</div>

		<div id="addressDiv" class="col-xs-7 col-xs-offset-1 box-border address-div">
		
			<div class="col-xs-12">
				<div id="sumAddress" class="col-xs-2 col-xs-offset-5 margin-top-20 text-center opacity00 check">
					<div>
						<b style="color: maroon;">sum</b>
					</div>
					<div class="box-border" style="line-height: 50px; height: 50px;"> <span id="sumVal" class="opacity00"></span> </div>
					<div>1564</div>
				</div>
			</div>

			<div class="col-xs-12">
				<div class="col-xs-12 text-center"
					style="font-weight: bold; color: rgb(47, 79, 79); padding: 0px;">
					<div id="boxHeading1" class="col-xs-4 opacity00">In main()</div>
					<div id="boxHeading2" class="col-xs-4 col-xs-offset-4 opacity00">In addition()</div>
				</div>
				
				<div id="varBox1" class="box-border col-xs-4 opacity00"
					style="height: 110px; margin-top: 5px;">
					<div id="aAddress" class="col-xs-6  text-center opacity00"
						style="margin-top: 10px;">
						<div>
							<b style="color: maroon;">a</b>
						</div>
						<div style="line-height: 50px; height: 50px;" class="box-border">
							<span id="aVal" class="opacity00"></span>
						</div>
						<div>2456</div>
					</div>
					<div id="bAddress" class="col-xs-6  text-center opacity00"
						style="margin-top: 10px;">
						<div>
							<b style="color: maroon;">b</b>
						</div>
						<div style="line-height: 50px; height: 50px;" class="box-border">
							<span id="bVal" class="opacity00"></span>
						</div>
						<div>2564</div>
					</div>
				</div>
				
				<div id="varBox2" class="box-border col-xs-4 col-xs-offset-4 opacity00"
					style="height: 110px; margin-top: 5px;">
					<div id="xAddress" class="col-xs-6   text-center opacity00"
						style="margin-top: 10px;">
						<div>
							<b style="color: maroon;">x</b>
						</div>
						<div style="line-height: 50px; height: 50px;" class="box-border">
							<span id="xVal" class="opacity00"></span>
						</div>
						<div>3457</div>
					</div>

					<div id="yAddress" class="col-xs-6  text-center opacity00"
						style="margin-top: 10px;">
						<div>
							<b style="color: maroon;">y</b>
						</div>
						<div style="line-height: 50px; height: 50px;" class="box-border">
							<span id="yVal" class="opacity00"></span>
						</div>
						<div>4156</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-5 col-xs-offset-2" style="margin-top: 35px;">
<div style="" id="consoleId" class="output-console padding0">
						<div class="output-console-title-bar">
								<span class="title">Output</span>
						</div>
								
<div style="color: white;" class="output-console-body">
<span id="runEditor1"></span>
<span id="runEditor2"></span>
</div>
</div>
</div>
	</div>
	
<div class="col-xs-12 margin-top-20 text-center"><span id="restart" class="btn btn-warning opacity00">Restart</span></div>
</body>
</html>