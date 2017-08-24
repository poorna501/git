
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>continue</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<style type="text/css">
body {
	-moz-tab-size: 4;
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
    height: 182px;
    margin-bottom: 14px;
    padding: 10px;
    font-weight: bold;
}

#outputDiv {
	position: relative;
	z-index: 1000000;
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

.flip-area {
	position: absolute;
	font-family: monospace;
}

.display-inline-block {
	display: inline-block;
}

.color-red {
	color: red;
}

.allowNumbers {
    outline: none;
}

.errorText {
	color: red;
	font-weight: bold;
}

.flip-animation-btn {
	background-color: green !important;
}
</style>
<script type="text/javascript">
var introjs;
var iVal = 1;
var typingSpeed = 70;

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

function TweenMaxEffect(elmt1, elmt2, duration, callback) {
	var l1 = $(elmt1).offset();
	var l2 = $(elmt2).offset();
	var topLength = l2.top-l1.top;
	var leftLength = l2.left-l1.left;
	TweenMax.from($(elmt1), 0.5, {top:"+=" + topLength, left: "+=" + leftLength, onComplete : function () {
		$(elmt1).css({'top': '', 'left': ''});
		callback();
	}});
}

function flipIfCondition() {
	$(".introjs-tooltiptext").append("<span class='flip-area'></span><br/><span class='typing-area'></span>");
	
	$('.flip-area').html("<div id='numArrOfiBy2' class='display-inline-block'>i % 2</div> == " 
						+ "<div id='zero' class='display-inline-block'>0</div>");
		TweenMaxEffect(".flip-area", "#ifCondition", 0.5, function() {
			TweenMax.to( $('#numArrOfiBy2'), 0.8, {rotationX:90, onComplete:function() {
				  $('#numArrOfiBy2').text(iVal % 2);
				  TweenMax.to( $('#numArrOfiBy2'), 0.8, {rotationX : 0, onComplete: function() {
				      $('#numArrOfiBy2').css('transform', '');
				      if (iVal % 2 == 0) {
							var newStep = {
								element : "#continueStmt",
								intro : "",
								position : "right"
							};
							introjs.insertOption(introjs._currentStep + 1, newStep);
							typing(".typing-area", "evaluates to <b class='ct-code-b-yellow'>true</b>.");
						} else {
							typing(".typing-area", "evaluates to <b class='color-red'>false</b>.");
						}
				  }});
				}});
		});
}



function flipForCondition() {
	$(".introjs-tooltiptext").append("<span class='flip-area'></span><br/><span class='typing-area'></span>");
	
	$('.flip-area').html("<div id='i' class='display-inline-block'>i</div> < " 
						+ "<div id='numLength' class='display-inline-block'>10</div>");
	TweenMaxEffect(".flip-area", "#condition", 0.5, function() {
		TweenMax.to( $('#i'), 0.8, {rotationX:90, onComplete:function() {
			  $('#i').text(iVal);
			  TweenMax.to( $('#i'), 0.8 , {rotationX : 0, onComplete: function() {
			      $('#i').css('transform', '');
					      $('#numLength').css('transform', '');
					      if (iVal < 10) {
								var newStep1 = {
										element : "#ifBlk",
										tooltipClass : "hide"
								}
								introjs.insertOption(introjs._currentStep + 1, newStep1);
								var newStep2 = {
										element : "#sop",
										intro : "This statement print the value of <b class='ct-code-b-yellow'>i</b>.",
										position : "bottom"
								}
								introjs.insertOption(introjs._currentStep + 2, newStep2);
								
								var newStep3 = {
										element : "#outputDiv",
										tooltipClass : "hide"
								}
								introjs.insertOption(introjs._currentStep + 3, newStep3);
								typing('.typing-area', "evaluates to <b class='ct-code-b-yellow'>true</b>.");
							} else {
								
								var newStep = {
										element : "#mainEnd",
										intro : "",
										position : "right"
									};
								introjs.insertOption(introjs._currentStep + 1, newStep);
								
								var newStep5 = {
										element : "#restart",
										intro : "Click to restart.",
										position : "right"
								}
								introjs.insertOption(introjs._currentStep + 2, newStep5);
								
								typing('.typing-area', "evaluates to <b class='color-red'>false</b>.");
							}
					  }});
					}});
	});
}

	function typing(id, content, callBackFunction) {
		$('.introjs-nextbutton').addClass('opacity00');
		$(id).typewriting( content , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function () {
			$(".introjs-nextbutton").removeClass("opacity00 introjs-disabled");	
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
		
function introJsGuide() {
	introjs = introJs();
	introjs.setOptions({
		steps : [ {
			element : "#continueLoop",
			intro : "The above example demonstrate the working of <b class='ct-code-b-yellow'>continue</b> " 
					+ "statements.",
			position : "bottom"
		}, {
			element : "#initialization",
			intro : "The local variable <b class='ct-code-b-yellow'>i</b> is initialized to " 
					+ "<b class='changeVal ct-code-b-yellow'>1</b>. We can also change value " 
					+ "<b class='changeVal ct-code-b-yellow'>1</b> to any number.<br/><span class='errorText'>",
			position : "bottom"
		}, {
			element : "#condition",
			intro : "",
			position : "bottom"
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
	
	$(".introjs-tooltipbuttons").append("<a class='introjs-button flip-animation-btn hidden'>Next &#8594;</a>");
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "initialization":
			$('.introjs-helperLayer').one('transitionend', function () {
				$('#initializationValue').attr('contenteditable', true);
				charAtEnd("initializationValue");
			});
			break;
		case "condition":
			$('.introjs-nextbutton').addClass('opacity00');
			$('.introjs-helperLayer').one('transitionend', function () {
				$('#initializationValue').attr('contenteditable', false);
				
				if (introjs._currentStep == 2) {
					var text = "This is the <b class='ct-code-b-yellow'>condition</b> part. If the condition evaluates " 
						+ " to <b class='ct-code-b-yellow'>true</b>, the control enters into the " 
						+ "<b class='ct-code-b-yellow'>for-loop</b> body." 
						+ "<br/><span class='errorText'></span>";
			
					typing(".introjs-tooltiptext", text, function() {
						$(".flip-animation-btn").removeClass("hidden");
						$(".introjs-nextbutton").addClass("opacity00");
					});
				} else {
					flipForCondition();
				}
			});
			break;
			
		case "ifBlk":
			$('.introjs-nextbutton').addClass('opacity00');
			var newStep5 = {
					element : "#ifCondition",
					intro : "",
					position : "bottom"
			}
			introjs.insertOption(introjs._currentStep + 1, newStep5);
			$('.introjs-helperLayer').one('transitionend', function () {
				setTimeout(function() {
					introjs.nextStep();
				}, 1000);
			});
			break;
		
		case "ifCondition":
			$('.introjs-nextbutton').addClass('opacity00');
			$('.introjs-helperLayer').one('transitionend', function () {
				
				if (introjs._currentStep == 4) {
					var text = "This is the <b class='ct-code-b-yellow'>condition</b> part. If the condition evaluates " 
								+ " to <b class='ct-code-b-yellow'>true</b>, the control enters into " 
								+ "the <b class='ct-code-b-yellow'>if</b> body.</span><br/>";
					typing(".introjs-tooltiptext", text, function() {
						$(".flip-animation-btn").removeClass("hidden");
						$(".introjs-nextbutton").addClass("opacity00");
					});
				} else {
					flipIfCondition();
				}
				
			});
			break;
		case "continueStmt":
			$('.introjs-nextbutton').addClass('opacity00');
			$('.introjs-helperLayer').one('transitionend', function () {
				var newStep = {
						element : "#update",
						intro : "Now the control is transferred to the <b class='ct-code-b-yellow'>update</b> section." 
								+ "<br/><br/>Here <b class='ct-code-b-yellow'>i</b> value is incremented by " 
								+ "<b class='ct-code-b-yellow'>1</b>.</span><br/>" 
								+ "Now <b class='ct-code-b-yellow'>i</b> value is<b class='ct-code-b-yellow'> " + (iVal + 1) +"</b>.",
						position : "bottom"
					};
					introjs.insertOption(introjs._currentStep + 1, newStep);
					
					
					var text = "The <b class='ct-code-b-yellow'>continue;</b> statement transfers control to the " 
								+ "<b class='ct-code-b-yellow'>update</b> section of <b class='ct-code-b-yellow'>for-loop</b>.";
					typing(".introjs-tooltiptext", text);
					
			});
			break;
			
		case "sop": 
			$('.introjs-nextbutton').addClass('opacity00');
			$('.introjs-helperLayer').one('transitionend', function () {
				$('#output').append("<div class='opacity00'> i :" + iVal + "</div>");
				setTimeout(function() {
					introjs.nextStep();
				}, 1000);
			});
			break;
			
		case "outputDiv":
			$('.introjs-helperLayer').one('transitionend', function () {
				$("#output > div:last-child").fadeTo(200, 1 , function() {
					var newStep = {
							element : "#update",
							intro : "Now the control is transfered to the <b class='ct-code-b-yellow'>update</b> section. " 
									+ "<br/>Here <b class='ct-code-b-yellow'>i</b> value is incremented by " 
									+ "<b class='ct-code-b-yellow'>1</b>. <br/>" 
									+ "Now <b class='ct-code-b-yellow'>i</b> value is <b class='ct-code-b-yellow'> " 
									+ (iVal + 1) + "</b>",
							position : "bottom"
						};
					introjs.insertOption(introjs._currentStep + 1, newStep);
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				});
			});
			break;
			
		case "update":
			$('.introjs-nextbutton').removeClass('introjs-disabled');
			$('.introjs-helperLayer').one('transitionend', function () {
				iVal++;
				var newStep = {
					element : "#condition",
					intro : "",
					position : "bottom"
				};
				introjs.insertOption(introjs._currentStep + 1, newStep);
			});
			break;
			
		case "mainEnd" :
			$('.introjs-nextbutton').addClass("opacity00");
			$('.introjs-helperLayer').one('transitionend', function () {
				var text = "The control comes out of the <b class='ct-code-b-yellow'>for-loop</b> and the program terminates.";
				
				typing(".introjs-tooltiptext", text);
			});
			break;
		case "restart":
			$('.introjs-tooltipbuttons').hide();
			$('.introjs-helperLayer').one('transitionend', function () {
				$("#restart").fadeTo(1000, 1);
				$("#restart").removeClass("opacity00");
			});
			break;
		}
	});
}
$(document).ready(function() {
	introJsGuide();
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
	
	$("#initializationValue").keyup(function() {
    	introjs.refresh();
    	$('.changeVal').text($(this).text());
        if ($(this).text().length > 0) {
        	$('.errorText').empty();
        	$(".introjs-nextbutton").removeClass("opacity00");
        	iVal = parseInt($('#initializationValue').text());
        } else {
        	$(".introjs-nextbutton").addClass("opacity00");
        	$('.errorText').text("please enter a value");
        }
    });
	
	$('#restart').click(function() {
		location.reload();
	});
	
	$(".allowNumbers").parent().click(function() {
		$(".allowNumbers").focus();
	});
	
	$(".flip-animation-btn").click(function() {
		
		$(this).addClass("hidden");
		
		if($("#condition").hasClass("introjs-showElement")) {
			flipForCondition(); 
		} else if($("#ifCondition").hasClass("introjs-showElement")) {
			flipIfCondition();
		}
	});
	
});
</script>
</head>
<body>
	<div class='col-xs-12'>
		<div class="text-center">
			<h4>
				<span class="label ct-demo-heading">continue in Action</span>
			</h4>
		</div>
		<div class="col-xs-8">
			<div>
				<pre class="creamePreTab4">#include &lt;stdio.h&gt;
int main() {
	int i;
	<span id='continueLoop'>for (<span id='initialization'
					class="position-relative">i = <span
						id="initializationValue" class="allowNumbers position-relative"
						maxlength="1" contenteditable=false placeholder=" ">1</span>;</span> <span
					id='condition'>i < 10;</span> <span id='update'>i++</span>) {
		<span id='ifBlk'>if (<span id='ifCondition'>i % 2 == 0</span>) {
			<span id='continueStmt'>continue;</span>
		}</span>
		<span id='sop'>printf("i :%d",i);</span>
	}</span>
<span id='mainEnd'>}</span>
</pre></div>
		</div>
		<div class="col-xs-4" id="outputDiv">
			<div class="output-console-title-bar">
				<span class="title">Output</span>
			</div>
			<div class="output-console-body"><span id="output"></span>
			</div>
		</div>
	</div>
	<div class="text-center col-xs-12">
		<a class="btn btn-warning opacity00" id="restart"><i
			class="fa fa-refresh"></i>&nbsp;Restart</a>
	</div>
</body>
</html>