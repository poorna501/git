<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/bootstrap.min.css" rel="stylesheet">
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

<style>

.introjs-tooltiptext br {
	margin: 15px;
}

.introjs-tooltip {
	min-width: 300px;
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

.creamPreTab4 {
	-moz-tab-size: 4;
	background-color: #fffae6;
	border-radius: 8px;
	font-size: 11px;
	margin: 5px;
	padding: 10px;
	white-space: pre;
}

.box-border {
	border: 1px solid gray;
	border-radius: 8px;
	padding: 10px;
}

.border-height-css {
	border: 1px solid;
	height: 22px;
}

.Vertical-text-center  {
	height: 62px;
	line-height: 62px;
	text-align: right; 
}

.width200 {
	width: 200px;
}

.padding10 {
	padding: 10px;
}

div, span {
	position: relative;
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
}

.color-gray {
	color: gray;
}

.output-console {
	width: 250px;
	margin: auto;
}

.margin-top30 {
	margin-top: 30px;
}

.output-console-body {
	padding: 5px 20px;
	height: 60px;
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

.blinking-border-background-blue {
	animation-name: blink-border-background-blue;
	animation-duration: 0.5s;
	animation-iteration-count: infinite;
	animation-direction: normal ;
}

@keyframes blink-border-background-blue { 
	50% {
		border-color: blue;
		background: rgb(110, 110, 248);
	}
}

</style>

</head>
<body>

<div class='col-xs-12'>
	<div class='text-center heading-css'>
		<h1 class='label ct-demo-heading'>Pointers Drawbacks</h1>
	</div>
	<div class='buttons-div'>
		<!-- <button type="button" class="btn btn-success" id="startBtn">Start</button> -->
		<button type="button" class="btn btn-warning visibility-hidden"
			id="restartBtn">Restart</button>
	</div>

	<div class="col-xs-12">
		<div class='col-xs-offset-2 col-xs-8'>
			<div class='col-xs-12'>
				<div class='col-xs-5'>
					<div class='col-xs-12 box-border'>
<pre class='creamPreTab4' id='preCode'>
<span id='line1'>int x = <span id='valueOfX'>3</span>;</span>
<span id='line2'>int *p;</span>
<span id='line3'>p = &x;</span>
<span id='line4'>*p = <span id='valueOfP20'>20</span>;</span>
<span id='print1'>printf("The value of x = %d\n", x);</span>
<span id='print2'>printf("The value of *p = %d\n", *p);</span>
</pre>
					</div>
				</div>
				<div class='col-xs-7'>
					<div class='col-xs-12 box-border' id='animationDiv'>
						<div class="col-xs-12 padding10">
							<div class='col-xs-6'>
								<div class='center width200'>
									<div class='col-xs-12 visibility-hidden' id='xBox'>
										<div class='col-xs-4 Vertical-text-center'>x =</div>
										<div class="col-xs-6 text-center">
											<div><span class='color-gray'>2 bytes</span></div>
											<div class='border-height-css'><span class='visibility-hidden' id='xValue'>3</span></div>
											<div><span id='xAddress'>1111</span></div>
										</div>
									</div>
								</div>
							</div>
							<div class='col-xs-6'>
								<div class='center width200'>
									<div class='col-xs-12 visibility-hidden' id='pBox'>
										<div class='col-xs-4 Vertical-text-center'>p =</div>
										<div class="col-xs-6 text-center">
											<div><span class='color-gray'>2 bytes</span></div>
											<div class='border-height-css'><span class='visibility-hidden' id='pValue'>1111</span></div>
											<div><span id='pAddress'>1234</span></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line" x1="61%" y1="51%" x2="59%" y2="51%"/>
						</svg>
						
					</div>
					
					<div class='col-xs-12 margin-top30'>
						<div class="output-console center" id='outputBox'>
							<div class="output-console-title-bar">
								<span>Output</span>
							</div>
<div class="output-console-body"><span class='visibility-hidden'>The value of x = 20</span>
<span class='visibility-hidden'>The value of *p = 20</span>
</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>

<script>

var introjs;
var typingInterval = 10;

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

function introJsFunction() {
	introjs = introJs();
	introjs.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [ {
			element : "#preCode",
			intro : ""
		},
		{
			element : "#line1",
			intro : ""
		},
		{
			element : "#xBox",
			intro : "",
			animateStep : "xBoxAnimate"
		},
		{
			element : "#line2",
			intro : ""
		},
		{
			element : "#pBox",
			intro : "",
			animateStep : "pBoxAnimate"
		},
		{
			element : "#line3",
			intro : ""
		},
		{
			element : "#pBox",
			intro : "",
			animateStep : "pBoxValueAnimate"
		},
		{
			element : "#animationDiv",
			intro : "",
			animateStep : "arrowAnimate"
		},
		{
			element : "#line4",
			intro : ""
		},
		{
			element : "#animationDiv",
			intro : "",
			animateStep : "*pValueAnimate"
		},
		{
			element : "#print1",
			intro : ""
		},
		{
			element : "#xBox",
			intro : "",
			animateStep : "xValuePrint"
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
		},
		{
			element : "#print2",
			intro : ""
		},
		{
			element : "#animationDiv",
			intro : "",
			animateStep : "*pValuePrint"
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
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
		case "preCode":
			var typingContent = 'Let us know drawbacks of <span class="ct-code-b-yellow">Pointers</span> in ' +
								'<span class="ct-code-b-yellow">C</span> using this sample code.';
			typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
				$('.introjs-nextbutton').show();
			});
			break;
		case "line1":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here the <span class="ct-code-b-yellow">int</span> variable <span class="ct-code-b-yellow">x</span> which is ' +
									'initialized with value <span class="ct-code-b-yellow">3</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "xBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch (animateStep) {
				case "xBoxAnimate":
					var typingContent = 'let the variable <span class="ct-code-b-yellow">x</span> is of type ' +
										'<span class="ct-code-b-yellow">int</span> it occupies <span class="ct-code-b-yellow">2 bytes</span> ' +
										'of memory with some address (i.e. location of memory), lets its address be as ' +
										'<span class="ct-code-b-yellow">1111</span>.</br>Then the value <span class="ct-code-b-yellow">3</span> is ' +
										'initialized.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationXBox()'>" + 
																"Next &#8594;</a>");
					});
					break;
				case "xValuePrint":
					$('#xValue').addClass('blinking-border-background-blue');
					var typingContent = 'The blinking value is the value return by <span class="ct-code-b-yellow">x</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				}
			});
			break;
		case "line2":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'The <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">p</span> occupies ' +
									'<span class="ct-code-b-yellow">2 bytes</span> of memory since it is a <span class="ct-code-b-yellow">pointer' +
									'</span> variable and it is declared with <span class="ct-code-b-yellow">int</span> datatype so it refer to ' +
									'<span class="ct-code-b-yellow">int</span> variable.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "pBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch (animateStep) {
				case "pBoxAnimate":
					var typingContent = 'Here the <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">p</span> is of ' +
										'type <span class="ct-code-b-yellow">int</span> it occupies <span class="ct-code-b-yellow">2 bytes</span> ' +
										'of memory with some address (i.e. location of memory), lets its address be as ' +
										'<span class="ct-code-b-yellow">1234</span>.</br><span class="ct-code-b-yellow">pointer</span> variable initial ' +
										'value is <span class="ct-code-b-yellow">garbage</span> value.' +
										'</br><span class="ct-code-b-yellow">Note:</span> This variable will ' +
										'refer only to <span class="ct-code-b-yellow">int</span> variable, since its datatype is ' +
										'<span class="ct-code-b-yellow">int</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationPBox()'>" + 
																"Next &#8594;</a>");
					});
					break;
				case "pBoxValueAnimate":
					var typingContent = 'Here the address of <span class="ct-code-b-yellow">x</span> is copied to ' +
										'<span class="ct-code-b-yellow">p</span> i.e. <span class="ct-code-b-yellow">1111</span> is copied to ' +
										'<span class="ct-code-b-yellow">p</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationPBoxValue()'>" + 
																"Next &#8594;</a>");
					});
					break;
				}
			});
			break;
		case "line3":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here the <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">p</span> is assign ' +
									'with <span class="ct-code-b-yellow">&x</span> i.e. the address of <span class="ct-code-b-yellow">x</span> is ' +
									'copied in <span class="ct-code-b-yellow">p</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "animationDiv":
			$('.introjs-helperLayer').one('transitionend', function () {
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch (animateStep) {
				case "arrowAnimate":
					var typingContent = 'Here the <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">p</span> has ' +
										'the address of <span class="ct-code-b-yellow">x</span> so it can access the variable ' +
										'<span class="ct-code-b-yellow">x</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationPointerArrow()'>" + 
																"Next &#8594;</a>");
					});
					break;
				case "*pValueAnimate":
					var typingContent = 'The <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">p</span> is pointed ' +
										'to <span class="ct-code-b-yellow">x</span> so <span class="ct-code-b-yellow">*p</span> means the value of ' +
										'<span class="ct-code-b-yellow">x</span> and hence the value of <span class="ct-code-b-yellow">x</span> is ' +
										'changed to <span class="ct-code-b-yellow">20</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationXBoxValue()'>" + 
																"Next &#8594;</a>");
					});
					break;
				case "*pValuePrint":
					$('#xValue').addClass('blinking-border-background-blue');
					var typingContent = 'The blinking value is the value return by <span class="ct-code-b-yellow">*p</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				}
			});
			break;
		case "line4":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here the <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">*p</span> is assign ' +
									'with value <span class="ct-code-b-yellow">20</span>. In this case <span class="ct-code-b-yellow">pointer</span> ' +
									'variable <span class="ct-code-b-yellow">p</span> is pointed to <span class="ct-code-b-yellow">x</span> so that ' +
									'it changes <span class="ct-code-b-yellow">x</span> value to <span class="ct-code-b-yellow">20</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "print1":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">value</span> of <span class="ct-code-b-yellow">x</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "print2":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">value</span> of <span class="ct-code-b-yellow">*p</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "outputBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				$('.blinking-border-background-blue').removeClass('blinking-border-background-blue');
				var selector = $('.output-console-body > .visibility-hidden').eq(0);
				var typingContent = selector.removeClass('visibility-hidden').html();
				typing(selector, typingContent, 30, 'white', function() {
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				});
				
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

function fromEffectWithTweenMax(selector1, selector2, callBackFunction) {
	var l1 = $(selector1).offset();
	var l2 = $(selector2).offset();
	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	TweenMax.from($(selector2), 1, {top: topLength, left: leftLength, onComplete: function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}

function bounceFromEffextWithTimelineMax(selector1, selector2, callBackFunction) {
	var timelineMax = new TimelineMax();
	var l1 = $(selector1).offset();
	var l2 = $(selector2).offset();
	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	$(selector2).parent().append('<span id="temp" style="position: absolute;"></span>');
	$('#temp').offset({top: l2.top, left: l2.left}).text($(selector2).text());
	$(selector2).text($(selector1).text());
	timelineMax.from(selector2, 3, {ease:  Bounce.easeOut, top: topLength, left: leftLength, onComplete: function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}}).to('#temp', 1, { ease: Sine.easeOut, top: "-=100", opacity: 0, onComplete: function() {
		$('#temp').remove();
	}}, "-=2");
}

function animationXBox() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#xBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#xBox').removeClass('animated zoomIn');
		$('#valueOfX').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
			$('#valueOfX').removeClass('circle-css');
			$('#xValue').removeClass('visibility-hidden');
			fromEffectWithTweenMax('#valueOfX', '#xValue', function() {
				$('.introjs-nextbutton').show();
			});
		});
	});
}

function animationPBox() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#pBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#pBox').removeClass('animated zoomIn');
		$('.introjs-nextbutton').show();
	});
}

function animationPBoxValue() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#xAddress').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
		$('#xAddress').removeClass('circle-css');
		$('#pValue').removeClass('visibility-hidden');
		fromEffectWithTweenMax('#xAddress', '#pValue', function() {
			$('.introjs-nextbutton').show();
		});
	});
}

function animationPointerArrow() {
	$('.introjs-duplicate-nextbutton').remove();
	TweenMax.to($('.svg-line').show(), 1, {attr: {x2: '41%'}, onComplete: function() {
		$('.introjs-nextbutton').show();
	}});
}

function animationXBoxValue() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#valueOfP20').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
		$('#valueOfP20').removeClass('circle-css');
		$('#xValue').removeClass('visibility-hidden');
		bounceFromEffextWithTimelineMax('#valueOfP20', '#xValue', function() {
			$('.introjs-nextbutton').show();
		});
	});
}

</script>

</body>
</html>