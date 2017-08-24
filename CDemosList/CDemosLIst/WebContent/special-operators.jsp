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

<style>

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
	margin: 30px 10px 10px 6%;
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
	padding: 0;
}

.text-box {
	background-color: rgb(255, 250, 230);
	border: 1px solid gray;
	border-radius: 8px;
	margin-left: 10%;
	padding: 10px;
	position: relative;
	width: 76%;
	z-index: 9999999;
}

</style>

</head>
<body>

<div class='col-xs-12'>
	<div class='text-center heading-css'>
		<h1 class='label ct-demo-heading'>Special Operators</h1>
	</div>
	<div class='buttons-div'>
		<!-- <button type="button" class="btn btn-success" id="startBtn">Start</button> -->
		<button type="button" class="btn btn-warning visibility-hidden" id="restartBtn">Restart</button>
	</div>
	
	<div class="col-xs-12">
		<div class='text-box' id='textBoxDiv'>
			<b>Special Operators</b> are of two types. They are<br><br>
			<b>Comma operator</b> is used to link the related expressions together. For example<br>
			int x = 0;<br>
			int y = 0;<br>
			The above statements can be written by using the comma operator as<br>
			int x = 0, y = 0;<br><br>
			<b>Sizeof( ) operator</b> is also called compile time operator and when used with an operand it returns the number of bytes the operand
			occupies. The operand may be a variable, constant or a data type. For example<br>
			a = sizeof(int);<br>
			It returns the number of bytes occupied by an int data type.
		</div>
	</div>
	
	<div class='col-xs-12 visibility-hidden' id='demoDiv'>
		<div class='col-xs-6 box-border'>
<pre class='creamPreTab4' id='preCode'>
#include &ltstdio.h&gt
void main()
{
	<span id='line1'>int a, f, g, e[10];</span>
	<span id='line2'>float b;</span>
	<span id='line3'>double c;</span>
	<span id='line4'>char d;</span>
	<span id='line5'>a = (f = 5, g = 4, f + g);</span>
	<span id='line6'>printf("value of a = %d\n", a);</span>
	<span id='line7'>printf("Size of int = %d bytes\n", sizeof(a));</span>
	<span id='line8'>printf("Size of float = %d bytes\n", sizeof(b));</span>
	<span id='line9'>printf("Size of double = %d bytes\n", sizeof(c));</span>
	<span id='line10'>printf("Size of char = %d byte\n", sizeof(d));</span>
	<span id='line11'>printf("Size of integer type array having 10 elements = %d bytes\n", sizeof(e));</span>
}
</pre>
		</div>
		<div class="output-console col-xs-4" id='outputBox'>
		<div class="output-console-title-bar">
			<span>Output</span>
		</div>
		<div class="output-console-body">
<span class='visibility-hidden'>value of a = 9</span>
<span class='visibility-hidden'>Size of int = 4 bytes</span>
<span class='visibility-hidden'>Size of float = 4 bytes</span>
<span class='visibility-hidden'>Size of double = 8 bytes</span>
<span class='visibility-hidden'>Size of char = 1 byte</span>
<span class='visibility-hidden'>Size of integer type array having 10 elements = 40 bytes</span>
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
			element : "#textBoxDiv",
			intro : "",
			tooltipClass : "hide"
		},
		{
			element : "#preCode",
			intro : ""
		},
		{
			element : "#line1",
			intro : ""
		},
		{
			element : "#line2",
			intro : ""
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
			element : "#line5",
			intro : ""
		},
		{
			element : "#line6",
			tooltipClass : "hide"
		},
		{
			element : "#outputBox",
			tooltipClass : "hide"
		},
		{
			element : "#line7",
			tooltipClass : "hide"
		},
		{
			element : "#outputBox",
			tooltipClass : "hide"
		},
		{
			element : "#line8",
			tooltipClass : "hide"
		},
		{
			element : "#outputBox",
			tooltipClass : "hide"
		},
		{
			element : "#line9",
			tooltipClass : "hide"
		},
		{
			element : "#outputBox",
			tooltipClass : "hide"
		},
		{
			element : "#line10",
			tooltipClass : "hide"
		},
		{
			element : "#outputBox",
			tooltipClass : "hide"
		},
		{
			element : "#line11",
			tooltipClass : "hide"
		},
		{
			element : "#outputBox",
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
		case "textBoxDiv":
			$('#textBoxDiv').css({height: $('#textBoxDiv').outerHeight()});
			typingId = '#textBoxDiv';
			typingContent = $('#textBoxDiv').html();
			typingInterval = typing_interval;
			cursorColor = '#333';
			typingCallbackFunction = function() {
				setTimeout(function() {
					introjs.nextStep();
				}, 1000);
			}
			typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
			break;
		case "preCode":
			$('#demoDiv').removeClass('visibility-hidden');
			$('.introjs-helperLayer').one('transitionend', function () {
				typingId = '.introjs-tooltiptext';
				typingContent = 'This is the code that explains <span class="ct-code-b-yellow">Special Operators.</span>';
				typingInterval = typing_interval;
				cursorColor = 'white';
				typingCallbackFunction = function() {
					$('.introjs-nextbutton').show();
				}
				typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
			});
			break;
		case "line1":
			$('.introjs-helperLayer').one('transitionend', function () {
				typingId = '.introjs-tooltiptext';
				typingContent = 'Here we are using <span class="ct-code-b-yellow">Comma Operator</span> of same datatype int.';
				typingInterval = typing_interval;
				cursorColor = 'white';
				typingCallbackFunction = function() {
					$('.introjs-nextbutton').show();
				}
				typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
			});
			break;
		case "line2":
		case "line3":
		case "line4":
			$('.introjs-helperLayer').one('transitionend', function () {
				typingId = '.introjs-tooltiptext';
				typingContent = 'Here we are declaring variable.';
				typingInterval = typing_interval;
				cursorColor = 'white';
				typingCallbackFunction = function() {
					$('.introjs-nextbutton').show();
				}
				typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
			});
			break;
		case "line5":
			$('.introjs-helperLayer').one('transitionend', function () {
				typingId = '.introjs-tooltiptext';
				typingContent = 'First <span class="ct-code-b-yellow">f</span> is assign with <span class="ct-code-b-yellow">5</span> then second ' +
								'<span class="ct-code-b-yellow">g</span> is assign with <span class="ct-code-b-yellow">4</span> and last ' +
								'<span class="ct-code-b-yellow">a</span> is assign with <span class="ct-code-b-yellow">f + g</span>.';
				typingInterval = typing_interval;
				cursorColor = 'white';
				typingCallbackFunction = function() {
					$('.introjs-nextbutton').show();
				}
				typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
			});
			break;
		case "line6":
		case "line7":
		case "line8":
		case "line9":
		case "line10":
		case "line11":
			$('.introjs-helperLayer').one('transitionend', function () {
				setTimeout(function() {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case "outputBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				typingId = $(".output-console-body .visibility-hidden").eq(0);
				typingContent = $(".output-console-body .visibility-hidden").eq(0).html();
				$(".output-console-body .visibility-hidden").eq(0).removeClass('visibility-hidden');
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

</script>

</body>
</html>