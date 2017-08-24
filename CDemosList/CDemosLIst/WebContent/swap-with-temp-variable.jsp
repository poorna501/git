<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Swapping two numbers using temp</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/animate.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<style type="text/css">
body {
	-moz-tab-size: 4;
	margin-top: 20px;
}

[contenteditable=true]:empty:before {
  content: attr(placeholder);
  color: #B8B8A0;
}

.opacity00 {
	opacity: 0;
	cursor: default;
	pointer-events: none;
}

.allowOnlyNumber {
	outline: none;
}

.position-relative {
	position: relative;
}

.position-absolute {
	position: absolute;
}

.bgcolor-cream {
	background-color: #ffffcc;
}

.focus {
	background-color: rgba(255, 255, 255, 0.9);
    border: 1px solid rgba(0, 0, 0, 0.5);
	border-radius: 50%;
	box-shadow: 0 2px 15px rgba(0, 0, 0, 0.4);
	padding: 5px;
	z-index: 9999999 !important;
}

.errorMsg {
	color: red;
	font-weight: bold;
}

.margin-bottom20 {
	margin-bottom: 20px;
}

.margin-top20 {
	margin-top: 20px;
}

#variblesPanel {
	height: 205px;
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
	margin-bottom: 14px;
    padding: 10px;
    font-weight: bold;
}

.title {
	font-size: 12px;
}

.panel {
	margin-bottom: 5px;
}

#tValuePanel, #aValuePanel, #bValuePanel {
	width: 23%;
	padding: 0;
} 
</style>
</head>

<body>
		<div class="text-center margin-bottom20">
			<h4>
				<span class="label label-default ct-demo-heading" id='swapDemo'>Swapping of two numbers</span>
			</h4>
		</div>
		<div class="col-xs-6 box-border" id="swapDemoDiv">
<pre class="bgcolor-cream" id="className">#include&lt;stdio.h&gt;

void <span id='main'>main()</span> {  
	<span id='methodBody'>	<span id='line1' class='position-absolute opacity00'>int num1 = <span class="allowOnlyNumber" id="aValue" contenteditable="true" maxlength="3">12</span>;</span>
		<span id='line2' class='position-absolute opacity00'>int num2 = <span class="allowOnlyNumber" id="bValue" contenteditable="true" maxlength="3">45</span>;</span>		
		<span id='lineTemp' class='opacity00'>int temp = num1;</span>
		<span id='wrongSolution' class='opacity00'><span id='line3'>num1 = num2;</span>
		<span id='line4'>num2 = num1;</span></span>
		<span id='line5' class='opacity00'>printf("After swaping : num1 = %d, num2 = %d", num1, num2);</span></span>
}
</pre>
		</div>
		<div class="col-xs-6 box-border outputDiv">
			<div>
				<div class="panel panel-default" id="variblesPanel">
					<div class="panel-heading">
						<h3 class="panel-title">Varibles</h3>
					</div>
					<div id="valuesSpan">
					<div class="panel-body valuesPanelClass" id="valuesPanel">
						<div class="col-xs-offset-1 col-xs-3 opacity00" id="tValuePanel">
							<div class="panel panel-info">
								<div class="panel-heading">
									<h4 class="panel-title text-center">temp</h4>
								</div>
								<div class="panel-body text-center">
									<span id="tValueInOutput" style="position: relative;">12</span>
								</div>
							</div>
						<div class='text-center' style="font-weight: bold;">2088</div>
						</div>
						<div class="col-xs-offset-1 col-xs-3 opacity00" id="aValuePanel">
							<div class="panel panel-info">
								<div class="panel-heading">
									<h4 class="panel-title text-center">num1</h4>
								</div>
								<div class="panel-body text-center">
									<span class="" id="aValueInOutput" style="position: relative;">12</span><span id="aValueInOutputWithBValue" style="position: relative;"></span>
								</div>
							</div>
							<div class='text-center' style="font-weight: bold;">2485</div>
						</div>
						<div class="col-xs-offset-1 col-xs-3 opacity00" id="bValuePanel">
							<div class="panel panel-info">
								<div class="panel-heading">
									<h4 class="panel-title text-center">num2</h4>
								</div>
								<div class="panel-body text-center">
									<span id="bValueInOutputWithAValue" style="position: relative;"></span><span id="bValueInOutput" style="position: relative;">45</span>
								</div>
							</div>
							<div class='text-center' style="font-weight: bold;">2086</div>
						</div>
					</div>
					</div>
				</div>
			</div>
			</div>

	<div class="col-xs-offset-4 col-xs-4" id="outputDiv">
		<div class="output-console-title-bar">
			<span class="title">Output</span>
		</div>
		<div class="output-console-body"><span id="output"></span>
		</div>
	</div>

	<br>
	<div class="text-center col-xs-12 margin-top20">
		<a class="btn btn-warning opacity00" id='restart'>Restart</a>
	</div>
	<script type="text/javascript">
	var typingSpeed = 40;
	var introjs;
	$(document).ready(function() {
		$(".allowOnlyNumber").keydown(function (e) {
			var max = $(this).attr("maxlength");
			
			// Allow: backspace, delete, tab, escape, enter and .
			if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode == 65 && ( e.ctrlKey === true || e.metaKey === true ) ) || (e.keyCode >= 35 && e.keyCode <= 40)) {
			// let it happen, don't do anything
				return;
			}
			// Ensure that it is a number and stop the keypress
			if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
				e.preventDefault();
			}
	        
			if ($(this).text().length > max) {
				$('.introjs-tooltiptext').append("<div class='errorMsg'>Max length restricted 4 digits only.</div>");
				e.preventDefault();
			} else {
				$(".errorMsg").remove();
			}
	    });
		
		$('#restart').click(function() {
			location.reload();
		});
		
	    introJsGuide();
	});
	
	function introJsGuide() {		 
		introjs = introJs();
		introjs.setOptions({
			steps : [{
				element : '#swapDemo',
				intro : "",
				position : 'right'
			}, {
			 	element : "#main",
				intro : "",
				position : "right"
			}, {
				element : '#line1',
				intro : "",
				position : 'bottom'
			}, {
				element : '#aValuePanel',
				intro : "",
				position : 'bottom'
			}, {
				element : '#line2',
				intro : "",
				position : 'bottom'
			}, {
				element : '#bValuePanel',
				intro : "",
				position : 'bottom'
			}, {
				element : '#wrongSolution',
				intro : "",
				position : 'bottom'
			}, {
				element : '#line3',
				intro : "",
				position : 'bottom'
			}, {
				element : '#valuesPanel',
				tooltipClass : 'hide'
			}, {
				element : '#line4',
				intro : "",
				position : 'bottom'
			}, {
				element : '#valuesPanel',
				intro : "",
				position : 'bottom'
			}, {
				element : '#wrongSolution',
				intro : "",
				position : 'bottom'
			}, {
				element : '#lineTemp',
				intro : "",
				position : 'bottom'
			}, {
				element : '#valuesPanel',
				tooltipClass : 'hide'
			}, {
				element : '#line3',
				intro : "",
				position : 'bottom'
			}, {
				element : '#valuesPanel',
				tooltipClass : 'hide'
			}, {
				element : '#line4',
				intro : "",
				position : 'bottom'
			}, {
				element : '#valuesPanel',
				intro : "",
				position : 'bottom'
			}, {
				element : '#line5',
				intro : "The above statement prints the values in variables <b class='ct-code-b-yellow'>num1</b> and <b class='ct-code-b-yellow'>num2</b> after swapping.",
				position : 'bottom'
			}, {
				element : '#outputDiv',
				tooltipClass : "hide"
			}, {
				element : '#restart',
				intro : "Click to restart.",
				position : 'right'
			}]
		});
		
		introjs.onafterchange(function(targetElement) {  
		    switch (targetElement.id) { 
		        case "swapDemo":
			    	var text = "Let us learn how to exchange values stored in two variables. " 
			    					+ "It is commanlly called <b class='ct-code-b-yellow'>swapping</b>.";
					typing('.introjs-tooltiptext', text);
			    	break;
			    	
		        case "main":
					$('.introjs-nextbutton').hide();
					$('.introjs-prevbutton').hide();
					introjs.refresh();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "<b class ='ct-code-b-yellow'>main():</b><br>Every 'C' program must have one main() function.<br>"
							+ "Operating System calls the main(), which is the starting point of the execution";
						typing($(".introjs-tooltiptext"), text, function() {
							$(".introjs-nextbutton").show();
						});
					});
					break;
			    	
		        case "line1":
			    	$('.introjs-nextbutton').addClass("opacity00");
			    	$('.introjs-helperLayer').one('transitionend', function () {
			    		var text = "Let us consider an <b class='ct-code-b-yellow'>int</b> variable <b class='ct-code-b-yellow'>num1</b> " 
			    						+ "with value <b class='changeVal ct-code-b-yellow'>12</b>.<br>" 
			    						+ "You can change the value of <b class='ct-code-b-yellow'>num1</b> to any other value.";
						typing(".introjs-tooltiptext", text, function() {
							$('#line1').removeClass("opacity00").addClass("position-absolute animated flipInX").one("animationend", function() {
								charAtEnd("aValue");
							});
						});
			    	});
			    	break;
			    	
		        case "aValuePanel":
		        	introjs._introItems[introjs._currentStep].intro = "The memory location refered by <b class='ct-code-b-yellow'>num1</b> is initialized with " 
								+ "the value <b class='ct-code-b-yellow'> " + $("#aValue").text() + "</b>."
					sendAValue();
		        	break;
		        	
				case "bValuePanel":
		        	introjs._introItems[introjs._currentStep].intro = "The memory location refered by <b class='ct-code-b-yellow'>num2</b> is initialized with " 
								+ "the value <b class='ct-code-b-yellow'> " + $("#bValue").text() + "</b>."
					sendBValue();
		        	break;
			    	
		    	case "line2":
					$('.introjs-nextbutton').addClass("opacity00");
					$('.introjs-helperLayer').one('transitionend', function () {
			    		var text = "Let us consider an <b class='ct-code-b-yellow'>int</b> variable <b class='ct-code-b-yellow'>num2</b> " 
			    					+ "with value <b class='changeVal ct-code-b-yellow'>45</b>.<br>You can change "
			    					+ "the value of <b class='ct-code-b-yellow'>num2</b> to any other value.";
						typing(".introjs-tooltiptext", text, function() {
							$('#line2').removeClass("opacity00").addClass("position-absolute animated flipInX").one("animationend", function() {
								charAtEnd("bValue");
							});
						});
			    	});
					break;
					
		    	case "wrongSolution":
					$('.introjs-nextbutton').addClass("opacity00");
					$('.introjs-helperLayer').one('transitionend', function () {
						if (introjs._currentStep == 6) {
				    		var text = "To change the value of <b class='ct-code-b-yellow'>num1</b> to that of <b class='ct-code-b-yellow'>num2</b>, " 
				    					+ " we can use the assignment operator.<br/>"
				    					+ "i.e. <b class='ct-code-b-yellow'>num1 = num2</b>.<br/><span></span>";
				    		typing(".introjs-tooltiptext", text, function() {
				    			$('#wrongSolution').removeClass("opacity00");
				    			$('#line4').addClass("opacity00");
				    			var text = "Similarly when we want to change the value of <b class='ct-code-b-yellow'>num2</b> to " 
				    						+ "<b class='ct-code-b-yellow'>num1</b> we can write <b class='ct-code-b-yellow'>num2 = num1.</b>";
				    			typing(".introjs-tooltiptext > span", text, function() {
					    			$('#line4').removeClass("opacity00");
				    			});
				    		});
						} else if (introjs._currentStep == 11) {
				    		var text = "Let us consider a new solution where we store the original value of " 
				    				+ "<b class='ct-code-b-yellow'>num1</b> before changing it.";
				    		typing(".introjs-tooltiptext", text, function() {
				    			$('.introjs-nextbutton').addClass("opacity00");
				    			$("#line3").addClass("animated bounceOut");
				    			$("#line4").addClass("animated bounceOut").one("animationend", function() {
				    				$("#line3").text("num1 = num2;");
				    				$("#line4").text("num2 = temp;");
				    				$('.introjs-nextbutton').removeClass("opacity00");
				    			});
				    		});
				    	}
					});
					break;
					
		    	case "line3":
		    		$('.introjs-nextbutton').addClass('opacity00');
		    		$('.introjs-helperLayer').one('transitionend', function () {
		    			if (introjs._currentStep == 7) {
			    			var text = "This statement assigns the value stored in " 
										+ "<b class='ct-code-b-yellow'>num2</b> to <b class='ct-code-b-yellow'>num1</b>.";
			    			typing(".introjs-tooltiptext", text);
		    			} else if (introjs._currentStep == 14) {
		    				var text = "Now let us assign the value of  " 
								+ "<b class='ct-code-b-yellow'>num2</b> to <b class='ct-code-b-yellow'>num1</b>.";
			    			typing(".introjs-tooltiptext", text, function() {
			    				$("#line3").removeClass("bounceOut").addClass("flipInX");
			    			});	
		    			}
		    		});
		    	break;
		    		
		    	case "line4":
		    		$('.introjs-nextbutton').addClass('opacity00');
		    		$('.introjs-helperLayer').one('transitionend', function () {
		    			if (introjs._currentStep == 9) {
			    			var text =  "This statement assigns the value stored in " 
										+ "<b class='ct-code-b-yellow'>num1</b> to <b class='ct-code-b-yellow'>num2</b>.";
			    			typing(".introjs-tooltiptext", text);
		    			} else if (introjs._currentStep == 16) {
		    				var text =  "Now let us assign the value stored in the temperory variable " 
								+ "<b class='ct-code-b-yellow'>temp</b> to <b class='ct-code-b-yellow'>num2</b>.";
	    					typing(".introjs-tooltiptext", text, function() {
			    				$("#line4").removeClass("bounceOut").addClass("flipInX");
			    			});
		    			}
		    		});
		    	break;
		    	
		    	case "lineTemp":
		    		$('.introjs-nextbutton').addClass('opacity00');
		    		setTimeout(function() {
		    			$("#aValueInOutput").text($("#aValue").text()).css({"opacity" : "1", "left" : ""});
		    			$("#bValueInOutput").text($("#bValue").text()).css({"opacity" : "1", "left" : ""});
		    			$("#aValueInOutputWithBValue").text("");
		    			$("#bValueInOutputWithAValue").text("");
		    			var text = "Let us create a temporary variable called <b class='ct-code-b-yellow'>temp</b>" 
							+ " and initialize it with the value stored in <b class='ct-code-b-yellow'>num1</b>.";
							
		    				typing(".introjs-tooltiptext", text, function() {
		    					$("#lineTemp").fadeTo(500, 1);
		    			});
		    		}, 1300);
		    		break;
		    		
				case "valuesPanel":
					if (introjs._currentStep == 8) {
						copyBValuetoAValue();
					} else if (introjs._currentStep == 10) {
						copyAValuetoBValue();
					} else if (introjs._currentStep == 13) {
						copyAValuetoTValue();
					} else if (introjs._currentStep == 15) {
						copyBValuetoAValue();
					} else if (introjs._currentStep == 17) {
						copyTValuetoBValue();
					}
					break;
					
				case "line5":
					setTimeout(function() {
						$("#line5").fadeTo(800, 1);
					}, 1300);
					
					break;
		        
		        case "outputDiv": 
		        	$('.introjs-helperLayer').one('transitionend', function () {
		        		var text = "After swapping : num1 = " + $("#bValue").text() + ", num2 = " + $("#aValue").text();
		        		typing("#output", text, function() {
		        			setTimeout(function() {
		        				introjs.nextStep();
		        			}, 1000);
		        		});
		        	});
			    break;	        
		    
				case "restart":
					$('.introjs-tooltipbuttons').addClass("hide");
					$('.introjs-helperLayer').one('transitionend', function () {
						$('#restart').fadeTo(1, 800, function() {
							$(this).removeClass("opacity00");
						});
					});
				break;
		    }
		});
	
		introjs.setOption('tooltipPosition', 'bottom');
		introjs.setOption('positionPrecedence', [ 'left', 'right', 'bottom',
				'top' ])
		introjs.setOption('showStepNumbers', false);
		introjs.setOption('exitOnOverlayClick', false);
		introjs.setOption('exitOnEsc', false);
		introjs.setOption('keyboardNavigation', false);
		introjs.start();
		$('.introjs-prevbutton').hide();
		$('.introjs-skipbutton').hide();
		$('.introjs-bullets').hide();
	}
	
	$(".allowOnlyNumber").keyup(function() {
		introjs.refresh();
		$('.changeVal').text($(this).text());
		if ($(this).text().length > 0) {
			$('.errorMsg').remove();
        	$(".introjs-nextbutton").removeClass("opacity00");
        	iVal = parseInt($('#initialization_value').text());
        } else {
        	$('.errorMsg').remove();
        	$('.introjs-tooltiptext').append("<div class='errorMsg'>please enter a value</div>");
        	$(".introjs-nextbutton").addClass("opacity00");
        }
	});
	
	function copyAValuetoTValue() {
		$('.introjs-nextbutton').addClass('opacity00');
		$('#tValueInOutput').addClass('opacity00');
		$("#tValueInOutput").text($('#aValue').text());
		var l1 = $('#aValueInOutput').offset();
		var l2 = $("#tValueInOutput").offset();
		$("#tValuePanel").removeClass('opacity00');
		TweenMax.from($("#tValuePanel"), 1.3, {top:-200, onComplete: function() {
			$('#tValueInOutput').removeClass('opacity00');
			$("#tValueInOutput").css('z-index','999999999')
			TweenLite.from($('#tValueInOutput'), 1.5, { ease:  Power4.easeOut, top:l1.top-l2.top, left :l1.left-l2.left, onComplete: function() {
				$('.introjs-nextbutton').removeClass('opacity00');
				setTimeout(function() {
					introjs.nextStep();
				}, 1000);
			}});
		}});
	}
	
	function sendAValue() {
		$('.introjs-nextbutton').addClass('opacity00');
		$('#aValueInOutput').addClass('opacity00');
		$("#aValueInOutput").text($('#aValue').text());
		$("#aValuePanel").removeClass('opacity00');
		TweenMax.from($("#aValuePanel"), 1.3, {top:-200, onComplete: function() {
			$('#aValueInOutput').removeClass('opacity00').addClass("focus");
			$('#aValueInOutput').css('opacity','1');
			var l1 = $('#aValue').offset();
			var l2 = $('#aValueInOutput').offset();
			TweenMax.from($('#aValueInOutput'), 1.2, {top: l1.top-l2.top, left: l1.left-l2.left, onComplete: function() {
				$('.introjs-nextbutton').removeClass('opacity00');
				$('#aValueInOutput').removeClass("focus");
			}});
		}});
	}
	
	function sendBValue() {
		$('.introjs-nextbutton').addClass('opacity00');
		$('#bValueInOutput').addClass('opacity00');
		$("#bValueInOutput").text($('#bValue').text());
		$("#bValuePanel").removeClass('opacity00');
		TweenMax.from($("#bValuePanel"), 1.3, {top:-200, onComplete: function() {
			$('#bValueInOutput').removeClass('opacity00').addClass("focus");
			var l1 = $('#bValue').offset();
			var l2 = $('#bValueInOutput').offset();
			TweenMax.from($('#bValueInOutput'), 1.2, {top: l1.top-l2.top, left: l1.left-l2.left, onComplete: function() {
				$('.introjs-nextbutton').removeClass('opacity00');
				$('#bValueInOutput').removeClass("focus");
			}});
		}});
	}
	
	function copyBValuetoAValue() {
		$('.introjs-nextbutton').addClass('opacity00');
		$("#aValueInOutputWithBValue").text($('#bValue').text());
		var l1 = $('#bValueInOutput').offset();
		var l2 = $("#aValueInOutputWithBValue").offset();
		$("#aValueInOutputWithBValue").css('z-index','999999999')
		TweenLite.from($('#aValueInOutputWithBValue'), 3, { ease:  Bounce.easeOut, top:l1.top-l2.top, left :l1.left-l2.left, delay :1.3});
		TweenLite.to($('#aValueInOutput'), 1.5, { ease: Sine.easeOut, left:-150 , delay : 2.4, opacity:0 , onComplete: function() {
			$('#aValueInOutput').text("");
			setTimeout(function() {
				introjs.nextStep();
			}, 1000);
		}});
	}
	
	function copyAValuetoBValue() {
		$('.introjs-nextbutton').addClass('opacity00');
		$("#bValueInOutputWithAValue").text($('#aValueInOutputWithBValue').text());
		var l1 = $('#aValueInOutputWithBValue').offset();
		var l2 = $("#bValueInOutputWithAValue").offset();
		$("#bValueInOutputWithAValue").css('z-index','999999999');
		TweenLite.from($('#bValueInOutputWithAValue'), 3, { ease:  Bounce.easeOut, top:l1.top-l2.top, left :l1.left-l2.left, delay :1.3});
		TweenLite.to($('#bValueInOutput'), 1.5, { ease: Sine.easeOut, left:150 , delay :2.4, opacity:0 , onComplete: function() {
			$('#bValueInOutput').text("");
			var text = "As you can notice there is only <b class='ct-code-b-yellow'>num2</b>'s value(<b class='ct-code-b-yellow'>" + $("#bValue").text() +"</b>) " 
							+ "in both <b class='ct-code-b-yellow'>num1</b> and <b class='ct-code-b-yellow'>num2</b>.<br/> "
							+ "The original value stored in <b class='ct-code-b-yellow'>num1</b> is losted, hence this is not a correct solution."
			typing(".introjs-tooltiptext", text);
		}});
	}
	
	function copyTValuetoBValue() {
		$('.introjs-nextbutton').addClass('opacity00');
		$("#bValueInOutputWithAValue").text($('#tValueInOutput').text());
		var l1 = $('#tValueInOutput').offset();
		var l2 = $("#bValueInOutputWithAValue").offset();
		$("#bValueInOutputWithAValue").css('z-index','999999999')
		TweenLite.from($('#bValueInOutputWithAValue'), 3, { ease:  Bounce.easeOut, top:l1.top-l2.top, left :l1.left-l2.left, delay :1.3});
		TweenLite.to($('#bValueInOutput'), 1.5, { ease: Sine.easeOut, left:150 , delay :2.4, opacity:0 , onComplete: function() {
			$('#bValueInOutput').text("");
			var text = "Now we find both <b class='ct-code-b-yellow'>num1</b>'s and <b class='ct-code-b-yellow'>num2</b>'s values swapped.";
			typing(".introjs-tooltiptext", text);
		}});
	}
	
	function showMethodName1(){
		$('#className1').show();
		$('#className').hide();
		$("#aValuePanel").addClass('opacity00');
		$("#bValuePanel").addClass('opacity00');
	}
	
	function charAtEnd(id) {
		var element = document.getElementById(id);
		element.focus();
		var range = document.createRange();
		range.selectNodeContents(element);
		range.collapse(false);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
	}	
	
	function typing(id, content, callBackFunction) {
		$('.introjs-nextbutton').addClass('opacity00');
		$(id).typewriting( content , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(id).removeClass("typingCursor");
			$('.introjs-nextbutton').removeClass('opacity00');
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
	</script>
</body>
</html>