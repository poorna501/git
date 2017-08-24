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
<title>post-increment-operator.jsp</title> 

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
	border: 1px solid gray;
}

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}

.margin-top {
    margin-top: 25px;
}

.padding0 {
    padding: 0px;
}

#codeDiv {
 	height: 180px;
}

#animationDiv {
    height: 360px;
}

.animation-div1 {
	font-family: monospace;
	padding: 50px 0px 16px;
	opacity: 0;
	margin-top: 12px;
}

#animationDiv1 {
    margin-top: 12px;
}

.ui-effects-transfer {
    border: 1px solid blue;
    z-index: 99999999 !important;
  }
  
[contenteditable="true"] {
    outline: medium none;
}

div,span {
	position: relative;
}

.position {
	display: inline-block;
	position: relative;
}

#preIncrementDefinition {
    height: 80px;
    margin-top: 20px;
}

.creamPreTab4 {
	-moz-tab-size: 6;
    background-color: #fffae6;
    border-radius: 8px;
    font-size: 12px;
    margin: 8px;
    padding: 10px;
    white-space: pre;
}

.svg-css {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.box-padding {
	padding: 8px;
}

.panel-heading {
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
    padding: 2px;
}

.panel-body {
    min-height: 70px;
    padding: 15px 0 0;
}

.panel {
 	border-radius: 0px;
    background-color: #000;
    border: 1px solid transparent;
    border-bottom-left-radius: 6px;
    border-bottom-right-radius: 6px;
}

.panel-primary > .panel-heading {
    background-color: lightgray;
    border-color: lightgray;
    color: #000;
}

#outputDiv {
	margin-top: 10px;
}

.fa {
	color: #b3e0ff;
}

.svg-border {
    border: 2px solid gray;
    border-radius: 36%;
}

.blinking {
	animation-name: blinkk;
	animation-duration: 1s;
	animation-iteration-count: infinite;
 }

@keyframes blinkk {
	50% {
		background:  blue;
	}
}

.cupvalue {
    color: #e60073;
    font-weight: bold;
    margin-left: -30px;
    margin-top: 8px;
    position: absolute;
}
.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 1000000 !important;
}

.circle {
	border: 2px solid blue;
	padding: 0px 1px ;
    border-radius: 50%;
}

.output {
    color: white;
    margin-top: -11px;
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
			<h1 class = "label ct-demo-heading text-center">Post increment operator</h1>
		</div> 
		<div class = 'buttons-div col-xs-12'>
				<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
			</div> 
		<div class = "col-xs-10 col-xs-offset-2">
			<div class = "col-xs-4">
				<div id = "codeDiv"  class = "box-border margin-top">
					<pre class = 'creamPreTab4' id = "program">
<span id = 'xVariableDeclararionLine'>int <span id = "xVariable">x</span> = <span id='xvalue' contenteditable='true', spellcheck='false', maxlength='2'>14</span>;</span>
<span id = 'yVariableDeclararionLine'>int <span id = "yVariable">y</span> = x++;</span>
<span id = 'sopLine1'>printf("x value: %d", x);</span>
<span id = 'sopLine2'>printf("y value: %d", y);</span>
<span id = 'singleStatement'>x++;</span>
<span id = 'sopLine3'>printf("x value: %d", x);</span>
</pre>
				</div>
				<div class = "col-xs-10 col-xs-offset-1">
		  				<div class = "panel-primary output-div margin-left" id = "outputDiv">
	    					<div class = "panel-heading text-center">Output</div>
	    					<div class = "panel panel-body">
	    						<div class = "output col-xs-12">
	    						</div>
	    					</div>
	  					</div>
	 				</div>
			</div>
			<div id = "animationDiv"  class = "col-xs-5 box-border margin-top">
				<div class = 'col-xs-12'>
					<div class = 'col-xs-8 col-xs-offset-2' id = "animationDiv1">
						<div class = 'col-xs-12 text-center animation-div1'>
							<span id = 'yVariableLine' class = "box-padding ">int y = <span class = "box-padding" id = "preIncrement">x++</span></span>
							<svg class = 'svg-css'>
								<marker id = "arrowEnd" refX = "4" refY = "2.5" markerWidth = "5" markerHeight = "5" orient = "auto" style = "fill: gray;">
									<path d = "M0,0 L5,2.5 L0,5 Z"/>
								</marker>
								<text fill = "#333">
									<tspan x = "41%" y = "17%" fill = "white" class = 'svg-text'>post-Increment</tspan>
								</text>
								<line class = "svg-line" x1 = "65%" y1 = "51.3%" x2 = "65%" y2 = "39.2%" style = "marker-end: url(&quot;#arrowEnd&quot;); display: none;
									stroke-width: 2; stroke: gray; position: relative;"/>
							</svg>
						</div>
					<div class = "col-xs-12">
						<div class = "col-xs-12 text-center animation-div2 box-padding" id = "animationDiv2" style = "opacity: 0;">
	  						<span class = "box-padding">y</span>
							<span>=</span>
							<span class = "box-padding" id = "assignment">x;</span>
						</div>
					</div>
					<div class = "col-xs-12">
						<div class = "col-xs-12 text-center animation-div3 box-padding" id = "animationDiv3" style = "opacity: 0;">
	  						<span class="box-padding">x</span>
							<span>=</span>
							<span id  = "postIncrement">
							<span class = "box-padding">x</span>
							<span>+</span>
							<span class = "box-padding">1;</span>
							</span>
						</div>
					</div>
				</div>
				<div class = "col-xs-12">
				<div class = "col-xs-12" id = "expressionStatement">
				<div class="col-xs-12">
					<div class="col-xs-3 col-xs-offset-2 text-center visibility-hidden" id="xCup">
	  					<i class="fa fa-coffee fa-3x x-cup"></i><span id="xCupValue" class="cupvalue visibility-hidden">8</span><br>
						<span id="xCupVariable" class = "ct-code-b-red">x</span>
	  				</div>

					<div class="col-xs-3 col-xs-offset-1 text-center visibility-hidden" id="yCup">
	  					<i class="fa fa-coffee fa-3x y-cup"></i><span id="yCupValue" class="cupvalue visibility-hidden">8</span><br>
						<span id="yCupVariable" class = "ct-code-b-red">y</span>
	  				</div>
				</div>
				<div class = "col-xs-12">
					<div class = "col-xs-12 text-center box-padding animation-div5"  style = "opacity: 0;">
						<div id = "yvalueassignment" class = "box-padding">
		  					int<span class = "box-padding">y</span>
							<span class = "box-padding">=</span>
							<span>
							<span class = "box-padding" id  = "xValueIncrement">x++;</span>
							</span>
						</div>
					</div>
				</div>
				</div>
				<div class="col-xs-12">
					<div class = "col-xs-8 col-xs-offset-2"  id="animationDiv5">
						<div class="col-xs-12 text-center box-padding animation-div6" style = "opacity: 0;">
							<div id="singleStatementDiv">x++;</div>
						</div>
					</div>
				</div>
			</div>
				<div class = "col-xs-12">
					
				</div>
			</div>
			</div>	
		</div>
	</div>
		<div class = 'buttons-div col-xs-9'>
			<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
		</div> 
	</div>
	
	<script type="text/javascript">
var introcode;
var typingInterval = 1;
var tl = new TimelineLite();
var sopLineCount = 1;

	$(document).ready(function(){
	 	introcode = introJs();
		introcode.setOptions({
			showStepNumbers : false,
			exitOnOverlayClick : false,
			showBullets : false,
			exitOnEsc : false,
			keyboardNavigation : false,
				steps : [{
							element :'#program',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#yVariableDeclararionLine',
							intro :'',
							tooltipClass : "hide",
							animateStep: "working"
						},{
							element :'#animationDiv1',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#xVariableDeclararionLine',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#xCup',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#yVariableDeclararionLine',
							intro :'',
							tooltipClass : "hide",
							animateStep: "example"
						},{
							element :'#expressionStatement',
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
							element :'#singleStatement',
							intro :'',
							tooltipClass : "hide"
						},{
							element: '#animationDiv5',
							intro: '',
							tooltipClass: 'hide'
						},{
							element :'#sopLine3',
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
		introcode.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
			switch (elementId) {
				case "program" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-tooltip').removeClass('hide');
					text = 'Here, we will learn how the <span class="ct-code-b-yellow">post-increment</span>'+
							' operator works on a simple statement and on an expression.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
					
						$('.introjs-nextbutton').show();
					});
				break;
				case "yVariableDeclararionLine"  :
					$(".introjs-duplicate-nextbutton").remove();
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
						case "working" :
							$('.introjs-tooltip').removeClass('hide');
							text = 'First let us know how the <span class="ct-code-b-yellow">post-Increment operator</span> '+
							'works on an expression.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$('.introjs-nextbutton').show();
							});
						break;
						case "example" :
							$('.introjs-tooltip').removeClass('hide');
							text = 'Now see how this expression works.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$('.introjs-nextbutton').show();
							});
						break;
						}
					});
				break;
				case "animationDiv1"  :
					introcode.refresh();
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						TweenMax.to('.animation-div1', 1, {opacity: 1, onComplete: function() {
							svgBoxAnimation(0, function(){
								$('.introjs-tooltip').removeClass('hide');
								text = 'When it is used in an expression, the <span class="ct-code-b-yellow">post-increment</span> '+
										' operator first the value of <span class="ct-code-b-yellow">x</span> will be assigned to the '+
										'variable <span class="ct-code-b-yellow">y</span> and then the value of '+
										'<span class="ct-code-b-yellow">x</span> will be <span class="ct-code-b-yellow">incremented</span>'+
										' by <span class="ct-code-b-yellow">1</span>.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									xValueAssignedToVariabley();
								});
							});
						}});
					});
				break;
				case "xVariableDeclararionLine":
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The declaration of a variable <span class="ct-code-b-yellow">x</span>.'+
								' <br>You can also change the value.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$("#xvalue").effect( "highlight",{color: 'yellow'});
							caretAtEnd(document.getElementById('xvalue'));
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "xCup":
					$("#xvalue").attr("contenteditable", "false");
					$("#xVariableDeclararionLine").addClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$("#xVariable").effect( "highlight",{color: '#ffff33'}, 500);
						$("#xVariable").effect( "transfer", { to: $("#xCup"), className: "ui-effects-transfer" }, 1000 , function(){
							$("#xCup").removeClass("visibility-hidden");
							$("#xCupValue").text($("#xvalue").text());
							var l1 = $("#xvalue").offset();
							var l2 = $("#xCupValue").offset();
							var topLength = l1.top- l2.top;
							var leftLength = l1.left-l2.left;
							$("#xCupValue").addClass("z-index100000000").removeClass("visibility-hidden");
							tl.from("#xCupValue", 1, {top :topLength, left:leftLength, onComplete:function() {
								$("#xCupValue").removeClass("z-index100000000");
								/* var l1 = $("#xvalue").offset();
								var l2 = $("#xCupValue").offset({top:l1.top, left:l1.left});
								$("#xCupValue").addClass("z-index100000000").removeClass("visibility-hidden");
								tl.to("#xCupValue", 1, {top :0, left:57, onComplete:function(){ */
							   $("#xVariableDeclararionLine").removeClass("z-index1000000");
							   setTimeout(function(){
								   introcode.nextStep();
							   },800);
							}});
						});							
					});
				break;
				case "expressionStatement":
					$("#yVariableDeclararionLine").addClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$("#yVariable").effect( "highlight",{color: '#ffff33'}, 500);
						$("#yVariable").effect( "transfer", { to: $("#yCup"), className: "ui-effects-transfer" }, 1000 , function(){
							$("#yCup").removeClass("visibility-hidden");
								setTimeout(function() {
									$("#yVariableDeclararionLine").effect( "highlight",{color: '#ffff33'}, 500);
									$("#yVariableDeclararionLine").effect( "transfer", { to: $("#yvalueassignment"), className: "ui-effects-transfer" }, 1000 , function(){
										TweenMax.to('.animation-div5', 1, {opacity: 1, onComplete: function() {
											$("#yVariableDeclararionLine").removeClass("z-index1000000");
											postIncrementOperatorAnimation();
										}});
									});
							  },1000);
						});							
					});
				break;
				case "sopLine" + sopLineCount:
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						setTimeout(function(){
							introcode.nextStep();
							sopLineCount++;
						},1000);
					});
					break;
				case "outputDiv":
					$("#xCup").removeClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						if (introcode._currentStep == 8) {
							$(".output").append('<span> x value : '+ $("#xCupValue").text() + '</span><br>');
							setTimeout(function(){
								introcode.nextStep();
							},1000);
						} else if (introcode._currentStep == 10) {
							$(".output").append('<span> y value : '+ $("#yCupValue").text() + '</span>');
								setTimeout(function(){
									introcode.nextStep();
								},1000);
						} else {
							$(".output").append('<br><span> x value : '+ $("#xCupValue").text() + '</span>');
							setTimeout(function(){
								introcode.nextStep();
							},1000);
						}
						
					});
					break;
				case "singleStatement"  :
					$(".introjs-duplicate-nextbutton").remove();
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
							$('.introjs-tooltip').removeClass('hide');
							text = 'Let us see how <span class="ct-code-b-yellow">post-increment operator</span> works on a single statement.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
								$('.introjs-nextbutton').show();
							});
					});
				break;
				case "animationDiv5"  :
					$(".introjs-duplicate-nextbutton").remove();
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$("#singleStatement").effect( "highlight",{color: 'yellow'});
						$("#singleStatement").effect( "transfer", { to: $("#singleStatementDiv"), className: "ui-effects-transfer" }, 1000 , function(){
							TweenMax.to('.animation-div6', 1, {opacity: 1, onComplete: function() {
								$('.introjs-tooltip').removeClass('hide');
								text = 'The <span class="ct-code-b-yellow">x</span> value will be increment by <span class="ct-code-b-yellow">1</span>.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
									$("#xCup").addClass("z-index1000000");
									$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
									$(".introjs-duplicate-nextbutton").click(function() {
										$('.introjs-tooltip').removeClass('hide');
										$(".x-cup").addClass("blinking");
										$(".introjs-duplicate-nextbutton").remove();
										TweenMax.to($("#xCupValue"), 1, {rotationX : -90, onComplete:function() {
											$("#xCupValue").text(parseInt($("#xCupValue").text()) + 1);
											if ($("#xCupValue").text().length == 3) {
												 $("#xCupValue").css({"left": 55});
											}
											TweenMax.to($("#xCupValue"), 1, {rotationX : 0, onComplete:function() {
												$(".x-cup").removeClass("blinking");
												$(".introjs-nextbutton").show();
											}});
										}});
									});
								});
							}});
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
	
	function postIncrementOperatorAnimation() {
		$('.introjs-tooltip').removeClass('hide');
		text = 'First <span class="ct-code-b-yellow">x</span> value <span class="ct-code-b-yellow">'+
				$("#xvalue").text() +'</span> will be assign to the variable '+
				'<span class="ct-code-b-yellow">y</span>.';
		typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
			$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
			$(".introjs-duplicate-nextbutton").click(function() {
				$('.introjs-tooltip').removeClass('hide');
				$(".introjs-duplicate-nextbutton").remove();
				$("#yCupValue").text($("#xCupValue").text());
				$(".y-cup").addClass("blinking");
				var l1 = $("#xCupValue").offset();
				var l2 = $("#yCupValue").offset();
				var topLength = l1.top- l2.top;
				var leftLength = (l1.left - l2.left) + 55;
				$("#yCupValue").addClass("z-index100000000").removeClass("visibility-hidden");
				/* var l1 = $("#xCupValue").offset();
				var l2 = $("#yCupValue").offset({top:l1.top, left:l1.left}); */
				//tl.to("#yCupValue", 1, {top :0, left:57, onComplete:function(){
				tl.from("#yCupValue", 1, {top :topLength, left:(leftLength), onComplete:function(){
					$(".y-cup").removeClass("blinking");
					$("#yCupValue").removeClass("z-index100000000");
					$('.introjs-tooltip').removeClass('hide');
					text = 'Now <span class="ct-code-b-yellow">x</span> value <span class="ct-code-b-yellow">'+
							$("#xvalue").text() +'</span> will be <span class="ct-code-b-yellow">increment</span>'+
							' by <span class="ct-code-b-yellow">1</span>.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
						$(".introjs-duplicate-nextbutton").click(function() {
							$('.introjs-tooltip').removeClass('hide');
							$(".x-cup").addClass("blinking");
							$(".introjs-duplicate-nextbutton").remove();
							TweenMax.to($("#xCupValue"), 1, {rotationX : -90, onComplete:function() {
								$("#xCupValue").text(parseInt($("#xCupValue").text()) + 1);
								if ($("#xCupValue").text().length == 3) {
									 $("#xCupValue").css({"left": 52});
								}
								TweenMax.to($("#xCupValue"), 1, {rotationX : 0, onComplete:function() {
									$(".x-cup").removeClass("blinking");
									$(".introjs-nextbutton").show();
								}});
							}});
						});
					});
				}});
			});
		});
	}
	
	function xValueAssignedToVariabley() {
		$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>" + 
		"Next &#8594;</a>");
		$(".introjs-duplicate-nextbutton").click(function() {
			$('.introjs-tooltip').addClass('hide');
			$(".introjs-duplicate-nextbutton").remove();
			TweenMax.to('.animation-div2', 1, {opacity: 1, onComplete: function() {
				$('.introjs-tooltip').removeClass('hide');
				text = 'First <span class="ct-code-b-yellow">x</span> value will be assigned to the '+
				'variable <span class="ct-code-b-yellow">y</span>.';
				typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
					xValueIncrementByOne();
				});
			}});
		});
	}
	
	function xValueIncrementByOne() {
		$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>" + 
		"Next &#8594;</a>");
		$(".introjs-duplicate-nextbutton").click(function() {
			$('.introjs-tooltip').addClass('hide');
			$(".introjs-duplicate-nextbutton").remove();
			TweenMax.to('.animation-div3', 1, {opacity: 1, onComplete: function() {
				$('.introjs-tooltip').removeClass('hide');
				text = 'Now the valueof <span class="ct-code-b-yellow">x</span> will be '+
					'<span class="ct-code-b-yellow">incremented</span> by <span class="ct-code-b-yellow">1</span>.';
				typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
					$('.introjs-nextbutton').show();
				});
			}});
		});
	}
	
	function svgBoxAnimation(index, callBackFunction) {
		$("#preIncrement").addClass("svg-border");
		$('.svg-line').eq(index).show();
		TweenMax.to($('.svg-line').eq(index), 1, {attr: {y2: '20%'}, onComplete: function() {
			TweenMax.to($('.svg-text').eq(index), 1, {fill: '#333', onComplete: function() {
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
				$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>String length to 2.</span>");
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