<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/tablesorter/jquery-ui.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/animate.css" rel="stylesheet">

<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/data-structures-css.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js" type="text/javascript" charset="utf-8"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<title>array of structure</title>
<style>

.information-div {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	z-index: 9999999;
}

.ct-code-b-green {
	color: green;
}

.table-border {
	border: 2px solid gray;
}

.no-border {
	border: none !important;
}

.no-right-border {
	border-right: none;
}

.no-left-border {
	border-left: none;
}

.margin-top20 {
	margin-top: 20px;
}

.margin-bottom20 {
	margin-bottom: 20px;
}

.creampretab4 {
	-moz-tab-size: 2;
	background-color: lavender !important;
	font-size: 12px;
	font-style: inherit;
	line-height: 1.7;
	overflow-y: auto;
	white-space: pre;
	word-spacing: -3px;
	position: relative;
}

.output-console-title-bar {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.output-console-body {
	border-bottom-left-radius: 6px; 
	border-bottom-right-radius: 6px;
	height: 135px;
	padding: 10px;
	white-space: normal;
}

.output {
	font-size: 14px;
	font-weight: bold;
}

.div-border {
	border: 2px solid gray;
	border-radius: 10px;
}

span, div {
	position: relative;
}

td, tr {
	padding: 4px 6px;
	text-align: center;
	width: 65px;
	height: 30px;
	border-top: 2px solid gray;
}

.padding0 {
	padding: 0;
}

.pink-color {
	color: mediumvioletred;
	text-align: center
}

.blue-color {
	color: slateblue;
	text-align: center
}

.green-color {
	color: seagreen;
	text-align: center;
}

.red-color {
	color: red;
	text-align: center;
}

.padding3 {
	padding: 3px 9px 0 3px;
}

</style>
</head>
<body>
	<script>

var typingInterval = 5;
var count = 1;
var result = 1;
$(document).ready(function() {
	$("#restart").click(function(){
		location.reload(); 
	});
	introSteps();
	function introSteps() {
		intro = introJs();
		intro.setOptions({
			showStepNumbers: false,
			exitOnOverlayClick: false,
			showBullets: false,
			exitOnEsc: false,
			keyboardNavigation: false,
			steps : [ {
				element : "#informationDiv",
				intro : "",
				position:"right",
				tooltipClass: "hide"
			},{
				element : "#codeDiv",
				intro : "",
				position:"right"
			},{
				element : "#struct",
				intro : "",
				position:"right"
			},{
				element : "#mainMethod",
				intro : "",
				position:"right"
			},{
				element : "#structVariable",
				intro : "",
				position:"right"
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#normalVariable",
				intro : "",
				position:"bottom"
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#printDetailsStmt",
				intro : "",
				position:"bottom"
			},{
				element : "#outputDiv",
				intro : "",
				position:"right",
				tooltipClass:"hide"
			},{
				element : "#forLoop1",
				intro : "",
				position:"right",
			},{
				element : "#intial1",
				intro : "",
				position:"right",
			},{
				element : "#memoryOfi",
				intro : "",
				position:"right",
				tooltipClass:"hide"
			},{
				element : "#condition1",
				intro : "",
				position:"right",
			}
		]});
		
		intro.onafterchange(function(targetElement) {
			var elementId = targetElement.id;
			switch (elementId) {
				case "informationDiv":
					$('.introjs-nextbutton').hide();
					$("#text").css({"height" : $("#text").outerHeight()});
					var text = $("#text").html();
					typing("#text", text, function() {
						$("#example-table").removeClass("opacity00");
						setTimeout(function(){
							intro.nextStep();
						}, 1500);
					});
				break;
				case "codeDiv":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text="Let us consider an example code.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "struct":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text="This is the declaration of new user defined struct datatype <span class='ct-code-b-yellow'>book</span>.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "mainMethod":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "main is the operating system call which is the starting execution piont of a program.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
					break;
				case "structVariable":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the definition of struct variables, it will " 
							+ "<span class='ct-code-b-yellow'>allocate memory</span> to the variables " 
							+ "<span class='ct-code-b-yellow'>S[0],S[1],S[2],S[3]</span>.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "animationDiv":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						if (intro._currentStep == 5) {
							$("#animationDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
								$(this).removeClass("animated zoomIn");
								var text = "This is the memory allocation of an array in structure.";
								typing(".introjs-tooltiptext", text, function() {
									$('.introjs-nextbutton').show();
								});
								
							});
						} else if (intro._currentStep == 7) {
							$("#memoryOfi").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
								$(this).removeClass("animated zoomIn");
								var text = "This is the memory allocation of variable i.";
								typing(".introjs-tooltiptext", text, function() {
									$('.introjs-nextbutton').show();
								});
								
							});
						}
					});
				break;
				case "normalVariable":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the definition of normal variables, it will " 
							+ "<span class='ct-code-b-yellow'>allocate memory</span> to the variable i." 
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "printDetailsStmt":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This statement is used to print the string in the console.";
						typing(".introjs-tooltiptext", text, function() {
							$("#output").append('<span id="detailsOfBook"></span>');
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "outputDiv":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						scrollAtOutput();
						if (intro._currentStep == 9) {
							var text = "enter details of 4 book : ";
							typing("#detailsOfBook", text, function() {
								intro.nextStep();
							});
						} else if (intro._currentStep == 15 || intro._currentStep == 30 || intro._currentStep == 45 || intro._currentStep == 60) {
							var text = "enter name of book : ";
							typing("#detailsOfBook"+ count, text, function() {
								$("#editname" + count).effect( "highlight",{color: 'yellow'}, 1500);
								$("#editname" + count).focus();
								var text1 = "enter name.";
								typing(".introjs-tooltiptext", text1, function() {
								});
							});
						} else if (intro._currentStep == 19 || intro._currentStep == 34 || intro._currentStep == 49 || intro._currentStep == 64) {
							$("#editname" + count).attr("contenteditable", false);
							var text = "enter no. of pages : ";
							typing("#detailsOfpages" + count, text, function() {
								$("#editpages" +count).effect( "highlight",{color: 'yellow'}, 1500);
								$("#editpages"+count).focus();
								var text1 = "enter number of pages.";
								typing(".introjs-tooltiptext", text1, function() {
								});
							});
						} else if (intro._currentStep == 23 || intro._currentStep == 38 || intro._currentStep == 53 || intro._currentStep == 68) {
							$("#editpages" + count).attr("contenteditable", false);
							var text = "enter price : ";
							typing("#detailsOfprice" + count, text, function() {
								$("#editprice"+count).effect( "highlight",{color: 'yellow'}, 1500);
								$("#editprice" +count).focus();
								var text1 = "enter the price.";
								typing(".introjs-tooltiptext", text1, function() {
								});
							});
						} else if (intro._currentStep == 79 || intro._currentStep == 84 || intro._currentStep == 89 || intro._currentStep == 94) {
							var text = "Name : " + $("#name" + result).text() + "&emsp;Price : " + $("#price" + result).text() + "&emsp;Pages : " + $("#pages" + result).text() + "";
							typing("#displayResult" + result, text, function() {
								var text1 = "This is the details of book" + result + ".";
								typing(".introjs-tooltiptext", text1, function() {
									$('.introjs-nextbutton').show();
								});
							});
						} 
					});
				break;
				case "forLoop1":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This for loop used to read all the information of 4 book details.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "intial1":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "Initially i value is initialized to 0.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "inc1":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This statement will increment i value.";
						typing(".introjs-tooltiptext", text, function() {
							if (count <= 4) {
								count++;
								$('.introjs-nextbutton').show();
							} else {
								$('.introjs-nextbutton').show();
							}
						});
					});
				break;
				case "memoryOfi":
					$(".introjs-helperLayer ").one('transitionend', function() {
						if (intro._currentStep == 12) {
							$("#ivalue").removeClass('opacity00').addClass("animated zoomIn").one("animationend", function() {
								setTimeout(function() {
									intro.nextStep();
								}, 1500);
							});
						} else if (intro._currentStep == 27) {
							$("#ivalue").text(1);
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						} else if (intro._currentStep == 42) {
							$("#ivalue").text(2);
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						} else if (intro._currentStep == 57) {
							$("#ivalue").text(3);
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						} else if (intro._currentStep == 72) {
							$("#ivalue").text(4);
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						} else if (intro._currentStep == 76) {
							$("#ivalue").text(0);
							secondDynamicSteps();
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						} else if (intro._currentStep == 81) {
							$("#ivalue").text(1);
							secondDynamicSteps();
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						} else if (intro._currentStep == 86) {
							$("#ivalue").text(2);
							secondDynamicSteps();
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						} else if (intro._currentStep == 91) {
							$("#ivalue").text(3);
							secondDynamicSteps();
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						} else if (intro._currentStep == 96) {
							$("#ivalue").text(4);
							lastSteps();
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
						}
					});
				break;
				case "condition1":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						if (count < 5) {
							var text = "Here the condition is ture so the inner statements will execute.";
							typing(".introjs-tooltiptext", text, function() {
								if (count < 5) {
									 dynamicSteps(true);
								}
								$('.introjs-nextbutton').show();
							});
								} else {
									changeText();
								}
						$('.introjs-nextbutton').show();
					});
				break;
				case "printNameStmt":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the statement which is used to print in console.";
						typing(".introjs-tooltiptext", text, function() {
							$("#output").append('<br><span id="detailsOfBook'+ count +'"></span><span class="padding3" contenteditable="true" id="editname'+ count +'" maxlength="9" spellcheck="false"></span>');
							characters();
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "name" + count:
					$(".introjs-helperLayer ").one('transitionend', function() {
						$("#name" + count).text($("#editname" + count).text()).removeClass('opacity00').addClass("animated zoomIn").one("animationend", function() {
							setTimeout(function(){
								intro.nextStep();
							}, 1500);
						});
					});
				break;
				case "printPage":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the statement which is used to print in console.";
						typing(".introjs-tooltiptext", text, function() {
							$("#output").append('<br><span id="detailsOfpages' + count + '"></span><span class="padding3" contenteditable="true" id="editpages'+ count +'" maxlength="3" spellcheck="false"></span>');
							numbers();
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "printPrice":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the statement which is used to print in console.";
						typing(".introjs-tooltiptext", text, function() {
							$("#output").append('<br><span id="detailsOfprice' + count + '"></span><span class="padding3" contenteditable="true" id="editprice' + count + '" maxlength="3" spellcheck="false"></span>');
							numbers();
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "price" + count:
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#price" + count).text($("#editprice" + count).text()).addClass("animated zoomIn").one("animationend", function() {
						setTimeout(function(){
							intro.nextStep();
						}, 1500);
					});
				});
				break;
				case "pages" + count:
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						$("#pages" + count).text($("#editpages" + count).text()).addClass("animated zoomIn").one("animationend", function() {
							setTimeout(function(){
								intro.nextStep();
							}, 1500);
						});
					});
					break;
				case "scanName":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						$("#editprice" + count).attr("contenteditable", false);
						var text = "This is the statement which is used to read the value given by user.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "scanPage":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the statement which is used to read the value given by user.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "scanPrice":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the statement which is used to read the value given by user.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "forLoop2" :
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the for loop to print the result.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "intial2":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "here i value is initialized to zero.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "condition2":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						if (intro._currentStep == 97) {
							$('.introjs-nextbutton').hide();
							var text = "As the condition fails it will terminate the loop and continue the statements below.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						} else {
							var text = "Here the condition is ture so the inner statements will execute.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						}
					});
				break;
				case "inc2":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This statement will increment the i value.";
						typing(".introjs-tooltiptext", text, function() {
							if (result < 4) {
								result++;
							}
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "display" :
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This statement is used to print in the console.";
						typing(".introjs-tooltiptext", text, function() {
							$("#output").append('<br><span id="displayResult'+ result + '"></span>');
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "termination" :
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
						var text = "This is the termination of main() method.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					})	
				break;
				case "restart" :
					$('.introjs-nextbutton').hide();
					$('#informationDiv').css({"z-index": "0"});
					$(".introjs-helperLayer ").one('transitionend', function() {
						TweenMax.to("#restart", 1, {"opacity" : "1", onComplete:function() {
							var text = "Click to Restart.";
							typing(".introjs-tooltiptext", text, function() {
								
							});
						}});
					});
				break;
			}
		});
		intro.start();
		$('.introjs-nextbutton').show();
		$('.introjs-prevbutton').hide();
		$('.introjs-skipbutton').hide();
		$('.introjs-bullets').hide();
	}
});

function typing(typingId, typingContent,callBackFunction) {
	$(typingId).typewriting( typingContent , {
		"typing_interval": typingInterval,
		"cursor_color": 'white',
	}, function() {
		$(typingId).removeClass('typingCursor');
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function scrollAtOutput() {
	var container = $('.output-console-body');
	scrollTo = $('.output-console-body').find("span").last();
	container.animate({
	   scrollTop: scrollTo.offset().top - container.offset().top  + container.scrollTop()
	});
}

function characters() {
	$('.introjs-nextbutton').hide();
	$("[contenteditable=true]").on("keydown keyup", function(e) {
		$(".ct-code-b-red").remove();
		var max = $(this).attr("maxlength");
		if (($(this).text().length) > max) {
			$(".introjs-tooltiptext").append("<div class='ct-code-b-red'></br>Please restrict the length of text to 10 characters, because the array variable size is name[10].</div>");
			if ((e.which == 46) || (e.which == 8) || (e.which == 37) || (e.which == 39)) {
				return true;
			} else {
			e.preventDefault();
			}
		} 
		if ($("[contenteditable=true]").text().length == 0) {
			$('.introjs-nextbutton').hide();
		} else {
			$('.introjs-nextbutton').show();
		} 
		
		if (((e.which >= 60 && e.which <= 90))) {
			return true;
		} else {
			if ((e.which == 46) || (e.which == 8) || (e.which == 37) || (e.which == 39)) {
				return true;
			}  else {
				e.preventDefault();
			}
		}
		
	});
}

function numbers() {
	$('.introjs-nextbutton').hide();
	$("[contenteditable=true]").on("keydown keyup", function(e) {
		$(".ct-code-b-red").remove();
		var max = $(this).attr("maxlength");
		if (($(this).text().length) > max) {
			$(".introjs-tooltiptext").append("<div class='ct-code-b-red'></br>Please restrict the length of text to 4 characters.</div>");
			if ((e.which == 46) || (e.which == 8) || (e.which == 37) || (e.which == 39)) {
				return true;
			} else {
			e.preventDefault();
			}
		}
		if ($("[contenteditable=true]").text().length == 0) {
			$('.introjs-nextbutton').hide();
		} else {
			$('.introjs-nextbutton').show();
		} 
		
		if (((e.which >= 48 && e.which <= 57) || (e.which >= 96 && e.which <= 105))) {
			return true;
		} else {
			if ((e.which == 46) || (e.which == 8) || (e.which == 37) || (e.which == 39)) {
				return true;
			}  else {
			e.preventDefault();
			}
		}
		
	});
		
}


function dynamicSteps(isRequired) {
	var step = 1;
	$('.introjs-nextbutton').hide();
	
		var newStep = {
			element:"#printNameStmt",
			intro : "",
			position:"right",
			
		}
		intro.insertOption(intro._currentStep + 1, newStep);
		
		var newStep = {
				element:"#outputDiv",
				intro : "",
				position:"right"
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#scanName",
				intro : "",
				position:"right"
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
	
		var newStep = {
			element:"#name" + count,
			tooltipClass: 'hide'
			
		}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
			element:"#printPage",
			intro : "",
			position:"right"
		}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#outputDiv",
				intro : "",
				position:"right"
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#scanPage",
				intro : "",
				position:"right"
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#pages" + count,
				tooltipClass: 'hide' 
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#printPrice",
				intro : "",
				position:"right"
			}
			intro.insertOption(intro._currentStep +  ++step, newStep);
		
		
		var newStep = {
				element:"#outputDiv",
				intro : "",
				position:"right"
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#scanPrice",
				intro : "",
				position:"right"
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#price" + count,
				tooltipClass: 'hide' 
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);

		var newStep = {
				element:"#inc1",
				intro : "",
				position:"right" 
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#memoryOfi",
				tooltipClass: 'hide' 
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
		var newStep = {
				element:"#condition1",
				intro : "",
				position:"right" 
			}
		intro.insertOption(intro._currentStep +  ++step, newStep);
		
}

function changeText() {
	$('.introjs-nextbutton').hide();
	var text = "As the condition fails it will terminate the loop and continue the statements below.";
	typing(".introjs-tooltiptext", text, function() {
		normalSteps();
		$('.introjs-nextbutton').show();
	});
}

function normalSteps() {
	var newStep = {
			element:"#forLoop2",
			intro : "",
			position:"right",
			
		}
		intro.insertOption(intro._currentStep + 1, newStep);
		
		var newStep = {
				element:"#intial2",
				intro : "",
				position:"right"
			}
		intro.insertOption(intro._currentStep + 2, newStep);
		
		var newStep = {
				element:"#memoryOfi",
				tooltipClass: 'hide'
				
			}
			intro.insertOption(intro._currentStep + 3, newStep);
}

function secondDynamicSteps() {
		var newStep = {
				element:"#condition2",
				intro : "",
				position:"right"
			}
		intro.insertOption(intro._currentStep + 1, newStep);
		
		var newStep = {
				element:"#display",
				intro : "",
				position:"right",
				
			}
			intro.insertOption(intro._currentStep + 2, newStep);
			
			var newStep = {
					element:"#outputDiv",
					intro : "",
					position:"right"
				}
			intro.insertOption(intro._currentStep + 3, newStep);
			
			
			var newStep = {
					element:"#inc2",
					intro : "",
					position:"right"
				}
			intro.insertOption(intro._currentStep + 4, newStep);
			
			var newStep = {
					element:"#memoryOfi",
					tooltipClass: 'hide'
					
				}
			intro.insertOption(intro._currentStep + 5, newStep);
	
}

function lastSteps() {
	var newStep = {
			element:"#condition2",
			intro : "",
			position:"right",
			
		}
	intro.insertOption(intro._currentStep + 1, newStep);
	
	var newStep = {
			element:"#termination",
			intro : "",
			position:"right",
			
		}
	intro.insertOption(intro._currentStep + 2, newStep);
	
	var newStep = {
			element:"#restart",
			intro : "",
			position:"right",
			
		}
	intro.insertOption(intro._currentStep + 3, newStep);
}

</script>
	<h2 class="text-center">
		<span class="label label-default ct-demo-heading">Array of Structures</span>
	</h2>
	<div id="informationDiv"
		class="col-xs-offset-2 col-xs-9 information-div margin-top20">
		<div class="col-xs-6 margin-top20" id="text">
			<ul>
				<li>Structure variables can also be declared with arrays.</li>
				<li>The format/syntax of an array with structure,
					<div>
						<span class='col-xs-offset-1 ct-code-b-green'>struct
							tagname variable[size];</span>
					</div>
				</li>
				<li>For example,
					<div class="col-xs-offset-1">
						struct example {<br> &emsp;int a;<br>
						&emsp;float b;<br> };<br> struct example e[3];
					</div>
				</li>
			</ul>
		</div>


		<div style="margin-top: 50px;" class="col-xs-6 opacity00" id="example-table">
			<table id="table" class="" style="margin: 20px 0px; width: 100%;">
				<tbody>
					<tr style="border-top: none;">
						<th></th>
						<th colspan="2" class=" pink-color">e[0]</th>

						<th colspan="2" class=""
							style="color: slateblue; text-align: center">e[1]</th>

						<th colspan="2" class=""
							style="color: seagreen; text-align: center">e[2]</th>
					</tr>
					<tr style="border-top: none;">
						<th style="text-align: center;" class="">e[3]
							=</th>
						<th class="table-border pink-color">a</th>
						<th class="table-border pink-color">b</th>
						<th class="table-border"
							style="color: slateblue; text-align: center">a</th>
						<th class="table-border"
							style="text-align: center; color: slateblue;">b</th>
						<th class="table-border"
							style="color: seagreen; text-align: center">a</th>
						<th class="table-border"
							style="color: seagreen; text-align: center">b</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="col-xs-4 code-div margin-top20">
		<pre class="code-div creampretab4" id="codeDiv">

<span id="struct">struct book
{
 char name[10];
 int price;
 int pages;
};</span>
<span id="mainMethod">main() {</span>
 <span id="structVariable">struct book s[4];</span>
 <span id="normalVariable">int i;</span>
 <span id="printDetailsStmt">printf ( “ \n enter details of book :” );</span>
 <span id="forLoop1">for (<span id="intial1">i=0;</span> <span
				id="condition1">i < 4;</span> <span id="inc1">i++</span>)</span> {
 	<span id="printNameStmt">printf ( “\n enter name of book : ” );</span>
 	<span id="scanName">scanf ( “%s”, &s[ i ].name);</span>
 	<span id="printPage">printf ( “\n enter no. of pages :” );</span>
 	<span id="scanPage">scanf ( “%d” ,& s[ i ].pages);</span>
 	<span id="printPrice">printf ( “\n enter no. of price :” );</span>
 	<span id="scanPrice">scanf ( “%d” ,& s[ i ].price);</span>
 }
 <span id="forLoop2">for(<span id="intial2">i=0;</span> <span
				id="condition2">i < 4;</span> <span id="inc2">i++</span>)</span> {
 	<span id="display">printf( “Name: %s \t Price: %d \t 
 		Pages: %d“, s[i].name, s[i].price, s[i].page);</span>
 }
<span id="termination">}</span> 

</pre>
	</div>

	<div>
		<div class='col-xs-8 margin-top20'>
			<div class="col-xs-12 div-border opacity00" id="animationDiv">

				<div style="padding: 0;" class="col-xs-12 text-center">
					<div class="col-xs-3 pink-color"><b>s[0]</b></div>
					<div class="col-xs-3 blue-color"><b>s[1]</b></div>
					<div class="col-xs-3 green-color"><b>s[2]</b></div>
					<div class="col-xs-3 red-color"><b>s[3]</b></div>
				</div>
				<div class='col-xs-12' style='padding: 0;'>
				<div class="col-xs-3 table-border padding0 margin-bottom20 no-right-border">
				
					<table class="table margin-top20">
						<tr class="no-border">
							<td class="no-border pink-color">name</td>
							<td class="no-border pink-color">price</td>
							<td class="no-border pink-color">pages</td>
						</tr>
						<tr>
							<td class="table-border pink-color opacity00 no-left-border" id ="name1">0</td>
							<td class="table-border pink-color" id ="price1"></td>
							<td class="table-border pink-color no-right-border" id ="pages1"></td>
						</tr>
					</table>
				</div>
				<div class="col-xs-3 table-border padding0 margin-bottom20 no-right-border">
					<table class="table margin-top20">
						<tr class="no-border">
							<td class="no-border blue-color">name</td>
							<td class="no-border blue-color">price</td>
							<td class="no-border blue-color">pages</td>
						</tr>
						<tr>
							<td class="table-border blue-color opacity00 no-left-border" id="name2">0</td>
							<td class="table-border blue-color" id="price2"></td>
							<td class="table-border blue-color no-right-border" id="pages2"></td>
						</tr>
					</table>
				</div>
				<div class="col-xs-3 table-border padding0 margin-bottom20 no-right-border">
					<table class="table margin-top20">
						<tr class="no-border">
							<td class="no-border green-color">name</td>
							<td class="no-border green-color">price</td>
							<td class="no-border green-color">pages</td>
						</tr>
						<tr>
							<td class="table-border green-color opacity00 no-left-border" id="name3">0</td>
							<td class="table-border green-color" id="price3"></td>
							<td class="table-border green-color no-right-border" id="pages3"></td>
						</tr>
					</table>
				</div>
				<div class="col-xs-3 table-border padding0 margin-bottom20 ">
					<table class="table margin-top20">
						<tr class="no-border">
							<td class="no-border red-color">name</td>
							<td class="no-border red-color">price</td>
							<td class="no-border red-color">pages</td>
						</tr>
						<tr>
							<td class="table-border red-color opacity00 no-left-border" id="name4">0</td>
							<td class="table-border red-color" id="price4"></td>
							<td class="table-border red-color no-right-border" id="pages4"></td>
						</tr>
					</table>
				</div>
			</div>
			<div style="padding: 0;" class="col-xs-1 text-center margin-bottom20 opacity00" id="memoryOfi">
			<span><b>i </b></span>
			<table class="table">
			<tbody><tr>
			<td class="table-border opacity00" id ="ivalue">0</td>
			</tr>
			</tbody></table>
			
			</div>
			<!-- <div class="col-xs-12 text-center margin-bottom20" style="padding: 0;">s[4]</div> -->
		</div>
	</div>
		<div class="col-xs-6 margin-top20 output-div" id="outputDiv">
			<div class="output-console-title-bar">
				<span class="title">Output</span>
			</div>

			<div class="output-console-body">
				<span class="output" id="output"></span>
			</div>
		</div>
		<div class="col-xs-6 margin-top20 text-center">
		<span class="btn btn-warning opacity00" id="restart">Restart</span>
	</div>
	</div>

</body>
</html>