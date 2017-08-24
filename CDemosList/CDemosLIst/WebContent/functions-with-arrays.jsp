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
<title>Functions with Arrays</title>
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
	height: 195px;
}

.output-console {
	margin: 0;
}

.creampretab4 {
	font-size: 12px;
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
	animation-iteration-count: 1s;
	animation-direction: alternate ;
	position: relative;
}

@keyframes blink-border-background-orange { 
	50% {
		border-color: orange;
		background: orange;
	}
}

table {
	margin-top: 20px;
	font-family: monospace;
}

.int-num {
	border-width: 0;
	width: 8%;
	background-color: black;
}

.errMsg {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

.ui-effects-transfer {
    background-color: blue;
    z-index: 99999999 !important;
}

</style>
</head>
<body>
	<script type="text/javascript">
	var introjs;
	var typingSpeed = 10;
	var tl;
	var consoleCount = 1;
	var animationCount = 1;
	var i = 1;
	var iCount = 0;
	$(document).ready(function() {
		introGuide();
		tl = new TimelineLite();
	});	
	
	function introGuide() {
		introjs = introJs();
		introjs.setOptions({
			steps : [{
				element : "#codeAnimation",
				intro : "",
				position : "right"
			},{
				element : "#functionDec1",
				intro : "",
				position : "right"
			},{
				element : "#functionDec2",
				intro : "",
				position : "right"
			},{
				element : "#mainFunction",
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
				element : "#startMain",
				intro : "",
				position : "right"
			},{
				element : "#mainVar",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#mainPrintf",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#mainScanf",
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
				element : "#readCall",
				intro : "",
				position : "right"
			},{
				element : "#readStep1",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#readVar",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#readPrintf",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#forLoop1",
				intro : "",
				position : "right"
			},{
				element : "#forInit1",
				intro : "",
				position : "right"
			},{
				element : "#displayStep1",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#displayVar",
				intro : "",
				position : "right"
			},{
				element : "#animationBox",
				intro : "",
				position : "left"
			},{
				element : "#displayPrintf1",
				intro : "",
				position : "right"
			},{
				element : "#consoleId",
				intro : "",
				tooltipClass : "hide"
			},{
				element : "#forLoop2",
				intro : "",
				position : "right"
			},{
				element : "#forInit2",
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
			
			case "codeAnimation":
				$(".introjs-nextbutton").hide();
				var text = "This is the program is to know the working of functions with <span class='ct-code-b-yellow'>arrays</span>.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
				break;
				
			case "functionDec1":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is a function declaration with name <span class='ct-code-b-yellow'>read(int[], int)</span> " 
								+ " with <span class='ct-code-b-yellow'>no</span> return type and " 
								+ "<span class='ct-code-b-yellow'>two</span> arguments <b>int[ ]</b> and <b>int</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "functionDec2":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is a function declaration with name <span class='ct-code-b-yellow'>display(int[], int)</span> " 
						+ " with <span class='ct-code-b-yellow'>no</span> return type and " 
						+ "<span class='ct-code-b-yellow'>two</span> arguments <b>int[ ]</b> and <b>int</b>.";
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
				
			case "funcDef1":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the function definition of <span class='ct-code-b-yellow'>read(int[], int)</span> ";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funcDef2":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the function definition of <span class='ct-code-b-yellow'>display(int[], int)</span>";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "startMain":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "<span class='ct-code-b-yellow'>main()</span> is the operating system call i.e " 
						+ " <span class='ct-code-b-yellow'>main()</span> is the execution starting point.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainVar":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of an <b>int array</b> <span class='ct-code-b-yellow'>a[4]</span> and <b>int</b> "
								+ " variable <b>n</b>. They are declared inside <span class='ct-code-b-yellow'>main()</span> " 
								+ " so we call them as <span class='ct-code-b-yellow'>local</span> variables to the " 
								+ " <span class='ct-code-b-yellow'>main()</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$("#mainVar").addClass("check");
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "readVar":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of <b>int</b> variable <b>i</b>. It is declared inside "
								+ " <span class='ct-code-b-yellow'>read()</span> " 
								+ " so we called it as <span class='ct-code-b-yellow'>local</span> variable to the " 
								+ " <span class='ct-code-b-yellow'>read()</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "displayVar":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "It is a declaration of <b>int</b> variable <b>i</b>. It is declared inside "
								+ " <span class='ct-code-b-yellow'>display()</span> " 
								+ " so we called it as <span class='ct-code-b-yellow'>local</span> variable to the " 
								+ " <span class='ct-code-b-yellow'>display()</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainPrintf":
				$(".introjs-nextbutton").hide();
				$("#mainVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This <span class='ct-code-b-yellow'>printf()</span> function will print the message on the standard " 
								+ " output device(monitor).";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "readPrintf":
				$(".introjs-nextbutton").hide();
				$("#readVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This <span class='ct-code-b-yellow'>printf()</span> function will print the message on the standard " 
								+ " output device(monitor).";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "forPrintf" + i:
			case "displayPrintf1":
			case "displayPrintf2":
				$(".introjs-nextbutton").hide();
				$("#displayVar").removeClass("blinking-white");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This <span class='ct-code-b-yellow'>printf()</span> function will print the message on the standard " 
								+ " output device(monitor).";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "mainScanf":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Here <span class='ct-code-b-yellow'>scanf()</span> function is used to read <b>integer</b> value.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "readCall":
				$( "#num1" ).prop( "disabled", true );
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "The function call is made to <span class='ct-code-b-yellow'>read(a, n)</span>. so the"
								+ " control is transfered from <b>main()</b> to <b>read()</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "displayCall":
				$(".introjs-nextbutton").hide();
				iCount = 0;
				animationCount++;
				consoleCount++;
				i = 2;
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "The function call is made to <span class='ct-code-b-yellow'>display(a, n)</span>. so the"
								+ " control is transfered from <b>main()</b> to <b>display()</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "readStep1":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					$("#aTransfer1").effect( "transfer", { to: $("#readArg1"), className: "ui-effects-transfer" }, 1000 , function() {
						$("#nTransfer1").effect( "transfer", { to: $("#readArg2"), className: "ui-effects-transfer" }, 1000 , function() {
							var text = "Here the two variables <b>x[4]</b> and <b>n</b> are called "
										+ " <span class='ct-code-b-yellow'>formal arguments</span>. " 
										+ " The <span class='ct-code-b-yellow'>base</span> address of " 
										+ " array <b>a[4]</b> transfered to  array <b>x[4]</b> in " 
										+ " the read() and the n value of  main() " 
										+ " is copied into the variable n of read()."
							typing(".introjs-tooltiptext", text, function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
				
			case "displayStep1":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					$("#aTransfer2").effect( "transfer", { to: $("#displayArg1"), className: "ui-effects-transfer" }, 1000 , function() {
						$("#nTransfer2").effect( "transfer", { to: $("#displayArg2"), className: "ui-effects-transfer" }, 1000 , function() {
							var text = "Here the two variables <b>y[4]</b> and <b>n</b> are called "
										+ " <span class='ct-code-b-yellow'>formal arguments</span>. "
										+ " The <span class='ct-code-b-yellow'>base</span> address of " 
										+ " array <b>a[4]</b> transfered to  array <b>y[4]</b> in " 
										+ " the display() and the n value of  main() " 
										+ " is copied into the variable n of display()."
							typing(".introjs-tooltiptext", text, function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
				
			case "forLoop" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(i == 1) {
						var text = "One dimensional <span class='ct-code-b-yellow'>array</span> elements " 
								+ " can be read by using single <span class='ct-code-b-yellow'>for</span> loop";
					} else {
						var text = "By using for loop we will print the elements in the array y[4].";
					}
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "forInit" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "<span class='ct-code-b-yellow'>i</span> is initialized with value <span class='ct-code-b-yellow'>0</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$("#iBox" + i).addClass("blinking-white");
						if(i == 1) {
							$("#readVal1").text(0);
							tl.to("#readVal1", 1, {opacity: 1, onComplete: function() {
								$("#iBox" + i).removeClass("blinking-white");
								if(iCount < parseInt($("#num1").val())) {
									forLoopSteps();
								} else {
									afterFor();
								}
								$(".introjs-nextbutton").show();
							}});
						} else {
							$("#displayVal1").text(0);
							tl.to("#displayVal1", 1, {opacity: 1, onComplete: function() {
								$("#iBox" + i).removeClass("blinking-white");
								if(iCount < parseInt($("#num1").val())) {
									forLoopSteps();
								} else {
									afterFor();
								}
								$(".introjs-nextbutton").show();
							}});
						}
					});
				});
				break;
				
			case "forCond" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(iCount < parseInt($("#num1").val())) {
						var text = "In this statement we are checking the condition <span class='ct-code-b-yellow'>i < n</span>."
									+ " <ul><li>Now <b>i = "+iCount+"</b> and <b>n = "+$("#num1").val()+"</b>.</li>"
									+ " <li><span class='ct-code-b-yellow'>"+iCount+" < "+$("#num1").val()+"</span> evaluates to "  
									+ " <span class='ct-code-b-yellow'>true</span>. Now control goes to next statement.</li></ul>";
					} else {
						var text = "In this statement we are checking the condition <span class='ct-code-b-yellow'>i < n</span>."
									+ " <ul><li>Now <b>i = "+iCount+"</b> and <b>n = "+$("#num1").val()+"</b>.</li>"
									+ " <li><span class='ct-code-b-yellow'>"+iCount+" < "+$("#num1").val()+"</span> evaluates to "  
									+ " <span class='ct-code-b-yellow'>false</span>. So for loop terminates.</li></ul>";
					}
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "iInc" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					iCount++;
					$( "#edit"+iCount ).prop( "disabled", true );
					var text = "In this statement we are incrementing i value by <span class='ct-code-b-yellow'>i++</span>. "
								+ " Now <span class='ct-code-b-yellow'>i = " + iCount + "</span>";
					typing(".introjs-tooltiptext", text, function() {
						if(iCount < parseInt($("#num1").val())) {
							forLoopSteps();
						} else {
							afterFor();
						}
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "funScanf" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() { 
					var text = "Here <span class='ct-code-b-yellow'>scanf()</span> function is used to read <b>integer</b> value.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "endFor" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(i == 1) {
						$("#readVal1").text(iCount);
					} else {
						$("#displayVal1").text(iCount);
					}
					var text = "For loop ended here.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "endFunc" + i:
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Function ends here, the local variable of read() will getr vanished and control goes to the main().";
					typing(".introjs-tooltiptext", text, function() {
						$("#mainHeading1").text("In main()");
						$("#arrText").text("a[4]");
						$("#arrIdx1").text("a[0]");
						$("#arrIdx2").text("a[1]");
						$("#arrIdx3").text("a[2]");
						$("#arrIdx4").text("a[3]");
						$("#arrayBox").addClass("blinking-white");
						setTimeout(function() {
							$("#arrayBox").removeClass("blinking-white");
							$("#iBox" + i).addClass("blinking-white");
							tl.to("#iBox" + i, 1, {opacity: 0, onComplete: function() {
								$("#iBox" + i).removeClass("blinking-white");
								$("#nBox" + i).addClass("blinking-white");
							}});
							tl.to("#nBox" + i, 1, {opacity: 0, onComplete: function() {
								$("#nBox" + i).removeClass("blinking-white");
								$(".introjs-nextbutton").show();
							}});
						}, 1000);
					});
				});
				break;
				
			case "animationBox":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(animationCount == 1) {
						tl.to("#mainHeading1", 1, {opacity: 1, onComplete: function() {
							$("#mainHeading1").removeClass("opacity00");
						}});
						
						tl.to("#arrayBox", 1, {opacity: 1, onComplete: function() {
							$("#mainVar").addClass("blinking-white");
							$("#arrayBox").removeClass("opacity00");
						}});
						tl.to("#tr1", 1, {opacity: 1, onComplete: function() {
							$("#tr1").removeClass("opacity00");
						}});
						
						tl.to("#tr3", 1, {opacity: 1, onComplete: function() {
							$("#tr3").removeClass("opacity00");
						}});
						
						tl.to("#mainHeading2", 1, {opacity: 1, onComplete: function() {
							$("#mainHeading2").removeClass("opacity00");
						}});
						
						tl.to("#mainVarBox", 1, {opacity: 1, onComplete: function() {
							$("#mainVarBox").removeClass("opacity00");
							var text = "Here the memory has allocated to the array with <span class='ct-code-b-yellow'>4</span> " 
								+ " integer elements with base <b>address</b> 1024. And also memory allocated for variable n " 
								+ " with respected address in the <span class='ct-code-b-yellow'>main()</span>.";
							typing(".introjs-tooltiptext", text, function() {
								animationCount++;
								$(".introjs-nextbutton").show();
							});
						}});
					} else if(animationCount == 2) {
						$("#nInMain").addClass("blinking-orange");
						$("#nInMain").text($("#num1").val());
						tl.to("#nInMain", 1, {opacity: 1, onComplete: function() {
							$("#nInMain").removeClass("blinking-orange");
							$("#nInMain").removeClass("opacity00");
							var text = "The value <span class='ct-code-b-yellow'>"+$("#num1").val()+"</span> has stored " 
										+ " in <b>main()</b> in variable <span class='ct-code-b-yellow'>n</span>";
							typing(".introjs-tooltiptext", text, function() {
								animationCount++;
								$(".introjs-nextbutton").show();
							});
						}});
					} else if(animationCount == 3) {
						
						tl.to("#boxHeading2", 1, {opacity: 1, onComplete: function() {
							$("#boxHeading2").removeClass("opacity00");
						}});
						
						tl.to("#readBox", 1, {opacity: 1, onComplete: function() {
							$("#readArg2").addClass("blinking-white");
							$("#readBox").removeClass("opacity00");
						}});
						
						tl.to("#nBox1", 1, {opacity: 1, onComplete: function() {
							$("#readVal2").text($("#num1").val());
							$("#nBox1").removeClass("opacity00");
						}});
						tl.to("#readVal2", 1, {opacity: 1, onComplete: function() {
							$("#readVal2").removeClass("opacity00");
							$("#readArg2").removeClass("blinking-white");
							var text1 = "<ul><li>The <b>n</b> value of <span class='ct-code-b-yellow'>main()</span> has copied " 
										+ " into variable n of <span class='ct-code-b-yellow'>read()</span>.</li><li id='tText'></li></ul>"
							typing(".introjs-tooltiptext", text1, function() {
								$("#readArg1").removeClass("blinking-white");
								var text2 = "The array name <span class='ct-code-b-yellow'>a</span> is the base address of the entire array. " 
											+ " i.e it sends address, at the receiving side array <span class='ct-code-b-yellow'>x[4]</span> " 
											+ " is declared. <li> So the same address of <span class='ct-code-b-yellow'>a</span> is  " 
											+ " allocated to array <span class='ct-code-b-yellow'>x</span> i.e the same memory is " 
											+ " accessed by two array variables.</li>";
								typing("#tText", text2, function() {
									$("#arrayBox").addClass("blinking-orange");
									$("#arrText").delay(1000).queue(function() {
										flipEffect("#mainHeading1", "In read()", function() {
											flipEffect("#arrText", "x[4]", function() {
												flipEffect("#arrIdx1", "x[0]", function() {
													flipEffect("#arrIdx2", "x[1]", function() {
														flipEffect("#arrIdx3", "x[2]", function() {
															flipEffect("#arrIdx4", "x[3]", function() {
																$("#arrayBox").removeClass("blinking-orange");
																animationCount++;
																$(".introjs-nextbutton").show();
															});
														});
													});
												});
											});
										});
									});
								});
							});
						}});
					} else if(animationCount == 4) {
						tl.to("#iBox1", 1, {opacity: 1, onComplete: function() {
							$("#iBox1").removeClass("opacity00");
							$("#readVar").addClass("blinking-white");
							var text = "Here the memory has allocated to the variable <b>i</b> in the " 
										+ " <span class='ct-code-b-yellow'>read()</span>.";
							typing(".introjs-tooltiptext", text, function() {
								animationCount++;
								$(".introjs-nextbutton").show();
							});
						}});
					} else if(animationCount == 5) {
						var text = "The value at array index <span class='ct-code-b-yellow'>x["+iCount+"]</span> has stored in the array.";
						typing(".introjs-tooltiptext", text, function() {
							$("#arrVal" + iCount).text($('#edit'+(iCount+1)+'').val());
							$("#arrVal" + iCount).addClass("blinking-orange");
							tl.to("#arrVal" + iCount, 1, {opacity: 1, onComplete: function() {
								$("#arrVal" + iCount).removeClass("blinking-orange");
								$("#arrVal" + iCount).removeClass("opacity00");
								if(iCount == parseInt($("#num1").val())) {
									$("#readVal1").text($("#num1").val());
								}
								$(".introjs-nextbutton").show();
							}});
						});
					} else if(animationCount == 6) {
						tl.to("#boxHeading3", 1, {opacity: 1, onComplete: function() {
							$("#boxHeading3").removeClass("opacity00");
						}});
						
						tl.to("#displayBox", 1, {opacity: 1, onComplete: function() {
							$("#displayArg2").addClass("blinking-white");
							$("#displayBox").removeClass("opacity00");
						}});
						
						tl.to("#nBox2", 1, {opacity: 1, onComplete: function() {
							$("#displayVal2").text($("#num1").val());
							$("#nBox2").removeClass("opacity00");
						}});
						tl.to("#displayVal2", 1, {opacity: 1, onComplete: function() {
							$("#displayVal2").removeClass("opacity00");
							$("#displayArg2").removeClass("blinking-white");
							var text1 = "<ul><li>The <b>n</b> value of <span class='ct-code-b-yellow'>main()</span> has copied " 
								+ " into variable n of <span class='ct-code-b-yellow'>display()</span>.</li><li id='tText2'></li></ul>"
							typing(".introjs-tooltiptext", text1, function() {
								$("#displayArg1").removeClass("blinking-white");
								var text2 = "The array name <span class='ct-code-b-yellow'>a</span> is the base address of the entire array. " 
									+ " i.e it sends address, at the receiving side array <span class='ct-code-b-yellow'>y[4]</span> " 
									+ " is declared. <li> So the same address of <span class='ct-code-b-yellow'>a</span> is  " 
									+ " allocated to array <span class='ct-code-b-yellow'>y</span> i.e the same memory is " 
									+ " accessed by two array variables.</li>";
								typing("#tText2", text2, function() {
									$("#arrayBox").addClass("blinking-orange");
									setTimeout(function() {
										flipEffect("#mainHeading1", "In display()", function() {
											flipEffect("#arrText", "y[4]", function() {
												flipEffect("#arrIdx1", "y[0]", function() {
													flipEffect("#arrIdx2", "y[1]", function() {
														flipEffect("#arrIdx3", "y[2]", function() {
															flipEffect("#arrIdx4", "y[3]", function() {
																$("#arrayBox").removeClass("blinking-orange");
																animationCount++;
																$(".introjs-nextbutton").show();
															});
														});
													});
												});
											});
										});
									}, 1000);
								});
							});
						}});
					} else if(animationCount == 7) {
						tl.to("#iBox2", 1, {opacity: 1, onComplete: function() {
							$("#iBox2").removeClass("opacity00");
							$("#displayVar").addClass("blinking-white");
							var text = "Here the memory has allocated to the variable <b>i</b> in the " 
										+ " <span class='ct-code-b-yellow'>display()</span>.";
							typing(".introjs-tooltiptext", text, function() {
								animationCount++;
								$(".introjs-nextbutton").show();
							});
						}});
					} else if(animationCount == 8) {
						var text = "The value at array index <span class='ct-code-b-yellow'>y["+iCount+"]</span> has stored in the array.";
						typing(".introjs-tooltiptext", text, function() {
							$("#arrVal" + iCount).text($('#edit2'+(iCount+1)+'').val());
							$("#arrVal" + iCount).addClass("blinking-orange");
							tl.to("#arrVal" + iCount, 1, {opacity: 1, onComplete: function() {
								$("#arrVal" + iCount).removeClass("blinking-orange");
								$("#arrVal" + iCount).removeClass("opacity00");
								if(iCount == parseInt($("#num1").val())) {
									$("#displayVal1").text($("#num1").val());
									animationCount++;
								}
								$(".introjs-nextbutton").show();
							}});
						});
					}
				});
				break;
			
			
			case "consoleId":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if(consoleCount == 1) {
						var text = "Enter number of elements <span id='scanfVal1'></span>";
						typing("#runEditor1", text, function() {
							setTimeout(function() {
								consoleCount++;
								introjs.nextStep();
							}, 1000);
						});
					} else if(consoleCount == 2) {
						var text1 = "<input id='num1' class='int-num elements' type='text'  maxlength='1'/>";
						$("#num1").addClass("int-num");
						typing("#scanfVal1", text1, function() {
							var text2 = "Enter an int number."
							typing(".introjs-tooltiptext", text2, function() {
								charAtEnd("num1");
								consoleCount++;
								$('.elements').on("keydown", function(e) {
									$(".errMsg").remove();
									var max = $(this).attr("maxlength"); 
									
									if ($.inArray(e.keyCode, [46, 8, 9, 27, 35, 36, 37, 39]) !== -1) {
										return;
									}
									if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 52)) && ((e.keyCode < 96) || (e.keyCode > 100))) {
										e.preventDefault();
									}
									
									if ($(this).val().length >= max) {
										$(".introjs-tooltiptext").append("<div class='errMsg'>Max Length 1 digit only</div>");
										e.preventDefault();
									}
								});
								
								$(".elements").on("keyup", function(e) {
									$(".errMsg").remove();
									var max = $(this).attr("maxlength");
									
									if ($(this).val() == "") {
										$(".introjs-nextbutton").hide();
										$(".introjs-tooltiptext").append("<div class='errMsg'>Please enter a number below 5.</div>");
									} else {
										$(".introjs-nextbutton").show();
									}
									
									if ($(".elements").val().length < 1) {
										$(".introjs-nextbutton").hide();
									}
								});
							});
						});
					} else if(consoleCount == 3) {
						var text = "Enter "+$("#num1").val()+" elements : <br><span id='element0'></span>";
						typing("#runEditor2", text, function() {
							setTimeout(function() {
								consoleCount++;
								introjs.nextStep();
							}, 1000);
						});
					} else if(consoleCount == 4) {
						var text = "Enter a value.";
						typing(".introjs-tooltiptext", text, function() {
							 enterValues();
						});
					} else if(consoleCount == 5) {
						$("#element"+(parseInt($("#num1").val()) - 1)+" br").remove()
						var text = "The elements in array are : <br><span id='disOutput"+iCount+"'></span>";
						typing("#runEditor3", text, function() {
							setTimeout(function() {
								consoleCount++;
								introjs.nextStep();
							}, 1000);
						});
					} else if(consoleCount == 6) {
						printValues();
					}
				});
				break;
				
			case "restart":
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#restart").removeClass("opacity00");
					$("#restart").click(function() {
						location.reload();
					});
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
	
	function printValues() {
		var text = "y["+iCount+"] = "+$("#arrVal"+ iCount).text()+"<br><span id='disOutput"+(iCount+1)+"'></span>";
		typing("#disOutput" + iCount, text, function() {
			setTimeout(function() {
				introjs.nextStep();
			}, 1000);
		});
	}
	
	function enterValues() {
		var text = "Enter value for x["+iCount+"] : <input id='edit"+(iCount+1)+"' class='int-num index-element' type='text'  maxlength='1'/> " 
					+ " <br><span id='element"+(iCount+1)+"'></span>";
		typing("#element"+iCount+"", text, function() {
			charAtEnd("edit"+(iCount+1)+"");
			$('#edit'+(iCount+1)+'').on("keydown", function(e) {
				$(".errMsg").remove();
				var max = $(this).attr("maxlength"); 
				
				if ($.inArray(e.keyCode, [46, 8, 9, 27, 35, 36, 37, 39]) !== -1) {
					return;
				}
				if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
					e.preventDefault();
				}
				
				if ($(this).val().length >= max) {
					$(".introjs-tooltiptext").append("<div class='errMsg'>Max Length 1 digit only</div>");
					e.preventDefault();
				}
				
			});
			
			$('#edit'+(iCount+1)+'').on("keyup", function(e) {
				$(".errMsg").remove();
				var max = $(this).attr("maxlength");
				
				if ($(this).val() == "") {
					$(".introjs-nextbutton").hide();
					$(".introjs-tooltiptext").append("<div class='errMsg'>Please enter a number.</div>");
				} else {
					$(".introjs-nextbutton").show();
				}
				
				if ($('#edit'+(iCount+1)+'').val().length < 1) {
					$(".introjs-nextbutton").hide();
				}
			});
		});
	}
	
	function forLoopSteps() {
		var step = 0;
		var dynamicStep = {
				"element" : "#forCond" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
	
		if(i == 1) {
			var dynamicStep = {
					"element" : "#forPrintf" + i,
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
			
			var dynamicStep = {
					"element" : "#funScanf" + i,
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
			
			var dynamicStep = {
					"element" : "#consoleId",
					"intro" : "",
					"position" : "left"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
			
		} else {
			var dynamicStep = {
					"element" : "#displayPrintf" + i,
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
			
			var dynamicStep = {
					"element" : "#consoleId",
					"intro" : "",
					"tooltipClass" : "hide"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
		}
		
		if(i == 1) {
			var dynamicStep = {
					"element" : "#animationBox",
					"intro" : "",
					"position" : "left"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
		}
		
		var dynamicStep = {
				"element" : "#iInc" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
	}
	
	function afterFor() {
		var step = 0;
		var dynamicStep = {
				"element" : "#forCond" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
		
		var dynamicStep = {
				"element" : "#endFor" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
		
		var dynamicStep = {
				"element" : "#endFunc" + i,
				"intro" : "",
				"position" : "right"
		}
		introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
		
		if(i == 1) {
			var dynamicStep = {
					"element" : "#displayCall",
					"intro" : "",
					"position" : "right"
			}
			introjs.insertOption(introjs._currentStep + ++step, dynamicStep);
		}
	}
	
	</script>
	<div class="text-center margin-top-20">
		<h1 id="heading" class="label ct-demo-heading text-center">Functions with Arrays</h1>
	</div>
	<div id="mainDiv" class="col-xs-12" style="margin-top: 30px;">
		<div class="col-xs-4" id="codeBox">
			<pre id="codeAnimation" class='creampretab4 box-border'>
			#include&lt;stdio.h&gt;
			<span id="functionDec1">void read(int[], int)</span>
			<span id="functionDec2">void display(int[], int)</span>
			<span id="mainFunction"><span id="startMain">main() {</span>
				<span id="mainVar">int a[4], n;</span>
				<span id="mainPrintf">printf("Enter number of elements");</span>
				<span id="mainScanf">scanf("<span id="d1">%d</span>", <span id="nAddr">&n</span>);</span>
				<span id="readCall">read(<span id="aTransfer1">a</span>, <span id="nTransfer1">n</span>);</span>
				<span id="displayCall">display(<span id="aTransfer2">a</span>, <span id="nTransfer2">n</span>);</span>
			<span id="endMain">}</span></span>
			<span id="funcDef1"><span id="readStep1">void read(<span id="formalInit1">int <span id="readArg1">x[4]</span>, int <span id="readArg2">n</span></span>)</span> {
				<span id="readVar">int i;</span>
				<span id="readPrintf">printf("Enter %d elements : ", n);</span>
				<span id="forLoop1">for(<span id="forInit1">i = 0</span>; <span id="forCond1">i &lt; n</span>; <span id="iInc1">i++</span>) {
					<span id="forPrintf1">printf("Enter value for x[%d] : ", i);</span>
					<span id="funScanf1">scanf("<span id="percent1">%d</span>", <span id="arrAddr1">&x[i]</span>);</span>
				<span id="endFor1">}</span></span>
			<span id="endFunc1">}</span></span>
			<span id="funcDef2"><span id="displayStep1">void display(<span id="formalInit2">int <span id="displayArg1">y[4]</span>, int <span id="displayArg2">n</span></span>)</span> {
				<span id="displayVar">int i;</span>
				<span id="displayPrintf1">printf("The elements in array are : ");</span>
				<span id="forLoop2">for(<span id="forInit2">i = 0</span>; <span id="forCond2">i &lt; n</span>; <span id="iInc2">i++</span>) {
					<span id="displayPrintf2">printf("y[%d] = %d", i, y[i]);</span>
				<span id="endFor2">}</span></span>
			<span id="endFunc2">}</span></span>
			</pre>
		</div>
		
		<div class="col-xs-7 col-xs-offset-1">
			<div id="animationBox" class="col-xs-11 box-border" style="height: 375px;">
					<div class="col-xs-11 margin-top-20 text-center" style="font-weight: bold; color: rgb(47, 79, 79); padding: 0px;">
						<div id="mainHeading1" class="col-xs-5 col-xs-offset-1 opacity00" style="display: inline-block; position: relative;">In
							main()</div>
  					<div id="mainHeading2" class="col-xs-4 col-xs-offset-2 opacity00">In
							main()</div>
					</div>
				
					<div id="mainBox" class="col-xs-12 text-center">
						<div id="arrayBox" class="col-xs-6 box-border opacity00" style="margin-top: 18px;">
							<b id="arrText" style="color:maroon; font-family: monospace; display: inline-block; position: relative;">a[4]</b>
							<table id="table" class="text-center" style="height: 85px; width: 100%;">
								<tbody><tr id="tr1" class="opacity00">
									<td><span id="arrIdx1" style="display: inline-block; position: relative;">a[0]</span></td>
									<td><span id="arrIdx2" style="display: inline-block; position: relative;">a[1]</span></td>
									<td><span id="arrIdx3" style="display: inline-block; position: relative;">a[2]</span></td>
									<td><span id="arrIdx4" style="display: inline-block; position: relative;">a[3]</span></td>
								</tr>
								<tr id="tr2" style="height: 32px;">
									<td style="border: 1px solid;"><span id="arrVal0" class=""></span></td>
									<td style="border: 1px solid;"><span id="arrVal1" class=""></span></td>
									<td style="border: 1px solid;"><span id="arrVal2" class=""></span></td>
									<td style="border: 1px solid;"><span id="arrVal3" class=""></span></td>
								</tr>
								<tr id="tr3" class="opacity00">
									<td><span id="arrAddr1">1024</span></td>
									<td><span id="arrAddr2">1026</span></td>
									<td><span id="arrAddr3">1028</span></td>
									<td><span id="arrAddr4">1030</span></td>
								</tr>
							</tbody></table>
						</div>
						<div id="mainVarBox" class="col-xs-3 col-xs-offset-2 box-border opacity00" style="margin-top: 20px;">
							<div class="col-xs-8 col-xs-offset-2">
								<b style="color: maroon;">n</b>
							</div>
							<div class="col-xs-8 col-xs-offset-2 box-border" style="height: 45px; line-height: 45px;">
								<span id="nInMain" class=""></span>
							</div>
							<div class="col-xs-8 col-xs-offset-2">2016</div>
						</div>
					</div>

					<div class="col-xs-12" style="margin-top: 15px;">
						<div class="col-xs-12 text-center" style="font-weight: bold; color: rgb(47, 79, 79); padding: 0px;">
							<div id="boxHeading2" class="col-xs-4 col-xs-offset-1 opacity00">In read()</div>
							<div id="boxHeading3" class="col-xs-4 col-xs-offset-2 opacity00">In display()</div>
						</div>
						<div>
							<div id="readBox" class="col-xs-4 col-xs-offset-1 box-border opacity00 text-center"
								style="height: 100px; margin-top: 10px; line-height: -moz-block-height;">

								<div id="iBox1" class="col-xs-6 opacity00" style="padding: 0px; font-size: 12px; margin-top: 10px;">
									<div class="col-xs-9 text-center col-xs-offset-1">
										<b style="color: maroon;">i</b>
									</div>
									<div class="col-xs-9 box-border col-xs-offset-1"
										style="height: 50px;">
										<span id="readVal1" class="opacity00"></span>
									</div>
									<div class="col-xs-9 text-center col-xs-offset-1">3312</div>
								</div>
								
								<div id="nBox1" class="col-xs-6 opacity00" style="padding: 0px; font-size: 12px; margin-top: 10px;">
									<div class="col-xs-9 text-center col-xs-offset-1">
										<b style="color: maroon;">n</b>
									</div>
									<div class="col-xs-9 box-border col-xs-offset-1"
										style="height: 50px;">
										<span id="readVal2" class="opacity00"></span>
									</div>
									<div class="col-xs-9 text-center col-xs-offset-1">1312</div>
								</div>
							</div>

							<div id="displayBox" class="col-xs-4 col-xs-offset-2 box-border opacity00 text-center"
								style="height: 100px; margin-top: 10px; line-height: -moz-block-height;">

								<div id="iBox2" class="col-xs-6 opacity00" style="padding: 0px; font-size: 12px; margin-top: 10px;">
									<div class="col-xs-9 text-center col-xs-offset-1">
										<b style="color: maroon;">i</b>
									</div>
									<div class="col-xs-9 col-xs-offset-1 box-border"
										style="height: 50px;">
										<span id="displayVal1" class="opacity00"></span>
									</div>
									<div class="col-xs-9 text-center col-xs-offset-1">2212</div>
								</div>
								
								<div id="nBox2" class="col-xs-6" style="padding: 0px; font-size: 12px; margin-top: 10px;">
									<div class="col-xs-9 text-center col-xs-offset-1">
										<b style="color: maroon;">n</b>
									</div>
									<div class="col-xs-9 col-xs-offset-1 box-border"
										style="height: 50px;">
										<span id="displayVal2" class="opacity00"></span>
									</div>
									<div class="col-xs-9 col-xs-offset-1 text-center">4512</div>
								</div>
							</div>
						</div>
					</div>

			</div>
		<div class="col-xs-7 col-xs-offset-2" style="margin-top: 40px;">
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
		</div>
	<div class="col-xs-12 text-center"><span id="restart" class="btn btn-warning opacity00">Restart</span></div>	
</body>
</html>