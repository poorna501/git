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

#numberDiv1 {
    margin-top: 13px;
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

#aValueAnimation {
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
			<div class = "col-xs-12">
				<div class = "col-xs-6 col-xs-offset-3 box-border margin-top" id = "printfDefinition">
				</div>
			</div>
			<div class = "col-xs-12">
				<div class = "col-xs-5 col-xs-offset-1">
					<div id = "codeDiv"  class = "box-border margin-top">
						<pre class = 'creamPreTab4'>
<span id = 'VariableDeclararion'>int <span id = "value1">decimal</span> = <span id='number1' contenteditable='true', spellcheck='false', maxlength='3'>14</span>;</span>
<span id = "sopLine1">printf("<span id = "outputText">print decimal value</span>");</span>
<span id = "sopLine2">printf("\n<span id = "persentageD2" >%d</span>", <span id = "aValue2">decimal</span>);</span>
<span id = "sopLine3">printf("\n<span id = "text3">decimal value = </span><span id = "persentageD3" >%d</span>", <span id = "aValue3">decimal</span>);</span>
<span id = "sopLine4">printf("\n<span id = "text4">decimal value </span><span id = "persentageD4" >%d</span> <span id = "text5">will be printed</span>", <span id = "aValue4">decimal</span>);</span>
						</pre>
					</div>
				</div>
				<div class = "col-xs-5">
					<div class = "col-xs-10 box-border" id = "animationDiv">
						<div class = "col-xs-8 col-xs-offset-2">
							<div class = "col-xs-12" id = "address">
								<div id="numberDiv1" class="col-xs-10" style="opacity: 0">
									<span id="aValueAnimation" class = "visibility-hidden">decimal</span>
					    			<div class="panel-primary number-div" id = "addressDiv1">
	    								<div class="panel-heading text-center number-div">decimal</div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center" id="addressValue1"></span>
	    								</div>
					    			</div>
					    			<div id="address1" class="address-text text-center">1024</div>
					    		</div>
							</div>
						</div>
					</div>
					<div class="col-xs-10">
			  			<div class="panel-primary output-div margin-left" id="outputDiv">
		    				<div class="panel-heading text-center" id="outputDiv">Output</div>
		    				<div class="panel panel-body">
		    					<div class="output col-xs-12">
		    						<div id = "appendDiv1" class = "visibility-hidden"><span id = "outputAValue1"></span></div>
		    						<div class = "mardin-left">
			    						<div id = "appendDiv2"><span id = "outputAValue2"></span></div>
			    						<div id = "appendDiv3"><span id = "outputtext3"></span> <span id = "outputAValue3"></span></div>
			    						<div id = "appendDiv4"><span id = "outputtext4"></span> <span id = "outputAValue4"></span> <span id = "outputtext5"></span></div>
		    						
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
					tooltipClass : "hide"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#sopLine2',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#sopLine3',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#sopLine4',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide"
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
					' <span class = "ct-code-b-red">%d</span> format specifier is used to display '+
					' the <span class = "ct-code-b-red">Integer</span> value.';
					typing('#printfDefinition', text, typingInterval, 'white', function(){
						setTimeout(function(){
							introcode.nextStep();
						},500);
					});
				break;
				case "codeDiv" :
					$("#printfDefinition").addClass("z-index1000000");
					$('[contenteditable="true"]').attr('contenteditable', 'false');
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'Let us learn how the <span class = "ct-code-b-yellow">printf format specifiers (%d)</span> works in'+
						' <span class = "ct-code-b-yellow">c</span>';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "VariableDeclararion" :
					$('[contenteditable="false"]').attr('contenteditable', 'true');
					$("#VariableDeclararion").removeClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
						text = 'You can also change the value';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$("#number" + sopLineCount).effect( "highlight",{color: 'yellow'});
							caretAtEnd(document.getElementById('number' + sopLineCount));
							changeValue('#number' + sopLineCount);
							clickToFocus("#VariableDeclararion","#number" + sopLineCount);
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "numberDiv" + sopLineCount :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('[contenteditable="true"]').attr('contenteditable', 'false');
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here the value <span class = "ct-code-b-yellow">a</span> (i.e. <span class = "ct-code-b-yellow">'+ 
								$("#number" + sopLineCount).text()+'</span>) is of type <span class = "ct-code-b-yellow">int</span>'+
								' its occupies <span class = "ct-code-b-yellow">2 bytes</span> of memory with address '+
								'(i.e. <span class = "ct-code-b-yellow">'+ $("#address" + sopLineCount).text() + '</span>).';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$("#number" + sopLineCount).effect( "highlight",{color: 'yellow'});
							$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
							"onclick='aBoxAnimation()'>Next &#8594;</a>");
						});
					});
				break;
				case "sopLine" + sopLineCount  :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						if (introcode._currentStep == 4) {
							$('.introjs-tooltip').removeClass('hide');
							text = '<span class="ct-code-b-yellow">printf()</span> function is used to'+
									' <span class="ct-code-b-yellow">print</span> the <span class="ct-code-b-yellow">data</span> '+
									'or user defined <span class="ct-code-b-yellow">message</span> on <span class="ct-code-b-yellow">'+
									'console</span>.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$('.introjs-nextbutton').show();	
							});
						} else if (introcode._currentStep == 6) {
							$('.introjs-tooltip').removeClass('hide');
							text = 'We use <span class="ct-code-b-yellow">printf()</span> function with'+
									' <span class="ct-code-b-yellow">%d</span> format specifier to display the value of an'+
									' <span class="ct-code-b-yellow">integer</span>.<br>'+
									'Note: <span class="ct-code-b-yellow">\/n</span> is used for '+
									'cursor goes to next line.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$('.introjs-nextbutton').show();
							});
						} else if (introcode._currentStep == 8 || introcode._currentStep == 10) {
							$('.introjs-tooltip').removeClass('hide');
							text = '<span class="ct-code-b-yellow">printf()</span> function is used to'+
									' <span class="ct-code-b-yellow">print</span> the <span class="ct-code-b-yellow">data</span> '+
									'or user defined <span class="ct-code-b-yellow">message</span> on <span class="ct-code-b-yellow">'+
									'console</span>.<br>Note: <span class="ct-code-b-yellow">\/n</span> is used for '+
									'cursor goes to next line.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$('.introjs-nextbutton').show();
							});
						}
					});
				break;
				case "outputDiv" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						if (introcode._currentStep == 5) {
							$("#outputText").addClass("z-index1000000").effect( "highlight",{color: '#ffff33'}, 500);
							$("#outputAValue"  + sopLineCount).text("print decimal value");
							$("#outputText").removeClass("z-index1000000")
							$("#outputText").effect( "transfer", { to: $("#outputAValue"  + sopLineCount), className: "ui-effects-transfer" }, 1000 , function(){
								$("#appendDiv" + sopLineCount).removeClass("visibility-hidden");
								setTimeout(function() {
									sopLineCount++;
									introcode.nextStep();
								},800);
							});
						} else if (introcode._currentStep == 7) {
							printDecimalValue("decimalValueOnly");
						} else if (introcode._currentStep == 9) {
							$("#text" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: '#ffff33'}, 1000);
							$("#outputtext"  + sopLineCount).text("decimal value = ").addClass("visibility-hidden");
							$("#text" + sopLineCount).removeClass("z-index1000000")
							$("#text" + sopLineCount).effect( "transfer", { to: $("#outputtext"  + sopLineCount), className: "ui-effects-transfer" }, 1000 , function(){
								$("#outputtext"  + sopLineCount).removeClass("visibility-hidden");
								printDecimalValue("decimalValueOnly");
								
							});
						} else if (introcode._currentStep == 11) {
							$("#text" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: '#ffff33'}, 1000);
							$("#outputtext"  + sopLineCount).text("decimal value").addClass("visibility-hidden");
							$("#text" + sopLineCount).removeClass("z-index1000000")
							$("#text" + sopLineCount).effect( "transfer", { to: $("#outputtext"  + sopLineCount), className: "ui-effects-transfer" }, 1500 , function(){
								$("#outputtext"  + sopLineCount).removeClass("visibility-hidden");
									printDecimalValue("decimalValueOnly1");
							});
						}
					});
				break;
				case "sopLine3":
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						count++;
						$('.introjs-tooltip').removeClass('hide');
						text = 'This statement will not show any  <span class="ct-code-b-red">error</span>, Here we are use only one format specifier (i.e.) <span class="ct-code-b-yellow">%d</span>'+
								' but we are use two arguments (i.e.) <span class="ct-code-b-yellow">a</span> and'+
								' <span class="ct-code-b-yellow">b</span>. In this case its follow left to right rule. so '+
								'<span class="ct-code-b-yellow">a</span> value will be printed';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
							"onclick='aValuePrint1()'>Next &#8594;</a>");
						});
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
		
		var x = Math.floor((Math.random() * 1024) + 251);
		$("#address1").text(x);
		
	});
	
	function inputBoxCheck() {
		$("#number" + sopLineCount).effect( "highlight",{color: 'yellow'});
		changeValue("#number" + sopLineCount , 10);
		caretAtEnd(document.getElementById('number' + sopLineCount));
		clickToFocus("#sopLine" + sopLineCount, "#number" + sopLineCount);
		$('.introjs-nextbutton').show();
	}
	
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
	
	function toEffectWithTweenMax(selector1, selector2, callBackFunction) {
		var l1 = $(selector1).offset();
		var l2 = $(selector2).offset({top: l1.top, left: l1.left});
		TweenMax.to($(selector2), 1, {top: 22, left: 54, onComplete: function() {
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
				$("#addressValue1").text($("#number" + sopLineCount).text());
				fromEffectWithTweenMax('#number' + sopLineCount, '#addressValue1', function() {
					$('.introjs-tooltip').removeClass('hide');
					$('.introjs-nextbutton').show();
				});
			});
		}});
	}
	
	function printDecimalValue(text) {
		$(".introjs-duplicate-nextbutton").remove();
		$("#persentageD" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function(){
			$("#persentageD" + sopLineCount).removeClass("z-index1000000")
			$("#aValue" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function(){
				$("#aValue" + sopLineCount).removeClass("z-index1000000")
				$("#aValueAnimation").removeClass("visibility-hidden");  
		  		toEffectWithTweenMax("#aValue" + sopLineCount, "#aValueAnimation",function(){
		  			$("#aValueAnimation").addClass("visibility-hidden");
		  			$('#addressValue1').addClass('circle-css z-index1000000').effect("highlight", {color: 'yellow'}, 1000, function() {
		  				$('#addressValue1').removeClass('circle-css z-index1000000');
		  				if (text == "decimalValueOnly") {
		  					$("#outputAValue" + sopLineCount).text($("#addressValue1").text());
					  		fromEffectWithTweenMax("#addressValue1", "#outputAValue" + sopLineCount, function(){
								setTimeout(function(){
									sopLineCount++;
									introcode.nextStep();
								},800);
							  });
		  				} else if (text == "decimalValueOnly1"){
		  					$("#outputAValue" + sopLineCount).text($("#addressValue1").text());
					  		fromEffectWithTweenMax("#addressValue1", "#outputAValue" + sopLineCount, function(){
					  			sopLineCount++;
			  					$("#text" + sopLineCount).addClass("z-index1000000").effect( "highlight",{color: '#ffff33'}, 1000);
								$("#outputtext"  + sopLineCount).text(" will be printed ").addClass("visibility-hidden");
								$("#text" + sopLineCount).removeClass("z-index1000000")
								$("#text" + sopLineCount).effect( "transfer", { to: $("#outputtext"  + sopLineCount), className: "ui-effects-transfer" }, 1500 , function(){
									$("#outputtext"  + sopLineCount).removeClass("visibility-hidden");
									setTimeout(function(){
										sopLineCount++;
										introcode.nextStep();
									},800);
								});
					  		});
	  					} else {
	  						
	  					}
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
	function changeValue(id1) {
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
					$('.introjs-tooltiptext').append("<span class='ct-code-b-red error-text'><br/>String length to 3.</span>");
					e.preventDefault();
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