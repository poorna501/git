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
<title>automatic variable</title>

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
    padding: 5px;
    font-size: 13px;
    white-space: pre;
	-moz-tab-size: 6;
    border-radius: 8px;
    background-color: #fffae6;
    overflow: -moz-hidden-unscrollable;
}

#animationDiv {
    height: 280px;
}

#printDefinition {
    height: 100px;
    margin-bottom: 20px;
    margin-top: 15px;
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
    min-height: 80px;
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

#aValueAnimation, #bValueAnimation {
    left: 54px;
    top: 22px;
    z-index: 1000000;
    color: red;
}

#mainMemory {
	height : 100px;
}

#functionMemory {
	height : 100px;
}

.padding0 {
	padding : 0;
}

.introjs-tooltip {
	min-width: 180px;
}
.color-yellow {
	color : yellow;
}
#numberDiv1,#numberDiv2,#numberDiv3 {
	margin-top : 10px;
}

#numberDiv3 {
	height:100px;
}
#addressDiv3 {
	margin-top : 10px;
}
</style>
</head>
<body>
	<div class = "col-xs-12">
		<div class = "ct-box-main">
			<div class = "text-center">
				<h1 class = "label ct-demo-heading text-center">Automatic variables</h1>
			</div> 
			<div class = 'buttons-div'>
				<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
			</div> 
			<div class="col-xs-12">
				<div id="printDefinition" class="col-xs-6 col-xs-offset-3  visibility-hidden"></div>
			</div>
			<div class = "col-xs-12">
				<div class = "col-xs-6 padding0">
					<div id = "codeDiv"  class = "box-border margin-top">
						<pre class = 'creamPreTab4'>
<span id = 'functionDeclaration'>int ganga();</span>						
<span id = "mainDeclaration">int main()</span>						
<span id = "openBrace">{</span>
	<span id = "automainDeclaration"><span id = "autoDeclaration">auto </span><span id = 'autoDeclaration1'>int <span id = "value1">a,b;</span></span></span>						
	<span id = 'variableDeclaration1'>a =<span id = "number1"> 10</span>;</span>
	<span id = 'functionDeclaration1'>ganga();</span>
	<span id = "sopLine1">printf("The local variable value within main() = <span id = "percentage1">%d</span>/n"<span id = "comma1">,</span><span id = "aValue1">a</span>);</span>
<span id = "closeBrace">}</span><br>
<span id = "mainfunctionDeclaration">void ganga()</span>
<span id = "openBrace1">{</span>
	<span id = 'variableDeclaration2'>int a = <span id = "number3">15</span>;</span>
	<span id = "sopLine2">printf("The local variable value within ganga() = <span id = "percentage2">%d</span>/n"<span id = "comma2">, </span><span id = "aValue2">a</span>);</span>
<span id = "closeBrace1">}</span></pre>
					</div>
				</div>
				<div class = "col-xs-5">
					<div class = "col-xs-10 box-border opacity00" id = "animationDiv">
						<div class = "col-xs-12 padding0">
						<span class = "col-xs-offset-2 col-xs-8 opacity00" id = "memoryheading">memory</span>
							<div id = "mainmemoryheading" class = 'col-xs-offset-2 col-xs-5 opacity00'>In main()</div>
							<div class = "col-xs-12 padding0 visibility-hidden" id = "mainMemory">
							
								<div id="numberDiv1" class="col-xs-4" >
					    			<div class="panel-primary number-div visibility-hidden"  id = "addressDiv1">
	    								<div class="panel-heading text-center number-div"><span id = "aheading1">a</span></div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center" id="addressValue1"></span>
	    								</div>
					    			</div>
					    			<div id="address1" class="address-text text-center visibility-hidden">1025</div>
					    		</div>
					    		<div id="numberDiv2" class="col-xs-offset-2 col-xs-4"> 
					    		<span id="bValueAnimation" class = ""></span>
					    			<div class="panel-primary number-div visibility-hidden" id = "addressDiv2">
	    								<div class="panel-heading text-center number-div">b</div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center" id="addressValue2"></span>
	    								</div>
					    			</div>
					    			<div id="address2" class="address-text text-center visibility-hidden">2450</div>
					    		</div>
					    	</div>
				
					    	<div class = "col-xs-12 padding0 visibility-hidden" id = "functionMemory">
					    	<div id = "functionmemoryheading" class = 'col-xs-offset-2 col-xs-5'>In ganga()</div>
					    		<div id="numberDiv3" class="col-xs-offset-2 col-xs-4"> 
					    		<span id="aValueAnimation" class = "visibility-hidden"></span>
					    			<div class="panel-primary number-div visibility-hidden" id = "addressDiv3">
	    								<div class="panel-heading text-center number-div"><span id = "aheading">a</span></div>
	    								<div class="panel panel-body number-body text-center">
	    									<span class="text-center" id="addressValue3"></span>
	    								</div>
					    			</div>
					    			<div id="address3" class="address-text text-center">2398</div>
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
var lenOfInput;
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
			element :'#mainDeclaration',
			intro :'',
			position:"right",
		},
		{
			element :'#automainDeclaration',
			intro :'',
			position:"right" 
		},
		{
			element :'#animationDiv',
			intro :'',
			position:"right",
			tooltipClass : "hide"
		},
		{
			element :'#numberDiv1',
			intro :'',
			position:"right" 
		},
		{
			element :'#numberDiv2',
			intro :'',
			position:"right" 
		},
		{
			element :'#mainMemory',
			intro :'',
			position:"right" 
		},
		{
			element :'#variableDeclaration1',
			intro :'',
			position:"right" 
		},
		{
			element :'#addressDiv1',
			intro :'',
			position:"right" 
		},
		{
			element :'#functionDeclaration1',
			intro :'',
			position:"right" 
		},
		{
			element :'#mainfunctionDeclaration',
			intro :'',
			position:"right",
			tooltipClass : "hide"
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
			element :'#sopLine2',
			intro :'',
			position:"right",
			tooltipClass : "hide"
		},
		{
			element :'#outputDiv',
			intro :'',
			position:"right",
			tooltipClass : "hide"
		},
		{
			element :'#closeBrace1',
			intro :'',
			position:"right" 
		},
		{
			element :'#sopLine1',
			intro :'',
			position:"right",
			tooltipClass : "hide"
		},
		{
			element :'#outputDiv',
			intro :'',
			position:"right",
			tooltipClass : "hide"
		},
		{
			element :'#printDefinition',
			intro :'',
			position:"right",
			tooltipClass : "hide"
		},
		{
			element : "#restartBtn",
			intro : "Click to Restart",
			tooltipClass: "introjs-tooltip-min-width-custom",
			position : "right"
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		case "codeDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			});
		break;
		case "automainDeclaration" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		$('.introjs-tooltip').removeClass("hide");
				typing('.introjs-tooltiptext',"An <span class='color-yellow'>automatic</span> or <span class='color-yellow'>local</span> variable is declared with keyword <span class='color-yellow'>auto</span> which is not mandatory." ,function() { 
					$('#animationDiv').css({'opacity':'1'});
					$('.introjs-nextbutton').show();	
				});
			});
		break; 
		case "mainDeclaration" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				text = "<span class='color-yellow'>main()</span> is the operating system call."
						+"<ul><li><span class='color-yellow'>main()</span> is execution starting point for any C program.</li></ul>"
				typing('.introjs-tooltiptext',text ,function() { 
					$('.introjs-nextbutton').show();	
				});
			});
		break;
		case "animationDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#mainmemoryheading').css({'opacity':'1'});
				$('#mainMemory').removeClass("visibility-hidden");
		  		$('#mainMemory').addClass('box-border');
		  		setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "numberDiv1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"Memory is allocated for variable <span class = 'color-yellow'>a</span> which works within the scope of main()." ,function() { 
		  			$('#aValueAnimation').removeClass('visibility-hidden');
					$('#addressDiv1').removeClass('visibility-hidden');
					$('#address1').removeClass('visibility-hidden');
					$('.introjs-nextbutton').show();
		  		});
			});
		break; 
		case "numberDiv2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"Memory is allocated for variable <span class = 'color-yellow'>b</span> which works within the scope of main()." ,function() { 
		  			$('#addressDiv2').removeClass('visibility-hidden');
		  			$('#address2').removeClass('visibility-hidden');
					setTimeout(function () {
						intro.nextStep();
					}, 1000);
		  		});
			});
		break; 
		case "variableDeclaration1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext',"The variable <span class = 'color-yellow'>a</span> is initialized to <span class = 'color-yellow'>10</span>." ,function() { 
					setTimeout(function () {
						intro.nextStep();
					}, 1000);
				});
			});
		break; 
		case "addressDiv1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				TweenMax.to('#numberDiv1', 1, {opacity: 1, onComplete: function() {
					$('#number1').addClass('circle-css').effect("highlight", {color: 'yellow'}, 1000, function() {
						$('#number1').removeClass('circle-css');
						$("#addressValue1").text($("#number1").text());
						fromEffectWithTweenMax('#number1', '#addressValue1', function() {
							$('.introjs-tooltip').removeClass("hide");
							typing('.introjs-tooltiptext',"The value <span class = 'color-yellow'>10</span> is stored in the memory of variable a." ,function() { 
								$('.introjs-nextbutton').show();	
							});	
						});
					});
				}});
			});
		break; 
		case "mainMemory" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('.introjs-tooltip').removeClass("hide");
				typing('.introjs-tooltiptext',"The default values of the variables <span class = 'color-yellow'>a and b</span> are garbage values." ,function() { 
					$('.introjs-nextbutton').show();
	  		 	});
			});
		break;
		case "functionDeclaration1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('.introjs-tooltip').removeClass("hide");
				typing('.introjs-tooltiptext',"function <span class = 'color-yellow'>ganga()</span> is called and the control is transferred from main() to ganga()." ,function() { 
					$('.introjs-nextbutton').show();
	  		 	});
			});
		break;
		case "mainfunctionDeclaration" :
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
				text = "The variable <span class = 'color-yellow'>a</span> is declared and initialized within the scope of ganga(), so it is treated as local or automatic variable."
						+"<br>Note: Here, <b>keyword </b><span class = 'color-yellow'>auto</span> is not used."
				typing('.introjs-tooltiptext',text ,function() { 
					$('.introjs-nextbutton').show();
		  		 });
			});
		break; 
		case "numberDiv3" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberDiv3').addClass('box-border');
				$('#functionMemory').removeClass('visibility-hidden');
	  			$('#addressDiv3').removeClass('visibility-hidden');
	  			$('.introjs-tooltip').removeClass("hide");
				typing('.introjs-tooltiptext',"Memory is allocated for variable a which works within the scope of <span class = 'color-yellow'>ganga()</span>" ,function() { 
	  			TweenMax.to('#numberDiv3', 1, {opacity: 1, onComplete: function() {
					$('#number3').addClass('circle-css').effect("highlight", {color: 'yellow'}, 1000, function() {
						$('#number3').removeClass('circle-css');
						$("#addressValue3").text($("#number3").text());
						fromEffectWithTweenMax('#number3', '#addressValue3', function() {
							$('.introjs-nextbutton').show();
						});
					});
				}}); 
				});
			});
		break; 
		case "sopLine2" :
			$('#outputDiv').css({'opacity':'1'});
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1000);
			});
		break; 
		case "outputDiv" :
			$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				 if (intro._currentStep == 14) {
					printDecimalValue();
				 }
				 else if (intro._currentStep == 17) {
					printDecimalValue2();
				} 
			});
		break;
		case "closeBrace1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					typing('.introjs-tooltiptext',"This is the end of the function definition <span class = 'color-yellow'>ganga()</span>, so the local variables are destroyed whenever the function execution is completed." ,function() { 
						$('.introjs-nextbutton').show();
					});
				}, 1000);
			});
		break; 
		case "sopLine1" :
			$('#functionMemory').addClass('visibility-hidden');
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function () {
					intro.nextStep();
				}, 1500);
			});
		break; 
		case "printDefinition" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#printDefinition').addClass('box-border');
				text = "<ul><li><span class = 'ct-code-b-red'>Automatic or local variables</span> are declared inside the function in which they are to be utilized.</li>"
						+"<li><span class = 'ct-code-b-red'>Automatic variables</span> are created when the function is called and destroyed automatically when the function is exited.</li>"
						+"<li>The <span class = 'ct-code-b-red'>scope</span> and <span class = 'ct-code-b-red'>lifetime</span> of a local variable is only within the <span class = 'ct-code-b-red'>function</span>.</li></ul>"
				typing('#printDefinition',text,function() { 
					setTimeout(function () {
						intro.nextStep();
					}, 3000);
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

text = "Let us consider a sample code with local variables."	
	typing('.introjs-tooltiptext', text, function() {
		setTimeout(function () {
			$('.introjs-nextbutton').show();
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
  	$("#outputAValue1").text("The local variable value within ganga() = ");
  	$("#percentage2").addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
  		$("#percentage2").removeClass("z-index1000000");
  		$("#aValue2").addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
  			$("#aValue2").removeClass("z-index1000000")
  			$("#aheading").addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
  				$("#aheading").removeClass("z-index1000000")
  				$('#addressValue3').addClass('circle-css z-index1000000').effect("highlight", {color: 'yellow'}, 1000, function() {
  					$('#addressValue3').removeClass('circle-css z-index1000000');
  					$("#outputAValue1").append("<span id = 'output1'>"+ $("#addressValue3").text()+"</span>");
  					fromEffectWithTweenMax("#addressValue3", "#output1", function() { 
			  			setTimeout(function () {
			  				intro.nextStep();
						}, 3000);
				   });  
  				});
	  		}); 
	  	});
	});
}

function printDecimalValue2() {
	$("#outputAValue2").text("The local variable value within main() = ");
	$("#percentage1").addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
		$("#percentage1").removeClass("z-index1000000")
		$("#aValue1").addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
			$("#aValue1").removeClass("z-index1000000")
			$("#aheading1").addClass("z-index1000000").effect( "highlight",{color: 'yellow'},500, function() {
				$("#aheading1").removeClass("z-index1000000")
		  		$('#addressValue1').addClass('circle-css z-index1000000').effect("highlight", {color: 'yellow'}, 1000, function() {
	  				$('#addressValue1').removeClass('circle-css z-index1000000');
	  				$("#outputAValue2").append("<span id = 'output2'>"+ $("#addressValue1").text()+"</span>");
			  	 	fromEffectWithTweenMax("#addressValue1", "#output2", function() {
			  			setTimeout(function () {
							$('#printDefinition').removeClass('visibility-hidden');
							intro.nextStep();
						}, 3000);
				  });  
  				});
	  		}); 
	  	});
	});
}
</script>
</body>
</html>