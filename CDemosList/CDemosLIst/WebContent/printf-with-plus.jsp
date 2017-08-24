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
<title>printf.jsp</title>

<style type="text/css">
.introjs-tooltiptext br {
	margin: 15px;
}

.introjs-tooltip {
	min-width: 300px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
}

.introjs-duplicate-nextbutton {
	background-color: green;
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

div,span {
	position: relative;
}

.creamPreTab4 {
    margin: 8px;
    padding: 10px;
    font-size: 13px;
    white-space: pre;
	-moz-tab-size: 6;
    border-radius: 8px;
    background-color: #fffae6;
}

#animationDiv {
    height: 132px;
}

#address {
    margin-top: 12px;
}

#printfDefinition {
	height: 65px;
	margin-bottom: 12px;
}

[contenteditable="true"] {
    outline: medium none;
}

.panel-heading {
    padding: 2px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
}

.panel-body {
    min-height: 90px;
    padding: 4px 0 0;
}

.panel {
 	border-radius: 0px;
    background-color: #000;
    border: 1px solid transparent;
    border-bottom-left-radius: 6px;
    border-bottom-right-radius: 6px;
}

.panel-primary > .panel-heading {
    color: #000;
    border-color: lightgray;
    background-color: lightgray;
}

.number-div > .number-div {
	color: white;
	font-width: bold;
	background-color: #337ab7;
}

.number-div > .number-body {
	color: black;
	font-width: bold;
	min-height: 31px;
	background-color: white;
	border-color: lightgray;
}
 
 .output {
    color: white;
}

#outputDiv {
    margin-top: 12px;
}

#appendDiv3, #appendDiv4 {
    margin: 0 0 0 -14px;
}

.address-text {
	margin-top: -13px;
}

.ui-effects-transfer {
    border: 1px solid blue;
    z-index: 99999999 !important;
 }
 
 .blinking {
	animation-name: blink;
	animation-duration: 1s;
	animation-iteration-count: infinite;
 }

@keyframes blink {
	50% {
		background: blue;
	}
}

.position {
	position: relative;
	display: inline-block;
}

.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 1000000 !important;
}

.ct-code-b-red {
	font-weight: bold;
	font-family: monospace;
	color: rgb(252, 66, 66);
}

.circle-css {
	border: 1px solid #ff66b3;
	border-radius: 50%;
	padding: 1px;
	position: relative;
	z-index: 9999999;
}

.bottom-border {
    border-bottom: 1px solid green;
    margin: 0.6px;
}

#aValueAnimation, #bValueAnimation {
    left: 54px;
    top: 22px;
    z-index: 1000000;
    color: red;
}
</style>
</head>
<body>
	<div class = "col-xs-12">
		<div class = "ct-box-main">
			<div class = "text-center">
				<h1 class = "label ct-demo-heading text-center">Additional Features of  printf()</h1>
			</div> 
			<div class = 'buttons-div'>
				<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
			</div> 
			<div class="col-xs-12">
				<div id="printfDefinition" class="col-xs-6 col-xs-offset-3 box-border"></div>
			</div>
			<div class = "col-xs-12">
				<div class = "col-xs-4 col-xs-offset-2">
					<div id = "codeDiv"  class = "box-border margin-top opacity00">
						<pre class = 'creamPreTab4'>
<span id = 'VariableDeclararion'>int <span id = "value1">aValue</span> = <span id='number1' contenteditable='true', spellcheck='false', maxlength='3'>14</span>;</span>
<span id = "sopLine1">printf("<span id = "persentage1" >%d</span>", <span id = "aValue1">aValue</span>);</span>
<span id = "sopLine2">printf("/n<span id = "persentage2">%<span id = "plus2">+</span>d</span>", <span id = "aValue2">aValue</span>);</span>
<span id = "sopLine3">printf("/n<span id = "persentage3" >%<span id = "plus3">+</span><span id = 'number3' contenteditable = 'true', spellcheck = 'false', maxlength = '1'>6</span>d</span>",<span id = "aValue3">aValue</span>);</span>
<span id = "sopLine4">printf("/n<span id = "persentage4" >%<span id = "plus4">+</span>0<span id = 'number4' contenteditable = 'true', spellcheck = 'false', maxlength = '1'>6</span>d</span>",<span id = "aValue4">aValue</span>);</span>
						</pre>
					</div>
				</div>
				<div class = "col-xs-4">
					<div class = "col-xs-12 box-border opacity00" id = "animationDiv">
						<div class = "col-xs-8 col-xs-offset-1">
							<div class = "col-xs-12" id = "address">
								<div id="numberDiv1" class="col-xs-8 col-xs-offset-4" style="opacity: 0">
									<span id="aValueAnimation" class = "visibility-hidden">aValue</span>
					    			<div class="panel-primary number-div" id = "addressDiv1">
	    								<div class="panel-heading text-center number-div">aValue</div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center" id="addressValue1"></span>
	    								</div>
					    			</div>
					    			<div id="address1" class="address-text text-center"></div>
					    		</div>
							</div>
						</div>
					</div>
					<div class = "col-xs-12">
						<div class="col-xs-12">
				  			<div class="panel-primary output-div margin-left opacity00" id="outputDiv">
			    				<div class="panel-heading text-center" id="outputDiv">Output</div>
			    				<div class="panel panel-body">
			    					<div class="output col-xs-12">
				    					<div id = "appendDiv1"><span id = "outputAValue1"></span></div>
				    					<div id = "appendDiv2"><span id = "plus"></span><span id = "outputAValue2"></span></div>
				    					<div id = "appendDiv3" class="col-xs-5 outputAppendedDiv3">
		    								<span id = "outputAValue3"></span>
		    							</div><br>
		    							<div id = "appendDiv4" class="col-xs-5 outputAppendedDiv4">
		    								<span id = "outputAValue4"></span>
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
var typingInterval = 10;
var tl = new TimelineLite();
var sopLineCount = 1;
var count = 0;
	$(document).ready(function() {
		introcode = introJs();
		introcode.setOptions({
			showStepNumbers : false,
			exitOnOverlayClick : false,
			showBullets : false,
			exitOnEsc : false,
			keyboardNavigation : false,
				steps : [{
					element :'#printfDefinition',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#codeDiv',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#VariableDeclararion',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#numberDiv1',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#sopLine1',
					intro :'',
					tooltipClass : "hide",
					animateStep: "decimal"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide",
					animateStep: "decimal"
				},{
					element :'#sopLine2',
					intro :'',
					tooltipClass : "hide",
					animateStep: "plusSpace"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide",
					animateStep: "plusSpace"
				},{
					element :'#sopLine3',
					intro :'',
					tooltipClass : "hide",
					animateStep: "plusWithSpace"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide",
					animateStep: "plusWithSpace"
				},{
					element :'#sopLine4',
					intro :'',
					tooltipClass : "hide",
					animateStep: "plusWithZero"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide",
					animateStep: "plusWithZero"
				},{
					element : "#restartBtn",
					intro : "Click to Restart",
					tooltipClass: "introjs-tooltip-min-width-custom",
					position : "right"
				}]
		});
		introcode.onafterchange(function(targetElement){
			var elementId = targetElement.id;
			switch (elementId) {
				case "printfDefinition" :
					$('[contenteditable="true"]').attr('contenteditable', 'false');
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					text = 'The <span class = "ct-code-b-red">printf()</span> function with'+
							' %[flag](<span class = "ct-code-b-red">+(plus)</span>)[field width]d format specifier is used to insert '+
							' a plus before the value.';
					typing('#printfDefinition', text, typingInterval, 'white', function(){
						setTimeout(function(){
							introcode.nextStep();
						},500);
					});
				break;
				case "codeDiv" :
					$("#codeDiv, #animationDiv, #outputDiv").removeClass("opacity00");
					$("#printfDefinition").addClass("z-index1000000");
					$('[contenteditable="true"]').attr('contenteditable', 'false');
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'Let us learn how the <span class = "ct-code-b-yellow">printf()</span> function with'+
							' <span class = "ct-code-b-yellow">plus</span> and '+
							' <span class = "ct-code-b-yellow">format specifier</span> works in <span class = "ct-code-b-yellow">c</span> language.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "VariableDeclararion" :
					$('[contenteditable="false"]').attr('contenteditable', 'true');
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here we declare a variable <span class = "ct-code-b-yellow">aValue</span> of type '+
							'<span class = "ct-code-b-yellow">int</span>.<br> You can also change the value';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$("#number" + sopLineCount).effect( "highlight",{color: 'yellow'});
							caretAtEnd(document.getElementById('number' + sopLineCount));
							changeValue("#number" + sopLineCount);
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "numberDiv1" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('[contenteditable="true"]').attr('contenteditable', 'false');
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here the value <span class = "ct-code-b-yellow">'+ 
								$("#number" + sopLineCount).text()+'</span> is sored in a variable <span class = "ct-code-b-yellow">'+
								' aValue</span> and its occupies <span class = "ct-code-b-yellow">2 bytes</span> of memory with address '+
								' <span class = "ct-code-b-yellow">'+ $("#address" + sopLineCount).text() + '</span>.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$("#number1").effect( "highlight",{color: 'yellow'});
							$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
							"onclick='aBoxAnimation()'>Next &#8594;</a>");
						});
					});
				break;
				case "sopLine" + sopLineCount :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "decimal" :
								$('.introjs-tooltip').removeClass('hide');
								text = 'We use <span class="ct-code-b-yellow">printf()</span> function with'+
									' <span class="ct-code-b-yellow">%d</span> format specifier to display the value of an'+
									' <span class="ct-code-b-yellow">integer</span>.<br>';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									$('.introjs-nextbutton').show();
								});
								break;
								
							case "plusSpace" :
								$('.introjs-tooltip').removeClass('hide');
								text = 'We use <span class="ct-code-b-yellow">printf()</span> function with'+
									' <span class="ct-code-b-yellow">%+(plus)d</span> format specifier is used to insert a '+
									' <span class="ct-code-b-yellow"> plus </span>before the value.<br>'+
									'Note: <span class="ct-code-b-yellow">/\ n</span> is used for '+
									'cursor goes to next line.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									$('.introjs-nextbutton').show();
								});
								break;
								
							case "plusWithSpace" :
								$('[contenteditable = "false"]').attr('contenteditable', 'true');
								$('.introjs-tooltip').removeClass('hide');
								text = 'We use <span class="ct-code-b-yellow">printf()</span> function with'+
										' <span class="ct-code-b-yellow">%+(plus)<span class = "keyValue">6</span>d</span> '+
										'format specifier is used to insert a  <span class="ct-code-b-yellow"> plus </span>'+
										'before the value.<br> Here we use both <span class="ct-code-b-yellow"> plus </span> and '+
										'<span class="ct-code-b-yellow"> space </span> flags, the <span class="ct-code-b-yellow"> space </span>'+
										'flag overridden by the + flag.<br>'+
										'Note: <span class="ct-code-b-yellow">\/n</span> is used for '+
										'cursor goes to next line.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									$("#number" + sopLineCount).effect( "highlight",{color: 'yellow'});
									caretAtEnd(document.getElementById('number' + sopLineCount));
									changeValue('#number' + sopLineCount, 1);
									clickToFocus("#sopLine" + sopLineCount,"#number" + sopLineCount);
									$('.introjs-nextbutton').show();
								});
							break;
							case "plusWithZero" :
								$('[contenteditable = "false"]').attr('contenteditable', 'true');
								$('.introjs-tooltip').removeClass('hide');
								text = 'We use <span class="ct-code-b-yellow">printf()</span> function with'+
										' <span class="ct-code-b-yellow">%+(plus)0<span class = "keyValue">6</span>d</span> '+
										'format specifier is used to insert a  <span class="ct-code-b-yellow"> plus </span> and '+
										'<span class="ct-code-b-yellow"> zeros </span> before the value.<br> Here we use both '+
										'<span class="ct-code-b-yellow"> plus </span> and <span class="ct-code-b-yellow"> zeros </span>'+
										' flags,<br>'+
										'Note: <span class="ct-code-b-yellow">\/n</span> is used for cursor goes to next line.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									$("#number" + sopLineCount).effect( "highlight",{color: 'yellow'});
									caretAtEnd(document.getElementById('number' + sopLineCount));
									changeValue('#number' + sopLineCount, 1);
									clickToFocus("#sopLine" + sopLineCount,"#number" + sopLineCount);
									$('.introjs-nextbutton').show();
								});
							break;
						}
					});
				break;
				
				case "outputDiv" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
						case "decimal" :
							printDecimalValue("decimalValueOnly");
						break;
						case "plusSpace" :
								printDecimalValue("decimalValueWithPlus");
						break;
						case "plusWithSpace" :
							var length = $("#addressValue1").text().length;
							var number = parseInt($("#number" + sopLineCount).text());
							if (length < number) {
								$('.introjs-tooltip').removeClass('hide');
								text = 'Here we use a <span class = "ct-code-b-yellow">filed Width</span> ('+
										' <span class = "ct-code-b-yellow">%+'+ $("#number" + sopLineCount).text() +'d)</span> to says that '+
										' <span class = "ct-code-b-yellow">'+ $("#number" + sopLineCount).text() +'</span> digits (positions)'+
										' reserved for the <span class = "ct-code-b-yellow">output</span>.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									for (var i = (number - 1); i >= 0; i--) {
										$("#appendDiv" + sopLineCount).append('<span id = "borderSpan" class = "bottom-border visibility-hidden"><span class = "visibility-hidden" id = "outputSpan'+ i +'">0</span></span>');
									}
									$('.introjs-tooltipbuttons').append("<a class = 'introjs-button introjs-duplicate-nextbutton' " +
									"onclick = outputReservedPositions('plusWithSpace')>Next &#8594;</a>");
								});
							} else {
								printOutputWithOutLossData(number,length);
							}
						break;
						case "plusWithZero" :
							var length = $("#addressValue1").text().length;
							var number = parseInt($("#number" + sopLineCount).text());
							if (length < number) {
								$('.introjs-tooltip').removeClass('hide');
								text = 'Here we use a <span class = "ct-code-b-yellow">filed Width</span> ('+
										' <span class = "ct-code-b-yellow">%+0'+ $("#number" + sopLineCount).text() +'d)</span> to says that '+
										' <span class = "ct-code-b-yellow">'+ $("#number" + sopLineCount).text() +'</span> digits (positions)'+
										' reserved for the <span class = "ct-code-b-yellow">output</span>.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									for (var i = (number - 1); i >= 0; i--) {
										if (i == (number -1 )) {
											$("#appendDiv" + sopLineCount).append('<span id = "borderSpan" class = "bottom-border visibility-hidden"><span class = "visibility-hidden append-plus" id = "zerpOutputSpan'+ i +'">0</span></span>');	
										} else {
									 		$("#appendDiv" + sopLineCount).append('<span id = "borderSpan" class = "bottom-border visibility-hidden"><span class = "visibility-hidden append-zero" id = "zerpOutputSpan'+ i +'">0</span></span>');
										}
									}
									$('.introjs-tooltipbuttons').append("<a class = 'introjs-button introjs-duplicate-nextbutton' " +
									"onclick = outputReservedPositions('zerpOutputSpan')>Next &#8594;</a>");
								});
							} else {
								printOutputWithOutLossData(number,length);
							}
						break;
						}
					});
				break;
				
				case "restartBtn":
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$("#printfDefinition").removeClass("z-index1000000");
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
		
		$('#restartBtn').click(function() {
			location.reload();
		});
		
		var x = Math.floor((Math.random() * 1024) + 2565);
		$("#address1").text(x);
	});
	
	function clickToFocus(id1, id2) {
		$(id1).click(function(){
			$(id2).focus();
		});
	}
	
	function fromEffectWithTweenMax(selector1, selector2, callBackFunction) {
		var l1 = $(selector1).offset();
		var l2 = $(selector2).offset();
		var topLength = l1.top - l2.top;
		var leftLength = l1.left - l2.left;
		TweenMax.from($(selector2), 1, {top: topLength, left: leftLength, onComplete: function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}
	
	function toEffectWithTweenMax(selector1, selector2, selector3, callBackFunction) {
		var l1 = $(selector1).offset();
		var l2 = $(selector2).offset({top: l1.top, left: l1.left});
		TweenMax.to($(selector2), 1, {top: 22, left: selector3, onComplete: function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}
	
	function aBoxAnimation(){
		$('.introjs-tooltip').addClass('hide');
		$(".introjs-duplicate-nextbutton").remove();
		TweenMax.to('#numberDiv' + sopLineCount, 1, {opacity: 1, onComplete: function() {
			$('#number' + sopLineCount).addClass('circle-css').effect("highlight", {color: 'yellow'}, 1000, function() {
				$('#number' + sopLineCount).removeClass('circle-css');
				$("#addressValue" + sopLineCount).text($("#number" + sopLineCount).text());
				fromEffectWithTweenMax('#number' + sopLineCount, '#addressValue' + sopLineCount, function() {
					$('.introjs-tooltip').removeClass('hide');
					$('.introjs-nextbutton').show();
				});
			});
		}});
	}
	
	function outputReservedPositions(sampleText) {
		$('.introjs-tooltip').addClass('hide');
		var number = parseInt($("#number" + sopLineCount).text());
		var length = $("#addressValue1").text().length;
		$(".introjs-duplicate-nextbutton").remove();
		$("#persentage" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: '#ffff33'}, 500);
		$("#persentage" + sopLineCount).effect( "transfer", { to: $("#appendDiv" + sopLineCount), className: "ui-effects-transfer" }, 1000 , function(){
			$("#persentage" + sopLineCount).removeClass("z-index1000000")
			$(".bottom-border").removeClass("visibility-hidden");
			$('.introjs-tooltip').removeClass('hide');
			text = 'The number of characters of the <span class = "ct-code-b-yellow">output</span>'+
					' data (<span class = "ct-code-b-yellow">'+ length + '</span>) is less than'+
					' then the field width (<span class = "ct-code-b-yellow">'+ number + '</span>). '+
					' after <span class = "ct-code-b-yellow">'+ (number - length) +' </span> spaces '+
					'the value  (<span class = "ct-code-b-yellow">'+ $("#addressValue1").text() + 
					'</span>) will be printed to the <span class = "ct-code-b-yellow">output</span>.';
			typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
				if  (sampleText == "plusWithSpace") {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
					"onclick=printOutputWithSpaces()>Next &#8594;</a>");
				} else {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
					"onclick=printOutputWithSpaces1()>Next &#8594;</a>");
				}
			});
		});
	}
	
	function printOutputWithSpaces() {
		$('.introjs-tooltip').addClass('hide');
		$(".introjs-duplicate-nextbutton").remove();
		var length = $("#addressValue1").text().length;
		var number = parseInt($("#number" + sopLineCount).text());
		for (var i = (length - 1), j = 0; i >= 0, j < length; i--, j++) {
			if ( j ==  (length - 1)) {
				$("#outputSpan" + (j + 1)).addClass("pluse-symbol");
				$("#outputSpan" + i).text($("#addressValue1").text().charAt(j)).addClass("move-values");
			} else {
				$("#outputSpan" + i).text($("#addressValue1").text().charAt(j)).addClass("move-values");
			}
		}
		$('#addressValue1').addClass('circle-css').effect("highlight", {color: '#cccccc'}, 1000, function() {
			$('#addressValue1').removeClass('circle-css');
			$(".move-values").removeClass("visibility-hidden");
			fromEffectWithTweenMax("#addressValue1", ".move-values", function(){
				$('.introjs-tooltip').removeClass('hide');
				text = 'Here we use both <span class = "ct-code-b-yellow">plus</span> '+
						'and <span class = "ct-code-b-yellow">space</span> flags, the '+
						'<span class = "ct-code-b-yellow">space</span> flag overridden by'+
						' the <span class = "ct-code-b-yellow">+</span> flag. so '+
						'<span class = "ct-code-b-yellow">+</span> will be append after value.';
				typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
					$(".introjs-duplicate-nextbutton").click(function() {
						$(".introjs-duplicate-nextbutton").remove();
						$('.introjs-tooltip').addClass('hide');
						$("#plus" + sopLineCount).effect( "highlight",{color: '#ffff33'}, 500);
						$("#plus" + sopLineCount).effect( "transfer", { to: $(".pluse-symbol"), className: "ui-effects-transfer" }, 1000 , function() {
							$(".pluse-symbol").text("+").removeClass("visibility-hidden");
							setTimeout(function() {
								sopLineCount++;
								introcode.nextStep();
							},500);
						});
					});
				});
			});
		});
	}
	
 	function printOutputWithSpaces1(text) {
		$('.introjs-tooltip').addClass('hide');
		$(".introjs-duplicate-nextbutton").remove();
		var length = $("#addressValue1").text().length;
		var number = parseInt($("#number" + sopLineCount).text());
		for (var i = (length - 1), j = 0; i >= 0, j < length; i--, j++) {
			if ( j == 1 ) {
				$("#zerpOutputSpan" + i).text($("#addressValue1").text().charAt(j)).addClass("move-values1");
			} else {
				$("#zerpOutputSpan" + i).text($("#addressValue1").text().charAt(j)).addClass("move-values1");
			}
		}
		$('#addressValue1').addClass('circle-css').effect("highlight", {color: '#cccccc'}, 1000, function() {
			$('#addressValue1').removeClass('circle-css');
			$(".move-values1").removeClass("visibility-hidden");
			fromEffectWithTweenMax("#addressValue1", ".move-values1", function(){
				$('.introjs-tooltip').removeClass('hide');
				text = 'Here we use both <span class = "ct-code-b-yellow">plus</span> '+
					'and <span class = "ct-code-b-yellow">zeros</span> flags, after zeros the flag '+
					'<span class = "ct-code-b-yellow">+</span> will be append .';
				typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
					$(".introjs-duplicate-nextbutton").click(function() {
						$(".introjs-duplicate-nextbutton").remove();
						$('.introjs-tooltip').addClass('hide');
						$(".append-zero").removeClass("visibility-hidden");
						$("#plus" + sopLineCount).effect( "highlight",{color: '#ffff33'}, 500);
						$("#plus" + sopLineCount).effect( "transfer", { to: $(".append-plus"), className: "ui-effects-transfer" }, 1000 , function() {
							$(".append-plus").text("+").removeClass("visibility-hidden");
							setTimeout(function() {
								sopLineCount++;
								introcode.nextStep();
							},500);
						});
					});
				});
			});
		});
	} 
	
	function printOutputWithOutLossData(number,length) {
		$('.introjs-tooltip').removeClass('hide');
		text = 'The number of characters of the <span class = "ct-code-b-yellow">output</span>'+
				' data (<span class = "ct-code-b-yellow">'+ length + '</span> ) is more than'+
				' then the field width (i.e. <span class = "ct-code-b-yellow">'+ number + '</span>). '+
				'so that the value (<span class = "ct-code-b-yellow">'+ $("#addressValue1").text() + 
				'</span>) will be printed to the <span class = "ct-code-b-yellow">output</span>'+
				' with out loss.';
		typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
			$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
			"onclick=printDecimalValue()>Next &#8594;</a>");
		});
	}
	
	function printDecimalValue(text) {
		$(".introjs-duplicate-nextbutton").remove();
		$("#persentage" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function(){
			$("#persentage" + sopLineCount).removeClass("z-index1000000")
			$("#aValue" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function(){
				$("#aValue" + sopLineCount).removeClass("z-index1000000")
				$("#aValueAnimation").removeClass("visibility-hidden");  
		  		toEffectWithTweenMax("#aValue" + sopLineCount, "#aValueAnimation", 20,function(){
		  			$("#aValueAnimation").addClass("visibility-hidden");
		  			$('#addressValue1').addClass('circle-css z-index1000000').effect("highlight", {color: 'yellow'}, 1000, function() {
		  				$('#addressValue1').removeClass('circle-css z-index1000000');
		  					$("#outputAValue" + sopLineCount).text($("#addressValue1").text());
					  		fromEffectWithTweenMax("#addressValue1", "#outputAValue" + sopLineCount, function(){
					  			if (text == "decimalValueOnly") {
						  			setTimeout(function(){
						  				sopLineCount++;
						  				introcode.nextStep();
						  			},800);
					  			} else {
					  				$('.introjs-tooltip').removeClass('hide');
					  				text = 'insert a <span class = "ct-code-b-yellow">plus</span>('+
					  						'<span class = "ct-code-b-yellow">+</span>) before the value.';
						  			typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
						  				$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
						  				$(".introjs-duplicate-nextbutton").click(function(){
						  					$('.introjs-tooltip').addClass('hide');
						  					$(".introjs-duplicate-nextbutton").remove();
						  					$("#plus" + sopLineCount).effect( "highlight",{color: '#ffff33'}, 500);
											$("#plus" + sopLineCount).effect( "transfer", { to: $("#plus"), className: "ui-effects-transfer" }, 1000 , function() {
												$("#plus").text("+");
												setTimeout(function(){
									  				sopLineCount++;
									  				introcode.nextStep();
									  			},800);
											});
						  				});
						  			});
					  			}
							});
	  				});
		  		});
		  	});
		});
	}
	
	function printDecimalValue2(text) {
		$(".introjs-duplicate-nextbutton").remove();
		$("#persentageD" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function(){
			$("#persentageD" + sopLineCount).removeClass("z-index1000000")
			$("#bValue" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function(){
				$("#bValue" + sopLineCount).removeClass("z-index1000000")
				$("#bValueAnimation").removeClass("visibility-hidden");  
		  		toEffectWithTweenMax("#bValue" + sopLineCount, "#bValueAnimation", 20,function(){
		  			$("#bValueAnimation").addClass("visibility-hidden");
		  			$('#addressValue2').addClass('circle-css z-index1000000').effect("highlight", {color: 'yellow'}, 1000, function() {
		  				$('#addressValue2').removeClass('circle-css z-index1000000');
		  				$("#outputBValue" + sopLineCount).text($("#addressValue2").text());
					  	fromEffectWithTweenMax("#addressValue2", "#outputBValue" + sopLineCount, function(){
							 setTimeout(function(){
								sopLineCount++;
								introcode.nextStep();
							},800);
						 });
	  				});
		  		});
		  	});
		});
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
	function changeValue(id1, id2) {
		$(id1).on("keydown", function(e) {
			$(".keyValue").text($(id1).text());
			$('.error-text').remove();
			var max = $(this).attr("maxlength");
			if ($.inArray(e.keyCode, [46, 8, 9, 27, 37, 39]) !== -1) {
				return;
			}
			if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
				e.preventDefault();
			}
			if ($(this).text().length > max-1) {
				if (id2 != 1) {
					$('.introjs-tooltiptext').append("<span class='ct-code-b-red error-text'><br/>String length to 3.</span>");
					e.preventDefault();
				} else {
					$('.introjs-tooltiptext').append("<span class='ct-code-b-red error-text'><br/>String length to 1.</span>");
					e.preventDefault();
				}
			}
		});
		$(id1).on("keyup", function(e) {
			$(".keyValue").text($(id1).text());
			if ($(this).text() == "") {
				$('.introjs-tooltiptext').append("<span class='ct-code-b-red error-text'><br/>Please enter number.</span>");
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