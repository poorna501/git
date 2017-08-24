<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>function-example</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<style type="text/css">
.margin-top-20 {
	margin-top: 20px;
}

.creampretab {
	-moz-tab-size: 3;
	background-color: #f5f5f5;
	border: 1px solid #ccc;
	border-radius: 4px;
	color: #333;
	display: block;
	font-size: 12px;
	line-height: 1.42857;
	margin-bottom: 0;
	padding: 7px;
	border: 1px solid gray;
	border-radius: 6px;
}

#outputDiv {
	margin-top: 18px;
	padding: 0;
	z-index: 9999999;
}

.output-console-title-bar {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.output-console-body {
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
	font-size: 13px;
	height: 200px;
	padding: 10px;
	white-space: inherit;
}

[contenteditable=true] {
	outline: none;
	font-family: monospace;
}

.errMsg {
	color: red;
	font-weight: bold;
	font-family: monospace;
}

.input-val {
	background-color: black;
    border: 1px solid black;
    text-align: center;
    width: 25px;
}

.val-color {
	color: #0f0;
}

.display-inline-block {
	display: inline-block;
}

.user-btn {
	background-color: green;
}

.relative {
	position: relative;
}
</style>
</head>
<body>
<script type="text/javascript">
var putElement;
var introjs;
var timelineLite = new TimelineLite();	
var typingSpeed = 5;

$(document).ready(function() {
	introGuide();
	 $("[contenteditable=true]").on("click keydown keyup", function(e) {
		$(".errMsg").remove();
		if ($(this).text() == "") {
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
		
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
	 	if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		if ($(this).text().length > max) {
			$(".introjs-tooltiptext").append("<div class='errMsg'>Max Length 2 digits only.</div>")
			e.preventDefault();
		}
		if((e.keyCode >= 65 && e.keyCode <= 90)){
			return;
		}
	});
	 $("#restart").click(function(){
		 location.reload();
	});
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [{
			 		element : "#demoTitle",
					intro : "",
					position : "right"
				},{
			 		element : "#leftDiv",
					intro : "",
					position : "right"
				},{
			 		element : "#funDec",
					intro : "",
					position : "right"
				},{
			 		element : "#main",
					intro : "",
					position : "right"
				},{
			 		element : "#varDec",
					intro : "",
					position : "right"
				},{
			 		element : "#sum",
					intro : "",
					tooltipClass : "hide"
				},{
			 		element : "#callingFun",
					intro : "",
					position : "right"
				},{
			 		element : "#funDef",
					intro : "",
					position : "right"
				},{
			 		element : "#return",
					intro : "",
					position : "right"
				},{
			 		element : "#callingFun",
					intro : "",
					position : "right"
				},{
			 		element : "#printf",
					intro : "",
					tooltipClass : "hide"
				},{
			 		element : "#outputDiv",
					intro : "",
					tooltipClass : "hide"
				},{
			 		element : "#restart",
					intro : "",
					position : "right"
				}
			]});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "demoTitle":
			$('.introjs-nextbutton').hide();
			$('#code').removeClass("opacity00");
			var text = "In this live demo we will going to learn <b class ='ct-code-b-yellow'> Function Declaration</b>"
				+ ", how to <b class ='ct-code-b-yellow'> Call a Function</b> and <b class ='ct-code-b-yellow'> Function Definition</b>.";
			typing($(".introjs-tooltiptext"), text, function() {
				$(".introjs-nextbutton").show();
			});
		break;
		case "leftDiv":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#leftDiv').removeClass("opacity00");
				var text = "Let's consider a sample 'C' program to demonstrate <b class ='ct-code-b-yellow'>  Function Definition</b>"
					+ ", <b class ='ct-code-b-yellow'> Function Declaration</b> and <b class ='ct-code-b-yellow'>Calling a Function</b>.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "funDec":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the <b class ='ct-code-b-yellow'> Function Declaration</b>."
							+ " It specifies that user creates a new user define function with name <b class ='ct-code-b-yellow'>addition</b>"
							+ " of two integer arguments with the return type of integer.";
					typing($(".introjs-tooltiptext"), text, function() {
						$(".introjs-nextbutton").show();
					});
				});
		break;
		case "main":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>main():</b><br>Every 'C' program must have one main() function.<br>"
					+ "Operating System calls the main(), which is the starting point of the execution.";
				typing($(".introjs-tooltiptext"), text, function() {
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "varDec":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here you can change the values of <b class ='ct-code-b-yellow'>a, b</b>.";
				typing($(".introjs-tooltiptext"), text, function() {
					charAtEnd("aVal");
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "sum":
				$('.introjs-nextbutton').hide();
				$('.introjs-prevbutton').hide();
				introjs.refresh();
				$(".introjs-helperLayer").one("transitionend", function() {
					setTimeout(function() {
						introjs.nextStep()
					}, 1000);
				});
		break;
		case "callingFun":
			if (introjs._currentStep == 6){
				$('.introjs-nextbutton').hide();
				$('.introjs-prevbutton').hide();
				introjs.refresh();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is <b class ='ct-code-b-yellow'>Calling Function</b>. Immediately the control goes to called function i.e "
							+ "<b class ='ct-code-b-yellow'> Function Definition</b>";
					typing($(".introjs-tooltiptext"), text, function() {
						introjs.refresh();
						$(".introjs-nextbutton").show();
					});
				});
			}else if (introjs._currentStep == 9) {
				$('.introjs-nextbutton').hide();
				$('.introjs-prevbutton').hide();
				introjs.refresh();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "The return value stored into sum.";
					typing($(".introjs-tooltiptext"), text, function() {
						$(".introjs-nextbutton").show();
					});
				});
			}
		break;
		case "funDef":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "This is <b class ='ct-code-b-yellow'> Function Definition</b>."
					+ " Whenever a function call is made the argument values are passed to the called function i.e "
					+ " values of <b class ='ct-code-b-yellow'>a</b> and <b class ='ct-code-b-yellow'>b</b> are copied"
					+ " into corresponding values of <b class ='ct-code-b-yellow'>x</b> and <b class ='ct-code-b-yellow'>y</b>.";
				typing($(".introjs-tooltiptext"), text, function() {
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "return":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "This function return type integer so return integer value.<br>"
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					$(".introjs-tooltiptext ul li:last-child").append("<b class ='ct-code-b-yellow'>"
							+ " <div id='rtn' class='display-inline-block relative'>return"
							+ "(<div id='xyVal' class='display-inline-block relative'>"
							+ " <div id='xVal' class='display-inline-block relative'> x </div>" 
							+ " + "
							+ " <div id='yVal' class='display-inline-block relative'>y</div></div>)</div></b>");
					var l1 = $("#rtn").offset();
					var l2 = $("#return").offset();
					var topLength = l2.top - l1.top;
					var leftLength = l2.left - l1.left;
					TweenMax.from("#rtn", 1, {top : topLength, left : leftLength, onComplete:function() {
						TweenMax.to("#xVal", 0.5, {rotationX : -90, onComplete:function() {
							$("#xVal").text($("#aVal").text());
							TweenMax.to("#xVal", 0.5, {rotationX : 0, onComplete:function() {
								TweenMax.to("#yVal", 0.5, {rotationX : -90, onComplete:function() {
									$("#yVal").text($("#bVal").text());
									TweenMax.to("#yVal", 0.5, {rotationX : 0, onComplete:function() {
										TweenMax.to("#xyVal", 0.5, {rotationX : -90, onComplete:function() {
											$("#xyVal").text(parseInt($("#aVal").text()) + parseInt($("#bVal").text()));
											TweenMax.to("#xyVal", 0.5, {rotationX : 0, onComplete:function() {
												introjs.refresh();
												$(".introjs-nextbutton").show();
											}});
										}});
									}});
								}});
							}});
						}});
					}});
				});
			});
		break;
		case "printf":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function() {
					introjs.nextStep()
				}, 1000);
			});
	break;
		case "outputDiv":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$("#outputDiv").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "The sum of  a + b is : " + "<b class='val-color'> " + (parseInt($("#aVal").text()) + parseInt($("#bVal").text()))+"</b>";
				$("#outputBody").append("<div></div>");
				typing($("#outputBody > div:last-child"), text, function() {
					$("#outputBody > div:last-child").append("<span id='intVal1'><input id='inputVal1' maxlength='2' class='input-val' tabindex='0'/></span>");
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				});
			});
		break;
		case "restart":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$('#restart').removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Click restart to see again.";
				typing($(".introjs-tooltiptext"), text, function() {
				});
			});
		break;
		}
	});
	
	introjs.start();
	$('.introjs-nextbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();
}

function typing(selector, text, callBackFunction) {
	$(selector).typewriting(text, {
		"typing_interval" : typingSpeed,
		"cursor_color" : 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 1, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}

function charAtEnd(elementId) {
	var element = document.getElementById(elementId);
	element.focus();
	var range = document.createRange();
	range.selectNodeContents(element);
	range.collapse(false);
	var sel = window.getSelection();
	sel.removeAllRanges();
	sel.addRange(range);
}

</script>
<div class='text-center margin-top-20'>
		<h4 class='label ct-demo-heading' id='demoTitle'>Functions</h4>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-offset-1 col-xs-5 margin-top-20">
			<div id="leftDiv" class="opacity00">
			<pre class="creampretab" id="code">#include&lt;stdio.h&gt;
<span id="funDec">int addition(int, int);</span>
<span id="main">main()</span> {
	<span id="varDec">int a = <span contenteditable='true' maxlength='1' id='aVal' spellcheck="false">5</span>, b = <span contenteditable='true' maxlength='1' id='bVal' spellcheck="false">10</span>, sum;</span>
	<span id="sum">sum = <span id="callingFun">addition(a, b);</span></span>
	<span id="printf">printf("The sum of a + b is : %d", sum);</span>
}

<span id="funDef">int addition(int x, int y) {
	<span id="return">return (x + y);</span>
}</span>
				</pre>
			</div>
		</div>
		<div class="col-xs-5">
			<div id="outputDiv" class="opacity00">
				<div class="output-console-title-bar">
					<span class="title">Output</span>
				</div>
				<div class="output-console-body" id="outputBody"></div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 text-center margin-top-20">
		<span class="btn btn-warning btn-sm opacity00" id="restart">Restart</span>
	</div>
</body>
</html>