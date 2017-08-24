
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scanf</title>
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

.margin-top20 {
	margin-top: 20px;
}

#typingDiv {
	height: 70px;
}

.text-center {
	text-align: center;
}

.back-color {
	background-color: #D6C2E7;
}

table, th, td {
    border: 1px solid black;
    
}

div, span {
    position: relative;
}

.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 14px;
	margin-bottom: 14px;
	height: 100px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

.input-char {
  width: 30px;
  border-width: 0px 0 0 0;
  background-color: #000;
  color: #0f0;
   text-align: center;
}

.input-char:empty::before {
 	color: black;
	content: attr(placeholder);
}

.left-padding-120 {
	padding-left: 120px;
}

.text-center {
	text-align: center;
}

.text-color-green {
	color: green;
}

.ui-effects-transfer {
	border: 1px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 10000000;
}

/* .zIndex {
	background-color: white;
	position: relative;
	z-index: 10000001 !important;
} */

 .zIndex {
	background-color: white;
	position: relative;
	z-index: 10000000 !important;
} 

.border {
	border: 1px solid black;
}

.margin-top10 {
	margin-top: 10px;
}

.padding20 {
	padding:20px;
}

.col-xs-12 {
	width: 100%;
}

.border-height-css {
	border: 1px solid;
	height: 22px;
}

.Vertical-text-center  {
	height: 62px;
	line-height: 62px;
	text-align: right; 
}

.padding-col0 {
	padding: 0;
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
	background-color: white;
}

.height-124 {
	height: 124px;
}

.user-btn {
	background-color: green;
}

.error-msg {
	color: red;
	font-weight: bold;
}

.int, .float {
	outline: none;
}

:-moz-placeholder { 
  color: pink;
}

#inputInt {
width : 30px;
height : 20px;
}

#consoleBodyDiv1 {
	height: 100px;
}

.margin-top150 {
	margin-top: 142px;
}

.margin-left10 {
	margin-left: 10px;
}

</style>
</head>
<body>
<script>
var typingSpeed = 5;
var intro;


$(document).ready(function() {
	
	$('input').prop("disabled", false);
	
	$("#inputChar").val(null);
	$("#inputChar").on("click keydown keyup", function(e) {
		$(".error-msg").remove();
		if ($('#inputChar').val() == "") {
			$('.introjs-nextbutton').hide();
		} else {
			$('.introjs-nextbutton').show();
		}
	});
	$("#inputInt, #inputFloat, #inputChar1").off("click keydown keyup");
	$("#inputInt, #inputFloat, #inputChar1").on("click keydown keyup", function(e) {
		var max = $(this).attr("maxlength");
		$(".error-msg").remove();
		//$(this).text() == ""
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
		if ($(this).attr("id") == "inputFloat" && (e.keyCode == 190 || e.keyCode == 110) && $(this).text().indexOf('.') == -1 && $(this).text().length <= max) {
			return;
		}
		if ($(this).attr("id") != "inputChar1" && (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105)))) {
			e.preventDefault();
		}
		if ($(this).text().length > max) {
			if($(this).attr("id") == "inputInt") {
				$(".introjs-tooltiptext").append("<div class='error-msg'>Max length is 3.</div>");
			} else if ($(this).attr("id") == "inputFloat") { 
				$(".introjs-tooltiptext").append("<div class='error-msg'>Max length is 5.(Including dot).</div>");
			} else {
				$(".introjs-tooltiptext").append("<div class='error-msg'>Max length is 1.</div>");
			}
			e.preventDefault();
		}
	});
		
		 $("#restart").click(function() {
			location.reload();
		}) 
	
	$("#myTable td:even").css("background-color", "LightGray");
	$("#myTable tr:even").css("background-color", "LightBlue");
	$("#myTable tr:odd td").css("background-color", "LightYellow");
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
		steps : [{
			element : "#typingDiv",
			intro : "",
			tooltipClass : "hide" 
		}, {
			element : "#typingDiv",
			intro : "",
			position : "bottom"
		}, {
			element : "#myTable",
			intro : "",
			position : "left"
		}, {
			element : "#sampleOne",
			intro : "",
			position : "right"
		}, {
			element : "#charBox",
			intro : "",
			position : "left"
		}, {
			element : "#outputDiv",
			intro : "",
			position : "left"
		}, {
			element : "#charSpan",
			intro : "",
			position : "right"
		}, {
			element : "#charBox",
			intro : "",
			position : "left"
		}, {
			element : "#exampleDiv1",
			intro : "",
			position : "right"
		}, {
			element : "#memoryDiv1",
			intro : "",
			position : "right"
		}, {
			element : "#consoleId1",
			intro : "",
			position : "left"
		}, {
			element : "#example2Scanf",
			intro : "",
			position : "right"
		}, {
			element : "#memoryDiv1",
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
			case "typingDiv":
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 1) {
				setTimeout(function(){
				var text = "<b class ='ct-code-b-yellow'>'control_string'</b> represents with conversion characters.Let us see different "
				+"<b class='ct-code-b-yellow'>conversional characters</b>.";
		 		typing(".introjs-tooltiptext", text, function() {
		 			$('.introjs-nextbutton').show();
		 		});
				},1000);
			};
			break;
			
			case "myTable":
				$('.introjs-nextbutton').hide();
				$('#myTable').removeClass('opacity00');
				$('.introjs-helperLayer ').one('transitionend', function() {
					var text ="These are the diffrent conversion characters used in the first argument of <b class='ct-code-b-yellow'>scanf()</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "restart":
				$('.zIndex').removeClass('zIndex');
				$('.introjs-nextbutton').hide();
				$('#restart').removeClass('opacity00');
				$('.introjs-helperLayer ').one('transitionend', function() {
					var text = "Click to restart.";
			 		typing(".introjs-tooltiptext", text, function() {
			 		});
				});
			break;
			
			
			case "outputDiv":
				$("#outputDiv").addClass('introjs-showElement').removeClass('opacity00');
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
					//var text = "Enter a character.";
					//typing(".introjs-tooltiptext", text, function() {
						$("#EnterChar").addClass("zIndex").effect("highlight", {color: 'yellow'}, 2000, function() {
						$('#EnterChar').removeClass('zIndex');
							$('#EnterChar').effect( "transfer", { to: $('#enterCharText'), className:"ui-effects-transfer" }, 1500, function() {
								$('#enterCharText').removeClass('opacity00');
								//$("#inputChar").attr("placeholder", "ch");
								var text = "Enter a character.";
								typing(".introjs-tooltiptext", text, function() {
									charAtEnd("inputChar");
								});
							});
						});
					//});
				});
			break;
			
			case "mainMemoryDiv":
				$('#mainMemoryDiv').removeClass('opacity00');
				$('.introjs-nextbutton').hide();
				$('#mainMemoryDiv').removeClass('opacity00');
				$('.introjs-helperLayer ').one('transitionend', function() {
					var text = "Once the program compiled successfully memory is allocated for the data type variables";
			 		typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
			 		});
				});
			break;
			
			
			
			case "sampleOne":
				$('#exampleDiv').removeClass('opacity00');
				$('#myTable').remove();
				$('.introjs-nextbutton').hide();
				$("#mainExampleDiv").addClass('introjs-showElement').removeClass('opacity00');
				$("#sampleOne").addClass('zIndex');
				$('.introjs-helperLayer ').one('transitionend', function() {
					var text = "Let us consider a sample code how to read a character by using <b class='ct-code-b-yellow'>scanf()</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
				
			case "exampleDiv1":
				$('.zIndex').removeClass('zIndex');
				$('#exampleDiv1').removeClass('opacity00');
				$('.introjs-nextbutton').hide();
				$("#exampleDiv1").addClass('zIndex');
				$("#mainExampleDiv").addClass('introjs-showElement').removeClass('opacity00');
				$('.introjs-helperLayer ').one('transitionend', function() {
					var text = "Let us consider this sample code how to read a <b class='ct-code-b-yellow'>character,int</b> and "
					+"<b class='ct-code-b-yellow'>float</b> by using <b class='ct-code-b-yellow'>scanf()</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "memoryDiv1":
				//console.log(intro._currentStep);
				if (intro._currentStep == 9) {
					$(".introjs-tooltip").css("min-width", "400px");
					$('#exampleDiv1').removeClass('introjs-showElement');
					$('#memoryDiv1').removeClass('opacity00');
					$('.introjs-nextbutton').hide();
					$("#mainExampleDiv").addClass('introjs-showElement').removeClass('opacity00');
					$('.introjs-helperLayer ').one('transitionend', function() {
							$("#exampleTwoChar").addClass("zIndex").effect("highlight", {color: 'yellow'}, 2000, function() {
								$('#charBox1').removeClass('opacity00');
								$('#charBox1').toggleClass('animated zoomIn').one('animationend', function() {
									$('.introjs-tooltiptext').append("<ul><li></li></ul>");
									var text = "<b class ='ct-code-b-yellow'>One</b> byte of memory is allocated to <b class ='ct-code-b-yellow'>char</b> "
										+"data type variable.";
									typing(".introjs-tooltiptext ul li:last-child", text, function() {
										$("#exampleTwoInt").addClass("zIndex").effect("highlight", {color: 'yellow'}, 2000, function() {
											$('#intBox').removeClass('opacity00');
											$('#intBox').toggleClass('animated zoomIn').one('animationend', function() {
												$('.introjs-tooltiptext ul').append("<li></li>");
												var text = "<b class ='ct-code-b-yellow'>Two</b> bytes of memory is allocated to <b class ='ct-code-b-yellow'>int</b> "
													+"data type variable.";
												typing(".introjs-tooltiptext ul li:last-child", text, function() {
													$("#exampleTwoFloat").addClass("zIndex").effect("highlight", {color: 'yellow'}, 2000, function() {
														$('#floatBox').removeClass('opacity00');
														$('#floatBox').toggleClass('animated zoomIn').one('animationend', function() {
															$('.introjs-tooltiptext ul').append("<li></li>");
																var text = "<b class ='ct-code-b-yellow'>Four</b> bytes of memory is allocated to <b class ='ct-code-b-yellow'>float</b> "
																	+"data type variable.";
															typing(".introjs-tooltiptext ul li:last-child", text, function() {
																$('.introjs-nextbutton').show();
														});
													});
												});
													});
											});
										});
									});
										
										
								});
						});
							});
				} else {
					$(".introjs-tooltip").css("min-width", "200px");
					$('.introjs-nextbutton').hide();
					$('#outputDiv1').removeClass('introjs-showElement');
					$('#memoryDiv1').removeClass('opacity00');
					$('#xValue1').text($('#inputChar1').text());
					$('#xValue2').text($('#inputInt').text());
					$('#xValue3').text($('#inputFloat').text());
					
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text ="Entered  values stored in the  respective memory location.";
						typing(".introjs-tooltiptext", text, function() {
								$('#xValue1').addClass('circle-css');
								$('#xValue2').addClass('circle-css');
								$('#xValue3').addClass('circle-css');
								var pos = $('#inputChar1').offset();
								var pos1 = $('#inputInt').offset();
								var pos2 = $('#inputFloat').offset();
								$('#xValue1').offset({"top":pos.top,"left":pos.left});
								$('#xValue2').offset({"top":pos1.top,"left":pos1.left});
								$('#xValue3').offset({"top":pos2.top,"left":pos2.left});
								$('#xValue1').removeClass('opacity00');
								   TweenMax.to("#xValue1", 2, {top : 0, left : 0,onComplete : function() {
									$('#xValue1').removeClass('circle-css');
								}});
								   $('#xValue2').removeClass('opacity00');
								TweenMax.to("#xValue2", 2, {top : 0, left : 0,onComplete : function() {
										$('#xValue2').removeClass('circle-css');
								}});
								$('#xValue3').removeClass('opacity00');
								TweenMax.to("#xValue3", 2, {top : 0, left : 0,onComplete : function() {
										$('#xValue3').removeClass('circle-css');
										$('.introjs-nextbutton').show();
								}});
							});
						});
				}
				break;
				
			case "charSpan":
				$(".introjs-tooltip").css("min-width", "400px");
				$('input').prop("disabled", true);
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#charPercent").effect("highlight", {color: '#008000'}, 1000, function() {
						//$("#charAmp").effect("highlight", {color: '#008000'}, 1000, function() {
						$('.introjs-tooltiptext').append("<ul><li></li></ul>");
						var text = "The given character is <b class ='ct-code-b-yellow'>'"+ ($('#inputChar').val()) +"'.</b>"
						+ "'%c' is used to read a character from keyboard, which convertes the character into ASCII value i.e;"
						+" <b class ='ct-code-b-yellow'> " +($('#inputChar').val()).charCodeAt(0) +"</b> .Later covertedt to binary value." ;
						typing(".introjs-tooltiptext ul li:last-child", text, function() {
							$("#charAmp").effect("highlight", {color: '#008000'}, 1000, function() {
								$('.introjs-tooltiptext ul').append("<li></li>");
								var text="In <b class='ct-code-b-yellow'>scanf()</b> all the <b class='ct-code-b-yellow'>argument_list</b> must represends with <b class='ct-code-b-yellow'>&</b> .The <b class='ct-code-b-yellow'>&</b> represents address of the variable "
								+ " when the given value has to be stored.";
								typing(".introjs-tooltiptext ul li:last-child", text, function() {
									$('.introjs-nextbutton').show();
								});
							});
						});
						//});
					});
				});
			break;
			
			
			case "example2Scanf":
				$(".introjs-tooltip").css("min-width", "400px");
				
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#charSpan1").effect("highlight", {color: '#008000'}, 1000, function() {
						$("#charAmp1").effect("highlight", {color: '#008000'}, 1000, function() {
							$('.introjs-tooltiptext').append("<ul><li></li></ul>");
							var text = "The given character is <b class ='ct-code-b-yellow'>'"+ $('#inputChar1').text() +"'.</b>"
							+ "'%c'  is used to read a character from keyboard, which converts the character into to ASCII  value <b class ='ct-code-b-yellow'> " +($('#inputChar1').text()).charCodeAt(0) +"</b> and "
							+ " Later converted to binary code.";
							typing(".introjs-tooltiptext ul li:last-child", text, function() {
								$("#intSpan").effect("highlight", {color: '#008000'}, 1000, function() {
									$("#intAmp").effect("highlight", {color: '#008000'}, 1000, function() {
										$('.introjs-tooltiptext ul').append("<li></li>");
										var text = "The given integer is <b class ='ct-code-b-yellow'>"+ $('#inputInt').text() +".</b>"
										+ "'%d' is used to read a integer value  from keyboard, Later converted to binary code.";
										typing(".introjs-tooltiptext ul li:last-child", text, function() {
											$("#floatSpan").effect("highlight", {color: '#008000'}, 1000, function() {
												$("#floatAmp").effect("highlight", {color: '#008000'}, 1000, function() {
												$('.introjs-tooltiptext ul').append("<li></li>");
												var text = "The given float value is <b class ='ct-code-b-yellow'>"+ $('#inputFloat').text() +"</b>. "
												+ "'%f' is used to read a float vlaue from keyboard, Later converted to binary code. ";
													typing(".introjs-tooltiptext ul li:last-child", text, function() {
														$('.introjs-nextbutton').show();
													});
												});
											});
										});
									});
								});
							});
						});
					});
				});
			break;
			
			 case "consoleId1":
				 $(".introjs-tooltip").css("min-width", "200px");
				$('#consoleId1').removeClass('opacity00');
				$('.introjs-nextbutton').hide();
				$('#memoryDiv1').removeClass('introjs-showElement');
				$('.introjs-helperLayer ').one('transitionend', function() {
					charAtEnd("inputChar1");
					 var text = "Enter a character, an interger and float value by using <b class='ct-code-b-yellow'>tab</b> and <b class='ct-code-b-yellow'>shift+tab</b>.";
					typing($(".introjs-tooltiptext"), text, function() {
						//$('.introjs-nextbutton').show();
					});  
				});
			break;
			
			
			case "charBox":
				if (intro._currentStep == 4) {
					$('#memoryDiv').removeClass('opacity00');
					$('.introjs-nextbutton').hide();
					
					//$("#exampleDiv").removeClass('introjs-showElement');
					$("#mainExampleDiv").addClass('introjs-showElement').removeClass('opacity00');
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "<b class ='ct-code-b-yellow'>One</b> byte of memory is allocated to <b class ='ct-code-b-yellow'>char</b> "
									+"data type variable.In system each memory has an address.For example "
									+ "i.e: <b class ='ct-code-b-yellow'>1113.</b>";
						typing(".introjs-tooltiptext", text, function() {
							$("#exampleOneChar").addClass("zIndex").effect("highlight", {color: 'yellow'}, 2000, function() {
									//console.log("ok");
									$('#charBox').removeClass('opacity00');
									$('#xValue').addClass('opacity00');
									$('#charBox').toggleClass('animated zoomIn').one('animationend', function() {
										$('.introjs-nextbutton').show();
									});
								});
							});
					});
				break;
				} else {
					$(".introjs-tooltip").css("min-width", "200px");
					$('#xValue').text($('#inputChar').val());
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "The charater stored in the memory location.";
						typing(".introjs-tooltiptext", text, function() {
							$('#outputDiv').removeClass('introjs-showElement');
							$('#charBox').removeClass('opacity00');
								$('#xValue').removeClass('opacity00');
								$('#xValue').addClass('circle-css');
								var pos = $('#inputChar').offset();
								$('#xValue').offset({"top":pos.top,"left":pos.left});
								   TweenMax.to("#xValue", 2, {top : 0, left : 0,onComplete : function(){
									$('#xValue').removeClass('circle-css');
									$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="exampleTwo()">Next →</a>');
								}});   
						});
					});
				}
		}
	});
		intro.start();
		$('.introjs-nextbutton').hide();
		$('.introjs-prevbutton').hide();
		$('.introjs-skipbutton').hide();
		$('.introjs-bullets').hide();
		typingId = '#typingDiv';
		
		
		typingContent = '1. <b class="ct-blue-color">scanf()</b> is used to read multiple data type values at a time from the standerd input'
									+ ' device (keyboard).<br>2. <b class="ct-blue-color">scanf()</b> is a library function which was already defined in'
									+ '<b class="ct-blue-color">"stdio.h"</b> header file.<br>'
									+ '3. General format of <b class="ct-blue-color">scanf()</b> function is <b id="textAnimate" class="back-color">'
									+ 'scanf (“control_string”, argument_list);</b>';
		typing(typingId, typingContent, function() {
			
			$(typingId).removeClass('typingCursor');
			 var div = $("#textAnimate");
			 div.animate({left: '100px'}, "slow");
			 div.animate({fontSize: '1.5em'},"slow", function () {
				 intro.nextStep();
			 });
			
	});
	});


function exampleTwo() {
	$(".user-btn").remove();
	$('#exampleDiv').addClass('height-124');
	$('#memoryDiv').addClass('height-124');
	$('#exampleDiv1').removeClass('opacity00');
	intro.nextStep();
}

function intValue() {
	$('.user-btn').remove();
	$('.introjs-tooltiptext').empty();
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


</script>
	<div class="ct-box-main">
		<div class='text-center'>
			<h1 class='label ct-demo-heading' id="heading">usage of scanf( )</h1>
		</div>
		
		<div class='col-xs-12 text-center'>
			<span id='restart'
				class='btn btn-warning btn-sm opacity00 margin-top20'>Restart
				&nbsp;<i class='fa fa-refresh'></i>
			</span>
		</div>
		
		<div id="typingDiv"
			class='margin-top20 col-xs-offset-3 col-xs-7 col-xs-offset-2'>
		</div>
		<!-- <div class='col-xs-12 text-center'>
			<span id='restart'
				class='btn btn-warning btn-sm opacity00 margin-top20'>Restart
				&nbsp;<i class='fa fa-refresh'></i>
			</span>
		</div> -->
		<div class='col-xs-offset-4  col-xs-8 text-center margin-top20'>
			<table id='myTable' class='opacity00'>
				<tr>
					<th class='text-center'>Conversion character</th>
					<th class='text-center'>Meaning</th>
				</tr>
				<!-- <tr>
					<td>%c</td>
					<td>data item is a single character</td>
				</tr> -->
				<tr>
					<td>%d</td>
					<td>represents  a decimal integer</td>
				</tr>
				<tr>
					<td>%c</td>
					<td>represents a single character</td>
				</tr>
				<tr>
					<td>%e,%f,%g</td>
					<td>represents a floating-point value</td>
				</tr>
				<tr>
					<td>%h</td>
					<td>represents a short integer value</td>
				</tr>
				<tr>
					<td>%i</td>
					<td>represents a decimal, hexadecimal or octal</td>
				</tr>
				<tr>
					<td>%o</td>
					<td>represents an octal integer</td>
				</tr>
				<tr>
					<td>%s</td>
					<td>represents a string followed by a white space character</td>
				</tr>
				<tr>
					<td>%u</td>
					<td>represents an unsigned decimal integer</td>
				</tr>
				<tr>
					<td>%x</td>
					<td>represents a hexadecimal integer</td>
				</tr>
				<!-- <tr>
					<td>%[ ]</td>
					<td>data item is a string, may include white space characters</td>
				</tr> -->
			</table>
		</div>
		<div class='col-xs-12 margin-top20'>
			<div id='mainExampleDiv' class='col-xs-4'>
				 <div id='exampleDiv' class='opacity00 col-xs-7'>
					<!-- <div class='text-color-green text-center'>Example1</div> -->
					<!-- <div><span id="exampleOneChar">char ch;</span></div>
					<div>
						printf("<span id='EnterChar'>Enter a character</span> = ");
					</div>
					<div>
						scanf("<span id='charSpan'><span id='charPercent'>
								%c</span>", <span id='charAmp'>&ch</span></span>);
					</div> -->
					<div id='sampleOne'><span>&nbsp;&nbsp;&nbsp;</span><span><span id="exampleOneChar">char ch;</span></span><br>
					<span>&nbsp;&nbsp;</span><span>
					printf("<span id='EnterChar'>Enter a character</span> = ");
					</span><br>
					<span>&nbsp;&nbsp;</span><span>
						scanf("<span id='charSpan'><span id='charPercent'>
								%c</span>", <span id='charAmp'>&ch</span></span>);
					</span></div>
				</div> 
				<!-- <div id='exampleDiv' class='back-color opacity00'>
				<pre>
				char ch;
				printf("<span id='EnterChar'>Enter a character = </span> ");
				scanf("<span id='charSpan'><span id='charPercent'>%c</span>",<span id='charAmp'>&ch</span></span>);
				</pre>
				</div>
 -->				<div id='exampleDiv1' class='back-color margin-top150 opacity00'>
					<!-- <div class='text-color-green text-center'>Example2</div> -->
					<div class='margin-left10'><span id='exampleTwoChar'>char ch;</span></div>
					<div class='margin-left10'><span id='exampleTwoInt'>int i;</span></div>
					<div class='margin-left10'><span id='exampleTwoFloat'>float f;</span></div>
					<div class='margin-left10'>printf("Enter a character, an interger and a float value = \n");</div>
					<div class='margin-left10'><span id='example2Scanf'>scanf("<span id='charSpan1'>%c</span>
					 <span id='intSpan'>%d</span><span id='floatSpan'> %f"</span>,<span id='charAmp1'>&ch</span>,<span id='intAmp'>&i</span>,<span id='floatAmp'>&f</span>);</span></div>
				</div>
			</div>
			<div id='mainMemoryDiv' class='col-xs-4'>
				<div id='memoryDiv' class='back-color col-xs-12 opacity00'>
					<div class='text-color-green text-center' class='col-xs-4'>Memory</div>
					<div class="col-xs-offset-4 col-xs-4 padding-col0 opacity00"
						id="charBox">
						<div class="col-xs-2 Vertical-text-center padding-col0">ch</div>
						<div class="col-xs-10 text-center ">
							<div>
								<span class="color-gray">1 byte</span>
							</div>
							<div class="border-height-css">
								<span id="xValue">3</span>
							</div>
							<div>
								<span id="xAddress">1113</span>
							</div>
						</div>
					</div>
				</div>
				<div id='memoryDiv1'
					class='back-color col-xs-12 margin-top20 opacity00'>
					<div class='text-color-green text-center' class='col-xs-4'>Memory</div>
					<div id='charBox1' class='col-xs-4 padding-col0 opacity00'>

						<div class="col-xs-2 Vertical-text-center padding-col0">ch</div>
						<div class="col-xs-10 text-center ">
							<div>
								<span class="color-gray">1 byte</span>
							</div>
							<div class="border-height-css">
								<span id="xValue1" class='opacity00'></span>
							</div>
							<div>
								<span id="xAddress">1200</span>
							</div>
						</div>
					</div>
					<div id='intBox' class='col-xs-4 padding-col0 opacity00'>

						<div class="col-xs-2 Vertical-text-center padding-col0">i</div>
						<div class="col-xs-10 text-center">
							<div>
								<span class="color-gray">2 bytes</span>
							</div>
							<div class="border-height-css">
								<span id="xValue2" class='opacity00'></span>
							</div>
							<div>
								<span id="xAddress">1300</span>
							</div>
						</div>
					</div>
					<div id='floatBox' class='col-xs-4 padding-col0 opacity00'>

						<div class="col-xs-2 Vertical-text-center padding-col0">f</div>
						<div class="col-xs-10 text-center ">
							<div>
								<span class="color-gray">4 bytes</span>
							</div>
							<div class="border-height-css">
								<span id="xValue3" class='opacity00'></span>
							</div>
							<div>
								<span id="xAddress">1400</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id='mainOutputDiv' class='col-xs-4'>
				<div id='outputDiv' class='opacity00'>
					<div id="consoleId" class="center">
						<div class="output-console-title-bar">
							<span class="title"><b>Console</b></span>
						</div>
						<div class="output-console-body" id="consoleBodyDiv">
							<span id="hiddenTypingChar"><span id='enterCharText'
								class='opacity00'>Enter a character = </span><input
								id='inputChar' maxlength='1' class='input-char' tabindex='0' /></span>
						</div>
					</div>
				</div>
				<div id='outputDiv1' class='margin-top20'>
					<div id="consoleId1" class="center opacity00">
						<div class="output-console-title-bar">
							<span class="title"><b>Console</b></span>
						</div>
						<div class="output-console-body" id="consoleBodyDiv1">
							<span id="hiddenTypingChar1"><span id='enterCharText1'
								class='t'>Enter a character, an interger and float value =
								<span contenteditable='true' spellcheck='false' class='int input-char empty' id='inputChar1' placeholder='char'
								maxlength='0'></span> <span contenteditable='true' spellcheck='false' class='int input-char empty' id='inputInt' placeholder='int'
								maxlength='2'><b></b></span> <span contenteditable='true' spellcheck='false' class='float input-char empty' id='inputFloat' placeholder='float' 
								maxlength='4'><b></b></span></span></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>