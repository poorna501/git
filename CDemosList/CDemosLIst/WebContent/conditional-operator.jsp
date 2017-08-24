<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/tablesorter/jquery-ui.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/animate.css" rel="stylesheet">
<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js" type="text/javascript" charset="utf-8"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<title>Insert title here</title>
<style type="text/css">

.introjs-tooltiptext br {
	margin: 15px;
}

.introjs-tooltip {
	min-width: 400px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
}

.introjs-duplicate-nextbutton {
	background-color: green;
}

.buttons-div {
	margin: 20px 0 10px;
	text-align: center;
}

.heading-css {
	margin: 20px 0 10px;
}

.box-border {
	border: 1px solid grey;
	border-radius: 8px;
	margin: 30px 10px 10px;
	padding: 10px;
}

.box-css {
	padding: 10px;
}

.creamPreTab4 {
	-moz-tab-size: 6;
    background-color: #fffae6;
    border-radius: 8px;
    font-size: 11px;
    margin: 5px;
    padding: 10px;
    white-space: pre;
}

.output-console {
	margin: auto;
	width: 300px;
}

.animation-div1 {
	font-family: monospace;
	padding: 100px 0 40px;
	opacity: 0;
}

.animation-div2 {
	font-family: monospace;
	padding-bottom: 30px;
	opacity: 0;
}

.max-div {
	text-align: right;
	padding: 0px;
}

.num {
	display: inline-block;
	text-align: center;
	width: 32px;
	position: relative;
}

.svg-css {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.duplicate-btn-sm-success {
	background-color: #5cb85c;
	border-color: #4cae4c;
	border-radius: 3px;
	display: inline-block;
	font-size: 12px;
	padding: 5px 10px;
}

[contenteditable="true"] {
	font-weight: normal;
	outline: medium none;
}

.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: rgb(252, 66, 66);
}

</style>
</head>
<body>

<div class='col-xs-12'>
	<div class='text-center heading-css'>
		<h1 class='label ct-demo-heading'>Conditional Operator</h1>
	</div>
	<div class='buttons-div'>
		<!-- <button type="button" class="btn btn-success" id="startBtn">Start</button> -->
		<button type="button" class="btn btn-warning visibility-hidden" id="restartBtn">Restart</button>
	</div>
	
	<div class='col-xs-offset-1 col-xs-11'>
		<div class='col-xs-5 box-border'>
<pre class='creamPreTab4'>
public class ConditionalOperatorDemo {
	public static void main(String[] args) {
		<span id='num1Line'>int num1 = <span id='num1value' contenteditable='true', spellcheck='false', maxlength='2'>14</span>;</span>
		<span id='num2Line'>int num2 = <span id='num2value' contenteditable='true', spellcheck='false', maxlength='2'>12</span>;</span>
		<span id='maxLine'>int max = (num1 > num2) ? num1 : num2;</span>
		<span id='sopLine'>System.out.println("The max number is " + max);</span>
	}
}
</pre>
		</div>
		<div class='col-xs-5 box-border' id='animationBox'>
			<div class='col-xs-12'>
				<div class='col-xs-12 text-center animation-div1'>
					<span class='box-css border'>int max</span> = <span class='box-css border'>num1 > num2</span> ? 
					<span class='box-css border'>num1</span> : <span class='box-css border'>num2</span>;
					<svg class='svg-css'>
						<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
							<path d="M0,0 L5,2.5 L0,5 Z"/>
						</marker>
							
						<text fill="#333">
							<tspan x="35%" y="29%" fill="white" class='svg-text'>condition</tspan>
							<tspan x="63%" y="29%" fill="white" class='svg-text'>true</tspan>
							<tspan x="78.5%" y="29%"fill="white" class='svg-text'>false</tspan>
						</text>
							
						<line class="svg-line" x1="43%" y1="58%" x2="43%" y2="53%" style="marker-end: url(&quot;#arrowEnd&quot;); display: none;
							stroke-width: 2; stroke: gray; position: relative;"/>
						<line class="svg-line" x1="66.5%" y1="58%" x2="66.5%" y2="53%" style="marker-end: url(&quot;#arrowEnd&quot;); display: none;
							stroke-width: 2; stroke: gray; position: relative;"/>
						<line class="svg-line" x1="83%" y1="58%" x2="83%" y2="53%" style="marker-end: url(&quot;#arrowEnd&quot;); display: none;
							stroke-width: 2; stroke: gray; position: relative;"/>
							
						<rect class="svg-rect" style="fill: transparent; opacity: 0; stroke: gray; stroke-width: 2px;"
							height="22%" width="23%" ry="10" rx="10" y="58%" x="32%"/>
						<rect class="svg-rect" style="fill: transparent; opacity: 0; stroke: gray; stroke-width: 2px;"
							height="22%" width="11%" ry="10" rx="10" y="58%" x="61%"/>
						<rect class="svg-rect" style="fill: transparent; opacity: 0; stroke: gray; stroke-width: 2px;"
							height="22%" width="11%" ry="10" rx="10" y="58%" x="77.5%"/>
					</svg>
				</div>
				<div class="col-xs-12 animation-div2 ">
					<div class="col-xs-4 max-div">int max =</div>
					<div class="col-xs-8 max-value-div">
						<span class="num" id='num1'>num1</span>
						<span>&gt;</span>
						<span class="num" id='num2'>num2</span>
						<span>?</span>
						<span class="num" id="n1">num1</span>
						<span>:</span>
						<span class="num" id="n2">num2</span>
					</div>
				</div>
			</div>
			<div class="output-console center" id='outputBox'>
				<div class="output-console-title-bar">
					<span>Output</span>
				</div>
				<div class="output-console-body">
<span></span>
				</div>
			</div>
		</div>
	</div>
</div>

<script>

var introjs;
var typing_interval = 10;

var typingId;
var typingContent;
var typingInterval;
var cursorColor;
var typingCallbackFunction;

$(document).ready(function() {
	
	$('.introjs-nextbutton').keydown(function(e) {
		if (e.which == 13) {
			e.preventDefault();
		}
	});

	$('#restartBtn').click(function() {
		location.reload();
	});
	
	introJsFunction();
	
	$("[contenteditable=true]").on("keydown", function(e) {
		$('.length-error-text').remove();
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27, 37, 39]) !== -1) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		
		if ($(this).text().length > max) {
			$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>Please limit the digits length to 3.</span>");
			e.preventDefault();
		}
	});
	
	$("[contenteditable=true]").on("keyup", function(e) {
		if ($(this).text() == "") {
			$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>Please enter some number.</span>");
			$(this).addClass("empty");
		} else {
			$(this).removeClass("empty");
		}
		introjs.refresh();
		
		if ($(".empty").length > 0) {
			$(".introjs-nextbutton").hide();
		} else {
			$(".introjs-nextbutton").show();
		}
	});
	
});

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

function caretAtEnd(element) {
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

function flipEffectWithTweenMax(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}


function introJsFunction() {
	introjs = introJs();
	introjs.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [ {
			element : "#maxLine",
			intro : ""
		},
		{
			element : "#animationBox",
			intro : "",
			tooltipClass : "hide"
		},
		{
			element : "#num1Line",
			intro : ""
		},
		{
			element : "#num2Line",
			intro : ""
		},
		{
			element : "#maxLine",
			intro : ""
		},
		{
			element : "#animationBox",
			intro : "",
			tooltipClass : "hide"
		},
		{
			element : "#sopLine",
			intro : "",
			tooltipClass : "hide"
		},
		{
			element : "#outputBox",
			intro : "",
			tooltipClass : "hide"
		},
		{
			element : "#restartBtn",
			intro : "Click to Restart",
			tooltipClass: "introjs-tooltip-min-width-custom",
			position : "right"
		}
		]});

	introjs.onafterchange(function(targetElement) {
		$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
		var elementId = targetElement.id;
		switch (elementId) {
		case "maxLine":
			switch (introjs._currentStep) {
				case 0:
					typingId = '.introjs-tooltiptext';
					typingContent = 'This is the <span class="ct-code-b-yellow">Conditional Operator</span>.' + 
									'</br>i.e. <span class="ct-code-b-yellow">condition ? true : false</span>';
					typingInterval = typing_interval;
					cursorColor = 'white';
					typingCallbackFunction = function() {
						$('.introjs-nextbutton').show();
					}
					typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
					break;
				case 4:
					$('[contenteditable="true"]').attr('contenteditable', 'false');
					$('.introjs-helperLayer').one('transitionend', function () {
						typingId = '.introjs-tooltiptext';
						typingContent = 'This is the <span class="ct-code-b-yellow">Conditional Operator</span>.' + 
										'</br>i.e. <span class="ct-code-b-yellow">condition ? true : false</span>';
						typingInterval = typing_interval;
						cursorColor = 'white';
						typingCallbackFunction = function() {
							$('.introjs-nextbutton').show();
						}
						typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
					});
					break;
			}
			break;
		case "animationBox":
			switch (introjs._currentStep) {
			case 1:
				$('.introjs-helperLayer').one('transitionend', function () {
					TweenMax.to('.animation-div1', 1, {opacity: 1, onComplete: function() {
						svgBoxAnimation(0, function() {
							$('.introjs-tooltip').removeClass('hide');
							typingId = '.introjs-tooltiptext';
							typingContent = 'Here the <span class="ct-code-b-yellow">condition</span> checked and return ' +
											'<span class="ct-code-b-yellow">true</span> if the condition is true else return' +
											' <span class="ct-code-b-yellow">false</span> to the variable <span class="ct-code-b-yellow">max</span>.';
							typingInterval = typing_interval;
							cursorColor = 'white';
							typingCallbackFunction = function() {
								$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationStep2()'>" + 
																	"Next &#8594;</a>");
							}
							typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
						});
					}});
				});
				break;
			case 5:
				$('.introjs-helperLayer').one('transitionend', function () {
					TweenMax.to('.animation-div2', 1, {opacity: 1, onComplete: function() {
						flipEffectWithTweenMax('#num1', $('#num1value').text(), function() {
							flipEffectWithTweenMax('#num2', $('#num2value').text(), function() {
								flipEffectWithTweenMax('#n1', $('#num1value').text(), function() {
									flipEffectWithTweenMax('#n2', $('#num2value').text(), function() {
										$('.introjs-tooltip').removeClass('hide');
										typingId = '.introjs-tooltiptext';
										var num1 = parseInt($('#num1value').text());
										var num2 = parseInt($('#num2value').text());
										typingContent = 'Here the <span class="ct-code-b-yellow">condition (' + num1 + ' > ' + num2 + 
														')</span> return <span class="ct-code-b-yellow">' + (num1 > num2).toString() + 
														'</span> so the value <span class="ct-code-b-yellow">' + 
														((num1 > num2) ? num1 : num2).toString() + '</span> is assigned to ' +
														'<span class="ct-code-b-yellow">max</span> variable.';
										typingInterval = typing_interval;
										cursorColor = 'white';
										typingCallbackFunction = function() {
											$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
																				"onclick='animatingDiv2()'>Next &#8594;</a>");
										}
										typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
									});
								});
							});
						});
					}});
				});
				break;
			}
			break;
		case "num1Line":
			$('.introjs-helperLayer').one('transitionend', function () {
				typingId = '.introjs-tooltiptext';
				typingContent = 'Here we can change the value.';
				typingInterval = typing_interval;
				cursorColor = 'white';
				typingCallbackFunction = function() {
					caretAtEnd(document.getElementById('num1value'));
					$('.introjs-nextbutton').show();
				}
				typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
			});
			break;
		case "num2Line":
			$('.introjs-helperLayer').one('transitionend', function () {
				typingId = '.introjs-tooltiptext';
				typingContent = 'Here we can change the value.';
				typingInterval = typing_interval;
				cursorColor = 'white';
				typingCallbackFunction = function() {
					caretAtEnd(document.getElementById('num2value'));
					$('.introjs-nextbutton').show();
				}
				typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
			});
			break;
		case "sopLine":
			$('.introjs-helperLayer').one('transitionend', function () {
				setTimeout(function() {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case "outputBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				typingId = '.output-console-body span';
				typingContent = 'The max number is ' + $('.max-value-div').children().text();
				typingInterval = typing_interval;
				cursorColor = 'white';
				typingCallbackFunction = function() {
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				}
				typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
			});
			break;
		case "restartBtn":
			$('.introjs-helperLayer').one('transitionend', function () {
				$("#restartBtn").removeClass('visibility-hidden');
			});
			break;
		}
	});
	
	introjs.start();
}

function svgBoxAnimation(index, callBackFunction) {
	TweenMax.to($('.svg-rect').eq(index), 1, {opacity: 1, onComplete: function() {
		$('.svg-line').eq(index).show();
		TweenMax.to($('.svg-line').eq(index), 1, {attr: {y2: '34%'}, onComplete: function() {
			TweenMax.to($('.svg-text').eq(index), 1, {fill: '#333', onComplete: function() {
				if (typeof callBackFunction === "function") {
					callBackFunction();
				}
			}});
		}});
	}});
}

function animationStep2() {
	$('.introjs-duplicate-nextbutton').remove();
	$('.introjs-tooltip').addClass('hide');
	svgBoxAnimation(1, function() {
		$('.introjs-tooltip').removeClass('hide');
		typingId = '.introjs-tooltiptext';
		typingContent = 'This is the value to be return if the <span class="ct-code-b-yellow">condition</span> is ' +
						'<span class="ct-code-b-yellow">true</span>.';
		typingInterval = typing_interval;
		cursorColor = 'white';
		typingCallbackFunction = function() {
			$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationStep3()'>" + 
												"Next &#8594;</a>");
		}
		typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
	});
}

function animationStep3() {
	$('.introjs-duplicate-nextbutton').remove();
	$('.introjs-tooltip').addClass('hide');
	svgBoxAnimation(2, function() {
		$('.introjs-tooltip').removeClass('hide');
		typingId = '.introjs-tooltiptext';
		typingContent = 'This is the value to be return if the <span class="ct-code-b-yellow">condition</span> is ' +
						'<span class="ct-code-b-yellow">false</span>.';
		typingInterval = typing_interval;
		cursorColor = 'white';
		typingCallbackFunction = function() {
			$('.introjs-nextbutton').show();
		}
		typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
	});
}

function animatingDiv2() {
	$('.introjs-duplicate-nextbutton').remove();
	$('.introjs-tooltip').addClass('hide');
	var num1 = parseInt($('#num1value').text());
	var num2 = parseInt($('#num2value').text());
	(num1 > num2) ? animatingMax('n1') : animatingMax('n2');
}

function animatingMax(id) {
	TweenMax.to($('.max-value-div').children().not('#' + id), 1, {opacity: 0, onComplete: function() {
		var beforeRemoveLeft = $('#' + id).offset().left;
		$('.max-value-div').children().not('#' + id).remove();
		TweenMax.from($('#' + id), 1, {left: beforeRemoveLeft - $('#' + id).offset().left, onComplete: function() {
			$('.introjs-tooltip').removeClass('hide');
			typingId = '.introjs-tooltiptext';
			typingContent = 'Hence the value <span class="ct-code-b-yellow">' + $('.max-value-div').children().text() + '</span> is assigned to ' +
							'<span class="ct-code-b-yellow">max</span> variable.';
			typingInterval = typing_interval;
			cursorColor = 'white';
			typingCallbackFunction = function() {
				$('.introjs-nextbutton').show();
			}
			typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
		}});
	}});
}

</script>

</body>
</html>