<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>goto statement</title>
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
.margin-top {
	margin-top: 20px;
}

#totalDiv {
	border: 1px solid gray;
	border-radius: 8px;
	height: 240px;
	padding: 10px;
}

#code {
	border: 1px solid gray;
	border-radius: 8px;
	height: 255px;
	margin-top: 18px;
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
	margin: 0 0 10px;
	padding: 14px;
	word-break: break-all;
	word-wrap: break-word;
}

.color-red {
	color: red;
}

.errMsg {
	color: red;
	font-weight: bold;
	font-family: monospace;
}

[contenteditable=true] {
	outline: none;
	font-family: monospace;
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
	height: 230px;
	padding: 10px;
	white-space: inherit;
}

.input-char {
	background-color: #000;
	border: 1px solid black;
	border-radius: 4px;
	color: #0f0;
	width: 30px;
}

.char-color {
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

#forward, #backward {
	border: 1px solid gray;
	border-radius: 5px;
	height: 115px;
}

.background-color-yellow {
	background-color: yellow;
}

.background-color-red {
	background-color: red;
}

.margin-left {
	margin-left: 367px;
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
		if((e.keyCode >= 65 && e.keyCode <= 90)){
			return;
		}
	 	if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		if ($(this).text().length > maxlength) {
			$(".introjs-tooltiptext").append("<div class='errMsg'>One Character only.</div>")
			e.preventDefault();
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
			 		element : "#totalDiv",
					intro : "",
					tooltipClass : "hide"
				},{
				 	element : "#forwardGotoLabel",
					intro : "",
					position : "left"
				},{
				 	element : "#forwardLabel",
					intro : "",
					position : "left"
				},{
				 	element : "#backwardLabel",
					intro : "",
					position : "right"
				},{
				 	element : "#backwardGotoLabel",
					intro : "",
					position : "right"
				},{
			 		element : "#totalDiv",
					intro : "",
					tooltipClass : "hide"
				},{
				 	element : "#code",
					intro : "",
					position : "right"
				},{
				 	element : "#main",
					intro : "",
					position : "right"
				},{
				 	element : "#char",
					intro : "",
					position : "right"
				},{
				 	element : "#label",
					intro : "",
					tooltipClass : "hide"
				},{
				 	element : "#printf1",
					intro : "",
					position : "right"
				},{
					element : "#outputDiv",
					intro : "",
					position : "top",
					action : "printf1"
			   },{
				 	element : "#printf2",
					intro : "",
					tooltipClass : "hide"
				},{
					element : "#outputDiv",
					intro : "",
					position : "top"
			   },{
					element : "#ifCondition",
					intro : "",
					position : "top"
			   } ,{
				 	element : "#restart",
					intro : "",
					position : "right"
				}
			]});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "totalDiv":
			if (introjs._currentStep == 0){
				$('.introjs-nextbutton').hide();
				$("#totalDiv").css({"height" : $("#totalDiv").outerHeight()});
				var text = $("#typingDiv1").html();
				typing("#typingDiv1", text, function() {
					$("#exp1").removeClass("opacity00");
					$("#exp2").removeClass("opacity00");
					setTimeout(function(){
						introjs.nextStep();
					}, 1000);
				});
			} else if (introjs._currentStep == 5) {
				$(".background-color-red").removeClass("background-color-red");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#typingDiv2").removeClass("opacity00");
					var text = $("#typingDiv2").html();
					typing("#typingDiv2", text, function() {
						setTimeout(function(){
							introjs.nextStep();
						}, 1000);
					});
				});
			}
		break;
		case "forwardGotoLabel":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "In <b class='ct-code-b-yellow'>forward goto</b> first the <b>goto</b> statement will execute.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "forwardLabel":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "And immediately the control comes to <b>Label</b>.<br>"
					+ "<b class ='color-red'>Disadvantage:</b><br> In <b class='ct-code-b-yellow'>forward goto</b>"
					+ " every time the code skipped which is in between <br><b>goto Label</b> and <b>Label</b>.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					$("#forwardCode").addClass("background-color-red");
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "backwardLabel":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".background-color-red").removeClass("background-color-red");
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "In <b class='ct-code-b-yellow'>backward goto</b> first the <b>Label</b> will execute."
					+ " And the remaining code will execute from top to bottom.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case "backwardGotoLabel":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "Whenever the <b>goto Label</b> executed immediately the control goes to <b>Label</b> again.<br>"
					+ " <b class ='color-red'>Disadvantage:</b><br> In <b class='ct-code-b-yellow'>backward goto</b>"
					+ " the statements in between <b>label</b> and <b>goto Label</b> will be executed infinite time.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					$("#backwardCode").addClass("background-color-red");
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "code":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$("#code").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "This sample '<b class='ct-code-b-yellow'>C</b>' program  will show how <b class='ct-code-b-yellow'>goto</b> work.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "main":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "<b class ='ct-code-b-yellow'>main():</b><br>Every 'C' program must have one main() function.<br>"
					+ "Operating System calls the main(), which is the starting point of the execution";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "char":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "Declaring a chararacter variable ch.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "label":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function() {
					introjs.nextStep()
				}, 1000);
			});
		break;
		case "printf1":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "Enter a character to compare. And scanf read the given value.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					$('.introjs-nextbutton').show();
				});
			});
		break;
		case "outputDiv":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$("#outputDiv").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				if (introjs._introItems[introjs._currentStep].action == "printf1") {
					var text = "Enter a character : ";
					$("#body").append("<div></div>");
					typing($("#body > div:last-child"), text, function() {
						$("#body > div:last-child").append("<span id='charVal'><input id='inputChar' maxlength='1' class='input-char' tabindex='0'/></span>");
						charAtEnd("inputChar");
						$("#inputChar" ).keyup(function() {
							if ($("#inputChar").val().length == '') {
								$('.introjs-nextbutton').hide();
							} else {
								$('.introjs-nextbutton').show();
							}
						});
					});
				} else {
					$('.introjs-nextbutton').hide();
					$('.introjs-prevbutton').hide();
					introjs.refresh();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "The given character is : " + "<b class='char-color'> " + $("#inputChar").val()+"</b>";
						$("#body").append("<div></div>");
						typing($("#body > div:last-child"), text, function() {
							introjs.refresh();
							$('.introjs-nextbutton').show();
						});
					});
				}
			});
		break;
		case "printf2":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "The given character is : " + "<b class='char-color'>" +$("#inputChar").val()+"</b>";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				});
			});
		break;
		case "ifCondition":
			$('.introjs-nextbutton').hide(); 
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "Check the condition. If the condition is true goto executed. i.e"
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					$(".introjs-tooltiptext ul li:last-child").append(" <div id='cnd' class='display-inline-block relative ct-code-b-yellow'>"
							+ " if (<div id='chVal' class='display-inline-block relative'> ch </div> !=  '#')</div>"
							+ " <div id='cndtnExp1'></div>");
					var l1 = $("#cnd").offset();
					var l2 = $("#ifCnd").offset();
					var topLength = l2.top - l1.top;
					var leftLength = l2.left - l1.left;
					TweenMax.from("#cnd", 1, {top : topLength, left : leftLength, onComplete:function() {
						TweenMax.to("#chVal", 0.5, {rotationX : -90, onComplete:function() {
							$("#chVal").text($("#inputChar").val());
							TweenMax.to("#chVal", 0.5, {rotationX : 0, onComplete:function() {
								$("#inputChar").removeAttr("id");
								var text;
								if ("" + $("#chVal").text() != "#") {
									text = "is evaluates to true.";
									
									var newStep = {
										element : "#gotoL1",
										intro : "",
										position : "top"
									};
									introjs.insertOption(introjs._currentStep + 1, newStep);
									
							 		var newStep = {
										element : "#label",
										intro : "",
										tooltipClass : "hide"
									};
									introjs.insertOption(introjs._currentStep + 2, newStep);
									
									var newStep = {
										element : "#printf1",
										intro : "",
										position : "top"
									};
									introjs.insertOption(introjs._currentStep + 3, newStep);
									
									var newStep = {
										element : "#outputDiv",
										intro : "",
										position : "top",
										action : "printf1"
									};
									introjs.insertOption(introjs._currentStep + 4, newStep);
										
									var newStep = {
										element : "#printf2",
										intro : "",
										position : "top"
									};
									introjs.insertOption(introjs._currentStep + 5, newStep);
										
									var newStep = {
										element : "#outputDiv",
										intro : "",
										position : "top"
									};
									introjs.insertOption(introjs._currentStep + 6, newStep);
										
									var newStep = {
										element : "#ifCondition",
										intro : "",	
										position : "top"
									};
									introjs.insertOption(introjs._currentStep + 7, newStep);
												
								} else {
									text = "is evaluates to false.";
									var newStep = {
										element : "#restart",
										intro : "",
										position : "top"
									};
								}
								typing($("#cndtnExp1"), text, function() {
									$(".introjs-nextbutton").show();
								});
							}});
						}}); 
					}});
				});
			});
		break;
		case "gotoL1":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "The condition is true so the <b>goto</b> statement executed. The control goes to start again."
					+ " This process is contonues until the if-condition is false.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					$(".introjs-nextbutton").show();
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

function scrollToTop(containerId, divId, callBackFunction) {
	var container = $(containerId);
	scrollTo = $(divId);
	container.animate({
	    scrollTop: scrollTo.offset().top - container.offset().top  + container.scrollTop()
	  }, function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function scrollToBottom(containerId, divId, callBackFunction) {
	var container = $(containerId);
	scrollTo = $(divId);
	container.animate({
	   scrollTop: scrollTo.offset().top - container.offset().top  + container.scrollTop()
	}, function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

</script>
	<div class='text-center margin-top'>
		<h4 class='label ct-demo-heading' id='demoTitle'>goto statement</h4>
	</div>
	<div class="col-xs-offset-1 col-xs-10">
		<div id="totalDiv" class="margin-top">
			<div id="typingDiv1">
				<ul>
					<li>The <b>goto</b> construct causes an unconditional transfer
						of execution. We can write the <b>goto</b> in two ways i.e <b>forward
							goto</b> and <b>backward goto</b></li>
				</ul>
				<b class='color-red margin-left'>syntax of forward goto and
					backward goto:</b><br>
			</div>
			<div class='col-xs-offset-4 col-xs-2 opacity00' id="exp1">
				<div class="text-center">
					<b>forward</b>
					<div id='forward'>
						<pre class="pre2"><span id="forwardGotoLabel">goto Label;</span>
<span id="forwardCode">------
------</span>
<span id="forwardLabel">Label:</span>
--- -----
</pre>
					</div>
				</div>
			</div>
			<div class='col-xs-2 opacity00' id="exp2">
				<div class="text-center">
					<b>backward</b>
					<div id='backward'>
						<pre class="pre2"><span id="backwardLabel">Label:</span>
<span id="backwardCode">------
------</span>
<span id="backwardGotoLabel">goto Label;</span>
--- -----
</pre>
					</div>
				</div>
			</div>
			<div id="typingDiv2" class="col-xs-12 opacity00">
				<ul>
					<br>
					<li>The mentioned two disadvantages can be solved by using if-condition with goto.</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-offset-1 col-xs-5">
			<div id="code" class="opacity00">
				<pre class="creampretab"><span id="link">#include&lt;stdio.h&gt;</span>
<span id="main">main()</span>
{
 	<span id="char">char ch;</span>
 	<span id="label">start:</span>
		<span id="printf1">printf ("Enter a character : ");
		scanf ("%c", &ch);</span>
		<span id="printf2">printf ("The given character is :  %c \n" , ch);</span>
  		<span id="ifCondition"><span id="ifCnd">if (ch != '#')</span> {
			<span id="gotoL1">goto start;</span>
		}</span>
}
			</pre>
			</div>
		</div>
		<div class="col-xs-5">
			<div id="outputDiv" class="opacity00">
				<div class="output-console-title-bar">
					<span class="title">Output</span>
				</div>
				<div class="output-console-body" id="body"></div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 text-center margin-top">
		<span class="btn btn-warning btn-sm opacity00" id="restart">Restart</span>
	</div>
</body>
</html>