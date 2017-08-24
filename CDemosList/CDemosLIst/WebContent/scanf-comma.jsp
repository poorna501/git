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

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenLite.min.js" type="text/javascript"></script>
<script src="/js/gs/TimelineLite.min.js" type="text/javascript"></script>
<title>Insert title here</title>

<style type="text/css">

.margin-top-20 {
	margin-top: 20px;
}

.padding0 {
	padding: 0px;
}

.box-border {
	border: 1px solid gray;
	border-radius: 8px;
}

.code-div, .address-div {
	height: 150px;
}

.output-console-body {
	height: 100px;
}

.output-console {
	margin: 0;
}

.creampretab4 {
	font-size: 11px;
	-moz-tab-size: 2;
	background-color:lavender !important;
	line-height: 2.5;
}

.main-div {
	margin-top: 40px;
}

.center {
	margin-left: auto;
	margin-right: auto;
}

#outputDiv {
	margin-top: 45px;
}

.errMsg {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

.blinking-white {
	animation-name: blink-border-background-white ;
	animation-duration: 1s ;
	animation-iteration-count: infinite;
	animation-direction: alternate ;
}

@keyframes blink-border-background-white { 
	50% {
		border-color: white;
		background: white;
	}
}

.zIndex {
	z-index: 10000000;
	position: relative;
}

.int-num {
	border-width: 0;
	background-color: black;
}

.ct-code-b-red {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

.introjs-tooltip {
	min-width: 300px;
}

</style>

<script type="text/javascript">
var introjs;
var typingSpeed = 10;
var tl;
var arr;

$(document).ready(function() {
	introGuide();
	tl = new TimelineLite();
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
		steps : [{
			element : "#description",
			intro : "",
			position : "right"
		},{
			element : "#codeAnimation",
			intro : "",
			position : "right"
		},{
			element : "#varDeclaratn",
			intro : "",
			position : "right"
		},{
			element : "#addressDiv",
			intro : "",
			position : "left"
		},{
			element : "#printf",
			intro : "",
			position : "right"
		},{
			element : "#consoleId",
			intro : "",
			tooltipClass: "hide"
		},{
			element : "#scanf",
			intro : "",
			position : "right"
		},{
			element : "#consoleId",
			intro : "",
			position : "right"
		},{
			element : "#addressDiv",
			intro : "",
			position : "left"
		},{
			element : "#finalPrintf",
			intro : "",
			position : "right"
		},{
			element : "#consoleId",
			intro : "",
			tooltipClass: "hide"
		},{
			element : "#restart",
			intro : "",
			tooltipClass: "hide"
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "description":
			$(".introjs-nextbutton").hide();
			var text = "<ul><li>If the control string contains non white space characters other than conversion" +
			" specifications, that character is compared with the next character in the input data.</li><li>If the"+
			" character do not match, the scanf ( ) function stops.</li><li>If the character matches, that character"+
			" is read from the input data and ignored.</li><li>Then scanf() continues processing the control string.</li>"+
			" <li>This facilitates the user to enter the inputs in any convenient form.</li></ul>";
			typing("#desText", text, function() {
				var text2 = "Let us see how it works with <span class='ct-code-b-yellow'>comma</span>.";
				typing(".introjs-tooltiptext", text2, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "codeAnimation":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Now we will see the working of <span class='ct-code-b-yellow'>scanf()</span> function by taking two variables in this code.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "varDeclaratn":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here we are declaring two integer variables a and b.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "printf":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "This is printf() function.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "addressDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				
				if (introjs._currentStep == 3) {
					tl.to("#addressLocation", 1, {opacity: 1, onComplete: function() {
						$("#addressLocation").removeClass("opacity00");
					}});
					
					var text = "This is the location of given two integer variables a and b allocated at respected " + 
								" <span class='ct-code-b-yellow'>address</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				} else {
					$( "#num1" ).prop( "disabled", true );
					$("#givenNum1").text($("#num1").val().substring(0, $("#num1").val().indexOf(",")));
					$("#givenNum2").text($("#num1").val().substring($("#num1").val().indexOf(",") + 1));
					
					var l1 = $("#scanNum1").offset();
					var l2 = $("#scanNum2").offset();
					
					$("#givenNum1").offset({"top": l1.top, "left": l1.left});
					$("#givenNum2").offset({"top": l2.top, "left": l2.left});
					$("#dBlink1").addClass("blinking-white");
					$("#dBlink1").addClass("zIndex");
					
					$("#scanNum1").delay(1000).queue(function() {
						$("#dBlink1").removeClass("blinking-white");
						$("#dBlink1").removeClass("zIndex");
						$("#scanNum1").addClass("blinking-white");
						$("#scanNum1").addClass("zIndex");
						$("#givenNum1").addClass("zIndex");
					});
					
					tl.to("#givenNum1", 1, {opacity: 1, delay: 1, top:0, left:0, onComplete: function() {
						$("#givenNum1").removeClass("opacity00");
						$("#scanNum1").removeClass("blinking-white");
						$("#scanNum1").removeClass("zIndex");
						$("#givenNum1").removeClass("zIndex");
						$("#commaBlink").addClass("zIndex");
						$("#commaBlink").addClass("blinking-white");
						
						$("#commaBlink").delay(1000).queue(function() {
							$("#commaBlink").removeClass("zIndex");
							$("#commaBlink").removeClass("blinking-white");
							
							var txt = "Here <span class='ct-code-b-yellow'>comma</span> is ignored. <span id='appendTxt'></span>";
							typing(".introjs-tooltiptext", txt, function() {
								$("#dBlink2").delay(1000).queue(function() {
									$("#dBlink2").addClass("blinking-white");
									$("#dBlink2").addClass("zIndex");
									
									$("#scanNum2").delay(1000).queue(function() {
										$("#dBlink2").removeClass("blinking-white");
										$("#dBlink2").removeClass("zIndex");
										$("#scanNum2").addClass("blinking-white");
										$("#scanNum2").addClass("zIndex");
										$("#givenNum2").addClass("zIndex");
									});
								});
							});
						});
					}});
					
					tl.to("#givenNum2", 1, {opacity: 1, delay: 3, top:0, left:0, onComplete: function() {
						$("#givenNum2").removeClass("opacity00");
						$("#scanNum2").removeClass("blinking-white");
						$("#scanNum2").removeClass("zIndex");
						$("#givenNum2").removeClass("zIndex");
						var text = "Now given values are stored in <b>a</b> and <b>b</b> <span class='ct-code-b-yellow'>without</span> <b>comma</b>.";
						typing("#appendTxt", text, function() {
							$(".introjs-nextbutton").show();
						});
					}});
				}
			});
			break;
			
		case "consoleId":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (introjs._currentStep == 5) {
					var text = "Enter two numbers : <span id='inputVal'></span>"
					typing("#runEditor1", text, function() {
						setTimeout(function() {
							introjs.nextStep();
						}, 1000);
					});
				} else if (introjs._currentStep == 7) {
					var text = "<input id='num1' spellcheck='false' class='int-num'/>";
					typing("#inputVal", text, function() {
						var text2 = "Enter two numbers at the blinking cursor seperated with <span class='ct-code-b-yellow'>comma</span>. for example if you want to give " 
								    + "<b>12</b> and <b>33</b>, give it as <b>12,33</b>.";
						typing(".introjs-tooltiptext", text2, function() {
							charAtEnd("num1");
							arr = [];
							$('#num1').on("keydown", function(e) {
								if (arr.length == 2) {
									if (e.keyCode == 188) {
										e.preventDefault();
									}
								}
								if ($.inArray(e.keyCode, [46, 8, 9, 27, 188, 35, 36, 37, 39]) !== -1) {
									return;
								}
								if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
									e.preventDefault();
								}
							});
							
							$('#num1').on("keyup", function(e) {
								$('.length-error-text').remove();
								if ($(this).val() == "") {
									$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
																		"Please enter 2 numbers and separate each with space.</span>");
								}
								var givenText = $(this).val();
								var splittedText = givenText.split(",");
								arr = [];
								
								$.each(splittedText, function(idx, val) {
									if (val != '') {
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
										$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
																				"Please limit the number length to 2.</span>");
										$(".introjs-nextbutton").hide();
									}
								});
							});
						});
					});
				} else {
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "a = "+$("#givenNum1").text()+" b = "+$("#givenNum2").text()+"";
						typing("#runEditor2", text, function() {
							setTimeout(function() {
								$(".introjs-nextbutton").click();
							},1000)
						});
					});
				}
			});
			break;
			
		case "scanf":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here we are implementing the <span class='ct-code-b-yellow'>scanf()</span> function with " 
							+ "<span class='ct-code-b-yellow'>%d</span>, which are seperated by <span class='ct-code-b-yellow'>comma</span>.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "finalPrintf":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Now here we are printing a and b.";
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

</head>
<body>

<div class="text-center margin-top-20">
	<h1 id="heading" class="label ct-demo-heading text-center">Additional Features of scanf()</h1>
</div>

<div class=" margin-top-20 col-xs-12">
  <div class="col-xs-5 center  box-border" id="description" style="height: 180px; float: unset;">
  	<div id="desText" style="margin-top: 9px;">  </div>
  </div>
</div>

<div class="main-div col-xs-12" id="mainDiv">
	<div class="col-xs-4 col-xs-offset-2" id="codeDiv">
	<pre id="codeAnimation" class='creampretab4 box-border code-div'>
	<span id="varDeclaratn">int a,b;</span>
	<span id="printf">printf("Enter two numbers : ");</span>
	<span id="scanf">scanf("<span id='percentile'><span id='dBlink1'>%d</span><span id='commaBlink'>,</span><span id='dBlink2'>%d</span></span>", <span id='scanNum1'>&a</span>, <span id='scanNum2'>&b</span>);</span>
	<span id="finalPrintf">printf("a = %d b = %d", a , b);</span>
	</pre>
	</div>

		<div class="col-xs-4 box-border address-div" id="addressDiv">
			<div id="addressLocation" style="margin-top: 30px;" class="opacity00">
				<div class="col-xs-2 col-xs-offset-3  text-center"><b>a</b></div>
				<div class="col-xs-2 col-xs-offset-1 text-center"><b>b</b></div>
				<div class="col-xs-2 col-xs-offset-3  box-border  text-center"
					style="height: 50px; line-height: 50px;"><span id="givenNum1" class="opacity00"></span></div>
				<div class="col-xs-2 col-xs-offset-1  box-border text-center"
					style="height: 50px; line-height: 50px;"><span id="givenNum2" class="opacity00"></span></div>
				<div class="col-xs-2 col-xs-offset-3  text-center">00122</div>
				<div class="col-xs-2 col-xs-offset-1 text-center">12244</div>
			</div>
		</div>

</div>

<div id="outputDiv" class="col-xs-12">
<div class="col-xs-4 col-xs-offset-4">
<div class="output-console padding0" id="consoleId" style="">
						<div class="output-console-title-bar">
								<span class="title">Output</span>
						</div>
								
<div class="output-console-body" style="color: white;">
<span id="runEditor1"></span>
<span id="runEditor2"></span>
</div>
</div>
</div>
</div>
<div class="col-xs-12 margin-top-20 text-center"><span id="restart" class="btn btn-warning opacity00">Restart</span></div>
</body>
</html>