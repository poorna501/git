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

.border1 {
	border: 1px solid;
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

.output-console {
	width: 250px;
	margin: auto;
}

.margin-top30 {
	margin-top: 30px;
}

.output-console-body {
	padding: 5px 20px;
}

.color-gray {
	color: gray;
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

</style>

</head>
<body>

<div class='col-xs-12'>
	<div class='text-center heading-css'>
		<h1 class='label ct-demo-heading'>Pointers Introduction</h1>
	</div>
	<div class='buttons-div'>
		<!-- <button type="button" class="btn btn-success" id="startBtn">Start</button> -->
		<button type="button" class="btn btn-warning visibility-hidden"
			id="restartBtn">Restart</button>
	</div>

	<div class="col-xs-12">
		<div class='col-xs-offset-1 col-xs-10'>
			<div class='col-xs-12'>
				<div class='col-xs-5'>
					<div class='col-xs-12 box-border'>
<pre class='creamPreTab4' id='preCode'>
<span id='line1'>int x = <span id='valueOfX'>3</span>;</span>
<span id='line2'>int y = x;</span>
<span id='line3'>int *z;</span>
<span id='line4'>z = &x;</span>
<span id='printf1'>printf("The value of x = %d\n", x);</span>
<span id='printf2'>printf("The address of x = %d\n", &x);</span>
<span id='printf3'>printf("The value of y = %d\n", y);</span>
<span id='printf4'>printf("The address of y = %d\n", &y);</span>
<span id='printf5'>printf("The value of z = %d\n", z);</span>
<span id='printf6'>printf("The address of z = %d\n", &z);</span>
<span id='printf7'>printf("The value of *z = %d\n", *z);</span>
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
											<div class='border1'><span class='visibility-hidden' id='xValue'>3</span></div>
											<div><span id='xAddress'>1111</span></div>
										</div>
									</div>
								</div>
							</div>
							<div class='col-xs-6'>
								<div class='center width200'>
									<div class='col-xs-12 visibility-hidden' id='yBox'>
										<div class='col-xs-4 Vertical-text-center'>y =</div>
										<div class="col-xs-6 text-center">
											<div><span class='color-gray'>2 bytes</span></div>
											<div class='border1'><span class='visibility-hidden' id='yValue'>3</span></div>
											<div><span id='yAddress'>1234</span></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 padding10">
							<div class='center width200'>
								<div class='col-xs-12 visibility-hidden' id='zBox'>
									<div class='col-xs-4 Vertical-text-center'>z =</div>
									<div class="col-xs-6 text-center">
										<div><span class='color-gray'>2 bytes</span></div>
										<div class='border1'><span class='visibility-hidden' id='zValue'>1111</span></div>
										<div><span id='zAddress'>2222</span></div>
									</div>
								</div>
							</div>
						</div>
						
						<svg class='svg-css'>
							<marker id="arrowEnd" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>
								
							<line class="svg-line" x1="47.7%" y1="73%" x2="47.6%" y2="73%"/>
						</svg>
						
					</div>
					
					<div class='col-xs-12 margin-top30'>
						<div class="output-console center" id='outputBox'>
							<div class="output-console-title-bar">
								<span>Output</span>
							</div>
<div class="output-console-body"><span class='visibility-hidden'>The value of x = 3</span>
<span class='visibility-hidden'>The address of x = 1111</span>
<span class='visibility-hidden'>The value of y = 3</span>
<span class='visibility-hidden'>The address of y = 1234</span>
<span class='visibility-hidden'>The value of z = 1111</span>
<span class='visibility-hidden'>The address of z = 2222</span>
<span class='visibility-hidden'>The value of *z = 3</span>
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
			element : "#yBox",
			intro : "",
			animateStep : "yBoxAnimate"
		},
		{
			element : "#animationDiv",
			intro : "",
			animateStep : "1"
		},
		{
			element : "#line3",
			intro : ""
		},
		{
			element : "#line4",
			intro : ""
		},
		{
			element : "#zBox",
			intro : "",
			animateStep : "zBoxAnimate"
		},
		{
			element : "#animationDiv",
			intro : "",
			animateStep : "2"
		},
		{
			element : "#printf1",
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
			element : "#printf2",
			intro : ""
		},
		{
			element : "#xBox",
			intro : "",
			animateStep : "xAddressPrint"
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
		},
		{
			element : "#printf3",
			intro : ""
		},
		{
			element : "#yBox",
			intro : "",
			animateStep : "yValuePrint"
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
		},
		{
			element : "#printf4",
			intro : ""
		},
		{
			element : "#yBox",
			intro : "",
			animateStep : "yAddressPrint"
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
		},
		{
			element : "#printf5",
			intro : ""
		},
		{
			element : "#zBox",
			intro : "",
			animateStep : "zValuePrint"
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
		},
		{
			element : "#printf6",
			intro : ""
		},
		{
			element : "#zBox",
			intro : "",
			animateStep : "zAddressPrint"
		},
		{
			element : "#outputBox",
			tooltipClass: "hide"
		},
		{
			element : "#printf7",
			intro : ""
		},
		{
			element : "#animationDiv",
			intro : "",
			animateStep : "*zValuePrint"
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
			var typingContent = 'Let us learn why we want <span class="ct-code-b-yellow">Pointers</span> in ' +
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
					var typingContent = 'Here the variable <span class="ct-code-b-yellow">x</span> is of type ' +
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
				case "xAddressPrint":
					$('#xAddress').addClass('blinking-border-background-blue');
					var typingContent = 'The blinking value is the address return by <span class="ct-code-b-yellow">&x</span>, since ' +
										'<span class="ct-code-b-yellow">&</span> (ampersand) return address of variable.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				}
			});
			break;
		case "line2":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Now <span class="ct-code-b-yellow">int</span> variable <span class="ct-code-b-yellow">y</span> which is ' +
									'initialized with value of <span class="ct-code-b-yellow">x</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "yBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch (animateStep) {
				case "yBoxAnimate":
					var typingContent = 'Here the variable <span class="ct-code-b-yellow">y</span> is of type ' +
										'<span class="ct-code-b-yellow">int</span> it occupies <span class="ct-code-b-yellow">2 bytes</span> ' +
										'of memory with some address (i.e. location of memory), lets its address be as ' +
										'<span class="ct-code-b-yellow">1234</span>.</br>Then the value of <span class="ct-code-b-yellow">x</span> is ' +
										'initialized to <span class="ct-code-b-yellow">y</span> (i.e. <span class="ct-code-b-yellow">3</span>).';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationYBox()'>" + 
																"Next &#8594;</a>");
					});
					break;
				case "yValuePrint":
					$('#yValue').addClass('blinking-border-background-blue');
					var typingContent = 'The blinking value is the value return by <span class="ct-code-b-yellow">y</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				case "yAddressPrint":
					$('#yAddress').addClass('blinking-border-background-blue');
					var typingContent = 'The blinking value is the address return by <span class="ct-code-b-yellow">&y</span>, since ' +
										'<span class="ct-code-b-yellow">&</span> (ampersand) return address of variable.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				}
			});
			break;
		case "animationDiv":
			$('.introjs-helperLayer').one('transitionend', function () {
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch (animateStep) {
				case "1":
					var typingContent = 'In the above two variables <span class="ct-code-b-yellow">x</span> and <span class="ct-code-b-yellow">y</span> occupying ' +
										'memories at different location with same value <span class="ct-code-b-yellow">3</span>, but if we want to access to one ' +
										'memory with two variable ' +
										'then we use <span class="ct-code-b-yellow">pointers</span>.</br> In pointers we have two unary operators. They are' +
										'<ul><li><span class="ct-code-b-yellow">&</span> (ampersand) returns address of variable</li>' +
										'<li><span class="ct-code-b-yellow">*</span> (asterisk) returns value at that address</li></ul>';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				case "2":
					var typingContent = 'Here the <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">z</span> has the address of ' +
										'variable <span class="ct-code-b-yellow">x</span>, so that if we want the value at <span class="ct-code-b-yellow">x</span> we ' +
										'can get by <span class="ct-code-b-yellow">*z</span> (i.e asterisk returns value at that address), since ' +
										'<span class="ct-code-b-yellow">z</span> have the address of <span class="ct-code-b-yellow">x</span> by using ' +
										'<span class="ct-code-b-yellow">*z</span> it is pointed to <span class="ct-code-b-yellow">x</span> and returns value of ' +
										'<span class="ct-code-b-yellow">x</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				case "*zValuePrint":
					TweenMax.to($('.svg-line').show(), 1, {attr: {x2: '32.5%', y2: '41%'}, onComplete: function() {
						$('#xValue').addClass('blinking-border-background-blue');
						var typingContent = 'Since <span class="ct-code-b-yellow">*</span> (asterisk) return the value at that address, ' +
											'<span class="ct-code-b-yellow">*z</span> means the value at <span class="ct-code-b-yellow">z</span> ' +
											'values (i.e. the value at <span class="ct-code-b-yellow">1111</span>).</br>' +
											'Hence the blinking value is the value return by <span class="ct-code-b-yellow">*z</span>';
						typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					}});
					break;
				}
			});
			break;
		case "line3":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here we are declaring a <span class="ct-code-b-yellow">pointer</span> variable ' +
									'<span class="ct-code-b-yellow">*z</span> with type <span class="ct-code-b-yellow">int</span>.</br>' +
									'In \'<span class="ct-code-b-yellow">C</span>\' we can declare a pointer, but we can\'t initialize it in the same ' +
									'line and pointer variable is always declared with <span class="ct-code-b-yellow">*</span> (asterisk).';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});				
			break;
		case "line4":
			var typingContent = 'Here the <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">z</span> is ' +
								'assigned with <span class="ct-code-b-yellow">&x</span> (i.e address of <span class="ct-code-b-yellow">x</span>).';
			typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
				$('.introjs-nextbutton').show();
			});
			break;
		case "zBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var animateStep = introjs._introItems[introjs._currentStep].animateStep;
				switch (animateStep) {
				case "zBoxAnimate":
					var typingContent = 'Here the <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">z</span> ' +
										'is of type <span class="ct-code-b-yellow">int</span> it occupies <span class="ct-code-b-yellow">2 bytes' +
										'</span> of memory with some address (i.e. location of memory), lets its address be as ' +
										'<span class="ct-code-b-yellow">2222</span>.</br>Then the value of <span class="ct-code-b-yellow">z</span> is ' +
										'assigned with <span class="ct-code-b-yellow">&x</span> (i.e. ampersand returns the address of ' +
										'<span class="ct-code-b-yellow">x</span>).';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationZBox()'>" + 
																"Next &#8594;</a>");
					});
					break;
				case "zValuePrint":
					$('#zValue').addClass('blinking-border-background-blue');
					var typingContent = 'The blinking value is the value return by <span class="ct-code-b-yellow">z</span>.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				case "zAddressPrint":
					$('#zAddress').addClass('blinking-border-background-blue');
					var typingContent = 'The blinking value is the address return by <span class="ct-code-b-yellow">&z</span>, since ' +
										'<span class="ct-code-b-yellow">&</span> (ampersand) return address of variable.';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
					break;
				}
			});
			break;
		case "printf1":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">value</span> of <span class="ct-code-b-yellow">x</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "printf2":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">address</span> of <span class="ct-code-b-yellow">x</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "printf3":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">value</span> of <span class="ct-code-b-yellow">y</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "printf4":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">address</span> of <span class="ct-code-b-yellow">y</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "printf5":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">value</span> of <span class="ct-code-b-yellow">z</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "printf6":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">address</span> of <span class="ct-code-b-yellow">z</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "printf7":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'This line prints the <span class="ct-code-b-yellow">value</span> of <span class="ct-code-b-yellow">*z</span>.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "outputBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				$('.blinking-border-background-blue').removeClass('blinking-border-background-blue');
				$('.svg-line').hide();
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

function animationYBox() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#yBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#yBox').removeClass('animated zoomIn');
		$('#xValue').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
			$('#xValue').removeClass('circle-css');
			$('#yValue').removeClass('visibility-hidden');
			fromEffectWithTweenMax('#xValue', '#yValue', function() {
				$('.introjs-nextbutton').show();
			});
		});
	});
}

function animationZBox() {
	$('.introjs-duplicate-nextbutton').remove();
	$('#zBox').toggleClass('visibility-hidden animated zoomIn').one('animationend', function() {
		$('#zBox').removeClass('animated zoomIn');
		$('#xAddress').addClass('circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
			$('#xAddress').removeClass('circle-css');
			$('#zValue').removeClass('visibility-hidden');
			fromEffectWithTweenMax('#xAddress', '#zValue', function() {
				$('.introjs-nextbutton').show();
			});
		});
	});
}

</script>

</body>
</html>