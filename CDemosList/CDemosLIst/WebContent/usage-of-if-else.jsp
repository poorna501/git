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
<title>Usage of if-else</title>
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
	height: 143px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

#informationdiv {
	background-color: rgb(243, 235, 235);
    border-radius: 2px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 192px;
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
	height: 222px;
}

.padding0 {
	padding: 0px;
}

.blur {
	opacity: 0.12;
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
	<div class="margin-padding-css text-center" >
		<div class="col-xs-1"></div>
		<div class="col-xs-offset-3 col-xs-3">
			<h3><span class="ct-demo-heading label label-default" id="titleName">Usage of #if #else</span></h3>
		</div>
	</div>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-8 col-xs-offset-2 opacity00'>
		<span id='defination'></span>
		<span id='format' class="col-xs-offset-4 col-xs-4"></span>
	</div>
</div>
<div class="body-div col-xs-12 padding0">
<br>
<div class="col-xs-offset-1 col-xs-5">
<!-- <pre id="typewritingId"></pre> -->
<pre class="creamPreTab4 visibility-hidden" id="preBody">
<span id="line1">#include&lt;stdio.h&gt;</span>
<span id="line2">#define MAX 10</span>
<span id="line3"><span id="idDefId">#ifdef</span> <span id="maxValue" class="position-relative display-inline">MAX</span></span>
  <span id="line4">#define MIN 20</span>
<span id="totalElse"><span id="line5">#else</span>
  <span id="line6">#define MAX 100</span>
  <span id="line7">#define MIN 200</span></span>
<span id="line8">#endif</span>
<span id="line9">main()</span> {
  <span id="line10">printf("max and min values are:%d, %d", <span id="printMaxValue" class="position-relative display-inline">MAX</span>, <span id="printMinValue" class="position-relative display-inline">MIN</span>);</span>
<span id="line11">}</span>
</pre>
</div>
	<div class="col-xs-5">
		<div id="consoleId" class="center opacity00">
			<div class="output-console-title-bar">
				<span class="title"><b>Console</b></span>
			</div>
			<div class="output-console-body" id="consoleBodyDiv">
				<span id="typeChar"></span>
				<span id="typeChar1"></span>
			</div>
		</div>
	</div>
</div>
<div><button type="button" class="col-sm-1 col-sm-offset-6 btn btn-warning opacity00" id="restartBtn" style="margin-top: 30px;">Restart </button></div>
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
					element :'#informationdiv',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#preBody',
					intro :'',
					position:"bottom"
				},{
					element :'#line1',
					intro :'',
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
					element :'#line4',
					intro :'',
					position:"bottom"
				},{
					element :'#line8',
					intro :'',
					position:"bottom"
				},{
					element :'#printMaxValue',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#printMinValue',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line9',
					intro :'',
					position:"bottom"
				},{
					element :'#line10',
					intro :'',
					position:"bottom"
				},{
					element :'#consoleId',               
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
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
					element :'#line3',
					intro :'',
					position:"bottom"
				},{
					element :'#totalElse',
					intro :'',
					position:"bottom"
				},{
					element :'#line8',
					intro :'',
					position:"bottom"
				},{
					element :'#printMaxValue',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#printMinValue',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line9',
					intro :'',
					position:"bottom"
				},{
					element :'#line10',
					intro :'',
					position:"bottom"
				},{
					element :'#consoleId',               
					intro :'',
					tooltipClass: "hide",
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
		
		case "informationdiv" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#informationdiv").removeClass("opacity00");
				typing("#defination", "<ol><li id='list1'>Here <span class='ct-code-b-green'>#</span> referes preprocessor. It processes the source code program before it passes through the compiler.</li>" +
						"<li id='list2'>If there is a need to compile a portion of the program conditionally then we can use these directives.</li>" + 
						"<li>The format of <span class='ct-code-b-green'>#if</span> and <span class='ct-code-b-green'>#else</span> is :</li></ol>", 10, "", function() {
						typing("#format", "<span class='text-center'>#if condition</br><span style='margin-left: 10px;'>//  <span class='ct-code-b-green'>true</span> part</span></br> #else</br><span style='margin-left: 10px;'>//  <span class='ct-code-b-red'>false</span> part</span></br>#endif</span>", 10, "", function() {
							$("#informationdiv").addClass('z-index9999999');
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						})	
					});
				});
				
			break;
		
		case "preBody" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 2) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#preBody").removeClass("visibility-hidden");
					typing(".introjs-tooltiptext", "Here is the program for<span class='ct-code-b-yellow'> #if #else</span>.", 10, "",function() {
						$('.introjs-nextbutton').show();
					});
				});
				
			} else if(intro._currentStep == 13) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#line2").remove();
					setTimeout(function() {
						intro.nextStep();
					}, 1000);
				});
			}
			break;
			
		case "line1" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "It is a header file which contains standard <span class='ct-code-b-yellow'>input/output</span> library functions.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line2" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "MAX is defined with value <span class='ct-code-b-yellow'>10</span>.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line3" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 5) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#idDefId").effect("highlight", {color: '#008000'}, 1000, function() {
						$("#maxValue").effect("highlight",{color: '#008000'}, 1000, function() {
							typing(".introjs-tooltiptext", "MAX is defined with value <span class='ct-code-b-yellow'>10</span>. So it returns <span class='ct-code-b-yellow'>true</span>. then the true part will be executed. In this case it does not execute <span class='ct-code-b-red'>false</span> part.", 10, "",function() {
								$('.introjs-nextbutton').show();
							});
						});
					});
				});
				
			} else if (intro._currentStep == 15) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing(".introjs-tooltiptext", "here MAX is undefined. So it returns <span class='ct-code-b-yellow'>false</span>, then <span class='ct-code-b-yellow'>else</span> part will be executed. In this case it does not execute <span class='ct-code-b-red'>true</span> part.", 10, "",function() {
						$("#printMaxValue").text("MAX");
						$("#printMinValue").text("MIN");
						$('.introjs-nextbutton').show();
					});
				});
			}
			break;
			
		case "line4" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "In true part we have only one preprocessor command, here <span class='ct-code-b-yellow'>MIN</span> is defined with value <span class='ct-code-b-yellow'>20</span>.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line8" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 7) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing(".introjs-tooltiptext", "this is end of the <span class='ct-code-b-yellow'>#if</span> preprocessor command.", 10, "",function() {
						$('.introjs-nextbutton').show();
					});
				});
				
			} else if (intro._currentStep == 17) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing(".introjs-tooltiptext", "this is end of the <span class='ct-code-b-yellow'>#if</span> preprocessor command.", 10, "",function() {
						$('.introjs-nextbutton').show();
					});
				});
			}
			break;
			
		case "line9" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>main()</span> is the operating system call.<ul><li><span class='ct-code-b-yellow'>main()</span> is execution starting point for any c program.</li></ul>", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line10" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>printf()</span> is a library function, used to display the message specified with in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "totalElse" :
		$('.introjs-nextbutton').hide();
		$('.introjs-helperLayer ').one('transitionend', function() {
			typing(".introjs-tooltiptext", "In the else part we have two preprocessor commands. The MAX value is defined with value <span class='ct-code-b-yellow'>100</span> and MIN is defined with value <span class='ct-code-b-yellow'>200</span>.", 10, "",function() {
				$('.introjs-nextbutton').show();
			});
		});
		break;
			
		case "maxValue" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				t1.to("#maxValue", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
					$("#maxValue").text("10");
				}});
				
				t1.to("#maxValue", 0.5, {opacity:1, rotationX: 0});
					
				typing(".introjs-tooltiptext", "main() is the operating system call.<ul><li>main is execution starting point for any c programs</li></ul>", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "printMaxValue" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 8) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					t1.to("#printMaxValue", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#printMaxValue").text("10");
					}});
					
					t1.to("#printMaxValue", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						intro.nextStep();
					}});
				});
				
			} else if (intro._currentStep == 18) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					t1.to("#printMaxValue", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#printMaxValue").text("100");
					}});
					
					t1.to("#printMaxValue", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						intro.nextStep();
					}});
				});
			}
			break;
		
		case "printMinValue" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 9) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					t1.to("#printMinValue", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#printMinValue").text("20");
					}});
					
					t1.to("#printMinValue", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						intro.nextStep();
					}});
				});
			} else if (intro._currentStep == 19) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					t1.to("#printMinValue", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#printMinValue").text("200");
					}});
					
					t1.to("#printMinValue", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						intro.nextStep();
					}});
				});
			}
			break;
		
		case "consoleId" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 12) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#consoleId").removeClass("opacity00");
					typing("#typeChar", "max and min values are: <span class='ct-code-b-green'>10</span>, <span class='ct-code-b-green'>20</span>.", 10, "",function() {
						setTimeout(function() {
							intro.nextStep();	
						}, 1000);
					});
				});
			} else if(intro._currentStep == 22) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing("#typeChar1", "max and min values are: <span class='ct-code-b-green'>100</span>, <span class='ct-code-b-green'>200</span>.", 10, "",function() {
						setTimeout(function() {
							intro.nextStep();	
						}, 1000);
					});
				});
			}
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
	
	typing(".introjs-tooltiptext", "Let us learn execution of sample program on <span class='ct-code-b-yellow'>#if #else</span>.", 10, "",function() {
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
