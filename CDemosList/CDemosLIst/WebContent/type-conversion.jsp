<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>type-conversion</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/animate.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js" type="text/javascript"></script>
<style>

.padding-col0 {
	padding: 0;
}

.margin-top {
	margin-top: 35px;
}

.margin-top25 {
	margin-top: 25px;
}

.height {
	height: 600px;
}

.margin {
    margin: 0 13px;
}
 
.col-xs-5 {
    width: 47.5%;
}

.box-div {
	background-color: hsl(120, 100%, 31%) !important;
	background-image: linear-gradient(#F9DC00, #AE9C0E);
	background-repeat: repeat-x;
	border-color: #009e00 #009e00 hsl(120, 100%, 26.5%);
	border-radius: 6px;
	color: #fff !important;
	display: inline;
	padding: 10px;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.29);
	font-size: 16px;
}

.row-div1 {
	margin: 10px 0;
	padding: 10px 0;
}

.user-btn {
	background-color: green;
}

.padding10 {
 	padding: 10px 0;
 }
 
 div, span {
    position: relative;
}

.row-div2, .row-div3 {
	margin-bottom: 15px;
	margin-top: 80px;
	padding: 10px 0;
}

.col-xs-offset-3 {
    margin-left: 30%;
}

.svg-css {
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
}

.ct-bt-next-div {
    float: right;
    cursor: default;
}

#implicitExampleType {
    height: 150px;
    width: 100%;
}

.text-center {
	text-align: center;
}

[contenteditable=true]:empty:before {
	content: attr(placeholder);
	color: #B8B8A0;
}

.error-msg {
	color: red;
	font-weight: bold;
}

.int, .float {
	outline: none;
	color: #E34E14; 
}

#mainAutomaticAnimationDiv, #mainAssignmentAnimationDiv {
	height: 150px;
}

.display-inline-block {
	display: inline-block;
}

.font-weight-bold {
 	font-weight: bold;
}
 
 table, th, td {
    border: 1px solid black;
}

.margin-top105 {
	margin-top: 105px;
}

.red {
	color: red;
}

#buttonDiv {
	height: 30px;
}

.margin-left10 {
	margin-left: 10px;
}
</style>
</head>
<body>
<script>
var intro;
var typingSpeed = 5;
var text1 = "Click on any button to see the different examples on Implicit type conversion.";
$(document).ready(function() {
	$("#automaticButton").removeAttr("disabled");
	$("#assignmentButton").removeAttr("disabled");
	$("#restart").click(function() {
		
		location.reload();
		
	})
	
	
	$("#automaticButton").click(function() {
		
		$('#textSpan1').empty();
		$('#totalDiv').addClass('margin-top105');
		$('#totalDiv').append("<div id='mainAutomaticAnimationDiv' class='col-xs-12'>"
								+ "<div class='col-xs-12 opacity00' id='automaticAnimationDiv'>"
								+"<div  id='intDiv' class='col-xs-6 text-center'><b>int i = </b>"
								+"<span contenteditable='true' spellcheck='false' class='int' id='intEditor' placeholder='int' maxlength='2'><b>12</b></span></div>"
								+"<div id='floatDiv' class='col-xs-6 text-center'><b>float f = </b>"
								+"<span contenteditable='true' spellcheck='false' class='float' id='floatEditor' placeholder='float' maxlength='4'><b>12.34</b></span>"
								+"</div></div>"
								+"<div id='sum' class='margin-top col-xs-offset-4 opacity00'><b>i + f = </b>"
								+"<span id='sumMain'><span id='intText' class='display-inline-block font-weight-bold'><b></b></span>"
								+"<span id='plus' class=''><b> + </b></span>"
								+"<span id='floatText' class='display-inline-block font-weight-bold'></span><b></b></span></div>"
								+"<div class='col-xs-offset-4 margin-top opacity00' id='result'><b>result = </b>"
								+"<span id='resultVal' class='display-inline-block opacity00 font-weight-bold'></span></div></div>");  
		valueChecking();
		$('#buttonDiv').addClass('opacity00');
		$('#automaticButton').addClass('clicked');
		$("#automaticButton").attr("disabled", true);
		$('#automaticButton').css( 'cursor', 'default');
		$("#exampleDiv").addClass('introjs-showElement');
		$('#automaticButton').addClass('auto');
		$('#textSpan').empty();
		intro.nextStep();
		$('.introjs-nextbutton').hide();
	});
	$("#assignmentButton").click(function() {
		$('#textSpan1').empty();
		$('#totalDiv').append("<div id='mainAssignmentAnimationDiv' class='col-xs-12'>"
								+ "<div id='intValType' class='col-xs-offset-5 opacity00'>"
								+ "int a =<span id='intValDeclaration 'class='font-weight-bold red'> 37.5</span></div>"
								+ "<div id='resultOfAssignmetnt' class='margin-top col-xs-offset-3 opacity00'>The value of a = "
								+"<span id='assignmentFlip' class='font-weight-bold opacity00 display-inline-block'>37.5</span></div></div>");
		$('#totalDiv').removeClass('margin-top105');
		$('#mainAutomaticAnimationDiv').remove();
		$('#assignmentButton').addClass('clicked');
		$("#assignmentButton").attr("disabled", true);
		$('#assignmentButton').css( 'cursor', 'default');
		$('#buttonDiv').addClass('opacity00');
		$("#exampleDiv").addClass('introjs-showElement');
		$('#textSpan').empty();
		intro.nextStep();
		$('.introjs-nextbutton').hide();
	});
	
	var typingId;
	var typingContent;
	var typingInterval;
	var cursorColor;
	var typingCallbackFunction;
	intro = introJs();
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [ {
			element : "#conversionDiv",
			intro : "",
			tooltipClass : "hide"
		}, {
			element : "#conversionDiv",
			intro : "",
			tooltipClass : "hide"
		}, {
			element : "#implicitExampleType",
			intro : "",
			position : "left"
		}, {
			element : "#buttonDiv",
			intro : "",
			position : "bottom"
		}, {
			element : "#exampleDiv",
			intro : "",
			position : "left"
		}, {
			element : "#restart",
			intro : "",
			position : "left"
		}
		]});
	intro.onbeforechange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
			case "conversionDiv":
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 1) {
				$('#typeConversionDiv').append('<div class="text-center row-div1 opacity00" id="typesDiv">'
												+ '<div class="box-div " id="typesHeading">Type conversion</div></div>');
				$('#typeConversionDiv').append('<div id="implicitAndExplictDiv" class="text-center row-div2 col-xs-12">'
												+ '<div id="implicitDiv" class="box-div col-xs-offset-2 col-xs-3 opacity00"><span class ="padding10" id ="implicitSpan">'
												+ 'Implicit</span></div>'
												+ '<div id="explicitDiv" class="box-div col-xs-offset-2 col-xs-3 opacity00"><span class ="padding10" id ="explicitSpan">'
												+ 'Explicit</span>');
				$('#typeConversionDiv').append('<div id="automaticAndAssignmentDiv" class="text-center row-div3 opacity00 col-xs-12">'
												+ '<div id="automaticDiv" class="box-div col-xs-2"><span class="padding10" id="automaticSpan">'
												+ 'Automatic</span></div>'
												+ '<div id="assignmentDiv" class="box-div col-xs-offset-2 col-xs-3"><span class="padding10 id="assignmentSpan">'
												+ 'Assignment</span></div>');
				$(".row-div1").removeClass('opacity00');
				TweenMax.to("#arrowMark1", 1	, {attr:{y2: "26%"},onComplete:function() {
					revealImplicitAndExplicit();
				}});
			}
			break;
			case "implicitExampleType":
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<b class ='ct-code-b-yellow'>Implicit</b> type conversion definition.";
			 	typing(".introjs-tooltiptext", text, function() {
			 		$('#implicitExampleType').append("<span id='textSpan'></span>");
			 		typingId = '#textSpan';
			 			typingContent = '<b>Implicit</b> type conversion  means one data type value is converted '
			 						+ 'into another type value automatically by the system.<br> There are two types of <b>Implicit '
			 						+ 'type conversions.</b><br>'; 
			 		typing(typingId, typingContent, function() {
			 			$('#implicitExampleType').append("<span id='textSpan1'></span>");
			 			$(typingId).removeClass('typingCursor');
			 			$('.introjs-nextbutton').show();
			 		});
	        	});
			});
			break;
			case "buttonDiv":
				$('#mainAutomaticAnimationDiv').remove();
				$('#mainAssignmentAnimationDiv').remove();
				$("#buttonDiv").addClass('introjs-showElement');
				$(".user-btn").remove();
				$('.clicked').remove();
				$('.introjs-nextbutton').hide();
				$('.second').removeClass('opacity00');
				$('.introjs-helperLayer ').one('transitionend', function() {
					$('#buttonDiv').removeClass('opacity00');
					$(".introjs-tooltiptext").append("<span><span>");
					typing(".introjs-tooltiptext span", text1, function() {
						text1 ="click on the button";
					});
				});
				break;
			case "exampleDiv":
				$('.introjs-nextbutton').show();
				$('.introjs-helperLayer ').one('transitionend', function() {
					if($('#automaticButton').hasClass('auto')) {
						var text = "Definition of <b class ='ct-code-b-yellow'>Automatic</b> type conversion";
						typing(".introjs-tooltiptext", text, function() {
							typingId = '#textSpan1';
					 		typingContent = 'In <b>automatic type conversion,</b> the data type having lower rank is converted '
	 						+ 'automatically into higher rank data before the operation proceeds.<br>';
					 		typing(typingId, typingContent, function() {
					 			$(typingId).removeClass('typingCursor');
								automaticAnimation();
					 		});
						});
					} else {
						var text = "Definition of <b class ='ct-code-b-yellow'>Assignment</b> type conversion";
						typing(".introjs-tooltiptext", text, function() {
							typingId = '#textSpan1';
							typingContent = 'In <b>assignment type conversion</b>, if the two operands in an assignment operation are'
											+ ' of different data types, the right side operand value is automatically converted to the data type of'
											+ ' the left side.';
	 						typing(typingId, typingContent, function() {
					 			$(typingId).removeClass('typingCursor');
	 							$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="assignmentAnimaiton()">Next →</a>');
	 						});
						});
				}
			});
			break;
			case "automaticAnimationDiv":
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
					var text = "Here you can edit integer and float values.";
					typing(".introjs-tooltiptext", text, function() {
						$('#automaticAnimationDiv').removeClass('opacity00');
						charAtEnd("intEditor");
						$('.introjs-nextbutton').show();
					});
				});
				break;
				
			case "restart":
				$('.user-btn').remove();
				$('.introjs-nextbutton').hide();
				$('#mainAssignmentAnimationDiv').remove();
				$('.introjs-helperLayer ').one('transitionend', function() {
					var text = "click to restart";
					typing(".introjs-tooltiptext", text, function() {
						
					});
				});
				break;
				
				
			case "mainAssignmentAnimationDiv":
				$('.user-btn').remove();
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
					$('#intValType').removeClass('opacity00');
					var text = "Here float value <b class='ct-code-b-yellow'>37.5</b> is assigned to integer type "
								+ "variable i.e, <b class='ct-code-b-yellow'>a</b>";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn a" onclick="assignmentAnimationFinal()">Next →</a>');
					});
				});
				break;
				
				
				
			case "mainAutomaticAnimationDiv":
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
				$('#intEditor, #floatEditor').attr('contenteditable','false');
				 var text = "We can not operate two different data type operands";
				typing(".introjs-tooltiptext", text, function() {
					$('#automaticAnimationDiv').removeClass('opacity00');
					$('#sum').removeClass('opacity00');
					$("#intText").text(parseInt($("#intEditor").text()));
					var l1 = $("#intEditor").offset();
					$("#intText").offset({"top":l1.top,"left":l1.left});
					TweenMax.to("#intText", 1, {opacity:1, top : 0, left : 0,onComplete : function() {
						var intVal = $('#intText').text();
						var intValue = $('#intText').text();
						intVal = intVal+".0";
						flipEffect("#intText",intVal, function() {
							var text = "<span class ='ct-code-b-yellow'>"+intValue+"</span> is converted to float value beacuse<b class ='ct-code-b-yellow'> f </b>has higher rank"
										+ " than <b class ='ct-code-b-yellow'>i</b>.";
							$(".introjs-tooltiptext").append("<ul id='ulTag'><li></li></ul>");
							typing(".introjs-tooltiptext ul li:last-child", text, function() {
								$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="flipAnimation()">Next →</a>');
							});
						});
					}});
					
				}); 
			});
				
				break;
		}
	});
	intro.start();
	$('.introjs-nextbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();
	typingId = '#type-conversion-typing';
	typingContent = 'Conversion of one data type value to another data type value is called <b>type conversion</b>.<br>'
					+'The classification of type conversion is given below.<br><br>'
					+'<b>1. Implicit or Type Coercion<br><br>2. Explicit  or Type Casting.</b>';
	typing(typingId, typingContent, function() {
		$(typingId).removeClass('typingCursor');
		intro.nextStep();
	});
	
});

function revealImplicitAndExplicit() {
	TweenMax.to("#arrowMark3", 1, {attr:{x1: "29%"}});
	TweenMax.to("#arrowMark2", 1, {attr:{x1: "69%"},onComplete:function() {
		 $("#arrowMark4").css("marker-end", "url(#arrow)");
		 $("#arrowMark5").css("marker-end", "url(#arrow)");
		TweenMax.to("#arrowMark4", 1, {attr:{y2: "39%"}});
		TweenMax.to("#arrowMark5", 1, {attr:{y2: "39%"},onComplete:function() {
			$('#implicitDiv').removeClass('opacity00');
			$('#explicitDiv').removeClass('opacity00');
			revealAutomaticAndAssignment();
		}});
	}});
}

function appendAfterSteps() {
	var nextStep = {
		element : "#automaticAnimationDiv",
		intro : "",
		position : "left"
	}
	intro.insertOption(intro._currentStep+1,nextStep);
	var nextStep = {
		element : "#mainAutomaticAnimationDiv",
		intro : "",
		position : "left"
	}
	intro.insertOption(intro._currentStep+2,nextStep);
}

function introRestart() {
	var nextStep = {
			element : "#restart",
			intro : "",
			position : "left"
	}
	intro.insertOption(intro._currentStep+1,nextStep);
}

function assignmentSteps() {
	var nextStep = {
			element : "#mainAssignmentAnimationDiv",
			intro : "",
			position : "left"
	}
	intro.insertOption(intro._currentStep+1,nextStep);
}
function revealAutomaticAndAssignment() {
	TweenMax.to("#arrowMark6", 1, {attr:{y1: "63%"},onComplete:function() {
		TweenMax.to("#arrowMark7", 1, {attr:{x1: "47.1%"}});
		TweenMax.to("#arrowMark8", 1, {attr:{x2: "10.1%"},onComplete:function() {
			$("#arrowMark9").css("marker-end", "url(#arrow)");
			$("#arrowMark10").css("marker-end", "url(#arrow)");
			TweenMax.to("#arrowMark10", 1, {attr:{y2: "80%"}});
			TweenMax.to("#arrowMark9", 1, {attr:{y2: "80%"},onComplete:function() {
			$('#automaticAndAssignmentDiv').removeClass('opacity00');
			$('#nextButton1').append('<div class="ct-bt-next-div" id="nextBtnDiv1"><a class="btn-success ct-btn-next cursor" id="nextBtn1" onclick="nextBtn1();">Next →</a><div>');
			}});
		}});
	}});
}

function flipAnimation() {
	$('.user-btn').remove();
	$("#floatText").text($("#floatEditor").text());
	var floatVal = $('#floatText').text();
	var dotPos =  floatVal.indexOf(".");
	if (dotPos == -1 ) {
		floatVal = floatVal+".0";
		$("#floatText").text(floatVal);
	} 
	var l2 = $('#floatEditor').offset();
	$("#floatText").offset({"top":l2.top,"left":l2.left});
	TweenMax.to("#floatText", 1, {opacity:1, top : 0, left : 0,onComplete : function() {
			if (dotPos == 0) {
				floatVal = "0" + floatVal;
				flipEffect("#floatText",floatVal, function() {
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="autoTypeFinalResult()">Next →</a>');
				});
			} else if (dotPos == (floatVal.length - 1)) {
				floatVal = floatVal + "0";
				flipEffect("#floatText",floatVal, function() {
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="autoTypeFinalResult()">Next →</a>');
				});
			} else {
				$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="autoTypeFinalResult()">Next →</a>');
			}
	}});
}

function autoTypeFinalResult() {
	$('.user-btn').remove();
	$('#resultVal').text($('#sumMain').text());
	$('#result').removeClass('opacity00');
	var sumOffset = $('#sumMain').offset();
	$('#resultVal').offset({"top":sumOffset.top,"left":sumOffset.left});
	TweenMax.to("#resultVal", 1, {opacity:1, top : 0, left : 0,onComplete: function() {
		$('#resultVal').removeClass('opacity00');
		var resultFlip = parseInt($('#intText').text()) + parseFloat($('#floatText').text());
		resultFlip = resultFlip.toString();
		 if (resultFlip.indexOf('.') == -1) {
			resultFlip = resultFlip + ".0";
		} 
		flipEffect("#resultVal", resultFlip, function() {
			$('#textSpan1').empty();
			$('.clicked').remove();
			intro.refresh();
			if(($('#buttonDiv *').length) == 0) {
				intro.refresh();
				introRestart();
				$('#restart').removeClass('opacity00');
				$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="intro.nextStep();">Next →</a>');
			} else {
				$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="intro.goToStep(4)">Next →</a>');
			}
		});  
	}});
}

function buttonSelection() {
	$('#buttonDiv').removeClass('opacity00');
	
}

function nextBtn1() {
	$('#nextBtnDiv1').addClass('opacity00');
	intro.nextStep();
}

function typing(selector, text, callBackFunction) {
	$(selector).typewriting(text, {
		"typing_interval" : typingSpeed,
		"cursor_color" : 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function valueChecking() {
	$("#intEditor, #floatEditor").on("click keydown keyup", function(e) {
		var max = $(this).attr("maxlength");
		$(".error-msg").remove();
		if ($(this).text() == "") {
			$(this).addClass("empty");
		} else {
			$(this).removeClass("empty");
		}
		if ($(".empty").length > 0) {
			$(".introjs-nextbutton").hide();
			$(".introjs-tooltiptext").append("<div class='error-msg'>Empty values is not allowed</div>");
		} else {
			$(".introjs-nextbutton").show();
		}
		if ($.inArray(e.keyCode, [46, 8, 9, 27, 37, 39]) !== -1) {
			return;
		}
		if ($(this).attr("id") == "floatEditor" && (e.keyCode == 190 || e.keyCode == 110) && $(this).text().indexOf('.') == -1 && $(this).text().length <= max) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		if ($(this).text().length > max) {
			if($(this).attr("id") == "intEditor") {
				$(".introjs-tooltiptext").append("<div class='error-msg'>Max length is 3.</div>");
			} else {
				$(".introjs-tooltiptext").append("<div class='error-msg'>Max length is 5.</div>");
			}
			e.preventDefault();
		}
	});
	
}

function automaticAnimation() {
	$("#textSpan1").append("<div id='myTable' class='col-xs-offset-4 margin-top25'><div>");	
	$("#myTable").append("<table class='text-center'><tr><th class='text-center'>Data type</th><th class='text-center'>Rank</th></tr>"
            +"<tr><td>long double</td><td>1(higher rank)</td></tr>"
            +"<tr><td>double</td><td>2</td></tr>"
            +"<tr><td>float</td><td>3</td></tr>"
            +"<tr><td>int</td><td>4</td></tr>"
            +"<tr><td>short int</td><td>5</td></tr>"
            +"<tr><td>char</td><td>6(lower rank)</td></table>");
	appendAfterSteps();
	$('.introjs-nextbutton').show();
}

function assignmentAnimaiton() {
	assignmentSteps();
	intro.nextStep();
}

function assignmentAnimationFinal() {
	$('.user-btn').remove();
	$('#resultOfAssignmetnt').removeClass('opacity00');
	var  r = $('.red').offset();
	$('#assignmentFlip').offset({"top":r.top,"left":r.left + 4});
	TweenMax.to("#assignmentFlip", 1, {opacity:1, top : 0, left : 0,onComplete : function() {
		$('#assignmentFlip').removeClass('opacity00');
		$(".introjs-tooltiptext").append("<ul id='ulTag'><li></li></ul>");
	  	var text = "So the the value <b class='ct-code-b-yellow'>37.5</b> is converted into <b class='ct-code-b-yellow'>37</b> "
	  				+ "beacuse the left side variable is int.";
		typing(".introjs-tooltiptext ul li:last-child", text, function() {
			flipEffect("#assignmentFlip",37, function() {
				$('.clicked').remove();
				if($('#buttonDiv *').length == 1) {
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="intro.goToStep(4)">Next →</a>');
				} else {
					introRestart();
					$('#restart').removeClass('opacity00');
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="intro.nextStep();">Next →</a>');	
				}
			});
		});
	}});
}
function charAtEnd(elementId) {
	var element = document.getElementById(elementId);
	element.focus();
	var range = document.createRange();
	range.selectNodeContents(element);
	range.collapse(false);
	var sel = window.getSelection();
	sel.removeAllRanges();
	sel.addRange(range);
}

function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}


</script>
	<div class="ct-box-main">
	<div class='text-center'>
		<h1 class='label ct-demo-heading' id="heading">Type Conversion</h1>
	</div>
	<div class='col-xs-12 margin-top25 text-center'>
		<span id='restart' class='btn btn-warning btn-sm opacity00'>Restart &nbsp;<i class='fa fa-refresh'></i></span>
	</div>
	<div class='col-xs-12 margin-top'>
		<div id="conversionDiv" class='col-xs-5 height margin'>
			<div id='type-conversion-typing' class='margin-top25'></div>
			
				
				<div id='typeConversionDiv' class='col-xs-12'>
				 <svg class="svg-css" id="svgId">
				 <marker refX="4" refY="2.5" markerWidth="5" markerHeight="5"
						orient="auto" style="fill: gray;" id="arrow"> 
							<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>	
						</marker> 
					<line id="arrowMark1" class="line" x1="49.10%" y1="13%" x2="49.10%" y2="13%"
						style="stroke: gray; stroke-width: 2; display: inline;"/>
					<line id="arrowMark2" class="line" x1="49.10%" y1="26%" x2="49.10%" y2="26%"
						style="stroke: gray; stroke-width: 2; display: inline;"/>
					<line id="arrowMark3" class="line" x1="49.10%" y1="26%" x2="49.10%" y2="26%"
						style="stroke: gray; stroke-width: 2; display: inline;"/>
					<line id="arrowMark4" class="line" x1="29.10%" y1="26%" x2="29.10%" y2="26%"
						style="stroke: gray; stroke-width: 2; display: inline;" />
					<line id="arrowMark5" class="line" x1="69.10%" y1="26%" x2="69.10%" y2="26%"
						style=" stroke: gray; stroke-width: 2; display: inline;" />
					<line id="arrowMark6" class="line" x1="29.10%" y1="51%" x2="29.10%" y2="51%"
						style="stroke: gray; stroke-width: 2; display: inline;"/>
					<line id="arrowMark7" class="line" x1="29.10%" y1="63%" x2="29.10%" y2="63%"
						style="stroke: gray; stroke-width: 2; display: inline;"/>
					<line id="arrowMark8" class="line" x1="29.10%" y1="63%" x2="29.10%" y2="63%"
						style="stroke: gray; stroke-width: 2; display: inline;"/>
					<line id="arrowMark9" class="line" x1="47.10%" y1="63%" x2="47.10%" y2="63%"
						style="stroke: gray; stroke-width: 2; display: inline;" />
					<line id="arrowMark10" class="line" x1="10.10%" y1="63%" x2="10.10%" y2="63%"
						style="stroke: gray; stroke-width: 2; display: inline;" />
				 </svg>
				</div>
				<div id="nextButton1" class="col-xs-12 float"></div>
				</div>
			<div id="exampleDiv" class='col-xs-5 height margin'>
			<div id="implicitExampleType" class="margin-top252 col-xs-12"></div>
			<div id='buttonDiv' class='col-xs-offset-2 text-center col-xs-8 margin-top opacity00'>
				<input id='automaticButton' type="submit" value='Automatic Type Conversion' class='btn btn-success btn-sm second col-xs-5'></input>
				<input id='assignmentButton' type="submit" value='Assignment Type conversion' class='margin-left10 btn btn-success btn-sm second col-xs-5'></input>
			</div><div id='totalDiv' class="col-xs-12">
			</div>
		</div>
	</div></div>
</body>
</html>