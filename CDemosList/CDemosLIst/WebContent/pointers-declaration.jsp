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

</style>

</head>
<body>

<div class='col-xs-12'>
	<div class='text-center heading-css'>
		<h1 class='label ct-demo-heading'>Pointers Declaration</h1>
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
<span id='line2'>float *p;</span>
<span id='line3'>p = &x;</span>
</pre>
					</div>
				</div>
				<div class='col-xs-7'>
					<div class='col-xs-12 box-border'>
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
											<div class='border-height-css'><span id='pValue'></span></div>
											<div><span id='pAddress'>1234</span></div>
										</div>
									</div>
								</div>
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
			intro : ""
		},
		{
			element : "#line2",
			intro : ""
		},
		{
			element : "#pBox",
			intro : ""
		},
		{
			element : "#line3",
			intro : ""
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
			var typingContent = 'Let us learn how to declare a <span class="ct-code-b-yellow">Pointers</span> in ' +
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
				var typingContent = 'let the variable <span class="ct-code-b-yellow">x</span> is of type ' +
									'<span class="ct-code-b-yellow">int</span> it occupies <span class="ct-code-b-yellow">2 bytes</span> ' +
									'of memory with some address (i.e. location of memory), lets its address be as ' +
									'<span class="ct-code-b-yellow">1111</span>.</br>Then the value <span class="ct-code-b-yellow">3</span> is ' +
									'initialized.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationXBox()'>" + 
															"Next &#8594;</a>");
				});
			});
			break;
		case "line2":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'The <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">p</span> occupies ' +
									'<span class="ct-code-b-yellow">2 bytes</span> of memory since it is a <span class="ct-code-b-yellow">pointer' +
									'</span> variable and it is declared with <span class="ct-code-b-yellow">float</span> datatype so it refers only ' +
									'the address which contains a <span class="ct-code-b-yellow">float</span> value.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
		case "pBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'The variable <span class="ct-code-b-yellow">p</span> is a <span class="ct-code-b-yellow">pointer</span> and it ' +
									'allotes <span class="ct-code-b-yellow">2 bytes</span> of memory to store the address of normal variable.</br>' +
									'<span class="ct-code-b-yellow">Note:</span> In this example <span class="ct-code-b-yellow">pointer</span> ' +
									'variable is of type <span class="ct-code-b-yellow">float</span> so it refers only the address of a memory ' +
									'location which contains <span class="ct-code-b-yellow">float</span> value.';
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animationPBox()'>" + 
															"Next &#8594;</a>");
				});
			});
			break;
		case "line3":
			$('.introjs-helperLayer').one('transitionend', function () {
				var typingContent = 'Here the <span class="ct-code-b-yellow">pointer</span> variable <span class="ct-code-b-yellow">p</span> is assign ' +
									'with <span class="ct-code-b-yellow">&x</span> it throws error since <span class="ct-code-b-yellow">x</span> is ' +
									'of type <span class="ct-code-b-yellow">int</span> and <span class="ct-code-b-yellow">p</span> is of type ' +
									'<span class="ct-code-b-yellow">float</span>.</br>' +
									'<span class="ct-code-b-yellow">Note:</span> The <span class="ct-code-b-yellow">pointer</span> variable can refer ' +
									'only to the variable of type it declared, i.e. the <span class="ct-code-b-yellow">pointer</span> variable ' +
									'declared with <span class="ct-code-b-yellow">float</span> can assign with address of variable of type ' +
									'<span class="ct-code-b-yellow">float</span>.';
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

</script>

</body>
</html>