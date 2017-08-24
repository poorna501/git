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
<script src="/js/bootstrap.min.js"></script>
<title>find-largest-of-three-numbers.jsp</title>
<style type="text/css">

.introjs-tooltiptext br {
	margin: 15px;
}

.introjs.tooltiptext > span{
	display: inline-block;
	position: relative;
	z-inline: 10000000000 !important;
}

.introjs-tooltip {
	min-width: 325px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
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

.margin-top {
    margin-top: 18px;
}

#condition {
	margin-bottom: 25px;
}

.padding0 {
    padding: 0px;
}

#codeDiv {
    height: 217px;
}

pre > span {
	position: static;
}

div, span {
	position: relative;
}

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}

.position {
	display: inline-block;
	position: relative;
}

#readElements {
    margin-left: -29px;
    margin-top: -15px;
}

.workspace {
    -moz-tab-size: 2;
    background-color: #fffae6;
    border-radius: 9px;
    font-family: monospace;
    font-size: 13px;
    margin-top: 12px;
}

#animationDiv {
    height: 200px;
}

[contenteditable="true"] {
    outline: medium none;
}

#box {
    border: 2px solid gray;
    height: 24px;
    margin-top: 5px;
}

.margintop {
	margin-top: 5px;
}

.output-div {
	padding: 0px;
	margin-top: 12px;
}

.output {
    color: white;
    margin: 0 0 0 4px;
}

#outputText {
    margin-left: -22px;
}

.num {
    display: inline-block;
    position: relative;
    text-align: center;
    width: 65px;
}

.max-div {
    padding: 0;
    text-align: right;
}

.panel-primary > .panel-heading {
    background-color: lightgray;
    border-color: lightgray;
    color: #000;
}

.blinking {
	animation-name: blink;
	animation-duration: 1s;
	animation-iteration-count: infinite;
 }

@keyframes blink {
	50% {
		background: #d27979;
	}
}

.introjs-duplicate-nextbutton {
	background-color: green;
}

#conditionAimation {
	opacity: 0;
	height : 47px; 
}

#address {
	height: 121px;
	margin-top: 12px;	
}

.panel-heading {
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
    padding: 2px;
}

.panel-body {
    min-height: 60px;
    padding: 15px 0 0;
}

.panel {
 	border-radius: 0px;
    background-color: #000;
    border: 1px solid transparent;
    border-bottom-left-radius: 6px;
    border-bottom-right-radius: 6px;
}

.number-div > .number-div {
	background-color: #337ab7;
	color: white;
	font-width: bold;
	margin-top: 12px;
}

.number-div > .number-body {
	background-color: white;
	color: black;
	font-width: bold;
	border-color: lightgray;
	min-height: 45px;
}

.address-text {
	margin-top: -13px;
}

.ct-code-b-red {
	font-weight: bold;
	font-family: monospace;
	color: rgb(252, 66, 66);
}


</style>
</head>
<body>
	<div class = "ct-box-main">
		 <div class = "text-center">
			<h1 class = "label ct-demo-heading text-center">Find the Largest Element of Three Numbers</h1>
		</div> 
		<div class = 'buttons-div'>
			<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
		</div> 
		<div class = "col-xs-12 padding0">
			<div id = "codeDiv" class = "col-xs-10 col-xs-offset-1 margin-top padding0">
				<pre id = "programForLargestNumber" class = "workspace"><span id = "headerFile">#include &lt;stdio.h&gt;</span>
	<span id="mainMethod">main() {</span>
		<span id = "numberDeclaration1">int <span id = "declaration1">number1</span> = <span class = "text-center element" id = "number1" contenteditable = "true" maxlength = "3" spellcheck = "false">56</span>;</span>
		<span id = "numberDeclaration2">int <span id = "declaration2">number2</span> = <span class = "text-center element" id = "number2" contenteditable = "true" maxlength = "3" spellcheck = "false">26</span>;</span>
		<span id = "numberDeclaration3">int <span id = "declaration3">number3</span> = <span class = "text-center element" id = "number3" contenteditable = "true" maxlength = "3" spellcheck = "false">55</span>;</span>
		<span id = "condition">int <span id = "declaration4">largestValue</span> = (((number1 &gt; number2) &amp;&amp; (number1 &gt; number3)) ? number1 : (number2 > number3) ? number2 : number3);</span>
		<span id="printStatement">printf("\nThe largest number is: %d",largestValue);</span>
	<span id = "closeBrace">}</span>
				</pre>
			</div>
  			<div class = "col-xs-10 col-xs-offset-1 padding0">
    			<div id = "animationDiv" class = "box-border margin-top">
    				<div class = "col-xs-12 padding0" id = "conditionAimation">
    					<div class = "margin-top" id = "condition">
							<div class="col-xs-2 max-div">int largestValue  =</div>
								<div class = "col-xs-10 max-value-div">
									<span>(</span>
									<span id = "firstCondition">
										<span>(</span>
										<span>(</span>
										<span class = "num" id ='num1'>number1</span>
										<span id = "gt">&gt;</span>
										<span class = "num" id = 'num2'>number2</span>
										<span>)</span>
										<span id = "and">&&</span>
										<span>(</span>
										<span class = "num" id = 'num3'>number1</span>
										<span id = "gt1">&gt;</span>
										<span class = "num" id = 'num4'>number3</span>
										<span>)</span>
										<span>)</span>
									</span>
									<span>?</span>
									<span class = "num" id = "n1">number1</span>
									<span>:</span>
									<span id = "innerCondition">
										<span id = "innerCon">
										<span>(</span>
										 <span class = "num" id = 'num5'>number2</span>
										<span>&gt;</span>
										<span class = "num" id = 'num6'>number3</span>
										<span>)</span></span>
										<span>?</span>
										<span class = "num" id = "n2">number2</span>
										<span>:</span>
										<span class = "num" id = "n3">number3</span>
									</span>
									<span>)</span>
								</div>	 	 
						</div>
    				</div>
    				
	    			<div class="col-xs-12">
						<div class="col-xs-7 col-xs-offset-1">
					    	<div id="address" class="box-border">
					    	
					    	<div class="col-xs-3" id="numberDiv1" style=  "opacity: 0;">
					    	<div class="panel-primary number-div">
	    						<div class="panel-heading text-center number-div">number1</div>
	    						<div class="panel panel-body number-body">
	    							<div class = "text-center" id = "value1"></div>
	    						</div>
					    	</div>
					    	<div class="address-text text-center" id = "address1">1024</div>
					    	</div>
					    	<div class="col-xs-3" id="numberDiv2" style= " opacity: 0;">
					    	<div class="panel-primary number-div">
	    						<div class="panel-heading text-center number-div">number2</div>
	    						<div class="panel panel-body number-body">
	    						<div class = "text-center" id = "value2"></div>
	    						</div>
					    	</div>
					    	<div class="address-text text-center" id = "address2">1156</div>
					    	</div>
					    	<div class="col-xs-3" id="numberDiv3" style=  "opacity: 0;">
					    	<div class="panel-primary number-div">
	    						<div class="panel-heading text-center number-div">number3</div>
	    						<div class="panel panel-body number-body">
	    							<div class = "text-center" id = "value3"></div>
	    						</div>
					    	</div>
					    	<div class="address-text text-center" id = "address3">1059</div>
					    	</div>
					    	<div class="col-xs-3"  id="numberDiv4" style=  "opacity: 0;">
					    	<div class="panel-primary number-div">
	    						<div class="panel-heading text-center number-div">largestValue</div>
	    						<div class="panel panel-body number-body">
	    							<div class = "text-center" id = "value4"></div>
	    						</div>
					    	</div>
					    	<div class="address-text text-center" id = "address4">1034</div>
					    	</div>
					  </div>
					</div>
					<div class="col-xs-3">
		  				<div class="panel-primary output-div margin-left" id="outputDiv">
	    					<div class="panel-heading text-center" id="outputDiv">Output</div>
	    					<div class="panel panel-body">
	    						<div class="output col-xs-12">
	    							<div class="col-xs-12">
	    								<span id="outputText" class=""></span>
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
<script type="text/javascript">
var introcode;
var typingInterval = 1;
var tl = new TimelineLite();
var numberCount = 1;

	$(document).ready(function(){
	 	introcode = introJs();
		introcode.setOptions({
			showStepNumbers : false,
			exitOnOverlayClick : false,
			showBullets : false,
			exitOnEsc : false,
			keyboardNavigation : false,
				steps : [{
							element :'#headerFile',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#mainMethod',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#numberDeclaration1',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#numberDiv1',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#numberDeclaration2',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#numberDiv2',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#numberDeclaration3',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#numberDiv3',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#condition',
							intro :'',
							position: 'bottom',
							tooltipClass : "hide"
						},{
							element :'#conditionAimation',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#numberDiv4',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#printStatement',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#outputDiv',
							intro :'',
							position: 'right',
							tooltipClass : "hide"
						},{
							element : "#restartBtn",
							intro : "Click to restart.",
							tooltipClass: "introjs-tooltip-min-width-custom",
							position : "right"
						}]
		});
		introcode.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
			switch (elementId) {
				case "headerFile" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-tooltip').removeClass('hide');
					text = '<span class="ct-code-b-yellow">#include &lt;stdio.h&gt;</span> is a header file.<br> '+
							'It contains standard input/output library functions.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
						$('.introjs-nextbutton').show(); 
					});
				break;
				case "mainMethod" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = '<ul><li>The <span class="ct-code-b-yellow">main()</span> method is called by the operating system.</li>'+
								'<li>The <span class="ct-code-b-yellow">main()</span> method starts the execution from starting point'+
								'of the c program.</li>';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "numberDeclaration" + numberCount :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('[contenteditable="false"]').attr('contenteditable', 'true');
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here, we declaring a variable <span class = "ct-code-b-yellow">'+ $('#declaration' + numberCount).text() +'</span> of type '+
							'<span class = "ct-code-b-yellow">int</span>.<br> You can also change the value.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$("#number" + numberCount).effect( "highlight",{color: 'yellow'});
							caretAtEnd(document.getElementById('number' + numberCount));
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "numberDiv" + numberCount :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('[contenteditable="true"]').attr('contenteditable', 'false');
						if(introcode._currentStep == 3 || introcode._currentStep == 5 || introcode._currentStep == 7) {
						$("#value" + numberCount).text($("#number" + numberCount).text());
						TweenMax.to('#numberDiv' +numberCount, 1, {opacity: 1, onComplete: function() {
							$('.introjs-tooltip').removeClass('hide');
							text = 'The value <span class="ct-code-b-yellow">'+ $("#number" + numberCount).text()+'</span> is '+
									' stored in the variable <span class="ct-code-b-yellow">'+
									$('#declaration' +numberCount).text() + '</span>.'+
									'<br>The location (address) of the variable <span class="ct-code-b-yellow">'+
									$("#declaration" + numberCount).text()+ '</span> '+
									'is <span class="ct-code-b-yellow">' + $("#address" + numberCount).text() + '</span> is'+
									' allocated by the system.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$("#number" + numberCount).effect( "highlight",{color: 'yellow'});
								numberCount++;
								$('.introjs-nextbutton').show();
							});
						}});
						} else if(introcode._currentStep == 10) {
							$("#value4").text($('.max-value-div').children().text());
							TweenMax.to('#numberDiv4', 1, {opacity: 1, onComplete: function() {
								$('.introjs-tooltip').removeClass('hide');
								text = 'The value <span class="ct-code-b-yellow">'+ $('.max-value-div').children().text() +'</span> is '+
								' stored in the variable <span class="ct-code-b-yellow">'+
								$('#declaration' +numberCount).text() + '</span>.'+
								'<br>The location (address) of the variable <span class="ct-code-b-yellow">'+
								$("#declaration" + numberCount).text()+ '</span> '+
								'is <span class="ct-code-b-yellow">' + $("#address" + numberCount).text() + '</span> is'+
								' allocated by the system.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									$('.introjs-nextbutton').show();
								});
							}});
						}
					});
				break;
				case "condition" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'This is <span class="ct-code-b-yellow">Conditional Operator</span>.'+
						'<br>(i.e) <span class="ct-code-b-yellow">condition ? true : false</span>';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "conditionAimation" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						TweenMax.to('#conditionAimation', 1, {opacity: 1, onComplete: function() {
							flipEffectWithTweenMax('#num1', $('#number1').text(), function() {
								flipEffectWithTweenMax('#num2', $('#number2').text(), function() {
									flipEffectWithTweenMax('#num3', $('#number1').text(), function() {
										flipEffectWithTweenMax('#num4', $('#number3').text(), function() {
											flipEffectWithTweenMax('#n1', $('#number1').text(), function() {
												flipEffectWithTweenMax('#num5', $('#number2').text(), function() {
													flipEffectWithTweenMax('#num6', $('#number3').text(), function() {
														flipEffectWithTweenMax('#n2', $('#number2').text(), function() {
															flipEffectWithTweenMax('#n3', $('#number3').text(), function() {
																conditionCheck();
															});
														});
													});
												});
											});
										});
									});
								});
							});
						}});
					});
				break;
				case "printStatement" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						setTimeout(function() {
							introcode.nextStep();
						},500);
					});
				break;
				case "outputDiv" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$("#outputText").removeClass("visibility-hidden");
						text = 'The largest number is : ' + $('.max-value-div').children().text();
						typing('#outputText', text, typingInterval, 'white', function(){
							setTimeout(function() {
								introcode.nextStep();
							},800);
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
		introcode.start();
		$('.introjs-skipbutton').hide();
		$('.introjs-prevbutton').hide();
		$('.introjs-nextbutton').hide(); 
		changeValue();
		
		$('#restartBtn').click(function() {
			location.reload();
		});
		
	});
	function conditionCheck() {
		var num1 = parseInt($('#number1').text());
		var num2 = parseInt($('#number2').text());
		var num3 = parseInt($('#number3').text());
		if (num1 > num2 && num1 > num3) {
			$("#firstCondition").addClass("blinking");
			$('.introjs-tooltip').removeClass('hide');
			text = 'Here, the condition <span class="ct-code-b-yellow">(' + num1 + ' > ' + num2 + ' && ' + num1 + ' > ' + num3 + 
					')</span> will return <span class="ct-code-b-yellow">true</span>. '+
					' so <span class="ct-code-b-yellow">' + num1 + '</span> is assigned to'+
					' the variable  <span class="ct-code-b-yellow">largestValue</span>.';
			typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
				$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
					"onclick='animatingDiv1()'>Next &#8594;</a>");
			});	
		} else {
			$("#firstCondition").addClass("blinking");
			$('.introjs-tooltip').removeClass('hide');
			text = 'Here, the condition <span class="ct-code-b-yellow">(' + num1 + ' > ' + num2 + ' && ' + num1 + ' > ' + num3 + 
					')</span> will return <span class="ct-code-b-yellow">false</span>.'+
					' so the else condition will be checked (i.e) <span class="ct-code-b-yellow"> (' + num2 + ' > ' + num3 + ' ) ' + ' ? ' +
					num2 +' : ' + num3 + '</span>.';
			typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
				$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
					"onclick='animatingDiv1()'>Next &#8594;</a>");
			});	
		}
	}

	function innerConditionCheck() {
		setTimeout(function(){
			$("#innerCon").addClass("blinking");
			var num1 = parseInt($('#number1').text());
			var num2 = parseInt($('#number2').text());
			var num3 = parseInt($('#number3').text());
			$('.introjs-tooltip').removeClass('hide');
			text = 'Here, the <span class="ct-code-b-yellow">condition (' + num2 + ' > ' + num3 + 
					')</span> will return <span class="ct-code-b-yellow">' + (num2 > num3).toString() + 
					'</span> so the value <span class="ct-code-b-yellow">' + 
					((num2 > num3) ? num2 : num3).toString() + '</span> is assigned to ' +
					'the  variable <span class="ct-code-b-yellow">largestValue</span>.';
			typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
				$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
					"onclick='animatingDiv2()'>Next &#8594;</a>");
			});	
		},500);
	}

	function animatingDiv1() {
		$("#firstCondition").removeClass("blinking");
		$('.introjs-duplicate-nextbutton').remove();
		$('.introjs-tooltip').addClass('hide');
		var num1 = parseInt($('#number1').text());
		var num2 = parseInt($('#number2').text());
		var num3 = parseInt($('#number3').text());
		if ((num1 > num2 && num1 > num3)){
			$("#n1").css({"background": "lightgreen"});
			 animatingMax('n1' ,'.max-value-div');
		} else {
			$("#innerCondition").css({"background": "lightgreen"});
			animatingInnerCondition('innerCondition');
		}
	}

	function animatingDiv2() {
		$("#innerCon").removeClass("blinking");
		$('.introjs-duplicate-nextbutton').remove();
		$('.introjs-tooltip').addClass('hide');
		var num1 = parseInt($('#number1').text());
		var num2 = parseInt($('#number2').text());
		var num3 = parseInt($('#number3').text());
		(num2 > num3) ? animatingMax('n2', '#innerCondition') :  animatingMax('n3', '#innerCondition');
	}

	function animatingInnerCondition(id) {
		TweenMax.to($('.max-value-div').children().not('#' + id), 1, {opacity: 0, onComplete: function() {
			var beforeRemoveLeft = $('#' + id).offset().left;
			$('.max-value-div').children().not('#' + id).remove();
			TweenMax.from($('#' + id), 1, {left: beforeRemoveLeft - $('#' + id).offset().left, onComplete: function() {
				$("#innerCondition").css({"background": ""});
				innerConditionCheck();
			}});
		}});
	}

	function animatingMax(id, id1) {
		$("#" +id).css({"background": "lightgreen"});
		setTimeout(function(){
			TweenMax.to($(id1).children().not('#' + id), 1, {opacity: 0, onComplete: function() {
				var beforeRemoveLeft = $('#' + id).offset().left;
				$(id1).children().not('#' + id).remove();
				TweenMax.from($('#' + id), 1, {left: beforeRemoveLeft - $('#' + id).offset().left, onComplete: function() {
					$('.introjs-tooltip').removeClass('hide');
					typingId = '.introjs-tooltiptext';
					typingContent = 'The value <span class="ct-code-b-yellow">' + $(id1).children().text() + '</span> is assigned to ' +
									' the variable <span class="ct-code-b-yellow">largestValue</span>.';
					typingInterval = 10;
					cursorColor = 'white';
					typingCallbackFunction = function() {
						$("#" +id).css({"background": ""});
						$('.introjs-nextbutton').show();
					}
					typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction);
				}});
			}});
		},600);
	}


	
	function flipEffectWithTweenMax(selector, val, callBackFunction) {
		TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
			$(selector).text(val);
			TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
				if (typeof callBackFunction === "function") {
					callBackFunction();
				}
			}});
		}});
	}

	//cursor position at end
	function caretAtEnd(element) {
		element.focus();
		if (typeof window.getSelection != "undefined" && typeof document.createRange != "undefined") {
			var range = document.createRange();
			range.selectNodeContents(element);
			range.collapse(false);
			var sel = window.getSelection();
			sel.removeAllRanges();
			sel.addRange(range);
		}
	}
	
	//typing function
	function typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction) {
		$(typingId).typewriting(typingContent, {
			"typing_interval" : typingInterval,
			"cursor_color" : cursorColor
		}, function() {
			$(typingId).removeClass("typingCursor");
			typingCallbackFunction();
			$('.introjs-tooltip').show();
		});
	} 
	
	//Allow only numbers,Condition to  enter text, change the array values, Display error message & Fill all the array elements
	function changeValue() {
		$("[contenteditable=true]").on("keydown", function(e) {
			$('.length-error-text').remove();
			var max = $(this).attr("maxlength");
			if ($.inArray(e.keyCode, [46, 8, 9, 27, 37, 39]) !== -1) {
				return;
			}
			if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
				e.preventDefault();
			}
			
			if ($(this).text().length > max-1) {
				$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>String length to 3.</span>");
				e.preventDefault();
			}
		});
		
		$("[contenteditable=true]").on("keyup", function(e) {
			if ($(this).text() == "") {
				$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>Please enter number.</span>");
				$(this).addClass("empty");
			} else {
				$(this).removeClass("empty");
			}
			introcode.refresh();
			
			if ($(".empty").length > 0) {
				$(".introjs-nextbutton").hide();
			} else {
				$(".introjs-nextbutton").show();
			}
		});
	} 
</script>
</body>
</html>