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

pre > span {
	position: static;
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
	margin: auto;
	width: 350px;
}

.margin-top30 {
	margin-top: 30px;
}

.output-console-body {
	padding: 5px 20px;
}

.method-box-css {
	border: 1px solid;
	border-radius: 8px;
	padding: 0px;
	opacity: 0;
}

.method-box-text-css {
	background: lightblue none repeat scroll 0 0;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	font-family: monospace;
	padding: 5px;
	text-align: center;
}

</style>

</head>
<body>

<div class='col-xs-12'>
	<div class='text-center heading-css'>
		<h1 class='label ct-demo-heading'>Call By Value</h1>
	</div>
	<div class='buttons-div'>
		<!-- <button type="button" class="btn btn-success" id="startBtn">Start</button> -->
		<button type="button" class="btn btn-warning visibility-hidden"
			id="restartBtn">Restart</button>
	</div>

	<div class="col-xs-12">
		<div class='col-xs-12'>
			<div class='col-xs-12'>
				<div class='col-xs-6'>
					<div class='col-xs-12 box-border'>
<pre class='creamPreTab4' id='preCode'>
<span id='swapDeclareLine'>void swap(int , int );</span>
<span id='mainMethodBlock'>main()
{
	<span id='aLine'>int a = <span id='valueOfA'>5</span>;</span>
	<span id='bLine'>int b = <span id='valueOfB'>10</span>;</span>
	<span id='printBeforeSwapInMain'>printf("Before swapping in main : a = %d \t b = %d\n", a, b);</span>
	<span id='swapLine'>swap(a, b);</span>
	<span id='printAfterSwapInMain'>printf("After swapping in main : a = %d \t b = %d\n", a, b);</span>
}</span>
<span id='swapMethodBlock'>void swap(int x, int y)
{
	<span id='tDeclareLine'>int t;</span>
	<span id='tAssignLine'>t = x;</span>
	<span id='xLine'>x = y;</span>
	<span id='yLine'>y = t;</span>
	<span id='printAfterSwapInSwap'>printf("After swapping in swap : x = %d \t y = %d\n", x, y);</span>
<span id='swapMethodCloseBrace'>}</span></span>
</pre>
					</div>
				</div>
				<div class='col-xs-6'>
					<div class='col-xs-12 box-border'  id='animationDiv'>
						<div class='col-xs-12 padding10'>
							<div class='col-xs-12 method-box-css' id='mainMethodBox'>
								<div class='method-box-text-css'>main()</div>
								<div class="col-xs-12 padding10">
									<div class='col-xs-6'>
										<div class='center width200'>
											<div class='col-xs-12 visibility-hidden' id='aBox'>
												<div class='col-xs-4 Vertical-text-center'>a</div>
												<div class="col-xs-6 text-center">
													<div><span class='color-gray'>2 bytes</span></div>
													<div class='border-height-css'><span id='aValue'></span></div>
													<div><span id='aAddress'>1111</span></div>
												</div>
											</div>
										</div>
									</div>
									<div class='col-xs-6'>
										<div class='center width200'>
											<div class='col-xs-12 visibility-hidden' id='bBox'>
												<div class='col-xs-4 Vertical-text-center'>b</div>
												<div class="col-xs-6 text-center">
													<div><span class='color-gray'>2 bytes</span></div>
													<div class='border-height-css'><span id='bValue'></span></div>
													<div><span id='bAddress'>1234</span></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class='col-xs-12 padding10'>
							<div class='col-xs-12 method-box-css' id='swapMethodBox'>
								<div class='method-box-text-css'>swap()</div>
								<div class="col-xs-12 padding10" id='swapAnimationDiv'>
									<div class='col-xs-6'>
										<div class='center width200'>
											<div class='col-xs-12 visibility-hidden' id='xBox'>
												<div class='col-xs-4 Vertical-text-center'>x</div>
												<div class="col-xs-6 text-center">
													<div><span class='color-gray'>2 bytes</span></div>
													<div class='border-height-css'><span id='xValue'></span></div>
													<div><span id='xAddress'>2222</span></div>
												</div>
											</div>
										</div>
									</div>
									<div class='col-xs-6'>
										<div class='center width200'>
											<div class='col-xs-12 visibility-hidden' id='yBox'>
												<div class='col-xs-4 Vertical-text-center'>y</div>
												<div class="col-xs-6 text-center">
													<div><span class='color-gray'>2 bytes</span></div>
													<div class='border-height-css'><span id='yValue'></span></div>
													<div><span id='yAddress'>2345</span></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12 padding10">
									<div class='col-xs-12'>
										<div class='center width200'>
											<div class='col-xs-12 visibility-hidden' id='tBox'>
												<div class='col-xs-4 Vertical-text-center'>t</div>
												<div class="col-xs-6 text-center">
													<div><span class='color-gray'>2 bytes</span></div>
													<div class='border-height-css'><span id='tValue'></span></div>
													<div><span id='tAddress'>3333</span></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-xs-12 margin-top30">
						<div id="outputBox" class="output-console center">
							<div class="output-console-title-bar">
								<span>Output</span>
							</div>
<div class="output-console-body"><span class="visibility-hidden">Before swapping in main : a = 5   b = 10</span>
<span class="visibility-hidden">After swapping in swap : x = 10   y = 5</span>
<span class="visibility-hidden">After swapping in main : a = 5   b = 10</span>
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
			element : "#swapDeclareLine",
			intro : ""
		},
		{
			element : "#mainMethodBlock",
			intro : ""
		},
		{
			element : "#aLine",
			intro : ""
		},
		{
			element : "#aBox",
			intro : ""
		},
		{
			element : "#bLine",
			intro : ""
		},
		{
			element : "#bBox",
			intro : ""
		},
		{
			element : "#printBeforeSwapInMain",
			intro : ""
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
		},
		{
			element : "#swapLine",
			intro : ""
		},
		{
			element : "#swapMethodBlock",
			intro : ""
		},
		{
			element : "#swapAnimationDiv",
			intro : ""
		},
		{
			element : "#tDeclareLine",
			intro : ""
		},
		{
			element : "#tBox",
			intro : "",
			animateStep : "tBoxAnimate"
		},
		{
			element : "#tAssignLine",
			intro : ""
		},
		{
			element : "#tBox",
			intro : "",
			animateStep : "tBoxValueAnimate"
		},
		{
			element : "#xLine",
			intro : ""
		},
		{
			element : "#xBox",
			intro : ""
		},
		{
			element : "#yLine",
			intro : ""
		},
		{
			element : "#yBox",
			intro : "",
			position : "left"
		},
		{
			element : "#printAfterSwapInSwap",
			intro : ""
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
		},
		{
			element : "#swapMethodCloseBrace",
			intro : ""
		},
		{
			element : "#animationDiv",
			tooltipClass: "hide"
		},
		{
			element : "#printAfterSwapInMain",
			intro : ""
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
			var typingContent = 'Let us learn <span class="ct-code-b-yellow">Call By Value</span> in ' +
								'<span class="ct-code-b-yellow">C</span> using this sample code.';
			typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
				$('.introjs-nextbutton').show();
			});
			break;
		case "swapDeclareLine":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line is used to declare <span class="ct-code-b-yellow">swap</span> method with two ' +
									'<span class="ct-code-b-yellow">int</span> variables as parameters and <span class="ct-code-b-yellow">void</span> ' +
									'as return type (i.e. which doesn\'t return anything).';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "mainMethodBlock":
			var typingContent = 'This is <span class="ct-code-b-yellow">main()</span> method block in ' +
								'<span class="ct-code-b-yellow">C</span> program execution starts from ' +
								'<span class="ct-code-b-yellow">main()</span> method.';
			typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
				$('.introjs-nextbutton').show();
			});
			break;
		case "aLine":
			introjs.refresh();
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here the <span class="ct-code-b-yellow">int</span> variable <span class="ct-code-b-yellow">a</span> which is ' +
									'initialized with value <span class="ct-code-b-yellow">' + $('#valueOfA').text() + '</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "aBox":
			$('.introjs-fixParent').removeClass('introjs-fixParent');
			$('.introjs-helperLayer').one('transitionend', function () {
				TweenMax.to($('#mainMethodBox'), 1, {opacity: 1});
				var typingContent = 'Here the variable <span class="ct-code-b-yellow">a</span> is of type ' +
									'<span class="ct-code-b-yellow">int</span> it occupies <span class="ct-code-b-yellow">2 bytes</span> ' +
									'of memory with some address (i.e. location of memory), lets its address be as ' +
									'<span class="ct-code-b-yellow">' + $('#aAddress').text() + 
									'</span>.</br>Then the value <span class="ct-code-b-yellow">' + 
									$('#valueOfA').text() + '</span> is initialized.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationABox()'>" + 
															"Next &#8594;</a>");
				});
			});
			break;
		case "bLine":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here the <span class="ct-code-b-yellow">int</span> variable <span class="ct-code-b-yellow">b</span> which is ' +
									'initialized with value <span class="ct-code-b-yellow">' + $('#valueOfB').text() + '</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "bBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here the variable <span class="ct-code-b-yellow">b</span> is of type ' +
									'<span class="ct-code-b-yellow">int</span> it occupies <span class="ct-code-b-yellow">2 bytes</span> ' +
									'of memory with some address (i.e. location of memory), lets its address be as ' +
									'<span class="ct-code-b-yellow">' + $('#bAddress').text() + 
									'</span>.</br>Then the value <span class="ct-code-b-yellow">' + 
									$('#valueOfB').text() + '</span> is initialized.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationBBox()'>" + 
															"Next &#8594;</a>");
				});
			});
			break;
		case "printBeforeSwapInMain":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">values</span> of <span class="ct-code-b-yellow">a</span>, ' + 
									'<span class="ct-code-b-yellow">b</span> before swapping in <span class="ct-code-b-yellow">main</span> method.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "outputBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var selector = $('.output-console-body > .visibility-hidden').eq(0);
				var typingContent = selector.removeClass('visibility-hidden').html();
				typing(selector, typingContent, 30, 'white', function() {
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				});
				
			});
			break;
		case "swapLine":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'In this line we are calling <span class="ct-code-b-yellow">swap</span> method with parameters as ' +
									'<span class="ct-code-b-yellow">a</span>, <span class="ct-code-b-yellow">b</span> so that assigned to the variable ' +
									'<span class="ct-code-b-yellow">x</span>, <span class="ct-code-b-yellow">y</span> respectively.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "swapMethodBlock":
			var typingContent = 'This is <span class="ct-code-b-yellow">swap()</span> method block with two <span class="ct-code-b-yellow">int</span> ' +
								'variables <span class="ct-code-b-yellow">x</span>, <span class="ct-code-b-yellow">y</span> and assigned with ' +
								'<span class="ct-code-b-yellow">' + $('#aValue').text() + '</span>, <span class="ct-code-b-yellow">' + 
								$('#bValue').text() + '</span> ' + 
								'respectively and <span class="ct-code-b-yellow">void</span> as return type.';
			typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
				$('.introjs-nextbutton').show();
			});
			break;
		case "swapAnimationDiv":
			$('.introjs-fixParent').removeClass('introjs-fixParent');
			$('.introjs-helperLayer').one('transitionend', function () {
				TweenMax.to($('#swapMethodBox'), 1, {opacity: 1});
				var typingContent = 'This <span class="ct-code-b-yellow">swap</span> method has two <span class="ct-code-b-yellow">int</span> ' +
									'parameters <span class="ct-code-b-yellow">x</span>, <span class="ct-code-b-yellow">y</span> assigned with ' +
									'<span class="ct-code-b-yellow">a</span>, <span class="ct-code-b-yellow">b</span> respectively and each occupies ' +
									'<span class="ct-code-b-yellow">2 bytes</span> of memory with some address (i.e. location of memory).';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationSwap()'>" + 
															"Next &#8594;</a>");
				});
			});
			break;
		case "tDeclareLine":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here a temp <span class="ct-code-b-yellow">int</span> variable <span class="ct-code-b-yellow">t</span> is ' +
									'declared for swapping.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "tBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch (animateStep) {
				case "tBoxAnimate":
					var typingContent = 'Here the variable <span class="ct-code-b-yellow">t</span> is of type ' +
										'<span class="ct-code-b-yellow">int</span> it occupies <span class="ct-code-b-yellow">2 bytes</span> ' +
										'of memory with some address (i.e. location of memory).';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationTBox()'>" + 
																"Next &#8594;</a>");
					});
					break;
				case "tBoxValueAnimate":
					var typingContent = 'Here <span class="ct-code-b-yellow">t</span> value is copied with <span class="ct-code-b-yellow">x</span> ' +
										'value (i.e. <span class="ct-code-b-yellow">' + $('#xValue').text() + '</span>).';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationTBoxValue()'>" + 
																"Next &#8594;</a>");
					});
					break;
				}
			});
			break;
		case "tAssignLine":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here variable <span class="ct-code-b-yellow">t</span> is assign with <span class="ct-code-b-yellow">x</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "xLine":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'The variable <span class="ct-code-b-yellow">x</span> is assign with <span class="ct-code-b-yellow">y</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "xBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'The value of <span class="ct-code-b-yellow">y</span> is copied to <span class="ct-code-b-yellow">x</span> ' + 
									'(i.e. <span class="ct-code-b-yellow">' + $('#yValue').text() + '</span>).';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationXBoxValue()'>" + 
															"Next &#8594;</a>");
				});
			});
			break;
		case "yLine":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'The variable <span class="ct-code-b-yellow">y</span> is assign with <span class="ct-code-b-yellow">t</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "yBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'The value of <span class="ct-code-b-yellow">t</span> is copied to <span class="ct-code-b-yellow">y</span> ' + 
									'(i.e. <span class="ct-code-b-yellow">' + $('#tValue').text() + '</span>).';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationYBoxValue()'>" + 
															"Next &#8594;</a>");
				});
			});
			break;
		case "printAfterSwapInSwap":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">values</span> of <span class="ct-code-b-yellow">x</span>, ' + 
									'<span class="ct-code-b-yellow">y</span> after swapping in <span class="ct-code-b-yellow">swap</span> method.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "swapMethodCloseBrace":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here <span class="ct-code-b-yellow">swap()</span> method closed and its variables ' +
									'<span class="ct-code-b-yellow">x</span>, <span class="ct-code-b-yellow">y</span> and ' +
									'<span class="ct-code-b-yellow">t</span> are destroyed.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "animationDiv":
			$('.introjs-helperLayer').one('transitionend', function () {
				TweenMax.to($('#swapMethodBox'), 1, {opacity: 0, onComplete: function() {
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				}});
			});
			break;
		case "printAfterSwapInMain":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">values</span> of <span class="ct-code-b-yellow">a</span>, ' + 
									'<span class="ct-code-b-yellow">b</span> after swapping in <span class="ct-code-b-yellow">main</span> method.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
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

function animationABox() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#aBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#aBox').removeClass('animated zoomIn');
		$('#valueOfA').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
			$('#valueOfA').removeClass('circle-css');
			$('#aValue').text($('#valueOfA').text());
			fromEffectWithTweenMax('#valueOfA', '#aValue', function() {
				$('.introjs-nextbutton').show();
			});
		});
	});
}

function animationBBox() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#bBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#bBox').removeClass('animated zoomIn');
		$('#valueOfB').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
			$('#valueOfB').removeClass('circle-css');
			$('#bValue').text($('#valueOfB').text());
			fromEffectWithTweenMax('#valueOfB', '#bValue', function() {
				$('.introjs-nextbutton').show();
			});
		});
	});
}

function animationSwap() {
	$('.introjs-duplicate-nextbutton').remove();
	animationXBox();
	animationYBox();
}

function animationXBox() {
	$('#xBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#xBox').removeClass('animated zoomIn');
		$('#aValue').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
			$('#aValue').removeClass('circle-css');
			$('#xValue').text($('#aValue').text());
			fromEffectWithTweenMax('#aValue', '#xValue');
		});
	});
}

function animationYBox() {
	$('#yBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#yBox').removeClass('animated zoomIn');
		$('#bValue').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
			$('#bValue').removeClass('circle-css');
			$('#yValue').text($('#bValue').text());
			fromEffectWithTweenMax('#bValue', '#yValue', function() {
				$('.introjs-nextbutton').show();
			});
		});
	});
}

function animationTBox() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#tBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#tBox').removeClass('animated zoomIn');
		$('.introjs-nextbutton').show();
	});
}

function animationTBoxValue() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#xValue').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
		$('#xValue').removeClass('circle-css');
		$('#tValue').text($('#xValue').text());
		fromEffectWithTweenMax('#xValue', '#tValue', function() {
			$('.introjs-nextbutton').show();
		});
	});
}

function animationXBoxValue() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#yValue').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
		$('#yValue').removeClass('circle-css');
		bounceFromEffextWithTimelineMax('#yValue', '#xValue', function() {
			$('.introjs-nextbutton').show();
		});
	});
}

function animationYBoxValue() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#tValue').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
		$('#tValue').removeClass('circle-css');
		bounceFromEffextWithTimelineMax('#tValue', '#yValue', function() {
			$('.introjs-nextbutton').show();
		});
	});
}

</script>

</body>
</html>