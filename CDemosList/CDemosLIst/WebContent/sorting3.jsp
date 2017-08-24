<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css" >
<link rel="stylesheet" href="/css/introjs-ct.css" >
<link rel="stylesheet" href="/css/animate.css">

<script src="/js/jquery-latest.js"></script>
<script src="/js/intro.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<title>Bubble Sort In Action</title>
<style type="text/css">

.introjs-tooltip {
	min-width: 350px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
}

.introjs-duplicate-nextbutton {
	background-color: green;
	margin: 0px !important;
}

.introjs-duplicate-skipbutton {
	background-color: orange;
	margin: 0 5px !important;
}

.blinking {
	animation-name: blink;
	animation-duration: 1s;
	animation-iteration-count: 2;
 }

@keyframes blink {
	50% {
		background:  blue;
	}
}

.animated {
  -webkit-animation-duration: 0.5s;
  animation-duration: 0.5s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

.box-border {
	border-radius: 12px;
	border: 2px solid gray;
}

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}

div, span {
	position: relative;
}

.creamPreTab, .creamPreTab4 {
	tab-size: 3;
	margin: 2px;
	padding: 12px;
	font-size: 12px;
	-moz-tab-size: 2;
	white-space: pre;
	border-radius: 8px;
	font-family: monospace;
	background-color: #fffae6;
}

.creamPreTab4 {
	tab-size: 3;
	font-size: 11px;
}

.panel-primary > .panel-heading {
	background-color: lightgray;
	border-color: lightgray;
	color: #000;
}

.panel-heading {
	padding: 2px;
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.panel-body {
	min-height: 77px;
	padding: 15px 0 0;
}

.panel {
	border-radius: 0px;
	background-color: #000;
	border: 1px solid transparent;
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
}

.ifConditionFontSize, #outerArrow, #innerArrow {
	font-size: 12px;
}

.ui-effects-transfer {
	border: 1px solid blue;
	z-index: 99999999 !important;
}

.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 1000000 !important;
}

[contenteditable="true"] {
	outline: medium none;
}

.padding00 {
	padding: 1px;
}

.margin-top {
	margin-top: 20px;
}

.position {
	display: inline-block;
	position: relative;
}

.inner-loop-color {
	color: green !important;
	/* font-family: monospace; */
}

.outer-loop-color {
	color: blue !important;
	/* font-family: monospace; */
}

.ct-code-b-red {
	font-weight: bold;
	font-family: monospace;
	color: rgb(252, 66, 66);
}

.ct-code-b-green {
	font-weight: bold;
	font-family: monospace;
	color: #42f44e;
}

.ct-code-b-white {
	font-weight: bold;
	font-family: monospace;
	color: white;
}
/* 
.ct-code-b-black {
	font-weight: bold;
	font-family: monospace;
	background-color: #808000;
	color: white;
}
 */
#arrDec > div {
	display: inline-block;
}

td {
	padding: 4px 6px;
	border: 2px solid gray;
	min-width: 65px !important;
	min-height: 30px !important;
	text-align: center !important;
}

.popover {
	width: 200px;
	font-size: 15px !important;
}

.eleAtInnerIdx {
	padding: 5px;
}


</style>



</head>

<body>

<script type="text/javascript">

var introcode;
var typingSpeed = 10;
var outerIdx = 0, elementAtInnerIdx;


	$(document).ready(function() {
		introFunction();
		for(var i = 0; i < 8; i++) {
			$('#arrayIndices').append('<th class="text-center"><span id="sortIndex'+ i +'">'+ i +'</span></th>')
			$('#outerArrow').append('<th><div class="text-center opacity00" id="outerArrow'+ i + '">'
					+ '<div id="outerIdxText'+ i +'"><span class="outer-loop-color">outer</span>Idx</div>'
					+ '<i class="fa fa-arrow-down" id="outerarrow'+ i + '"></i></div></th>');
			$('#innerArrow').append('<th><div class="text-center opacity00" id="innerArrow'+ i + '">'
					+ '<div id="innerIdxText'+ i +'"><span class="inner-loop-color">inner</span>Idx</div>'
					+ '<i class="fa fa-arrow-down" id="innerarrow'+ i + '"></i></div></th>'); 
		}
		
	});

	function introFunction() {
		introcode = introJs();
		introcode.setOptions({
			showStepNumbers : false,
			exitOnOverlayClick : false,
			showBullets : false,
			exitOnEsc : false,
			keyboardNavigation : false,
				steps : [{
							element :'#headdingSection',
							intro :'',
							tooltipClass : "hide",
						},{
							element :'#bubbleSortProgram',
							intro :'',
							position : 'right',
							tooltipClass : "hide",
						}]
		});
		introcode.onafterchange(function(targetElement) {
			var elementId = targetElement.id;
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				switch (elementId) {
				
					case "bubbleSortProgram" :
						$("#bubbleSortAnimationDiv").removeClass("opacity00");
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here, we will learn how to sort the array elements in '
								+ 'an <span class="ct-code-b-yellow value">assending</span> order using the '
								+ ' <span class="ct-code-b-yellow value">bubble sort</span>.';
						typing('.introjs-tooltiptext', text, function() {
							introNextSteps("#arrDec", "arrayDec", 'bottom');
							$('.introjs-nextbutton').show();
						});
					break;
					
					case "arrDec" :
						$('.arr-ele').attr('maxlength',2);
					    $('.arr-ele').attr('contenteditable','true');
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here, we are declaring and initializing an integer array with 8 elements : '
								+ '<span class="ct-code-b-yellow element" arrayvalue="0">'+ parseInt($("#number0").text()) +'</span>,'
								+ '<span class="ct-code-b-yellow element" arrayvalue="1">'+ parseInt($("#number1").text()) +'</span>,'
								+ '<span class="ct-code-b-yellow element" arrayvalue="2">'+ parseInt($("#number2").text()) +'</span>,'
								+ '<span class="ct-code-b-yellow element" arrayvalue="3">'+ parseInt($("#number3").text()) +'</span>,'
								+ '<span class="ct-code-b-yellow element" arrayvalue="4">'+ parseInt($("#number4").text()) +'</span>,'
								+ '<span class="ct-code-b-yellow element" arrayvalue="5">'+ parseInt($("#number5").text()) +'</span>,'
								+ '<span class="ct-code-b-yellow element" arrayvalue="6">'+ parseInt($("#number6").text()) +'</span>,'
								+ '<span class="ct-code-b-yellow element" arrayvalue="7">'+ parseInt($("#number7").text()) +'</span>';
						typing('.introjs-tooltiptext', text, function() {
							$('#number0').focus();
							changeValue();
							introNextSteps("#animationDiv", "arrayVal", 'bottom');
							$('.introjs-nextbutton').show();
						});
					break;
					
					case "animationDiv" :
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "arrayVal" :
								$('.arr-ele').removeAttr('contenteditable placeholder');
								transferEffect('#arrDec', '#arrElements', function() {
									introNextSteps("#variableDec", "variableDec", 'bottom');
									setTimeToIntroGoNextStep();
								});
							break;
							
							case "bubbleSortLogic" :
								transferEffect('#bubbleSortLogic', '#logicOfBubbleSort', function() {
									popover('#logicOfBubbleSort', 'left');
									text = 'Here we will learn how to sort an array elements.'
									typing("#popover", text, function() {
										$("#popover").append("<br><a class='introjs-button introjs-duplicate-nextbutton'" 
												+ "onclick = outerLoopInitialization()>Next &#8594;</a>");
									});
								});
							break;
						}
					break;
					
					case "variableDec" :
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here, we declaring and initializing the integer variable '
								+ '<span class="ct-code-b-yellow">length</span> to '
								+ '<span class="ct-code-b-yellow">8</span>'
								+ ', <span class="ct-code-b-yellow">outerIdx</span>, '
								+ '<span class="ct-code-b-yellow">innerIdx</span>, '
								+ '<span class="ct-code-b-yellow">elementAtOuterIdx</span> and '
								+ '<span class="ct-code-b-yellow">print</span>.';
						typing('.introjs-tooltiptext', text, function() {
							introNextSteps("#bubbleSortLogic", "bubbleSortLogic", 'bottom');
							$('.introjs-nextbutton').show();
						});
					break;
					
					case "bubbleSortLogic" :
						$('.introjs-tooltip').removeClass('hide');
						text = 'This is the logic of the <span class="ct-code-b-yellow">bubble sort</span>.';
						typing('.introjs-tooltiptext', text, function() {
							introNextSteps("#animationDiv", "bubbleSortLogic", 'left');
							$('.introjs-nextbutton').show();
						});
					break;
					
					case "restartBtn":
						$("#restartBtn").removeClass('opacity00');
						$('.introjs-tooltip').removeClass('hide');
						text = 'Click to restart.';
						typing('.introjs-tooltiptext', text, function() {
							$('#restartBtn').click(function() {
								location.reload();
							});
						});
					break;
				}
			});
		});
		introcode.start();
		$('.introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton').hide();
		$('.introjs-tooltip').removeClass('hide');
		text = 'In <span class="ct-code-b-yellow value">bubble sort</span> algorithm, '
				+ 'an array is traversed from <span class="ct-code-b-yellow value">first element</span> to '
				+ '<span class="ct-code-b-yellow value">last element</span>. Here, current element is '
				+ '<span class="ct-code-b-yellow value">compared</span> with the '
				+ 'next element. If current element is '
				+ '<span class="ct-code-b-yellow value">greater</span> than the next element, '
				+ 'it is <span class="ct-code-b-yellow value">swapped</span>.'
		typing('.introjs-tooltiptext', text, function() {
			$('.introjs-nextbutton').show();
		});
	}
/* 
	function outerLoopInitialization() {
		$('.introjs-duplicate-nextbutton, .popover').remove();
		$('#outerInit').effect( "highlight",{color: 'blue'}, 500);
		arrow('#outerForLoop', '#outerForLoop', function() {
			$("#outerForLoop").append('    <span id="outerText" class="ct-code-b-black">'
					+ '&nbsp;<span class="outer-loop-color">outer</span>Idx value Intialize to '
					+ '<span class="outer-loop-color">0</span></span>&nbsp; <span id="appendButton"></span>');
			text = $('#outerText').text();
			typing('#outerText', text, function() {
				$("#appendButton").append("<br><a class='introjs-button introjs-duplicate-nextbutton'" 
						+ "onclick = outerLoopChecking()>Next &#8594;</a>");
			});
		});
	}
	
	function outerLoopChecking() {
		$('.introjs-duplicate-nextbutton, #appendButton ').remove();
		zoomInEffect('#outerArrow' + outerIdx, function() {
			$('#outerArrow' + outerIdx).removeClass("opacity00");
			$('#outerLoop').effect( "highlight",{color: 'blue'}, 500);
			$('#outerText').empty();
			text = 'outerIdx < len - 1 condition evaluates to true.<span id="appendButton"></span>';
			typing('#outerText', text, function() {
				$("#appendButton").append("<br><a class='introjs-button introjs-duplicate-nextbutton'" 
						+ "onclick = innerLoopInitialization()>Next &#8594;</a>");
				
			});
		});	
	}
	
	function innerLoopInitialization() {
		$('.introjs-duplicate-nextbutton, #appendButton').remove();
		arrow('#outerForLoop', '#innerForLoop', function() {
			$("#innerForLoop").append('    <span id="innerText" class="ct-code-b-black">'
					+ '&nbsp;<span class="outer-loop-color">inner</span>Idx value Intialize to '
					+ '<span class="outer-loop-color">0</span></span>&nbsp; <span id="appendButton"></span>');
			text = $('#innerText').text();
			typing('#innerText', text, function() {
				$("#appendButton").append("<br><a class='introjs-button introjs-duplicate-nextbutton'" 
						+ "onclick = innerLoopChecking()>Next &#8594;</a>");
			});
		});
	}
	 */
	
	function flipEffectWithTweenMax(selector, val, callBackFunction) {
		TweenMax.to($(selector), 0.3, {rotationX : -90, onComplete:function() {
			$(selector).text(val);
			TweenMax.to($(selector), 0.3, {rotationX : 0, onComplete:function() {
				if (typeof callBackFunction === "function") {
					callBackFunction();
				}
			}});
		}});
	}
	
	function zoomInEffect(selector1, callBackFunction) {
		$(selector1).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
			$(selector1).removeClass("animated zoomIn")
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
	
	function transferEffect(selector1, selector2, callBackFunction) {
		$(selector1).addClass('z-index1000000').effect( "highlight",{color: 'blues'}, 500, function() {
			$(selector1).effect( "transfer", { to: $(selector2), className: "ui-effects-transfer" }, 500 , function() {
				$(selector1).removeClass('z-index1000000');
				$(selector2).removeClass('opacity00');
				if (typeof callBackFunction === "function") {
						callBackFunction();
				}
			});
		});
	}
	
	function toEffectWithTweenMax(selector1, selector2, callBackFunction) {
		var l1 = $(selector1).offset();
		$(selector2).offset({top: l1.top, left: l1.left});
		$(selector1).css({"opacity": "0"})
		TweenMax.to($(selector2), 0.3, {opacity: 1, top: 0, left: 0, onComplete: function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}


	function popover(selector, position) {
		$(selector).popover({
			placement: position,
			viewport: selector,
			html: true,
			trigger: "focus",
			content: '<div id="popover"></div>',
		});
		$(selector).popover('show');
		$(".popover").css("top" , "0");
	}
	
	function setTimeToIntroGoNextStep() {
		setTimeout(function() {
			introcode.nextStep();
		},800);
	}
	
	function introNextSteps(stepName, animatedStep, position) {
		$('.introjs-disabled').removeClass('introjs-disabled');
		var options = {
				element :stepName,
				intro :'',
				position : position,
				tooltipClass : "hide",
				animateStep: animatedStep
		}
		introcode.insertOption(introcode._currentStep + 1, options);
	}
	
	function typing(typingId, typingContent, typingCallbackFunction) {
		$(typingId).typewriting(typingContent, {
			"typing_interval" : typingSpeed,
			"cursor_color" : 'white'
		}, function() {
			typingCallbackFunction();
			$('.introjs-tooltip').show();
		});
	}
	
	function changeValue() {
		$(".arr-ele").keypress(function (e) {
			if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
				return false;
			}
		});
		$('.arr-ele').keydown(function(e) {
			$(".length-error-text").remove();
			if (e.which === 13) {
				e.preventDefault();
			}
			var max = $(this).attr("maxlength");
			if ((e.which != 8) && (e.which != 46) && (e.which != 37) && (e.which != 39) &&($(this).text().length + 1) > max) {
				$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>String length to 2.</span>");
			    e.preventDefault();
			}
		});	
		
		$(".arr-ele").keyup(function(e) {
			$(".length-error-text").remove();
			var arrayvalue = $(this).attr("arrayvalue");
			$(".arr-ele").each(function(index){
				if (index == arrayvalue) {
					if ($(this).text() == '') {
						$(this).addClass("empty");
						$(".introjs-nextbutton").hide(); 
						$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>Please enter a number.</span>");
						$(".element[arrayvalue=" + index + "]").text('');
					} else {
						$(".length-error-text").remove();
						$(this).removeClass("empty");
						$(".element[arrayvalue=" + index + "]").text($(this).text());
					}
					if ($(".empty").length == 0) {
						  $(".introjs-nextbutton").show(); 
					} 
				}
			});
		});
	}
	

	function arrow(fromId, toId, callBackFunction) {
		$(".arrow").remove();
		$('body').append("<i class='fa fa-arrow-right arrow faa-passing animated' style='position: relative; z-index: 10000000;'></i>");
		var l = $(fromId).offset();
		$('.arrow').offset({
			'top': l.top,
			'left': l.left - ($('.arrow').outerWidth() * 2)
		});
		var l1 = $(fromId).offset();
		var l2 = $(toId).offset();
		var topLength = parseInt($(".arrow").css("top")) + (l2.top - l1.top);
		var leftLength = parseInt($(".arrow").css("left")) + (l2.left - l1.left);
		TweenMax.to(".arrow", 1, { top : topLength, left : leftLength, onComplete: function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}
	

</script>

<div class="col-xs-12 padding00">
	<div class="ct-box-main">
		 <div class="text-center">
			<h1 class="label ct-demo-heading text-center" id="headdingSection">Bubble Sort in Action</h1>
		</div> 
	</div>
	<div class='buttons-div'>
		<button type="button" class="btn btn-warning " id="restartBtn">Restart</button>
	</div>
	<div class="col-xs-12 margin-top padding00 " id="bubbleSortAnimationDiv">
		<div class="col-xs-5 padding00">
			<div class="col-xs-12 padding00" id="programDiv">
				<pre class="creamPreTab" id="bubbleSortProgram">
#include &lt;stdio.h&gt;
int main() {
	<span id="arrDec">int arr[] = {<div class="arr-ele" id="number0" arrayvalue="0">1</div>,<div class="arr-ele" id="number1" arrayvalue="1">23</div>,<div class="arr-ele" id="number2" arrayvalue="2">5</div>,<div class="arr-ele" id="number3" arrayvalue="3">13</div>,<div class="arr-ele" id="number4" arrayvalue="4">12</div>,<div class="arr-ele" id="number5" arrayvalue="5">39</div>,<div class="arr-ele" id="number6" arrayvalue="6">33</div>,<div class="arr-ele" id="number7" arrayvalue="7">6</div>};</span>
	<span id="variableDec">int len = 8, <span class="outer-loop-color">outer</span>Idx, <span class="inner-loop-color">inner</span>Idx, elementAt<span class="inner-loop-color">inner</span>Idx, print;</span>
	<span id="bubbleSortLogic">for (<span class="outer-loop-color">outer</span>Idx = 0; <span class="outer-loop-color">outer</span>Idx < len - 1; <span class="outer-loop-color">outer</span>Idx++) {
		for (<span class="inner-loop-color">inner</span>Idx = 0; <span class="inner-loop-color">inner</span>Idx < len - <span class="outer-loop-color">outer</span>Idx - 1; <span class="inner-loop-color">inner</span>Idx++) {
			if(arr[<span class="inner-loop-color">inner</span>Idx] > arr[<span class="inner-loop-color">inner</span>Idx + 1]) {
				elementAt<span class="outer-loop-color">inner</span>Idx = arr[<span class="inner-loop-color">inner</span>Idx];
				arr[<span class="inner-loop-color">outer</span>Idx] = arr[<span class="inner-loop-color">inner</span>Idx +1];
				arr[<span class="inner-loop-color">outer</span>Idx + 1] = elementAt<span class="outer-loop-color">inner</span>Idx; 
			}
		}
	}</span>
	<span id="printArr">for(print = 0; print < len; print++) {
		printf(" %d", arr[print]);
	}</span>
}</pre></div>
		</div>
		<div class="col-xs-7 padding00">
			<div class="col-xs-12 box-border padding00" id="animationDiv">
				<div class="col-xs-12 padding00">
					<div class="col-xs-12 text-center opacity00" id="eleAtInnerIdx">
						<div class="col-xs-12"><div class="col-xs-3 col-xs-offset-4" id="eleAtInnerText">elementAtInnerIdx</div></div>
						<div class="col-xs-12 text-center"><div class="col-xs-1 col-xs-offset-5 box-border eleAtInnerIdx" id="eleAtInnerIdxVal">55</div></div>
					</div>
					<div class="col-xs-12">
						<div class="arrTable margin-top">
							<table style="width:100%" class="opacity00" id="arrElements">
					  			<tbody>
					  				<tr id="outerArrow"></tr>
					  				<tr id="innerArrow"></tr>
						  			<tr border="2px" id="values">
								    	<td class="text-center" id="sortEle0"><span class="element" arrayvalue="0">1</span></td>
								   		<td class="text-center" id="sortEle1"><span class="element" arrayvalue="1">23</span></td>
								    	<td class="text-center" id="sortEle2"><span class="element" arrayvalue="2">5</span></td>
								    	<td class="text-center" id="sortEle3"><span class="element" arrayvalue="3">13</span></td>
								    	<td class="text-center" id="sortEle4"><span class="element" arrayvalue="4">12</span></td>
								    	<td class="text-center" id="sortEle5"><span class="element" arrayvalue="5">39</span></td>
								  		<td class="text-center" id="sortEle6"><span class="element" arrayvalue="6">33</span></td>
								    	<td class="text-center" id="sortEle7"><span class="element" arrayvalue="7">6</span></td>
								 	</tr>
								 	<tr id="arrayIndices"></tr>
								</tbody>
							</table>
						</div>
					</div>
				<div class="col-xs-12 margin-top padding00">
					<pre class="creamPreTab4 opacity00" id="logicOfBubbleSort">
<span id="bubbleSortLogic">	<span id="outerForLoop">for(<span id="outerInit"><span class="outer-loop-color">outer</span>Idx = 0</span>; <span id="outerLoop"><span class="outer-loop-color">outer</span>Idx < len - 1</span>; <span id="outerInc"><span class="outer-loop-color">outer</span>Idx++</span>) {</span>
		<span id="innerForLoop">for(<span id="innerInti"><span class="inner-loop-color">inner</span>Idx = 0</span>; <span id="innerLoop"><span class="inner-loop-color">inner</span>Idx < len - <span class="outer-loop-color">outer</span>Idx - 1</span>; <span id="innerInc"><span class="inner-loop-color">inner</span>Idx++</span>) {</span>
			<span id="ifCondition">if(<span id="ifCondition"><span id="ifInnerIdx">arr[<span class="inner-loop-color">inner</span>Idx]</span> > <span id="ifInnerIdxPlsOne">arr[<span class="inner-loop-color">inner</span>Idx + 1]</span></span>) {</span>
				<span id="swapValues"><span id="storeValueInOuterIdx"><span id="storeArrInnerIdxVal">elementAt<span class="outer-loop-color">Outer</span>Idx</span> = <span id="arrInnerIdxVal">arr[<span class="inner-loop-color">inner</span>Idx]</span>;</span>
				<span id="storeArrInnerIdxPlusVal">arr[<span class="inner-loop-color">inner</span>Idx] = <span id="arrInnerIdxPlusVal">arr[<span class="inner-loop-color">inner</span>Idx +1]</span>;</span>
				<span id="storeEleOuterIdxVal">arr[<span class="inner-loop-color">inner</span>Idx + 1] = <span id="arrOuterIdxVal">elementAt<span class="outer-loop-color">Outer</span>Idx</span>;</span></span> 
			<span id="ifClose">}</span>
		<span id="innerLoopClose">}</span>
	<span id="outerLoopClose">}</span></span></pre>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-12">
			<div class="col-xs-6 col-xs-offset-3 margin-top">
	  			<div id="outputDiv" class="panel-primary output-div margin-left">
	    			<div id="outputdiv" class="panel-heading text-center">Output</div>
	    			<div class="panel panel-body"><div class="output "></div></div>
	  			</div>
	 		</div>
 		</div>
	</div>
</div>


</body>
</html>