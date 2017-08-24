
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/animate.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>

<style type="text/css">
.introjs-tooltip-custom-width {
	min-width: -moz-fit-content;
	width: intrinsic; /* Safari/WebKit uses a non-standard name */
	width: -moz-max-content; /* Firefox/Gecko */
	width: -webkit-max-content;
}

.allowNumbers {
	outline: none;
}

body {
	-moz-tab-size: 4;
}

#outputDiv {
	position: relative;
	z-index: 1000000;
}

.output-console-title-bar {
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	font-size: 0.75em;
	margin-top: 14px;
}

.output-console-body {
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	height: 200PX;
	margin-bottom: 14px;
	padding: 10px;
	font-weight: bold;
}

.title {
	font-size: 12px;
}

.creamePreTab4 {
	background-color: #fffae6;
	margin-top: 12px;
	white-space: pre;
}

.opacity00 {
	opacity: 0;
	pointer-events: none;
	cursor: default;
}

.initializeBtn, .evaluateBtn, .continueBtn, .animateBtn {
	background-color: green !important;
}

.FinishBtn {
	margin-right: 15px !important;
	background-color: orange !important;
}

.errorText {
	color: red;
	font-weight: bold;
}

#conditionTest {
	position: absolute;
	font-family: monospace;
}

.flip-back, .flip-front {
	position: absolute;
	top: 0;
}

.flip-front, .flip-back {
	backface-visibility: hidden;
	transition: transform 1s ease 0s;
}

.flip-back {
	transform: rotateX(-180deg);
}

.flipped .flip-front {
	transform: rotateX(-180deg);
}

.flipped .flip-back {
	transform: rotateX(0deg);
}

.color-red {
	color: red;
}

.distinction_marks {
	position: absolute;
}

#citizenSpan {
	position: relative;
	left: 30px;
}
</style>

<script type="text/javascript">
var marks;
var distinction_marks = 75;
var typingSpeed = 40;
	function charAtEnd(elementId) {
		$('#' + elementId).select();
		var element = document.getElementById(elementId);
		element.focus();
		var range = document.createRange();
		range.selectNodeContents(element);
		range.collapse(false);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
	}
	
	function flipEffect() {
		$(".animateBtn").remove();
		$('#conditionTest').html("<b><span><span class='marks'><span class='flip-front'>marks</span><span class='flip-back'>" + marks + "</span></span></span>" +
				" <span id='citizenSpan'> <span>></span> <span class='distinction_marks'><span class='flip-front'>distinction_marks</span><span class='flip-back'>" + distinction_marks + "</span></span></span></b>");
		var l1 = $('#condition').offset();
		var l2 = $('#conditionTest').offset();
		var topLength = l1.top - l2.top;
		TweenMax.from('#conditionTest', 2, {top:"+=" + topLength, onComplete: function() {
			$('#conditionTest').css({'top': '', 'left': ''});
			$('.marks').addClass("flipped").one("transitionend", function() {
				$('.distinction_marks').addClass("flipped").one("transitionend", function() {
					if (marks > distinction_marks) {
						typing('#conditionTyping', 'evaluates to <b class=ct-code-b-yellow>true</b>.', function() {
							$(".evaluateBtn").removeClass("hidden");
						});
					} else {
						typing('#conditionTyping', 'evaluates to <b class=color-red>false</b>.', function() {
							$(".evaluateBtn").removeClass("hidden");
						});
					}
				});
				if ($('#initializationValue').text().length == 1) {
					$('#citizenSpan').css("left" , "18px");
				} else if ($('#initializationValue').text().length == 2) {
					$('#citizenSpan').css("left" , "25px");
				}
			})
			
		}});
	}

function introJsGuide() {
	introjs = introJs();
	introjs.setOptions({
		steps : [ {
			element : '#ifElseBlock',
			intro : "This code demonstrates the working of <b class='ct-code-b-yellow'>if-else</b> block.",
			position : 'bottom',
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : '#citizenAge',
			intro : "The variable <b class='ct-code-b-yellow'>distinction_marks</b> is initialized to " 
					+ "<b class='ct-code-b-yellow'>75</b>.",
			position : 'bottom',
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : '#initialization',
			intro : "The variable <b class='ct-code-b-yellow'>marks</b> is declared and initialized to " 
					+ "<b class='ct-code-b-yellow changeVal'>60</b>.<br/> You can also change the value " 
					+ "<b class='ct-code-b-yellow changeVal'>60</b> to any other number.</span><br><span class='errorText'>",
			position : 'bottom',
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : "#condition",
			intro : "<span class='opacity00 conditionTxt'>This is the <b class='ct-code-b-yellow'>condition</b> part. If the condition evaluates to " 
					+ "<b class='ct-code-b-yellow'>true</b>, the control enters into the " 
					+ "<b class='ct-code-b-yellow'>if</b> block, otherwise the control enters into the " 
					+ "<b class='ct-code-b-yellow'>else</b> block." 
					+ "</span><br><span id='conditionTest'></span><br><span id='conditionTyping'></span>",
			position: "bottom"
		}, {
			element : "#ifStmt",
			intro : "Since the condition evaluates to <b class='ct-code-b-yellow'>true</b>, the control enters " 
					+ "into the <b class='ct-code-b-yellow'>if</b> block.",
			position: "bottom"
		}, {
			element : "#outputDiv",
			tooltipClass : 'hide'
		}, {
			element : "#elseStmt",
			intro : "Since the condition evaluates to <b class='color-red'>false</b>, the control enters " 
					+ "into the <b class='ct-code-b-yellow'>else</b> block.",
			position: "bottom"
		}, {
			element : "#outputDiv",
			tooltipClass : 'hide'
		}, {
			element : '#mainEnd',
			intro : "",
			position : 'right'
		}, {
			element : "#restart",
			intro : "Click to restart.",
			position: "right",
		}]
	});
	introjs.setOption('showStepNumbers', false);
	introjs.setOption('exitOnOverlayClick', false);
	introjs.setOption('exitOnEsc', false);
	introjs.setOption('keyboardNavigation', false);
	introjs.start();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();
	$(".introjs-tooltipbuttons").append("<a class='introjs-button initializeBtn hidden'>Next &#8594;</a>");
	$(".introjs-tooltipbuttons").append("<a class='introjs-button evaluateBtn hidden'>Next &#8594;</a>");
	$(".introjs-tooltipbuttons").append("<a class='introjs-button animateBtn hidden' onclick='flipEffect()'>Next &#8594;</a>");
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "initialization":
			$('.introjs-helperLayer').one('transitionend', function () {
				$("#initializationValue").attr('contenteditable', true);
				charAtEnd("initializationValue");
				$('.introjs-nextbutton').addClass("opacity00");
				$('.initializeBtn').removeClass("hidden");
			});
			break;
		
		case "condition":
			$('.introjs-helperLayer').one('transitionend', function () {
				
				var text = $(".conditionTxt").removeClass("opacity00").html();
				typing(".conditionTxt", text, function() {
					$(".animateBtn").removeClass("hidden");
				});
			});
			break;
			
		case "ifStmt":
			$('.introjs-helperLayer').one('transitionend', function () {
				$('#output').append("<div class='opacity00'>User got distinction.</div>");
			});
			break;
			
		case "elseStmt":
			$('.introjs-helperLayer').one('transitionend', function () {
				$('#output').append("<div class='opacity00'>User did not get distinction.</div>");
			});
			break;
			
		case "outputDiv":
			$('.introjs-helperLayer').one('transitionend', function () {
				$('#output > div').fadeTo(200, 1, function () {
					setTimeout(function() {
						introjs.goToStep(9);
					}, 1000);
				});
			});
			break;
			
		case "mainEnd":
			
			$(".introjs-nextbutton").addClass("opacity00");
			$('.introjs-helperLayer').one('transitionend', function () {
				var text = "The control exits the main method.";
				
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").removeClass("opacity00");		
				});
				
			});
			break;
		
		case "restart":
			$('.introjs-tooltipbuttons').addClass("hide");
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#restart").fadeTo(1000, 1);
				$("#restart").removeClass("opacity00");
			});
			break;
		}
	});
}

$(document).ready(function() {
	introJsGuide();
	$('.evaluateBtn').click(function() {
		$(this).addClass('hidden');
		if (marks > distinction_marks) {
			introjs.goToStep(5);
		} else {
			introjs.goToStep(7);
		}
	});
	
	$('.initializeBtn').click(function() {
		marks = $('#initializationValue').text();
		$(this).addClass('hidden');
		introjs.nextStep();
		$('.introjs-nextbutton').addClass("opacity00");
		$("#initializationValue").removeAttr("contenteditable");
	});
	
	$('#restart').click(function() {
		location.reload();
	});
	
	$(".allowNumbers").keydown(function(e) { // conditions to enter text
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			
			e.preventDefault();
		}
		
		if ($(this).text().length > max) {
			e.preventDefault();
		}
	});
	
	document.getElementById("initializationValue").addEventListener("input", function() {
		introjs.refresh();
		$('.changeVal').text($(this).text());
		if ($('#initializationValue').text().length > 0) {
			$(".initializeBtn").removeClass("opacity00");
			$('.errorText').empty();
		} else {
			$('.errorText').html("Please enter a value for marks.");
			charAtEnd("initializationValue");
			$(".initializeBtn").addClass("opacity00");
		}
		
		
	});
	
	$("body").keydown(function(e){
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
	
	$("#initialization").click(function() {
		$("#initializationValue").focus();
	});
	
});


function typing(id, text, callBackFunction) {
	$(id).typewriting(text, {
		"typing_interval" : typingSpeed,
		"cursor_color" : 'white',
	}, function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

</script>
</head>
<body>
	<div class="col-xs-12">
		<div class="text-center">
			<h4>
				<span class="label ct-demo-heading">if-else in Action</span>
			</h4>
		</div>
		<div class="col-xs-8">
			<div>
				<pre class="creamePreTab4">#include &lt;stdio.h&gt;<br>int main() {
	<span id='citizenAge'>int distinction_marks = 75;</span>
	<span id='initialization'>int marks = <span id='initializationValue' class='allowNumbers'  maxlength="2" contenteditable=false placeholder=" ">60</span>;</span>
	<span id='ifElseBlock'>if (<span id='condition'>marks > distinction_marks</span>) {
		<span id='ifStmt'>printf("User got distinction.");</span>
	} else {
		<span id='elseStmt'>printf("User did not get distinction.");</span>
	}</span>
<span id='mainEnd'>}</span>
</pre>
			</div>
		</div>
		<div class="col-xs-4" id="outputDiv">
			<div class="output-console-title-bar">
				<span class="title">Output</span>
			</div>
			<div class="output-console-body"><span id="output"></span>
			</div>
		</div>
	</div><br>
	<div class="text-center col-xs-12">
		<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
	</div>
</body>
</html>
