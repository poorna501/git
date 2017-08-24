<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css" >
<link rel="stylesheet" href="/css/introjs-ct.css" >
<link rel="stylesheet" href="/css/font-awesome.min.css">

<script src="/js/jquery-latest.js"></script>
<script src="/js/intro.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/gs/TweenMax.min.js"></script>

<title>Sample program on Prime numbers</title>
<style>

.margin-top-25 {
	margin-top: 25px;
}

.padding0 {
	padding: 0;
}

pre {
	margin: 0;
}

#description {
	height: 80px;
	border-radius: 12px;
	padding: 8px;
	letter-spacing: 1px;
	background-color: rgba(255, 255, 255, 0.85);
	z-index: 9999999;
}

.output-console-title-bar {
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	font-weight: bold;
}

.output-console-body {
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	height: 65px;
	padding: 10px;
	white-space: initial;
	font-size: 14px;
}

.explanation {
	border: 1px solid #ccc;
	height: 100px;
	border-radius: 8px;
}

#enteredText {
	background-color: black;
	border: none;
}

.ct-red {
	color: red;
	font-weight: bold;
	font-family: monospace;
}

.z-index {
	z-index: 1000004 !important;
	background-color: white;
}

.cup-color {
	color: #e1e1e1;
}

.cup-val {
	color: red;
	font-weight: bold;
	position: relative;
	right: 4px;
	top: 33px;
}

.cup-name {
	position: relative;
	font-family: monospace;
	font-weight: bold;
	right: 3px;
}

.circle {
	background-color: #f5f5f5;
	border: 0.5px solid #003399;
	border-radius: 50%;
	padding: 2px 4px 0;
	z-index: 10000001;
}

#iCupDiv, #cCupDiv {
	text-align: center;
}

#iValue, #nValue, #valueI, #valueN, #module, #iIncValue, #cIncValue, #duplicateVal, #incVal, #outerIfCond {
	display: inline-block;
	position: relative;
}

.user-btn {
	font-size: 10px;
	background-color: green;
	left: 15px;
	display: initial;
}

</style>
</head>
<script>
var introjs;
var typingInterval = 35;
var num = 1;
var counter = 0;

$(document).ready(function() {
	introGuide();
	
	$('#restart').click(function() {
		location.reload();
	});
	
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
				showStepNumbers : false,
				exitOnOverlayClick : false,
				showBullets : false,
				exitOnEsc : false,
				keyboardNavigation : false,
				steps : [ {
							element: '#description',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#program',
							intro: '',
							position: 'right'
						}, {
							element: '#intDec',
							intro: ''
						}, {
							element: '#printfEnter',
							intro: ''
						}, {
							element: '#console',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#scanf',
							intro: ''
						}, {
							element: '#console',
							intro: '',
						}, {
							element: '#whileLoop',
							intro: '',
							position: 'right'
						}, {
							element: '#console',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#restart',
							intro: '',
							position: 'right'
						} ]
	})
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "description":
			$('.introjs-nextbutton').hide();
			var text = "<ul><li>A <span class='ct-blue-color'>prime number</span> is a <span class='ct-blue-color'>positive</span> integer that has no positive integer <span class='ct-blue-color'>divisors</span> other than "
			            + "<span class='ct-blue-color'>1</span> and <span class='ct-blue-color'>itself.</span></li>"
						+ "<li>few prime numbers are 2, 3, 5, 7, 11, 13, 17, 19 etc.</li>";
			typing("#description", text, function() {
				 $("#description > ul > li:last-child()").append("<a class='introjs-button user-btn' onclick='firstLine()'>Next &#8594;</a>");
			});
			break;
			
		case "program":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#program").removeClass("opacity00");
				var text = "Let us learn an example program for how to find the <span class='ct-code-b-yellow'>given number is prime number or not</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show()
				});
			});
			break;
			
		case "intDec":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<div>Here we declared 3 variables </div><div><span class='ct-code-b-yellow'>n</span>, <span class='ct-code-b-yellow'>i</span>, and <span class='ct-code-b-yellow'>count</span>.</div>We initialized "
							+ "<span class='ct-code-b-yellow'>i</span> with <span class='ct-code-b-yellow'>1</span>";
				typing('.introjs-tooltiptext', text, function() {
					$(".explanation, #iCupDiv").removeClass("opacity00");
					setTimeout(function() {
						fromEffectWithTweenMax("#iVal", "#one", function() {
							$('.introjs-tooltiptext').append("<div id='count'></div>");
							text = "and <span class='ct-code-b-yellow'>count</span> with <span class='ct-code-b-yellow'>0</span>";
							typing("#count", text, function() {
								setTimeout(function() {
									$("#cCupDiv").removeClass("opacity00");
									fromEffectWithTweenMax("#cVal", "#zero", function() {
										$('.introjs-nextbutton').show();
									});
								}, 800);
							});
						});
					}, 500);
				});
			});
			break;
			
		case "printfEnter":
		case "falsePrint":
		case "truePrint":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>printf()</span> function is used to <span class='ct-code-b-yellow'>print</span> the data or <span class='ct-code-b-yellow'>user defined message</span> on the <span class='ct-code-b-yellow'>console</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "console":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				if (introjs._currentStep == 4) {
					$("#console").removeClass("opacity00");
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				} else if (introjs._currentStep == 6) {
					var text = "Enter number";
					typing('.introjs-tooltiptext', text, function() {
						$(".console-text").append('<span id="textEnter"></span>');
						$("#textEnter").append('<input type="text" maxlength="4" id="enteredText" />');
						caretAtEnd(document.getElementById("enteredText"));
						events();
						//$('.introjs-nextbutton').show();
					});
				} else if (counter == 2) {
					$("#printing").append('The given number ' + $("#enteredText").val() + ' is a prime number');
					setTimeout(function() {
						introjs.nextStep();
					}, 800);
				} else {
					$("#printing").append('The given number ' + $("#enteredText").val() + ' is not a prime number')
					setTimeout(function() {
						introjs.nextStep();
					}, 800);
				}
			});
			break;
			
		case "scanf":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "Here <span class='ct-code-b-yellow'>scanf()</span> function is used to <span class='ct-code-b-yellow'>enter</span> any combination of <span class='ct-code-b-yellow'>numerical values</span> and that value should be stored in <span class='ct-code-b-yellow'>n</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});	
			break;
			
		case "whileLoop":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow opacity00' id='conditionCheck'><span id='iValue'>i</span> <= <span id='nValue'>n</span></span>";
				typing('.introjs-tooltiptext', text, function() {
					var l1 = $("#whileLoop").offset();
					$("#conditionCheck").offset({top:l1.top, left:l1.left});
					$("#conditionCheck").removeClass("opacity00");
					TweenMax.to("#conditionCheck", 1, {top:0, left:0, onComplete: function() {
						rotationEffect("#iValue", num, function() {
							rotationEffect("#nValue", $("#enteredText").val(), function() {
						   		$('.introjs-tooltiptext').append('<div id="text"></div>');
						   		if (num <= $("#enteredText").val()) {
						   			var text = "<div>Condition evaluates to <span class='ct-code-b-yellow'>true</span>.</div>Control <span class='ct-code-b-yellow'>enters</span> into the <span class='ct-code-b-yellow'>loop</span>.";
						   			typing("#text", text, function() {
						   				var newStep = getStep('#ifCond', '', '', 'right');
						   				introjs.insertOption(introjs._currentStep + 1, newStep);
										$('.introjs-nextbutton').show();
						   			});
						   		} else {
						   			var text = "<div>Condition evaluates to <span class='ct-code-b-yellow'>false</span>.</div>Control <span class='ct-code-b-yellow'>comes out</span> of the <span class='ct-code-b-yellow'>loop</span>.";
						   			typing("#text", text, function() {
						   				var newStep = getStep('#outerIf', '', '', 'right');
						   				introjs.insertOption(introjs._currentStep + 1, newStep);
						   				$('.introjs-nextbutton').show();
						   			});
						   		}
							});
						});
					}});
				});
			});
			break;
			
		case "whileCode":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				setTimeout(function() {
					introjs.nextStep();
				}, 800);
			});
			break;
			
		case "ifCond":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow opacity00' id='ifCheck'><span id='module'><span id='valueN'>n</span> % <span id='valueI'>i</span></span> == <span id='zero'>0</span></span>";
				typing('.introjs-tooltiptext', text, function() {
					var l1 = $("#ifCond").offset();
					$("#ifCheck").offset({top:l1.top, left:l1.left});
					$("#ifCheck").removeClass("opacity00");
					TweenMax.to("#ifCheck", 1, {top:0, left:0, onComplete: function() {
						rotationEffect("#valueN", $("#enteredText").val(), function() {
							rotationEffect("#valueI", num, function() {
								rotationEffect("#module", $("#enteredText").val() % num, function() {
									$('.introjs-tooltiptext').append('<div id="text"></div>');
									if (($("#enteredText").val() % num) == 0) {
								   		var text = "<div>Condition evaluates to <span class='ct-code-b-yellow'>true</span>.</div>Control <span class='ct-code-b-yellow'>enters</span> into the <span class='ct-code-b-yellow'>if-block</span>.";
										typing("#text", text, function() {
											var newStep = getStep('#cInc', '', '', 'right');
											introjs.insertOption(introjs._currentStep + 1, newStep);
											$('.introjs-nextbutton').show();
										});
									} else {
										var text = "<div>Condition evaluates to <span class='ct-code-b-yellow'>false</span>.</div>Control  <span class='ct-code-b-yellow'>comes out</span> of the <span class='ct-code-b-yellow'>if-block</span>.";
										typing("#text", text, function() {
											var newStep = getStep('#iInc', '', '', 'right');
											introjs.insertOption(introjs._currentStep + 1, newStep);
											$('.introjs-nextbutton').show();
										});
									}
						   		});
						   	});
						});
					}});
				});
			});
			break;
			
		case "cInc":
			counter++;
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>count</span> is incremented to <span class='ct-code-b-yellow' id='cIncValue'>" + counter +"</span>";
				typing('.introjs-tooltiptext', text, function() {
					changeValue("#cIncValue", "#cVal", function() {
						var newStep = getStep('#iInc', '', '', 'right');
						introjs.insertOption(introjs._currentStep + 1, newStep);
						$('.introjs-nextbutton').show();
					})
				});
			});
			break;
			
		case "iInc":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				num++;
				if (($("#enteredText").val().length >= 2) && ((num > 4) && (num <= $("#enteredText").val() - 3))) {
						primeNumber();
						counting();
				} else {
				var text = "Now <span class='ct-code-b-yellow'>i</span> value incremented to <span class='ct-code-b-yellow' id='iIncValue'>" + num +"</span>"; 
				typing('.introjs-tooltiptext', text, function() {
					changeValue("#iIncValue", "#iVal", function() {
						var newStep = getStep('#whileLoop', '', '', 'right');
						introjs.insertOption(introjs._currentStep + 1, newStep);
						$('.introjs-nextbutton').show();
					});	
				});
				}
			});
			break;
			
		case "outerIf":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow opacity00' id='outer'><span id='outerIfCond'>count</span> == <span id='countVal'>2</span></span>";
				typing('.introjs-tooltiptext', text, function() {
					var l1 = $("#outerIf").offset();
					$("#outer").offset({top:l1.top, left:l1.left});
					$("#outer").removeClass("opacity00");
					TweenMax.to("#outer", 1, {top:0, left:0, onComplete: function() {
						rotationEffect("#outerIfCond", counter, function() {
							if (counter == 2) {
								$('.introjs-tooltiptext').append('<div class="outer-text"></div>')	
								var text =  "condition evaluates to <span class='ct-code-b-yellow'>true</span> control enters into the <span class='ct-code-b-yellow'>if block</span>";
								typing('.outer-text', text, function() {
									var newStep = getStep('#truePrint', '', '', 'right');
									introjs.insertOption(introjs._currentStep + 1, newStep);
									$('.introjs-nextbutton').show();
								});
							} else {
								$('.introjs-tooltiptext').append('<div id="outerText"></div>');
								var text = "condition evaluates to <span class='ct-code-b-yellow'>false</span> control enters into the <span class='ct-code-b-yellow'>else block</span>";
								typing('#outerText', text, function() {
									var newStep = getStep('#falsePrint', '', '', 'right');
									introjs.insertOption(introjs._currentStep + 1, newStep);
									$('.introjs-nextbutton').show();
								});
							}
						});
					}});
				});
			});
			break;

		case "restart":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#restart").removeClass("opacity00");
				var text = "Click to restart";
				typing('.introjs-tooltiptext', text);
			});
			break;
			
		}
	});
	
	introjs.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
}

function typing(typingId, typingContent,callBackFunction) {
	$(typingId).typewriting( typingContent , {
		"typing_interval": typingInterval,
		"cursor_color": 'white',
	}, function() {
		$(typingId).removeClass('typingCursor');
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}
	
function caretAtEnd(element) {
	element.focus();
	if (typeof window.getSelection != "undefined" && typeof document.createRange != "undefined") {
		var range = document.createRange();
		range.selectNodeContents(element);
		range.collapse(false);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
	}
}

function events() {
	$("#enteredText").on("keydown", function(e) {
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		
		if (e.keyCode == 13 || e.keyCode === 9) {
			e.preventDefault();
		}
		
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96) || (e.keyCode > 105)) {
			e.preventDefault();
		}
		$('.ct-red').remove();
		if ($(this).val().length > max-1) {
			$('.introjs-tooltiptext').append("<span class='ct-red error-text'><br/>Maximum length is 4.</span>");
			e.preventDefault();
		}
	});
		
	$("#enteredText").on("keyup", function(e) {
		if ($("#enteredText").val().length < 1) {
			$('.introjs-nextbutton').hide();
		} else {
			$('.introjs-nextbutton').show();
		}
	});
}

function fromEffectWithTweenMax(selector1, selector2, callBackFunction) {
	var l1 = $(selector1).offset();
	var l2 = $(selector2).offset();
	var l3 = l2.top-l1.top + parseInt($(selector1).css("top"));
	var l4 = (l2.left-l1.left) + parseInt($(selector1).css("left"));
	$(selector1).removeClass("opacity00").addClass("circle");
	TweenMax.from($(selector1), 2, {top: l3, left: l4, onComplete:function() {
	  $(selector1).removeAttr("style").removeClass("circle");
	  if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}

function rotationEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : 90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}

function getStep(element, intro, tooltipClass, position) {
	var step = {};
	if (typeof element != 'undefined') {
		step['element'] = element;
	}
	if (typeof intro != 'undefined') {
		step['intro'] = intro;
	}
	if (typeof tooltipClass != 'undefined') {
		step['tooltipClass'] = tooltipClass;
	}
	if (typeof position != 'undefined') {
		step['position'] = position;
	}
	return step;
}

function changeValue(selector1, selector2, callBackFunction) {
	$("body").append("<span id='duplicateVal'>" + $(selector1).text() + "</span>");
	
	var l1 = $(selector1).offset();
	var l2 = $(selector2).offset();
	var l3 = l2.top-l1.top;
	var l4 = l2.left-l1.left;
	
	TweenMax.to(selector1, 3, { ease:  Bounce.easeOut, top : l3, left : l4, delay : 1.3, onComplete : function() {
		$(selector1).removeAttr("style");
		$(selector2).text($(selector1).text()).removeAttr("style");
	  	$("#duplicateVal").remove();
		if (typeof callBackFunction === "function") {
	  		callBackFunction();
		}
	}});
	TweenMax.to($(selector2), 1.5, { ease: Sine.easeOut, left:150 , delay : 2.4, opacity : 0});
}


function primeNumber() {
	for (num = 5; num <= ($("#enteredText").val() - 3); num++) {
		if ($("#enteredText").val() % num == 0) {
			counter++;
		}
	}
}

function firstLine() {
	$(".user-btn").addClass("hide");
	$("#description > ul").append('<li></li>');
	var text = "<li>Let us learn how to find the given number is prime or not using an example.</li>"
	typing($("#description ul li:last-child()"), text, function() {
		setTimeout(function() {
			introjs.nextStep();
		}, 800);	
	});
}

function counting() {
	console.log("automatically incremented");
	var text = "Similarly loop continuosly runs upto <span class='ct-code-b-yellow'>" + ($("#enteredText").val() - 7) + " </span>times <div class='ct-code-b-yellow'>(i.e., i = " + ($("#enteredText").val() - 3) + ").</div> "
				+ "<div>count value will also incremented based on if condition.</div> " 
				+ "<span class='ct-code-b-yellow'>count</span> is incremented to <span class='ct-code-b-yellow' id='incVal'>" + counter + "</span>";
	typing('.introjs-tooltiptext', text, function() {	
		changeValue("#incVal", "#cVal", function() {
			$('.introjs-tooltiptext').append("<div id='numText'></div>");
			var text = "Now <span class='ct-code-b-yellow'>i</span> value incremented to <span class='ct-code-b-yellow' id='iIncValue'>" + num +"</span>"; 
			typing("#numText", text, function() {
				changeValue("#iIncValue", "#iVal", function() {
					var newStep = getStep('#whileLoop', '', '', 'right');
					introjs.insertOption(introjs._currentStep + 1, newStep);
					$('.introjs-nextbutton').show();
				});
			});
		});	
	});	
}
</script>
<body>
	<div class="demo-heading text-center margin-top-25">
		<h4 class="label ct-demo-heading" id="heading">Sample program on Prime Numbers</h4>
	</div>
	<div class="col-xs-12 margin-top-25">
		<div class="col-xs-12">
			<div class="col-xs-8 col-xs-offset-2" id="description"></div>
		</div>
		<div class="col-xs-12 margin-top-25">
			<div class="col-xs-5 padding0 opacity00" id="program">
<pre>
#include&lt;stdio.h&gt;
int main() {
  <span id="intDec">int n, i =  <span id='one'>1</span>, count =  <span id='zero'>0</span>;</span>
  <span id="printfEnter">printf("Enter any number : ");</span>
  <span id="scanf">scanf("%d", &n);</span>
  <span id="whileLoop">while (i <= n) {</span>
    <span id="whileCode"><span id="ifCond">if (n % i == 0) {</span>
      <span id="cInc">count++;</span>
    }
     <span id="iInc">i++;</span></span>
  }
  <span id="outerIf">if (count == 2) {</span>
    <span id="truePrint">printf("The given number %d is a prime number \n", n);</span>
  } else {
    <span id="falsePrint">printf("The given number %d is not a prime number \n", n);</span>
  }
}
</pre>
			</div>
			<div class="col-xs-7">
				<div class="col-xs-12 margin-top-25">
					<div class="col-xs-12 margin-top-25">
						<div class="col-xs-9 col-xs-offset-2 padding0 opacity00 explanation">
  						<div id='iCupDiv' class='col-xs-2 col-xs-offset-2 padding0 opacity00'>
							<div><span id='iVal' class='cup-val opacity00'>1</span></div>
							<i class='fa fa-coffee fa-4x cup-color'></i>
							<div class='cup-name'>i</div>
						</div>
  						<div id='cCupDiv' class='col-xs-2 col-xs-offset-4 padding0 opacity00'>
							<div><span id='cVal' class='cup-val opacity00'>0</span></div>
							<i class='fa fa-coffee fa-4x cup-color'></i>
							<div class='cup-name'>count</div>
						</div>
					</div></div>
					<div class="col-xs-7 col-xs-offset-3 margin-top-25 padding0 opacity00" id="console">
						<div class="output-console-title-bar">Console</div>
						<div class="output-console-body margin-0">
							<div><span class="console-text">Enter any number : </span></div>
							<div id="printing"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-12 text-center margin-top-25">
			<span id="restart" class="opacity00 btn btn-warning">Restart</span>
		</div>
	</div>
</body>
</html>