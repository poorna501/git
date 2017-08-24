<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<title>extern variable</title>

<style type="text/css">
.introjs-tooltiptext br {
	margin: 15px;
}

.introjs-tooltip {
	min-width: 300px;
}
.introjs-tooltip {
	min-width: 180px;
}
.color-red {
	color : red;
}

.box-border {
	border-radius: 12px;
	border: 2px solid gray;
}

.buttons-div {
	margin-top: 10px;
	margin-bottom: 5px;
	text-align: center;
}

div,span {
	position: relative;
}

.creamPreTab4 {
    margin: 8px;
    padding: 5px;
    font-size: 13px;
    white-space: pre;
	-moz-tab-size: 6;
    border-radius: 8px;
    background-color: #fffae6;
}

#animationDiv {
    height: 370px;
}

#printDefinition {
    height: 65px;
    margin-bottom: 10px;
    margin-top: 10px;
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
    min-height: 100px;
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
    margin-top: 10px;
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
	display : inline-block;
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

.color-yellow {
	color : yellow;
}
#mainMemory {
	height : 100px;
}

#functionMemory {
	height : 80px;
}

.padding0 {
	padding : 0;
}

.nextBtn1 {
	background-color : green !important;
}

#numberDiv3, #numberDiv4 {
	height : 85px;
}
#addressDiv4 {
	margin-top : 5px;
}
.margin10 {
	margin-top : 10px;
}

.marginleft5 {
	margin-left : 50px;
}

#openspace, #openspace1 {
	width : 50px;
	height : 10px;
}

</style>
</head>
<body>
	<div class = "col-xs-12">
		<div class = "ct-box-main">
			<div class = "text-center">
				<h1 class = "label ct-demo-heading text-center">extern variables</h1>
			</div> 
			<div class = 'buttons-div'>
				<button type = "button" class = "btn btn-warning" id = "restartBtn">Restart</button>
			</div> 
			<div class="col-xs-12">
				<div id="printDefinition" class="col-xs-6 col-xs-offset-3 box-border visibility-hidden"></div>
			</div>
			<div class = "col-xs-12">
				<div class = "col-xs-4 col-xs-offset-1">
					<div id = "codeDiv"  class = "box-border margin-top">
						<pre class = 'creamPreTab4'>
<span id = "globalDeclaration">int x;</span>						
<span id = "funDeclaration1">int ganga();</span>
<span id = "funDeclaration2">int yamuna();</span>
<span id = "mainDeclaration">int main()</span>						
<span id = "openBrace">{</span>
	 <span id = 'variableDeclaration1'>x =<span id = "number1"> 10</span>;</span>
	 <span id = "sopLine1">printf("<span id = "percentage1">%d</span>/n"<span id = "comma1">,</span><span id = "xValue1">x</span>);</span>
	 <span id = "sopLine2">printf("<span id = "percentage2">%d</span>/n"<span id = "comma1">,</span><span id = "xValue2">ganga()</span>);</span>
	 <span id = "sopLine3">printf("<span id = "percentage3">%d</span>/n"<span id = "comma1">,</span><span id = "xValue3">yamuna()</span>);</span>
<span id = "closeBrace">}</span>
<span id = "openspace"></span>
<span id = "functionDeclaration1">int ganga()</span>
<span id = "openBrace1">{</span>
	<span id = 'variableDeclaration2'>x <span id = "num">+= <span id = "number2">10</span></span>;</span>
	<span id = 'return1'>return x;</span>
<span id = "closeBrace1">}</span>
<span id = "openspace1"></span>
<span id = "functionDeclaration2">int yamuna()</span>
<span id = "openBrace2">{</span>
	<span id = 'variableDeclaration3'>int <span id = "number3">x</span>;</span>
	<span id = 'initialize1'>x = <span id = "number4">1</span>;</span>
	<span id = 'return2'>return x;</span>
<span id = "closeBrace2">}</span>
<span id = "globalDeclaration1" class = "opacity00">int x;<span class = 'fa fa-arrow-left '></span></span></pre>						
					</div>
				</div>
					<div class = "col-xs-5">
					<div class = "col-xs-10 box-border opacity00" id = "animationDiv">
						<div class = "col-xs-12 padding0">
						<span class = "col-xs-offset-2 col-xs-8 opacity00" id = "memoryheading">memory</span>
							<div class = "col-xs-12 padding0 visibility-hidden" id = "globalMemory">
					    		<div id="numberDiv1" class="col-xs-offset-2 col-xs-4"> 
					    		<span id="aValueAnimation" class = "visibility-hidden"></span>
					    			<div class="panel-primary number-div visibility-hidden" id = "addressDiv1">
	    								<div class="panel-heading text-center number-div"><span id = "aheading1">x</span></div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center position" id="addressValue1"></span>
	    								</div>
					    			</div>
					    			<div id="address1" class="address-text text-center visibility-hidden">2878</div>
					    		</div>
							</div>
							<div id = "mainmemoryheading" class = 'col-xs-offset-2 col-xs-5 opacity00 margin10'>In main()</div>
							<div class = "col-xs-12 padding0 visibility-hidden" id = "mainMemory">
								<div id="numberDiv2" class="col-xs-offset-2  col-xs-3" >
					    			<div class="panel-primary number-div visibility-hidden"  id = "addressDiv2">
	    								<div class="panel-heading text-center number-div"><span id = "aheading2">x</span></div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center" id="addressValue2"></span>
	    								</div>
					    			</div>
					    			<div id="address2" class="address-text text-center visibility-hidden">1725</div>
					    		</div>
					    	</div>
				
					    	<div class = "col-xs-12 padding0 visibility-hidden margin10" id = "functionMemory">
						    	<div id = "functionmemoryheading" class = "col-xs-4 ">In ganga()</div><br>
						    	<div id="numberDiv3" class="col-xs-4"> </div>
						    	<div id = "functionmemoryheading1" class = 'col-xs-offset-2 col-xs-4 visibility-hidden'>In yamuna()</div>
						    	<div id="numberDiv4" class="col-xs-offset-2 col-xs-4"> 
						    		<span id="aValueAnimation" class = "visibility-hidden"></span>
						    			<div class="panel-primary number-div visibility-hidden" id = "addressDiv4">
		    								<div class="panel-heading text-center number-div"><span id = "aheading4">x</span></div>
		    								<div class="panel panel-body number-body text-center">
		    									<span class="text-center" id="addressValue4"></span>
		    								</div>
						    			</div>
						    		<div id="address4" class="address-text text-center visibility-hidden">2498</div>
						    	</div>
							</div>
						</div>
					</div>
					<div class = "col-xs-10">
			  			<div class="panel-primary output-div margin-left opacity00" id="outputDiv">
		    				<div class="panel-heading text-center" id="outputDiv">Output</div>
		    				<div class="panel panel-body">
		    					<div class="output col-xs-12">
		    						<div id = "appendDiv1"><span id = "outputAValue1"></span></div>
		    						<div id = "appendDiv2"><span id = "outputAValue2"></span></div>
		    						<div id = "appendDiv2"><span id = "outputAValue3"></span></div>
		    					</div>
		    				</div>
		  				</div>
		 			</div>
				</div>
			</div>
		</div>
	</div>
<script>

var valuelength;
var numberlength;
var p;
var z = 0;
var input;
var index = 1;
var count = 1;
$(document).ready(function() {
	intro = introJs();
	$('#restartBtn').click(function() {
		location.reload();
		});
	$("body").keypress(function(e) {
		 if (e.which === 13) {
			 e.preventDefault();
			}
	});
	intro.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		
		steps :	[{
			element :'#codeDiv',
			intro :'',
			position:"right",
		},
		{
			element :'#globalDeclaration',
			intro :'',
			position:"right" 
		},
		{
			element :'#numberDiv1',
			intro :'',
			position:"right" 
		},
		{
			element :'#mainDeclaration',
			intro :'',
			position : "right",
			tooltipClass :'hide'
		},
		{
			element :'#variableDeclaration1',
			intro :'',
			position:"bottom" 
		},
		{
			element :'#mainMemory',
			intro :'',
			position :"right" 
		},
		{
			element :'#numberDiv1',
			intro :'',
			position : "right" 
		},
		{
			element :'#sopLine1',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#outputDiv',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#sopLine2',
			intro :'',
			position :"right", 
			tooltipClass :'hide'
		},
		{
			element :'#percentage2',
			intro :'',
			position : "right",
			tooltipClass :'hide'
		},
		{
			element :'#xValue2',
			intro :'',
			position:"right", 
			tooltipClass :'hide'
		},
		{
			element :'#functionDeclaration1',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#variableDeclaration2',
			intro :'',
			position:"right" 
		},
		{
			element :'#numberDiv3',
			intro :'',
			position:"right" 
		},
		{
			element :'#numberDiv1',
			intro :'',
			position:"right" 
		},
		{
			element :'#return1',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#sopLine2',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#outputDiv',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#sopLine3',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#percentage3',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#xValue3',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#functionDeclaration2',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#variableDeclaration3',
			intro :'',
			position:"right" 
		},
		{
			element :'#numberDiv4',
			intro :'',
			position:"right" 
		},
		{
			element :'#initialize1',
			intro :'',
			position:"right" 
		},
		{
			element :'#numberDiv4',
			intro :'',
			position:"right" 
		},
		{
			element :'#return2',
			intro :'',
			position:"right", 
			tooltipClass :'hide'
		},
		{
			element :'#sopLine3',
			intro :'',
			position:"right",
			tooltipClass :'hide'
		},
		{
			element :'#outputDiv',
			intro :'',
			position:"right",
			tooltipClass:'hide'
		},
		{	element : '#printDefinition',
			intro : '',
			position : "right"
		},
		{	element :'#codeDiv',
			intro :'',
			position:"right",
		},
		{
			element :'#funDeclaration1',
			intro :'',
			position:"right",
			tooltipClass:'hide'
		},
		{
			element :'#funDeclaration2',
			intro :'',
			position:"right",
			tooltipClass:'hide'
		},
		
		{
			element :'#mainDeclaration',
			intro :'',
			position:"right",
			tooltipClass:'hide'
		},
		{
			element :'#variableDeclaration1',
			intro :'',
			position:"bottom" 
		},
		{
			element :'#openspace',
			intro :'',
			position:"right",
			tooltipClass:'hide'
		},
		{
			element :'#openspace1',
			intro :'',
			position:"right",
			tooltipClass:'hide'
		},
		{
			element :'#globalDeclaration1',
			intro :'',
			position:"right" 
		},
		{
			element :'#numberDiv1',
			intro :'',
			position:"right" 
		},
		{
			element : "#restartBtn",
			intro : "Click to Restart",
			tooltipClass : "introjs-tooltip-min-width-custom",
			position : "right"
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		case "codeDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if(intro._currentStep == 31) {
					$('.introjs-nextbutton').hide();	
					$('#globalDeclaration').append("<span class = 'fa fa-arrow-left'></span>");
					typing('.introjs-tooltiptext',"Now, declare the <span class = 'color-yellow'>global variable</span> at the bottom of the main." ,function() { 
						setTimeout(function(){
							$('#globalDeclaration1').css({'opacity':'1'});
							fromEffectWithTweenMax("#globalDeclaration", "#globalDeclaration1", function() {
								$('#globalDeclaration').css({'opacity':'0'});
								typing('.introjs-tooltiptext',"Now, let us see how this program is compiled." ,function() {
									$('.introjs-nextbutton').show();
								});
							});
						},1000);	
					});
				}
			});
		break;
		case "globalDeclaration" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		$('.introjs-tooltip').removeClass("hide");
				typing('.introjs-tooltiptext',"<span class = 'color-yellow'>global variable</span> is declared outside the main" ,function() { 
					$('#animationDiv').css({'opacity' : '1'});
					$('#globalMemory').removeClass("visibility-hidden");
			  		$('#numberDiv1').removeClass("visibility-hidden");
					$('.introjs-nextbutton').show();	
				});
			});
		break; 
		 case "numberDiv1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberDiv1').removeClass("visibility-hidden");
				if(intro._currentStep == 2 || intro._currentStep == 39) {
				typing('.introjs-tooltiptext',"Global variable is allocated memory and address." ,function() { 
		  			$('#aValueAnimation').removeClass('visibility-hidden');
					$('#addressDiv1').removeClass('visibility-hidden');
					$('#address1').removeClass('visibility-hidden');
					setTimeout(function () {
						intro.nextStep();
					}, 800);
				});
				}
				else if(intro._currentStep == 6) 
				{
					$('#number1').addClass('circle-css').effect("highlight", {color: 'yellow'}, 1000, function() {
						$('#number1').removeClass('circle-css');
						$("#addressValue1").text($("#number1").text());
						fromEffectWithTweenMax('#number1', '#addressValue1', function() {
							$('.introjs-tooltip').removeClass("hide");
							typing('.introjs-tooltiptext',"The variable x stores the value 10" ,function() { 
								$('.introjs-nextbutton').show();	
							});	
						});
					});
				} else if(intro._currentStep == 15) {
					addition();
				}
			});
		break; 
		case "mainDeclaration" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "openspace" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "openspace1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "funDeclaration1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "funDeclaration2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "variableDeclaration1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if(intro._currentStep == 4) {
					typing('.introjs-tooltiptext',"The variable x is initialized to 10." ,function() { 
						setTimeout(function () { 
							$('#mainMemory').removeClass("visibility-hidden");
							intro.nextStep(); 
					 	}, 1000); 
					});
				} else if(intro._currentStep == 35) {
					text = "This statement gives <span class = 'color-red'>error</span> because the variable  <span class = 'color-yellow'>x</span> is not declared locally or globally"
							+" at the time of compilation of this statement."
					typing('.introjs-tooltiptext',text ,function() { 
						$('.introjs-tooltipbuttons').append("<a  class='introjs-button nextBtn1' onclick = 'myfunction()'>Next&#8594;</a>");	
					});
				}
			});
		break; 
	
		case "mainMemory" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#mainmemoryheading').css({'opacity':'1'});
				$('#mainMemory').addClass('box-border');
				$('#aValueAnimation').removeClass('visibility-hidden');
				$('#addressDiv1').removeClass('visibility-hidden');
				$('#address1').removeClass('visibility-hidden');
				$('.introjs-tooltip').removeClass("hide");
				typing('.introjs-tooltiptext',"The main memory is checked for variable <span id = 'color-yellow'>x</span>. As it is not declared here, it checks globally." ,function() { 
					$('.introjs-nextbutton').show();	
				});
			});
		break;
		case "sopLine1" :
			$('#outputDiv').css({'opacity' : '1'});
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "outputDiv" :
			$(".introjs-helperLayer").one("transitionend", function() {
				 if (intro._currentStep == 8) {
					 	printDecimalValue();
				 } else if (intro._currentStep == 18) {
						count++;
						printDecimalValue();
				} else if (intro._currentStep == 29) {
						count++;
						index = 4;
						printDecimalValue();
				}
			});
		break; 
		case "sopLine2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();	
				}, 1000);
			});
		break; 
		case "percentage2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "xValue2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break;
		case "functionDeclaration1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "variableDeclaration2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext',"Here, the variable x is increased by 10." ,function() {
					setTimeout(function () {
						$('.introjs-nextbutton').show();	
					}, 1000);
				});
			});
		break; 
		case "globalDeclaration1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext',"When the control comes to this statement, the global variable is declared." ,function() {
				setTimeout(function () {
					$('#globalMemory').removeClass("visibility-hidden");
			  		setTimeout(function () {
			  			setTimeout(function () {
							$('.introjs-nextbutton').show();
							$("#extDeclaration").removeClass("z-index1000000");
			  			}, 1500);
				}, 1000);
				});
			});
		});
		break; 
		case "numberDiv3" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberDiv3').addClass('box-border');
				setTimeout(function () {
					$('#functionMemory').removeClass('visibility-hidden');
					text = "Here, <span id = 'color-yellow'>x</span> is a variable and the function <span id = 'color-yellow'>ganga()</span> is checked for the variable x in its scope.<br>"
							+"If the declaration is not within the scope, then it checks for the global section."
					typing('.introjs-tooltiptext',text ,function() { 
						$('.introjs-nextbutton').show();	
					});	
				}, 1000);
			});
		break; 
		case "return1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();	
				}, 1000);
			});
		break; 
		case "return2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();	
				}, 1000);
			});
		break; 
		case "sopLine3" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();	
				}, 1000);
			});
		break; 
		case "percentage3" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "xValue3" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break;
		case "functionDeclaration2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();	
				}, 1000);
			});
		break; 
		case "variableDeclaration3" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext',"The variable <span class = 'color-yellow'>x </span>is declared <span class = 'color-yellow'>locally</span> in the function." ,function() { 
					$('.introjs-nextbutton').show();	
				});	
			});
		break; 
		case "numberDiv4" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberDiv4').addClass('box-border');
				if(intro._currentStep == 24) {
					$('#functionmemoryheading1').removeClass("visibility-hidden");
					$('#addressDiv4').removeClass("visibility-hidden");
					$('#address4').removeClass("visibility-hidden");
					typing('.introjs-tooltiptext',"The local variable <span class = 'color-yellow'>x </span>is allocated memory." ,function() { 
						$('.introjs-nextbutton').show();
					});
				}
				if(intro._currentStep == 26)
				{
					$('#number4').addClass('circle-css').effect("highlight", {color: 'yellow'}, 1000, function() {
						$('#number4').removeClass('circle-css');
						$("#addressValue4").text($("#number4").text());
						fromEffectWithTweenMax('#number4', '#addressValue4', function() {
							$('.introjs-tooltip').removeClass("hide");
							typing('.introjs-tooltiptext',"The value 1 of the local variable x is stored in memory." ,function() { 
								$('.introjs-nextbutton').show();	
							});	
						});
					});
				}
			});
		break; 
		case "initialize1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				text = "When the local and global variable has the same name, the highest precedence is given to the local variable  within the scope of the function."
						+"<br>So, the local variable <span class = 'color-yellow'>x </span>is initialized to 1." 
				typing('.introjs-tooltiptext',text,function() { 
					$('.introjs-nextbutton').show();
				});
			});
		break; 
		case "printDefinition" :
			$('.introjs-nextbutton').hide();
				$('#globalMemory').addClass('visibility-hidden');
				$('#numberDiv1').addClass('visibility-hidden');
				$('#numberDiv4').addClass('visibility-hidden');
				$('#addressValue1').text('');
				$('#addressValue4').text('');
				$('#mainmemoryheading').addClass("visibility-hidden");
				$('#functionMemoryheading').addClass("visibility-hidden");
				$('#functionMemoryheading1').addClass("visibility-hidden");
				$('#mainMemory').addClass("visibility-hidden");
				$('#functionMemory').addClass("visibility-hidden");
				for(var i = 0; i < 4; i++) {
					$('#outputAValue'+i).text('');
				}
				$(".introjs-helperLayer").one("transitionend", function() {
				$('#printDefinition').removeClass('visibility-hidden');
				$('#printDefinition').addClass('box-border');
				text = "<ul><li>Variables that are both alive & active throughout the program are known as <span class = 'color-red'>extern variables</span> or <span class = 'color-red'>global variables</span>.</li>"
						+"<li>The extern variables are declared outside of a function.</li>"
				typing('#printDefinition',text,function() { 
					$('.introjs-tooltip').removeClass("hide");
					typing('.introjs-tooltiptext',"Now let us consider an example where the global variable is declared at the bottom of the program." ,function() { 
						$('.introjs-nextbutton').show();	
					});	
				});
			});
		break; 
		case "extDeclaration" :
			$('#extDeclaration').addClass('introjs-showElement'); 
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				text = "Whenever the <span class = 'color-yellow'>extern</span> keyword is encountered, then the control checks for the global variable which is declared at the ouside of main."  
				typing('.introjs-tooltiptext',text,function() { 
					$('.introjs-nextbutton').show();
				});
			});
		break; 
		case "restartBtn":
			$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
			$("#printDefinition").removeClass("z-index1000000");
			$('.introjs-helperLayer').one('transitionend', function () {
				$("#restartBtn").removeClass('visibility-hidden');
			});
		break; 
		}
	});

intro.start();
$('.introjs-skipbutton').hide();
$('.introjs-prevbutton').hide();
$('.introjs-nextbutton').hide();

text = "Let us consider an example of a program having a global variable."	
	typing('.introjs-tooltiptext', text, function() {
		setTimeout(function () {
			intro.nextStep();
		}, 500);
	});	
	
});

function typing(typingId, typingContent, callbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval":10,
		"cursor_color": "blue"
	}, function() {
		$(typingId).removeClass('typingCursor');
		callbackFunction();
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
function printDecimalValue() {
	$("#percentage"+count).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
		$("#percentage"+count).removeClass("z-index1000000")
		$("#xValue"+count).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
			$("#xValue"+count).removeClass("z-index1000000")
			$("#aheading"+index).addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
				$("#aheading"+index).removeClass("z-index1000000")
		  		$('#addressValue'+index).addClass('circle-css z-index1000000').effect("highlight", {color: 'yellow'}, 1000, function() {
	  				$('#addressValue'+index).removeClass('circle-css z-index1000000');
  					$("#outputAValue"+count).text($("#addressValue"+index).text());
			  		fromEffectWithTweenMax("#addressValue"+index, "#outputAValue"+count, function() {
			  			setTimeout(function () {
			  				intro.nextStep();	
						}, 1000);
				 	 }); 
  				});
	  		}); 
	  	});
	});
}
function addition() {
	$("#num").addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
		$("#num").removeClass("z-index1000000")
		$("#addressValue1").append("<span class =''>+10</span");
		setTimeout(function () {
			$("#addressValue1").text("20");
			TweenMax.fromTo("#addressValue1",0.5,{rotationX:-90},{delay : 0.5, rotationX:0,opacity:1,onComplete:function(){
				setTimeout(function () {
					typing('.introjs-tooltiptext',"The variable x is added the value 10.",function() {
						$('.introjs-nextbutton').show();	
					});
				}, 500);
			}}); 
		},800);
	});
}

function myfunction() {
	$('.nextBtn1').remove();
	typing('.introjs-tooltiptext',"Add the declaration of variable x with <span class = 'color-yellow'>keyword extern</span> before this statement.<br>This means that the variable is a global variable and is declared elsewhere.",function() {
		$('#openBrace').append('<br><span id = "extDeclaration" class = "marginleft5">extern int x;</span>');
		intro.refresh();
		setTimeout(function () {
			$('.introjs-tooltipbuttons').append("<a  class='introjs-button nextBtn1' onclick = 'myfunction1()'>Next&#8594;</a>");
		}, 1000);
	});	
}

function myfunction1() {
	$('.nextBtn1').remove();
	$("#extDeclaration").addClass("z-index1000000");
	text = "Whenever the <span class = 'color-yellow'>extern</span> keyword is encountered, then the control checks for the global variable which is declared at the ouside of main."  
	typing('.introjs-tooltiptext',text,function() { 
		$('.introjs-nextbutton').show();
	});
}	

</script> 
</body>
</html>