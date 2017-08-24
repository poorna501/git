<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.css">
<script src="/js/bootstrap.min.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>

<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenLite.min.js" type="text/javascript"></script>
<script src="/js/gs/TimelineLite.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="/css/font-awesome.min.css" />
<link href="/css/introjs.css" rel="stylesheet">
<link rel="stylesheet" href="/css/introjs-ct.css" />
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/animate.css" />
<title>Usage of ##</title>
</head>
<style>
.output-console-title-bar {
	background-image: -moz-linear-gradient(center top, #e8e8e8, #bcbbbc);
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	font-size: 0.75em;
 	/* margin-top: 20px;  */
	padding: 2px 0;
	text-align: center;
}

.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 14px;
	margin-bottom: 14px;
	height: 90px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

#informationdiv {
	background-color: rgb(243, 235, 235);
    border-radius: 2px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 167px;
    margin-top: 20px;
  /*   color: green; */
    padding: 10px;
}

.introjs-tooltiptext br {
	margin: 15px;
}

.introjs.tooltiptext > span{
	display: inline-block;
}

.introjs-tooltip {
	min-width: 280px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
}

.introjs-prevbutton, .introjs-nextbutton, .introjs-skipbutton {
	border-radius: 3px !important;
}

.introjs-prevbutton {
	background-color: #5bc0de !important;
}

.introjs-nextbutton {
	background-color: green !important;
}

.introjs-skipbutton {
	margin-right: 15px !important;
	background-color: orange !important;
}

.ct-pink-color {
	font-family: monospace;
	color: #ed138e;
	outline: none;
}

.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: rgb(252, 66, 66);
}

.ct-code-b-brown {
	font-family: monospace;
	font-weight: bold;
	color: brown;
}

.ct-code-b-yellow {
	font-family: monospace;
	font-weight: bold;
	color: yellow;
}

.ct-code-b-green {
	font-family: monospace;
	font-weight: bold;
	color: green;
}

#typewritingId {
	height: 167px; 
}

.position-relative {
	position: relative;
}

.display-inline {
	display: inline-block;
}

.address-box {
	height: 222px;
	border: 1px solid lightgray;
	border-radius: 4px;
}

.opacity00 {
	opacity: 0.0;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0 0;
    border-radius: 10px;
    font-size: 18px;
    position: relative;
    z-index: 9999999;
}

.creamPreTab4 {
	height: 111px;
}

.padding0 {
	padding: 0px;
}

.z-index9999999 {
	z-index: 9999999;
}

.panel-heading {
	padding: 2px 70px;
}

.panel-body {
	height: 46px;
}

#startBtn {
	margin-top: 10px;
}

#in, #lowerValue, .input-char {
   width: 20px;
 /* padding: 8px; */
  border-width: 0px 0 0 0;
  background-color: #000;
  color: #0f0;
}

</style>
<body>

<div class="col-xs-12 text-center">
	<div class="margin-padding-css text-center">
		<div class="col-xs-1"></div>
		<div class="col-xs-offset-3 col-xs-3">
			<h3><span class="ct-demo-heading label label-default" id="titleName">Usage of ##</span></h3>
		</div>
	</div>
</div>

<div class="body-div col-xs-12 padding0">
<br>
<div class="col-xs-offset-1 col-xs-5">
<!-- <pre id="typewritingId"></pre> -->
<pre class="creamPreTab4 opacity00" id="preBody">
#include&lt;stdio.h&gt;
<span id="line1">#define CONNECT(X,Y) X##Y</span>
<span id="line2">main()</span> {
 <span id="line3">println("result is :%d", <span id="connectId" class="position-relative display-inline" >CONNECT(<span id="hashValues" >5, 6</span>)</span> );</span>
<span>}</span>
</pre>
</div>
	<div class="col-xs-5">
		<div id="consoleId" class="center opacity00">   <!-- style='text-transform: uppercase' -->
			<div class="output-console-title-bar">
				<span class="title"><b>Console</b></span>
			</div>
			<div class="output-console-body" id="consoleBodyDiv">
				<span id="typeChar"></span>
			</div>
		</div>
	</div>
</div>
<div><button type="button" class="col-sm-1 col-sm-offset-5 btn btn-warning opacity00" id="restartBtn" style="margin-top: 30px;">Restart </button></div>
<script>

var t1;
$(document).ready(function() {
	t1 = new TimelineLite();
	$("#restartBtn").click(function() {
		location.reload();
	});
	
	$("#inputChar").keyup(function() {
		console.log("hello");
		if ($("#inputChar").val().length < 1) {
			$('.introjs-nextbutton').hide();
		} else {
			$('.introjs-nextbutton').show();
		}
	});
	
	console.log();
	intro = introJs();
	intro.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		
		steps : [{
					element :'#titleName',
					intro :'',
					position:"right"
				},{
					element :'#preBody',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line1',
					intro :'',
					position:"bottom"
				},{
					element :'#connectId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line2',
					intro :'',
					position:"bottom"
				},{
					element :'#line3',
					intro :'',
					position:"bottom"
				},{
					element :'#connectId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#consoleId',               
					intro :'',
					position:"bottom"
				},{
					element :'#restartBtn',               
					intro :'',
					position:"bottom"
				}]
	});
	
	intro.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "preBody" :
			$('.introjs-nextbutton').hide();
			$("#preBody").removeClass("opacity00");
			$('.introjs-helperLayer ').one('transitionend', function() {
				setTimeout(function() {
					intro.nextStep();
				}, 1000);
			});
			break;
			
		case "line1" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "Here is a sample code for<span class='ct-code-b-yellow'> ##</span>.<ul><li>here <span class='ct-code-b-yellow'>CONNECT(X,Y)</span> is symbol name and <span class='ct-code-b-yellow'>X##Y</span> is a symbolic constant.</li>" +
						"<li><span class='ct-code-b-yellow'>##</span> concatenates the X and Y values.</li>" +
						"<li>Before compilation starts the symbolic name replaced with symbolic constant value.</li></ul>", 10, "",function() {
						$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line2" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>main()</span> is the operating system call.<ul><li><span class='ct-code-b-yellow'>main()</span> is execution starting point for any c program.</li></ul>", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line3" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>printf()</span> is a library function, used to display the message specified with in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "connectId" :
			$('.introjs-nextbutton').hide();
			if(intro._currentStep == 3) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					t1.to("#connectId", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#connectId").text("5##6");
					}});
					
					t1.to("#connectId", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						intro.refresh();
						setTimeout(function() {
							intro.nextStep();
						}, 1500);
					}});
					
				});
				
			} else if(intro._currentStep == 6) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					
					t1.to("#connectId", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#connectId").text("56");
					}});
					
					t1.to("#connectId", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						intro.refresh();
						setTimeout(function(){
							intro.nextStep();
						}, 1500);
					}});
				});
			}
			break;
			
		case "consoleId" :
			$('.introjs-nextbutton').hide();
			$("#consoleId").removeClass("opacity00");
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing("#typeChar", "result is : <span class='ct-code-b-green'>56</span>", 10, "",function() {
					typing(".introjs-tooltiptext", "The result <span class='ct-code-b-green'>56</span> is printed on to the output screen.", 10, "",function() {
						$('.introjs-nextbutton').show();
					});
				});
			});
			break;
			
		case "restartBtn" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#restartBtn").removeClass("opacity00");
				typing(".introjs-tooltiptext", "Click to restart.", 10, "",function() {
					
				});
			});
			break;
		}
	});
	intro.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	
	typing(".introjs-tooltiptext", "Let us learn how a sample program run with <span class='ct-code-b-yellow'>##</span>.", 10, "",function() {
		$('.introjs-nextbutton').show();
	});
	
}); // end of document.ready function

function typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval": typingInterval,
		"cursor_color": cursorColor
	}, function() {
		$(typingId).removeClass('typingCursor');
		typingCallbackFunction();
	});
}
</script>
</body>
</html>
