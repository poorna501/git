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

/* .introjs-tooltiptext br {
	margin: 15px;
} */

.introjs-tooltip {
	min-width: 400px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
}

/* .introjs-duplicate-nextbutton {
	background-color: green;
} */

.buttons-div {
	margin: 20px 0 10px;
	text-align: center;
}

.heading-css {
	margin: 20px 0 10px;
}

.box-css {
	background-color: hsl(120, 100%, 31%) !important;
	background-image: linear-gradient(#F9DC00, #AE9C0E);
	background-repeat: repeat-x;
	border-color: #009e00 #009e00 hsl(120, 100%, 26.5%);
	border-radius: 6px;
	color: #fff !important;
	display: inline;
	font-size: 16px;
	padding: 10px;
	position: relative;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.29);
	z-index: 9999999;
}

.padding-col0 {
	padding: 0;
}

.padding10 {
	padding: 10px;
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

.margin-top100 {
	margin-top: 100px;
}

.svg-css {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.svg-line-css {
	position: relative;
	stroke: gray;
	stroke-width: 2;
}

.svg-arrow-line {
	marker-end: url("#arrowEnd");
	display: none;
}

</style>

</head>
<body>

<div class='col-xs-12'>
	<div class='text-center heading-css'>
		<h1 class='label ct-demo-heading'>Storage Classes</h1>
	</div>
	<div class='buttons-div'>
		<!-- <button type="button" class="btn btn-success" id="startBtn">Start</button> -->
		<button type="button" class="btn btn-warning visibility-hidden"
			id="restartBtn">Restart</button>
	</div>

	<div class="col-xs-12">
		<div class="col-xs-12">
			<div class="col-xs-offset-1 col-xs-10" id='animationDiv'>
				<div class='padding10' id='textDiv'>
					A <b>Storage Class</b> defines the <b>scope</b> (visibility) and <b>life-time</b> of variables and/or functions within a '<b>C</b>' 
					Program. Depending up on its features there are four types of <b>Storage Classes</b>. They are
				</div>
				<div class="col-xs-12">
					<div class='col-xs-12 padding-col0 text-center'>
						<div class="col-xs-12">
							<div class='col-xs-12 padding10'>
								<div class="box-css opacity00" id='storageClassesBox'>Storage Classes</div>
							</div>
						</div>
						<div class="col-xs-12 margin-top100">
							<div class='col-xs-3 padding10'>
								<div class="box-css opacity00 storage-class" id='autoBox'>Auto</div>
							</div>
							<div class='col-xs-3 padding10'>
								<div class="box-css opacity00 storage-class" id='registerBox'>Register</div>
							</div>
							<div class='col-xs-3 padding10'>
								<div class="box-css opacity00 storage-class" id='staticBox'>Static</div>
							</div>
							<div class='col-xs-3 padding10'>
								<div class="box-css opacity00 storage-class" id='externBox'>Extern</div>
							</div>
						</div>
						<svg class='svg-css'>
							<marker style="fill: gray;" orient="auto" markerWidth="5" markerHeight="5" refX="0" refY="2.5" id="arrowEnd">
								<path d="M0,0 L5,2.5 L0,5 Z"/>
							</marker>

							<line class="svg-line-css svg-line1" x1="50%" y1="22.5%" x2="50%" y2="22.5%"/>
							
							<line class="svg-line-css svg-line2" x1="50%" y1="48%" x2="50%" y2="48%"/>
							<line class="svg-line-css svg-line2" x1="50%" y1="48%" x2="50%" y2="48%"/>
							
							<line y2="49%" x2="13.6%" y1="48%" x1="13.6%" class="svg-line-css svg-arrow-line"/>
							<line y2="49%" x2="37.8%" y1="48%" x1="37.8%" class="svg-line-css svg-arrow-line"/>
							<line y2="49%" x2="62%" y1="48%" x1="62%" class="svg-line-css svg-arrow-line"/>
							<line y2="49%" x2="86.2%" y1="48%" x1="86.2%" class="svg-line-css svg-arrow-line"/>
						</svg>
					</div>
					<div class="col-xs-12">
						<div class='col-xs-3'>
<pre class='creamPreTab4 opacity00' id='autoPreCode'>
#include &ltstdio.h&gt
void main()
{
	auto int a;
}
void demo()
{
	int b;
}
</pre>
						</div>
						<div class='col-xs-3'>
<pre class='creamPreTab4 opacity00' id='registerPreCode'>
#include &ltstdio.h&gt
void main()
{
	register int a;	
}
</pre>
						</div>
						<div class='col-xs-3'>
<pre class='creamPreTab4 opacity00' id='staticPreCode'>
#include &ltstdio.h&gt
static int a;
void main()
{
	static int b;
}
</pre>
						</div>
						<div class='col-xs-3'>
<pre class='creamPreTab4 opacity00' id='externPreCode'>
#include &ltstdio.h&gt
int a;
void main()
{
	extern int b;
}
int b;
</pre>
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
			introjs._introItems[introjs._currentStep].intro = $(".introjs-tooltiptext").html();
			introjs._introItems[introjs._currentStep].tooltipClass = "";
			introjs._introItems[introjs._currentStep].isCompleted = "true";
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
			element : "#animationDiv",
			intro : "",
			tooltipClass : "hide",
			isCompleted : "false"
		},
		{
			element : "#autoBox",
			intro : "",
			isCompleted : "false"
		},
		{
			element : "#autoPreCode",
			tooltipClass : "hide",
			intro : "",
			isCompleted : "false"
		},
		{
			element : "#registerBox",
			intro : "",
			isCompleted : "false"
		},
		{
			element : "#registerPreCode",
			tooltipClass : "hide",
			intro : "",
			isCompleted : "false"
		},
		{
			element : "#staticBox",
			intro : "",
			isCompleted : "false"
		},
		{
			element : "#staticPreCode",
			tooltipClass : "hide",
			intro : "",
			isCompleted : "false"
		},
		{
			element : "#externBox",
			intro : "",
			position : "left",
			isCompleted : "false"
		},
		{
			element : "#externPreCode",
			tooltipClass : "hide",
			intro : "",
			position : "left",
			isCompleted : "false"
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
		case "animationDiv":
			if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
				$('#textDiv').css({height: $('#textDiv').outerHeight()});
				var typingContent = $('#textDiv').html();
				typing('#textDiv', typingContent, typingInterval, '#333', function() {
					$('#storageClassesBox').fadeTo(1300, 1, function() {
						TweenMax.to($('.svg-line1'), 1, {attr: {y2: '48%'}, onComplete: function() {
							TweenMax.to($('.svg-line2').eq(0), 1, {attr: {x2: '13.6%'}});
							TweenMax.to($('.svg-line2').eq(1), 1, {attr: {x2: '86.2%'}, onComplete: function() {
								$('.svg-arrow-line').show();
								TweenMax.to($('.svg-arrow-line'), 1, {attr: {y2: '72%'}, onComplete: function() {
									$('.storage-class').fadeTo(1300, 1, function() {
										$('.introjs-tooltip').removeClass('hide');
										var typingContent = 'The <span class="ct-code-b-yellow">Storage Classes</span> has the following properties.' +
															' They are' +
															'<ul><li><span class="ct-code-b-yellow">Scope:</span> The scope of a variable determines over ' +
															'what part of a program a variable is actually available for use, i.e. active in the program' +
															'</li><li><span class="ct-code-b-yellow">Life-time:</span> The lifetime refer to the period ' +
															'during which a variable retains a given value during execution of the program, i.e. alive ' +
															'known as longevity</li><li><span class="ct-code-b-yellow">Initial value:</span> The value ' +
															'initialized default</li><li><span class="ct-code-b-yellow">Storage:</span> Where varaible is ' +
															'saved</li><li><span class="ct-code-b-yellow">Keyword:</span> Which keyword the specifier has' +
															'</li></ul>';
										typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
											$('.introjs-nextbutton').show();
										});
									});
								}});
							}});
						}});
					});
				});
			} else {
				$('.introjs-nextbutton').show();
			}
			break;
		case "autoBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
					var typingContent = 'The <span class="ct-code-b-yellow">auto specifier</span> may only be used within functions and function argument ' +
										'declarations with <span class="ct-code-b-yellow">auto</span> keyword.' +
										'<ul><li><span class="ct-code-b-yellow">Storage:</span> Main memory</li>' +
										'<li><span class="ct-code-b-yellow">Initial value:</span> Garbage value</li>' +
										'<li><span class="ct-code-b-yellow">Keyword:</span> auto</li>' +
										'<li><span class="ct-code-b-yellow">Scope:</span> Local to the block in which it is defined</li>' +
										'<li><span class="ct-code-b-yellow">Lifetime:</span> Till control remains within the block in which it is defined' +
										'</li></ul>';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-prevbutton, .introjs-nextbutton').show();
					});
				} else {
					$('.introjs-nextbutton, .introjs-prevbutton').show();
				}
			});
			break;
		case "autoPreCode":
			$('.introjs-helperLayer').one('transitionend', function () {
				if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
					TweenMax.to($('#autoPreCode'), 1, {opacity: 1, onComplete: function() {
						$('.introjs-tooltip').removeClass('hide');
						var typingContent = 'This is example of <span class="ct-code-b-yellow">auto</span> specifier. Here <span class="ct-code-b-yellow">a' +
											'</span>, <span class="ct-code-b-yellow">b</span> are <span class="ct-code-b-yellow">auto</span> variables and ' +
											'<span class="ct-code-b-yellow">auto</span> keyword is always redundant. The <span class="ct-code-b-yellow">' +
											'scope</span> and <span class="ct-code-b-yellow">lifetime</span> of <span class="ct-code-b-yellow">a</span> is ' +
											'inside of <span class="ct-code-b-yellow">main()</span> method and where as <span class="ct-code-b-yellow">b' +
											'</span> is inside of <span class="ct-code-b-yellow">demo()</span> method.';
						typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
							$('.introjs-prevbutton, .introjs-nextbutton').show();
						});
					}});
				} else {
					$('.introjs-nextbutton, .introjs-prevbutton').show();
				}
			});
			break;
		case "registerBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
					var typingContent = 'The <span class="ct-code-b-yellow">register specifier</span> may only be used within functions declarations with ' +
										'<span class="ct-code-b-yellow">register</span> keyword and its access is fast.' +
										'<ul><li><span class="ct-code-b-yellow">Storage:</span> CPU Registers</li>' +
										'<li><span class="ct-code-b-yellow">Initial value:</span> Garbage value</li>' +
										'<li><span class="ct-code-b-yellow">Keyword:</span> register</li>' +
										'<li><span class="ct-code-b-yellow">Scope:</span> Local to the block in which the it is defined</li>' +
										'<li><span class="ct-code-b-yellow">Lifetime:</span> Till control remains within the block in which it is defined' +
										'</li></ul>';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-prevbutton, .introjs-nextbutton').show();
					});
				} else {
					$('.introjs-nextbutton, .introjs-prevbutton').show();
				}
			});
			break;
		case "registerPreCode":
			$('.introjs-helperLayer').one('transitionend', function () {
				if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
					TweenMax.to($('#registerPreCode'), 1, {opacity: 1, onComplete: function() {
						$('.introjs-tooltip').removeClass('hide');
						var typingContent = 'This is example of <span class="ct-code-b-yellow">register</span> specifier. Here ' +
											'<span class="ct-code-b-yellow">a</span> is <span class="ct-code-b-yellow">register</span> variables and ' +
											'storaged in <span class="ct-code-b-yellow">CPU register</span>. The <span class="ct-code-b-yellow">scope' +
											'</span> and <span class="ct-code-b-yellow">lifetime</span> of <span class="ct-code-b-yellow">a</span> is ' +
											'inside of <span class="ct-code-b-yellow">main()</span> method.';
						typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
							$('.introjs-prevbutton, .introjs-nextbutton').show();
						});
					}});
				} else {
					$('.introjs-nextbutton, .introjs-prevbutton').show();
				}
			});
			break;
		case "staticBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
					var typingContent = 'The <span class="ct-code-b-yellow">static specifier</span> may be declared outside or inside with ' +
										'<span class="ct-code-b-yellow">static</span> keyword, ' +
										'by seeing static the compiler itself initial its value. If static variable declared inside the function its scope ' +
										'is inside the function, lifetime is throughout the program, where as declared outside the function its scope and ' +
										'lifetime is throughout the program.' +
										'<ul><li><span class="ct-code-b-yellow">Storage:</span> Main memory</li>' +
										'<li><span class="ct-code-b-yellow">Initial value:</span> Zero</li>' +
										'<li><span class="ct-code-b-yellow">Keyword:</span> static</li>' +
										'<li><span class="ct-code-b-yellow">Scope:</span> Local to the block in which the it is defined</li>' +
										'<li><span class="ct-code-b-yellow">Lifetime:</span> Throughout the entire program</li></ul>';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-prevbutton, .introjs-nextbutton').show();
					});
				} else {
					$('.introjs-nextbutton, .introjs-prevbutton').show();
				}
			});
			break;
		case "staticPreCode":
			$('.introjs-helperLayer').one('transitionend', function () {
				if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
					TweenMax.to($('#staticPreCode'), 1, {opacity: 1, onComplete: function() {
						$('.introjs-tooltip').removeClass('hide');
						var typingContent = 'This is example of <span class="ct-code-b-yellow">static</span> specifier. Here <span class="ct-code-b-yellow">' +
											'a</span> is <span class="ct-code-b-yellow">static</span> variables declared outside methods the ' +
											'<span class="ct-code-b-yellow">scope</span> and <span class="ct-code-b-yellow">lifetime</span> is throughout ' +
											'the program where as <span class="ct-code-b-yellow">b</span> static variable ' +
											'declared inside <span class="ct-code-b-yellow">main()</span> method its <span class="ct-code-b-yellow">scope' +
											'</span> is inside method and <span class="ct-code-b-yellow">lifetime</span> is throughout the program.';
						typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
							$('.introjs-prevbutton, .introjs-nextbutton').show();
						});
					}});
				} else {
					$('.introjs-nextbutton, .introjs-prevbutton').show();
				}
			});
			break;
		case "externBox":
			$('.introjs-helperLayer').one('transitionend', function () {
				if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
					var typingContent = 'The <span class="ct-code-b-yellow">extern specifier</span> may be declared outside or inside with extern keyword, ' +
										'by seeing extern the compiler itself initial its value. Its scope and lifetime is throughout the program.' +
										'<ul><li><span class="ct-code-b-yellow">Storage:</span>Main memory</li>' +
										'<li><span class="ct-code-b-yellow">Initial value:</span> Zero</li>' +
										'<li><span class="ct-code-b-yellow">Keyword:</span> static</li>' +
										'<li><span class="ct-code-b-yellow">Scope:</span> Throughout the entire program</li>' +
										'<li><span class="ct-code-b-yellow">Lifetime:</span> Throughout the entire program</li></ul>';
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$('.introjs-prevbutton, .introjs-nextbutton').show();
					});
				} else {
					$('.introjs-nextbutton, .introjs-prevbutton').show();
				}
			});
			break;
		case "externPreCode":
			$('.introjs-helperLayer').one('transitionend', function () {
				if (introjs._introItems[introjs._currentStep].isCompleted == "false") {
					TweenMax.to($('#externPreCode'), 1, {opacity: 1, onComplete: function() {
						$('.introjs-tooltip').removeClass('hide');
						var typingContent = 'This is example of <span class="ct-code-b-yellow">extern</span> specifier. Here ' +
											'<span class="ct-code-b-yellow">' +
											'a</span> is an <span class="ct-code-b-yellow">extern</span> variables declared outside and before methods the ' +
											'<span class="ct-code-b-yellow">scope</span> and <span class="ct-code-b-yellow">lifetime</span> is throughout ' +
											'the program, <span class="ct-code-b-yellow">extern</span> keyword is always redundant, where as ' +
											'<span class="ct-code-b-yellow">b</span> is an <span class="ct-code-b-yellow">extern</span> variable declared ' +
											'inside <span class="ct-code-b-yellow">main()</span> method by seeing <span class="ct-code-b-yellow">extern' +
											'</span> keyword the complier search entire program either the <span class="ct-code-b-yellow">b</span> variable '+ 
											'declared outside the function else it show error. The <span class="ct-code-b-yellow">scope</span> and ' +
											'<span class="ct-code-b-yellow">lifetime</span> is throughout the program.';
						typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
							$('.introjs-prevbutton, .introjs-nextbutton').show();
						});
					}});
				} else {
					$('.introjs-nextbutton, .introjs-prevbutton').show();
				}
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