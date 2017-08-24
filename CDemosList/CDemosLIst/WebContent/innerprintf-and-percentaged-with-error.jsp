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
	border-radius: 8px;
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
    height: 171px;
}

#address {
 	height: 120px;
 	margin-top: 25px;
}

.address-text {
	margin-top: -13px;
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
	margin-top: 12px;
	background-color: #337ab7;
}

.number-div > .number-body {
	color: #e60073;
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

 #aValueAnimation, #bValueAnimation {
 	font-weight: bold;
 	color: red;
 	position: absolute;
 	z-index: 10000000 !important;
 }
 
 .outputAppendedDiv {
 	color: #e60073;
 	font-weight: bold;
 }	
 
.circle {
	border: 2px solid blue;
	padding: 4px 6px ;
    border-radius: 50%;
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
				<div class = "col-xs-4 col-xs-offset-2">
					<div id = "codeDiv"  class = "box-border margin-top">
						<pre class = 'creamPreTab4' id = "code">
<span id = 'VariableDeclararion1'>int <span id = "value1">a</span> = <span id='number1' contenteditable='true', spellcheck='false', maxlength='2'>14</span>;</span>
<span id = 'VariableDeclararion2'>int <span id = "value2">b</span> = <span id='number2' contenteditable='true', spellcheck='false', maxlength='2'>24</span>;</span>
<span id = "sopLine1">printf("print a and b values");</span>
<span id = "sopLine2">printf("<span id = "persentageD1" >%d</span><span id = "separateOperator">,</span><span id = "persentageD2" >%d</span>", <span id = "aValue">a</span> , <span id = "bValue">b</span>);</span>
<span id = "sopLine3">printf("<span id = "persentageD3" >%d</span>", <span id = "aValue2">a</span> , <span id = "bValue2">b</span>);</span>
<span id = "sopLine4">printf("<span id = "persentageD4" >%d</span>", <span id = "innerPrintf">printf("<span id='number3' contenteditable='true', spellcheck='false', maxlength='10' arrayLength = '0'>Codetantra</span>")</span>);</span>
						</pre>
					</div>
				</div>
				<div class = "col-xs-4">
					<div class = "col-xs-12 box-border" id = "animationDiv">
						<div class = "col-xs-10 col-xs-offset-1">
							<div class = "col-xs-12" id = "address">
								<div id="numberDiv1" class="col-xs-6" style="opacity: 0">
									<span id="aValueAnimation" class = "visibility-hidden">a</span>
					    			<div class="panel-primary number-div" id = "addressDiv1">
	    								<div class="panel-heading text-center number-div">a</div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center" id="addressValue1"></span>
	    								</div>
					    			</div>
					    			<div id="address1" class="address-text text-center">1024</div>
					    		</div>
					    		<div id="numberDiv2" class="col-xs-6" style="opacity: 0"> 
					    		<span id="bValueAnimation" class = "visibility-hidden">b</span>
					    			<div class="panel-primary number-div" id = "addressDiv2">
	    								<div class="panel-heading text-center number-div">b</div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center" id="addressValue2"></span>
	    								</div>
					    			</div>
					    			<div id="address2" class="address-text text-center">1054</div>
					    		</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12">
 					<div class = "col-xs-12">
						<div class="col-xs-4 col-xs-offset-4">
			  				<div class="panel-primary output-div margin-left" id="outputDiv">
		    					<div class="panel-heading text-center" id="outputDiv">Output</div>
		    					<div class="panel panel-body">
		    						<div class="output col-xs-12"></div>
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
					element :'#code',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#VariableDeclararion1',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#numberDiv1',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#VariableDeclararion2',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#numberDiv2',
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
					element :'#sopLine3',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#sopLine4',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#innerPrintf',
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
				case "code" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-tooltip').removeClass('hide');
					text = 'code';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
						
						$('.introjs-nextbutton').show();
					});
				break;
				case "VariableDeclararion" + sopLineCount :
					$('[contenteditable="false"]').attr('contenteditable', 'true');
					$("#VariableDeclararion1").removeClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
						text = 'You can also change the value';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$("#number" + sopLineCount).effect( "highlight",{color: 'yellow'});
							changeValue("#number" + sopLineCount , 1);
							caretAtEnd(document.getElementById('number' + sopLineCount));
							focus("#VariableDeclararion" + sopLineCount, "#number" + sopLineCount);
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "numberDiv" + sopLineCount :
					$("#VariableDeclararion" + sopLineCount).addClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('[contenteditable="true"]').attr('contenteditable', 'false');
						$("#value" + sopLineCount).effect( "highlight",{color: '#ffff33'}, 500);
						$("#value" + sopLineCount).effect( "transfer", { to: $("#addressDiv" + sopLineCount), className: "ui-effects-transfer" }, 1000 , function(){
							TweenMax.to('#numberDiv' + sopLineCount, 1, {opacity: 1, onComplete: function() {
								$("#addressValue" + sopLineCount).text($("#number" + sopLineCount).text());	
								var l1 = $("#number" + sopLineCount).offset();
								$("#addressValue" + sopLineCount).offset({top: l1.top, left: l1.left});
								$("#addressValue" + sopLineCount).addClass("circle");
								$("#number" + sopLineCount).effect( "highlight",{color: '#ffff33'}, 500);
								tl.to("#addressValue" + sopLineCount, 1.5, {top :0, left:0, onComplete:function(){
								  $("#addressValue" + sopLineCount).removeClass("circle");
								  $('.introjs-tooltip').removeClass('hide');
									text = '<span class="ct-code-b-yellow">'+ $("#number" + sopLineCount).text()+'</span>'+
											' stored in <span class="ct-code-b-yellow">' + $("#address" + sopLineCount).text() + '</span>.';
									typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
										$("#number" + sopLineCount).effect( "highlight",{color: 'yellow'});
										sopLineCount++;
										$('.introjs-nextbutton').show();
									});
								}});
							}});
						});
					});
				break;
				case "sopLine1" :
					$("#VariableDeclararion2").removeClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = '<span class="ct-code-b-yellow">printf()</span> function is used to'+
								' <span class="ct-code-b-yellow">print</span> the “<span class="ct-code-b-yellow">character</span>,'+
								' <span class="ct-code-b-yellow">string</span>, <span class="ct-code-b-yellow">float</span>,'+
								' <span class="ct-code-b-yellow">integer</span>, <span class="ct-code-b-yellow">octal</span> '+
								'and <span class="ct-code-b-yellow">hexadecimal</span> values” onto the'+
								' <span class="ct-code-b-yellow">output</span> screen.'
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-nextbutton').show();	
						});
					});
				break;
				case "outputDiv" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						if (introcode._currentStep == 6) {
							$(".output").append('<span>print  a and b values</span>');
							setTimeout(function() {
								introcode.nextStep();
							},800);
						} if (introcode._currentStep == 11) {
							$("#outputDiv").removeClass("z-index1000000");
							$(".output").append('<div id = "appendDiv"></div>');
							var textLength = $("#number3").text().length;
							for (var i = 0; i <= textLength; i++) {
								$("#appendDiv").append('<span id = "outputSpan'+ i +'">'+ $("#number3").text().charAt(i) +'</span>');
								if (i == textLength) {
									$("#appendDiv").append('<span id = "outputAnimationSpan"></span>');
								}
							}
							setTimeout(function() {
								introcode.nextStep();
							},800);
						} else {
							$("#outputDiv").removeClass("z-index1000000");
							setTimeout(function() {
								animationEffect(0);
							},1200);
						}
					});
				break;
				case "sopLine2":
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'We use <span class="ct-code-b-yellow">printf()</span> function with'+
								' <span class="ct-code-b-yellow">%d</span> format specifier to display the value of an'+
								' <span class="ct-code-b-yellow">integer</span> value.'
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
							"onclick='aValuePrint()'>Next &#8594;</a>");
						});
					});
				break;
				case "sopLine3":
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						count++;
						$('.introjs-tooltip').removeClass('hide');
						text = 'This statement will not show any  <span class="ct-code-b-red">error</span>, '+
								'Here we are use only one format specifier (i.e.) <span class="ct-code-b-yellow">%d</span>'+
								' but we are use two arguments (i.e.) <span class="ct-code-b-yellow">a</span> and'+
								' <span class="ct-code-b-yellow">b</span>. In this case its follow left to right rule. so '+
								'<span class="ct-code-b-yellow">a</span> value will be printed';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
							"onclick='aValuePrint1()'>Next &#8594;</a>");
						});
					});
				break;
				case "sopLine4":
					$("#bValue2").removeClass("blinking");
					$("#outputDiv").addClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						if (introcode._currentStep == 9) {
							$('.introjs-tooltip').removeClass('hide');
							text = 'This statement will not show any  <span class="ct-code-b-red">error</span>, '+
									'Here we are use <span class="ct-code-b-yellow">printf()</span> with in '+
									'<span class="ct-code-b-yellow">printf()</span> method i.e.(inner printf()) '+
									'First inner <span class="ct-code-b-yellow">printf()</span> will be printed '+
									'then go to outer <span class="ct-code-b-yellow">printf()</span>.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$('.introjs-nextbutton').show();
							});
						} else {
							$('.introjs-tooltip').removeClass('hide');
							text = 'Here The <span class="ct-code-b-yellow">%d</span> operator is used to '+
									' print the total number of characters in the inner printf().';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$('.introjs-nextbutton').show();
							});
						}
					});
				break;
				case "innerPrintf":
					$("#bValue2").removeClass("blinking");
					$('[contenteditable="false"]').attr('contenteditable', 'true');
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'You can also change the value';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$("#number3").effect( "highlight",{color: 'yellow'});
							caretAtEnd(document.getElementById('number3'));
							focus("#innerPrintf", "#number3");
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "restartBtn":
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
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

		changeValue("#number3", 10);
		
		$('#restartBtn').click(function() {
			location.reload();
		});
	});
	
	function focus(id1, id2) {
		$(id1).click(function(){
			$(id2).focus();
		});
	}
	
	function animationEffect(i) {
		$("#introjs-duplicate-nextbutton").remove();
		$('.introjs-tooltip').addClass('hide');
		$("#outputSpan" + i).effect( "highlight",{color: '#ffff33'}, 500);
		$("#outputSpan" + i).effect( "transfer", { to: $("#outputAnimationSpan"), className: "ui-effects-transfer" }, 1000 , function(){
		  $("#outputAnimationSpan").text(i + 1)
		  $("#outputAnimationSpan").effect( "transfer", { to: $("#outputSpan" + (i + 1)), className: "ui-effects-transfer" }, 1000 , function(){
			if ( i < $("#number3").text().length - 1) {
				animationEffect(++i);
			} else {
				if (i == $("#number3").text().length - 1) {
					setTimeout(function(){
					  introcode.nextStep();
					},800);
				} 
			}
		  });
		});
	}
	
	function aValuePrint() {
		$('.introjs-tooltip').addClass('hide');
		$(".output").append('<br><div class = "outputAppendedDiv"><span id = "outputAValue">'+
				'</span><span id = "formatSpecifierComma"></span><span id = "outputBValue"></span></div>');
		$(".introjs-duplicate-nextbutton").remove();
		$("#persentageD1").effect( "highlight",{color: '#ffff33'}, 1000,function(){
			$("#persentageD1").css({"color": "blue"});
			$("#aValue").effect( "highlight",{color: '#ffff33'}, 1000,function(){
				$("#aValue").css({"color": "blue"});
				var l1 = $("#aValue").offset();
				$("#aValueAnimation").offset({top: l1.top, left: l1.left});
				$("#aValueAnimation").removeClass("visibility-hidden");
				tl.to("#aValueAnimation" , 1, {top :14, left:54, onComplete:function(){
					$("#aValueAnimation").addClass("visibility-hidden");
					$("#numberDiv1, #outputDiv").addClass("z-index1000000");
					$("#outputAValue").text($("#addressValue1").text() );
					var l1 = $("#addressValue1").offset();
					$("#outputAValue").offset({top:l1.top, left: l1.left});
					setTimeout(function(){
						tl.to("#outputAValue" , 1, {top :0, left:0, onComplete:function(){
							$("#outputAValue").css({"color": "white"});
							$("#persentageD1, #aValue").css({"color": "black"});
							$("#numberDiv1").removeClass("z-index1000000");
							if (count == 0) {
							$('.introjs-tooltip').removeClass('hide');
							text = 'Is used to separated the two variable.'
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$("#separateOperator").css({"background": "lightblue"});
								$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
								"onclick='commaFunction()'>Next &#8594;</a>");
								});
							}
							}});	
					},1000);
				}});
			});
		});
	}
	
	function aValuePrint1() {
		$('.introjs-tooltip').addClass('hide');
		$(".output").append('<div class = "outputAppendedDiv"><span id = "outputAValue1">'+
				'</span></div>');
		$(".introjs-duplicate-nextbutton").remove();
		$("#persentageD3").effect( "highlight",{color: '#ffff33'}, 1000,function(){
			$("#persentageD3").css({"color": "blue"});
			$("#aValue2").effect( "highlight",{color: '#ffff33'}, 1000,function(){
				$("#aValue2").css({"color": "blue"});
				var l1 = $("#aValue2").offset();
				$("#aValueAnimation").offset({top: l1.top, left: l1.left});
				$("#aValueAnimation").removeClass("visibility-hidden");
				tl.to("#aValueAnimation" , 1, {top :14, left:44, onComplete:function(){
					$("#aValueAnimation").remove();
					$("#numberDiv1, #outputDiv").addClass("z-index1000000");
					$("#outputAValue1").text($("#addressValue1").text());
					var l1 = $("#addressValue1").offset();
					$("#outputAValue1").offset({top:l1.top, left: l1.left});
					setTimeout(function(){
						tl.to("#outputAValue1" , 1, {top :0, left:0, onComplete:function(){
							$("#outputAValue1").css({"color": "white"});
							$("#persentageD3, #aValue2").css({"color": "black"});
							$("#numberDiv1").removeClass("z-index1000000");
							$('.introjs-tooltip').removeClass('hide');
							text = 'b value can be omitted because there is no format specifier <span class="ct-code-b-yellow">%d</span>'
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$("#bValue2").addClass("blinking");
								$('.introjs-nextbutton').show();
							});
							}});	
					},1000);
				}});
			});
		});
	}
	
	function commaFunction() {
		$(".introjs-duplicate-nextbutton").remove();
		$("#separateOperator").addClass("blinking");
			$("#separateOperator").removeClass("blinking");
			$("#separateOperator").effect( "highlight",{color: '#ffff33'}, 1000);
			$("#separateOperator").effect( "transfer", { to: $("#formatSpecifierComma"), className: "ui-effects-transfer" }, 1000 , function(){
				$("#formatSpecifierComma").text(',').css({"color":"white"});
				$("#separateOperator").css({"background": ""});
				$('.introjs-tooltip').removeClass('hide');
				text = 'b value will be print.'
				typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
					"onclick='bValuePrint()'>Next &#8594;</a>");
				});
			});
	}
	
	function bValuePrint() {
		$(".introjs-duplicate-nextbutton").remove();
		$('.introjs-tooltip').addClass('hide');
		$("#persentageD2").effect( "highlight",{color: '#ffff33'}, 1000,function(){
			$("#persentageD2").css({"color": "blue"});
			$("#bValue").effect( "highlight",{color: '#ffff33'}, 1000,function(){
				$("#bValue").css({"color": "blue"});
				var l1 = $("#bValue").offset();
				$("#bValueAnimation").offset({top: l1.top, left: l1.left});
				$("#bValueAnimation").removeClass("visibility-hidden");
				tl.to("#bValueAnimation" , 1, {top :14, left:44, onComplete:function(){
					$("#bValueAnimation").remove();
					$("#numberDiv2, #outputDiv").addClass("z-index1000000");
					$("#outputBValue").text($("#addressValue2").text());
					var l1 = $("#addressValue2").offset();
					$("#outputBValue").offset({top:l1.top, left: l1.left});
					setTimeout(function(){
						tl.to("#outputBValue" , 1, {top :0, left:0, onComplete:function(){
							$("#outputBValue").css({"color": "white"});
							$("#persentageD2, #bValue").css({"color": "black"});
							$("#numberDiv2").removeClass("z-index1000000");
							setTimeout(function(){
								introcode.nextStep();
							},500);
						}});	
					},1000);
				}});
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
			$('.length-error-text').remove();
			var max = $(this).attr("maxlength");
			if ($.inArray(e.keyCode, [46, 8, 9, 27, 37, 39]) !== -1) {
				return;
			}
			if (id2 != 10) {
				if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
					e.preventDefault();
				}
			}
			
			if ($(this).text().length > max-1) {
				if (id2 != 10) {
					$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>String length to 2.</span>");
					e.preventDefault();
				} else {
					$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>String length to 10.</span>");
					e.preventDefault();
				}
			}
		});
		
		$(id1).on("keyup", function(e) {
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