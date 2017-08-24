<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/font-awesome-animation.min.css" rel="stylesheet">
<script src="/js/bootstrap.min.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/alertify.js"></script>
<link rel="stylesheet" href="/css/alertify/alertify.bootstrap.css"/>
<link rel="stylesheet" href="/css/alertify/alertify.core.css"/>
<link rel="stylesheet" href="/css/alertify/alertify.default.css"/>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/gs/TimelineLite.min.js"></script>

<style type="text/css">

.padding0 {
	padding: 0;
}

#arrayDiv {
	border: 2px solid gray;
	border-radius: 8px;
	height: 350px;
	margin-top: 26px;
	padding: 10px;
}

.introjs-tooltip {
	min-width: 330px;
}

.executeAnimationBtn {
	background-color:green !important;
}

.box-border {
	border: 1px solid gray;
	border-radius: 5px;
}

.td-border-none {
	border: none;
}

td {
	border: 2px solid gray;
	text-align: center;
}

table {
	width: 100%;
}

.display-none {
	display: none;
}

pre {
	margin-top: 30px;
	font-size: 11px;
}

.output-console-title-bar {
	border-top-left-radius: 4px;
	border-top-right-radius: 4px;
}

.output-console-body {
	height: 120px;
}

.output-console-body {
    color: #f0f0f0;
    font-family: monospace;
    font-size: 10px;
    white-space: normal;
} 

.span-box {
	height: 17px;
	width: 3%;
}

.position-relative {
	position: relative;
	display: inline-block;
}

.length-error-text {
	color: red;
}

.opacity03 {
	opacity:0.3;
}

[contenteditable=true] {
	outline: none;
}

.variableDecl {
	border: 1px solid gray;
	border-radius: 5px;
	height: 40px;
	line-height: 40px;
}

.varDecl {
	background-color: white;
	border-radius: 15px;
	margin-top: 25px;
	z-index: 9999999;
}
</style>

<script type="text/javascript">
var tl = new TimelineLite();
var count = 0;
var i = 0;
var step = 0;
var incr = 0;
$(document).ready(function() {
	
	intro =  introJs();
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [
					{
						element : "#arrayDiv",
						intro : "",
						position : "bottom",
					},
					{
						element : "#arrayDiv",
						intro : "",
						position : "bottom"
					},
					{
						element : "#arrayDiv",
						intro : "",
						position : "bottom",
					},
					{
						element : "#pre",
						intro : "",
						position : "bottom",
					},
					{
						element : "#varDec",
						intro : "",
						position : "bottom",
					},
					{
						element : "#range",
						intro : "",
						position : "bottom"
					},
					{
						element : "#outputDiv",
						intro : "",
						tooltipClass: "hide",
						action : "range"
					},
					{
						element : "#scanf1",
						intro : "",
						position : "bottom",
					},
					{
						element : "#outputDiv",
						intro : "",
						action : "scanf1"
					},
					{
						element : "#forLoop1",
						intro : "",
						position : "bottom",
					},
					{
						element : "#initialization",
						intro : "",
						position : "top",
						action : "initial0" 
					},
					{
						element : "#condition",
						intro : "",
						position : "top",
						action : "condition0",
					}
				]
	});
	
	intro.onafterchange(function(targetElement) {
		
		var ElementId = targetElement.id;
		var action = intro._introItems[intro._currentStep].action;
		switch (ElementId) {
		
		case "arrayDiv":
			$(".introjs-nextbutton").hide();
				setTimeout(function() {
					if (intro._currentStep == 1) {
						 var text = 'Here we have <span class="ct-code-b-yellow">five integer</span> variables, <span class="ct-code-b-yellow">memory</span> will be allocated at different locations at the time of program execution.';
							typing(".introjs-tooltiptext", text, function() {
								$('.executeAnimationBtn').show();
							}) 
					}  else if (intro._currentStep == 2) {
						 var text = 'In <span class="ct-code-b-yellow">arrays</span> the values are stored in <span class="ct-code-b-yellow">continuous memory</span> locations.';
							typing(".introjs-tooltiptext", text, function() {
								$("#explanation").empty();
								var text = "<span><span class='ct-keywords-color'>int</span> <span class='ct-variables-color'>arr[5]</span>;</span>";
								typing("#explanation", text, function() {
									creatingMarksArr();
									$("#parentDiv").fadeIn(600);
								});
								$(".introjs-nextbutton").show();
							}) ;
					} 
				}, 1000)
		break;
				
		case "pre":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = 'Here we take the example of <span class="ct-code-b-yellow">one dimensional array</span>.';
					typing(".introjs-tooltiptext", text, function() {
						$("#preContent").removeClass("visibility-hidden");
						$('.introjs-nextbutton').show();
					})
			});
		break;
		
		case "varDec":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = 'Here we have declared different variables, where <span class="ct-code-b-yellow">array</span> can store 5 elements.';
					typing(".introjs-tooltiptext", text, function() {
						$("#varDecl").addClass("varDecl");
						$(".iValue, .nValue").removeClass("opacity00");
						$('.introjs-nextbutton').show();
					})
			});
		break;
		
		case "range":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = " The <span class='ct-code-b-yellow'>printf()</span> function prints the message on the output console.";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').show();
				})
			});
		break;
		
		case "outputDiv":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#outputDiv").removeClass("visibility-hidden");
				if (action == "range") {
					$("#output").append("<div class='opacity00'>Enter how many values you want to read : <span id='rangeVal'></span></div>");
					$("#rangeVal").append("<span id='num1' contenteditable = 'true' maxlength='1' spellcheck='false'"
							+" class='text-center span-box output-scanf-line'></span>"); 
							$("#output div:nth-child(1)").removeClass("opacity00");
							setTimeout(function() {
								intro.nextStep();
							}, 1000);
				} else if (action == "scanf1") {
					charAtEnd("num1");
					validationFunction();
					$("#output").append("<div id='enterText'></div>");
					var text = 'Enter an integer only..';
					typing(".introjs-tooltiptext", text, function() {
						//$('.introjs-nextbutton').show();
					})
				}  else if (action == "readText") {
					$('.introjs-nextbutton').hide();
					var text = "Enter the value.";
					typing(".introjs-tooltiptext", text, function() {
						charAtEnd("text" + count);
						++count;
					})
				} else if (action == "printText") {
					$('.introjs-nextbutton').hide();
					$("#value").removeAttr('id');
					$("#enterText").append("<div id='value' class='opacity00'><span>Enter the values of arr["+ count +"] : </span><span id=text"+ count +" contenteditable = 'true' maxlength='1' spellcheck='false'"
											+" class='text-center span-box output-scanf-line'></span></div>");
					$("#value").removeClass("opacity00");
					setTimeout(function() {
						readValues();
						intro.nextStep();
					}, 1000)
				} else if (action == "finalPrint") {
					$("#value").removeAttr('id');
					$("#enterText").append("<div id='value' class='opacity00'><span>The array elements are :</span><span id='result'"
											+" class='text-center'></span></div>");
					$("#value").removeClass("opacity00");
					setTimeout(function() {
						intro.nextStep();
					}, 1000)
				} else if (action == "finalOutPut") {
					var text = 'The values in <span class="ct-code-b-yellow">array</span> are';
					typing(".introjs-tooltiptext", text, function() {
						for (var i = 0; i < parseInt($("#num1").text()); i++) {
							$("#result").append("<span>"+ $("#arrTextLetter" + i).text() +"</span>&emsp;");
						}
						$('.introjs-nextbutton').show();
					})
				} 
				
			});
		break;
		
		case "scanf1":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here <span class='ct-code-b-yellow'>scanf()</span> function is used to read an <span class='ct-code-b-yellow'>integer</span> value from the keyboard.";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').show();
				})
			});
		break;
		
		case "scanf2":
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here <span class='ct-code-b-yellow'>scanf()</span> function is used to read an <span class='ct-code-b-yellow'>integer</span> value from the keyboard.";		
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							})
			})
		break;
		
		case "forLoop1":
			$("#valueOfN").text($("#num1").text());
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var n = parseInt($("#num1").text());
					var text = "To read <span class='ct-code-b-yellow'>one dimensional array</span> elements use one <span class='ct-code-b-yellow'>for loop</span>,"
								+" By using this <span class='ct-code-b-yellow'>for loop</span> users stores <span class='ct-code-b-yellow'>"+ $("#num1").text() +"</span>"
								+" elements in to the given <span class='ct-code-b-yellow'>array</span>.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						})
			});
		break;
		
		case "initialization":
			$("#valueOfN").removeClass("opacity00");
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				
				if (action == "initial0") {
					 var text = 'Here the variable <span class="ct-code-b-yellow">i</span> is initialized with a value'
					 			+' <span class="ct-code-b-yellow">0(zero)</span>.';
						typing(".introjs-tooltiptext", text, function() {
							$("#valueOfI").removeClass("opacity00");
							$('.introjs-nextbutton').show();
						})
				} else {
						flipEffect("#zero", incr, function() {
							var text = 'Here the inititalized value of <span class="ct-code-b-yellow">i</span>'
										+' is changed to <span class="ct-code-b-yellow">'+ incr +'</span>.';
							typing(".introjs-tooltiptext", text, function() {
								
								$('.introjs-nextbutton').show();
							})
						});
				}		
						
			});
		break;
		
		case "condition":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (action == "condition0") {
					flipEffect("#iCondition", $("#zero").text(), function() {
						flipEffect("#nrange", $("#num1").text(), function() {
							var n = parseInt($("#num1").text());
							for (var i = 0; i < n; i++) {
								dynamicSteps(i);
							}
							
							for (var i = n; i < 5; i++) {
								$("#arrIndicesBox" + i + ", #arrTextBox" + i + ", #arrBoxAddr" + i).addClass("opacity03");
							}
							
							var zero = $("#zero").text();
							var num = $("#num1").text();
							
							var text = 'The value <span class="ct-code-b-yellow">'+ zero + ' < ' + num +'</span> is <span class="ct-code-b-yellow">'+ (zero < num) +'</span>.';
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							})
							
						});
					})
				} else {
					flipEffect("#iCondition", incr, function() {
						flipEffect("#nrange", $("#num1").text(), function() {
							var zero = incr;
							var num = $("#num1").text();
							
							if (zero < num) {
								var text = 'The value <span class="ct-code-b-yellow">'+ zero + ' < ' + num +'</span>'
											+' condition is <span class="ct-code-b-yellow">'+ (zero < num) +'</span>.';
								typing(".introjs-tooltiptext", text, function() {
									$('.introjs-nextbutton').show();
								})
							} else {
								var text = 'The condition <span class="ct-code-b-yellow">'+ zero + ' < ' + num +'</span>'
											+' returns <span class="ct-code-b-yellow">'+ (zero < num) +'</span>.'
											+'<ul><li>This condition given <span class="ct-code-b-yellow">'+ (zero < num) +'</span> terminates the for loop.</li></ul>';
											typing(".introjs-tooltiptext", text, function() {
												terminateForLoop();
												$('.introjs-nextbutton').show();
											})
							}
						});
					})
				}
			})
		break;	
			
		case "printf1":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#iCondition").text('i');
				$("#nrange").text('n');
				
				var text = " The <span class='ct-code-b-yellow'>printf()</span> function prints the message on the output console.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					})
			})
		break;
			
		
		case "increment":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				
				var text = 'The value of <span class="ct-code-b-yellow">i</span> is incremented by <span class="ct-code-b-yellow">1</span>.';
				typing(".introjs-tooltiptext", text, function() {
					incr = ++i;
					$("#valueOfI").text(incr);
					$('.introjs-nextbutton').show();
				})
			})
		break;
			
		case "arrTextBox" + i:
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = 'The given value <span class="ct-code-b-yellow">'+ $("#text" + i).text() +'</span>'
						+' is stored in the given <span class="ct-code-b-yellow">array</span> of index'
						+' <span class="ct-code-b-yellow">'+ i +'</span> i.e, <span class="ct-code-b-yellow">arr['+ i +']</span>.';
				typing(".introjs-tooltiptext", text, function() {
					$("#arrTextLetter" + i).text($("#text" + i).text());
					$('.introjs-nextbutton').show();
				})
			})
		break;
			
		case "lastPrint":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = " The <span class='ct-code-b-yellow'>printf()</span> function will print the message on the console.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					})
			})
		break;
		
		case "printVal":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here one <span class='ct-code-b-yellow'>for loop</span> is used to display the elements of <span class='ct-code-b-yellow'>one dimensional array</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					})
			})
		break;
			
		case "restart":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Click to restart.";
				typing(".introjs-tooltiptext", text, function() {
					$("#restart").removeClass("opacity00");
				})
			})
		break;
		}
		
})

	intro.start();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$(".introjs-nextbutton").hide();
	$('.introjs-tooltipbuttons').append("<a class='introjs-button executeAnimationBtn'>Next &#8594;</a>");
	$('.executeAnimationBtn').hide();
var	text = 'When we want to process and store different values in <span class="ct-code-b-yellow">C language</span> we use <span class="ct-code-b-yellow">'
			+' different types of variables</span>.<br/> For example, if we want to process an integer value, we declare an <span class="ct-code-b-yellow">'
			+' int</span> data type variable and assign the value to it.<span id="memoryStep"></span>';
			typing(".introjs-tooltiptext", text, function() {
				$('.executeAnimationBtn').show();
			//	$(".introjs-nextbutton").show();
			})
			
			 $('.executeAnimationBtn').click(function() {
				 $('.executeAnimationBtn').hide();
				 if (intro._currentStep == 0) {
						var text = '<span><span class="ct-keywords-color">int</span><span class="ct-variables-color"> a, b, c, d, e</span></span>;';
						typing("#explanation", text, function() {
							$(".introjs-nextbutton").show();
						})
					} else if (intro._currentStep == 1) {
						memoryBlock();
						setTimeout(function() {
							var text = "<ul><li>It is very difficult to know all the <span class='ct-code-b-yellow'>variable</span> names by the user when the user uses more number of <span class='ct-code-b-yellow'>variables</span>.</li>"
								+"<li>To process all the individual variables are difficult and time <span class='ct-code-b-yellow'>consuming process</span>.</li><span id='step1'></span></ul>"
								typing(".introjs-tooltiptext", text, function() {
									setTimeout(function() {
										typing("#step1","<li>To solve these issues we use  <span class='ct-code-b-yellow'>arrays</span> concept.</li>", function() {
											$(".introjs-nextbutton").show();
										})
									}, 1500)
								})
						}, 2000);
			}
		})
	$("#restart").click(function() {
		location.reload();
	})
})


function dynamicSteps(i) {
	var nextStep = {
			element : "#printf1",
			intro : "",
			position : "bottom",
			action : "display" + i
		}
		intro.insertOption(intro._currentStep + ++step, nextStep);
	
	var nextStep = {
			element : "#outputDiv",
			intro : "",
			position : "top",
			action : "printText",
			tooltipClass: "hide"
		}
		intro.insertOption(intro._currentStep + ++step, nextStep);
	
	var nextStep = {
			element : "#scanf2",
			intro : "",
			position : "top",
			action : "scaning" + i
		}
		intro.insertOption(intro._currentStep + ++step, nextStep);
	
	var nextStep = {
			element : "#outputDiv",
			intro : "",
			position : "top",
			action : "readText" 
		}
		intro.insertOption(intro._currentStep + ++step, nextStep);//arrTextBox0
	
		var nextStep = {
				element : "#arrTextBox" + i,
				intro : "",
				position : "top",
				action : "readText"
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
	
	var nextStep = {
			element : "#increment",
			intro : "",
			position : "top",
			action : "change" + i
		}
		intro.insertOption(intro._currentStep + ++step, nextStep);
	
	var nextStep = {
			element : "#condition",
			intro : "",
			position : "top",
		}
		intro.insertOption(intro._currentStep + ++step, nextStep);   
}


function memoryBlock() {
	var arr = [ 'a', 'b', 'c', 'd', 'e'];
	$("#explanation").append("<div id='parentDiv' class='col-xs-12' style='margin-top: 55px;'></div>");
	for (var i = 0; i < 5; i++) {
	
	$("#parentDiv").append("" +
								"<div id='memorySpace"+i+"' class='col-xs-2 col-xs-offset-0 margin-top-20 text-center display-none' '>" +
									"<div>" +
										"<b style='color: maroon;'>"+ arr[i] +"</b>" +
									"</div>" +
									"<div class='box-border' style='line-height: 50px; height: 50px;'> <span id='sumVal' class='opacity00'></span></div>" +
									"<div>1"+ i +"6"+ i +"</div>" +
								"</div>" +
							"");
	$("#memorySpace"+ i).fadeIn(500);
	}
}

function creatingMarksArr() {
	
	$("#explanation").append("<div id='parentDiv' class='col-xs-12 display-none' style='margin-top: 30px;'></div>");
	$("#parentDiv").append('<table>' +
								'<tbody>' +
									'<tr id = "arrIndices">' +
									'</tr>' +
									'<tr id = "arrBoxes">' +
									'</tr>' +
									'<tr id = "arrAddr">' +
									'</tr>' +
								'<tbody>' +
						'</table>');
	
	for (var index = 0; index < 5; index++) {
		$('#arrIndices').append('<td id="arrIndicesBox'+ index +'" class="td-border-none"><span class="opacity0"'
								+' id="arrIndicesLetter'+ index +'"><span class="ct-variables-color">'
								+'arr[</span>' + index + '<span class="ct-variables-color">]</span></span></td>');
		$('#arrBoxes').append('<td id = "arrTextBox'+ index +'"><span id="arrTextLetter'+ index +'" class="arrTextLetter"><span class="opacity00">0</span></span></td>');
		$('#arrAddr').append('<td id = "arrTextAddr'+ index +'" class="td-border-none"><span id="arrBoxAddr'+ index +'" class="arrTextAddr">'+ (1024 + (2 * parseInt(index))) +'</span></td>');
	}
	
	$("#outputDiv").append(''+
			''+
				'<div class="output-console-title-bar">'+
					'<span class="title">Output</span>'+
				'</div>'+
				'<div class="output-console-body padding0">'+
					'<span class="output" id="output"></span>'+
				'</div>'+
			''+
		'');
}

function terminateForLoop() {
		var step1 = 0;
		var nextStep = {
				element : "#lastPrint",
				intro : "",
				position : "top",
			}
			intro.insertOption(intro._currentStep + ++step1, nextStep);
		
		var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "right",
				tooltipClass : "hide",
				action : "finalPrint" 
			}
			intro.insertOption(intro._currentStep + ++step1, nextStep);
		
		var nextStep = {
				element : "#printVal",
				intro : "",
				position : "top",
			}
			intro.insertOption(intro._currentStep + ++step1, nextStep);
		
		var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "right",
				action : "finalOutPut" 
			}
			intro.insertOption(intro._currentStep + ++step1, nextStep);
		
		var nextStep = {
				element : "#restart",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step1, nextStep);
}


function typing(selector, text, callBackFunction) {
		var typingSpeed = 40;
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			//$(".introjs-nextbutton").show();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		})
	}
	
	function validationFunction() {
		
		$('#num1').on("keydown", function(e) {
			$(".length-error-text").remove();
			var max = $(this).attr("maxlength"); 
			
			if ($.inArray(e.keyCode, [46, 8, 9, 27, 35, 36, 37, 39]) !== -1) {
				return;
			}
			if (((e.shiftKey) || (e.keyCode < 49 || e.keyCode > 53)) && ((e.keyCode < 97) || (e.keyCode > 101))) {
				e.preventDefault();
			}
			
			if ($(this).text().length > max) {
				$(".introjs-tooltiptext").append("<div class='length-error-text'>Max Length 1 digit only</div>");
				e.preventDefault();
			}
			
		});
		
		 $("#num1").on("keyup", function(e) {
			$(".length-error-text").remove();
			var max = $(this).attr("maxlength");
			
			if ($(this).text() == "") {
				$(".introjs-nextbutton").hide();
				$(".introjs-tooltiptext").append("<div class='length-error-text'>Please enter a number between 1 to 5.</div>");
			} else {
				$(".introjs-nextbutton").show();
			}
			
			if ($("#num1").text().length < 1) {
				$(".introjs-nextbutton").hide();
			}
		}); 
	}
	
	function readValues() {
		  $('.span-box').on("keydown", function(e) {
				$(".length-error-text").remove();
				var max = $(this).attr("maxlength"); 
				
				if ($.inArray(e.keyCode, [46, 8, 9, 27, 35, 36, 37, 39]) !== -1) {
					return;
				}
				
				if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
					$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only integer.</div>");
					e.preventDefault();
				}
				
				if ($(this).text().length > max) {
					$(".introjs-tooltiptext").append("<div class='length-error-text'>Max Length 2 digit only</div>");
					e.preventDefault();
				}
				
				if ($(".span-box").text().length < 2) {
					$(".introjs-nextbutton").hide();
				}
			}); 
		  
		   $(".span-box").on("keyup", function(e) {
				var max = $(this).attr("maxlength");
				if ($(this).text() == "") {
					$(".introjs-nextbutton").hide();
				} else {
					$(".introjs-nextbutton").show();
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
</head>
<body>
<div class="col-xs-12 padding0">
	<div class="col-xs-12">
		<h2 class="text-center">
			<span class="label label-default ct-demo-heading">One Dimensional Array</span>
		</h2>
	</div>
	<div  class="col-xs-12">
		<div class="col-xs-offset-0 col-xs-12 padding0">
  			<div class='col-xs-12'>
<div class="col-xs-4 padding">
<pre id='pre'>
<div id= 'preContent' class='visibility-hidden'>
#include &lt;stdio.h&gt;
main( )
{
<span id="varDec">int arr[5], i, n ;</span>
<span id="range">printf ("Enter how many values you want to read :");</span>
<span id="scanf1">scanf (" %d ", &n );</span>
<span id="forLoop1">for( <span id="initialization">i = <span id='zero' class='position-relative'>0</span></span>; <span id="condition"><span id='iCondition' class='position-relative'>i</span> &lt; <span id='nrange' class='position-relative'>n</span></span>; <span id="increment">i++</span> )</span>
{
 <span id="printf1">printf (" Enter the value of arr[%d] : " , i );</span>
 <span id="scanf2">scanf (" %d ", &arr[ i ]);</span>
}
<span id="lastPrint">printf (" The array elements are : ");</span>
<span id="printVal"><span id="forLoop2">for( i=0; i &lt; n; i++ )</span>
 <span id="printf3">printf (" \t %d ", arr[ i ]);</span></span>
}
</div>
</pre>
</div>
					<div class="col-xs-6 padding0" id="arrayDiv">
						<div class="col-xs-12 padding0" id="explanation"></div>
						<div class="col-xs-12 padding0">
							<div id="varDecl" class="col-xs-2 text-center" >
								<div class='iValue opacity00'><b>i</b></div>
								<div class="iValue col-xs-12 padding0 variableDecl opacity00"><span id="valueOfI" class="opacity00 position-relative">0</span></div>
								<div class='nValue opacity00'><b>n</b></div>
								<div class="nValue col-xs-12 padding0 variableDecl opacity00"><span id="valueOfN" class="opacity00 position-relative"></span></div>
								<div class='opacity00'>d</div>
							</div>
							<div class="col-xs-offset-0 col-xs-6" style="margin-top: 25px">
								<div id="outputDiv" class="visibility-hidden"></div>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
	<div class="col-xs-12 text-center" style='margin-top:45px;'>
			<span class="btn btn-warning opacity00" id="restart">Restart</span>
	</div>
</div>
</body>
</html>