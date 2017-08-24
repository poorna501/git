<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2D</title>
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

.zIndex {
	position: relative;
	z-index: 9999999;
} 

.background-color {
    background-color: #BCBCBC;
}

#mainDiv {
	margin-top: 20px;
}

#tableDiv {
	height:80px;
}
.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 14px;
	height: 346px;
	overflow:unset;
	padding: 10px;
	white-space: pre-line;
}

.margin-top20 {
	margin-top: 20px;
}

#typingDiv {
	height: 60px;
}

.back-color {
	background-color: #D6C2E7;
}

.green-color {
	color: green;
}

.input-char {
    background-color: #000;
    border-width: 0;
    color: #0f0;
    text-align: center;
    width: 30px;
}

.padding0 {
	padding: 0;
}

.input-char {
    color: #0f0;
    text-align: center;
}

.input-char:empty::before {
	content: attr(placeholder);
}

.outline-none {
	outline:none;
}

.error-msg {
	color: red;
	font-weight: bold;
}

.border-height-css, .td-value-css {
	border: 1px solid;
	height: 22px;
}
 .red {
 	border:1px solid red;
 }
 
 .red-text {
 	color: red;
 }
 
 .green-text {
 	color: green;
 }
 
 .blue-text {
 	color: blue;
 }
 
 .green {
 	border:1px solid green;
 }
 
 
 .blue {
 	border:1px solid blue;
 }
 
div, span {
	position: relative;
}

pre > span {
	position: static;
}

.table-css {
	text-align: center;
	width: 100%;
}

.user-btn {
	background-color: green;
}

.output-value-circle {
	background: white;
	color: black;
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
}

</style>
</head>
<body>
	<script>
	var typingSpeed = 5;
	var intro;
	var i = -1;
	var j = 0;
	var val = 0;
	var print = 0;
	var index = 1;
	$(document).ready(function() {
		$('#rowValue, #columnValue').attr('contenteditable','false');
		$("#rowValue, #columnValue").on("click keydown keyup", function(e) {
			var max = $(this).attr("maxlength");
			$(".error-msg").remove();
			if ($(this).text() == "") {
				$(this).addClass("empty");
			} else {
				$(this).removeClass("empty");
			}
			if ($(".empty").length > 0) {
				$(".introjs-nextbutton").hide();
				$(".introjs-tooltiptext").append("<div class='error-msg'>Empty values is not allowed And value should be 1 to 3</div>");
			} else {
				$(".introjs-nextbutton").show();
			}
			if ($.inArray(e.keyCode, [46, 8, 9, 27, 37, 39]) !== -1) {
				return;
			}
			if (((e.which < 49 || e.which > 51))&& ((e.keyCode < 97) || (e.keyCode > 99))) {
	                e.preventDefault();
	        }
			
			if ($(this).text().length > max) {
				if($(this).attr("id") == "rowValue") {
					$(".introjs-tooltiptext").append("<div class='error-msg'>Max length is 1.</div>");
				} else { 
					$(".introjs-tooltiptext").append("<div class='error-msg'>Max length is 1.</div>");
				}
				e.preventDefault();
			}
		});
		
		$("#restart").click(function() {
			location.reload();
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
			steps : [{
				element : "#typingDiv",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#typingDiv",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#codeDiv",
				intro : "",
				position : "bottom"
			}, {
				element : "#variableDeclaraiton",
				intro : "",
				position : "bottom"
			}, {
				element : "#tableDiv",
				intro : "",
				position : "bottom",
				action : "arrayCreation"
				
			}, {
				element : "#getRowColumn",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#animationDiv",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#scanf",
				intro : "",
				position: "right"
			}, {
				element : "#animationDiv",
				intro : "",
				position: "left"
			}, {
				element : "#getInputValues",
				intro : "",
				position : "bottom"
			}, {
				element : "#animationDiv",
				intro : "",
				position : "left"
			}, {
				element : "#tableDiv",
				intro : "",
				position : "buttom",
				action : "placingValues"
			}, {
				element : "#codePrintf",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#animationDiv",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#printForLoop",
				intro : "",
				position : "right"
			}, {
				element : "#animationDiv",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#restart",
				intro : "",
				position : "left"
			}]});
		intro.onbeforechange(function(targetElement) {
			var elementId = targetElement.id;
			switch (elementId) {
				case "typingDiv":
				$('.introjs-nextbutton').hide();
				if (intro._currentStep == 1) {
					dynamicSteps();
					setTimeout(function() {
						intro.nextStep();
					}, 1500);
				};
				break;
				
				case "codeDiv":
				$('#typingDiv').addClass('bg-info zIndex');
				$('#codeDiv').removeClass('opacity00').addClass('introjs-showElement');
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
					var text = "Let us learn <span class='ct-code-b-yellow'>two Dimensional Array</span> in " +
					"<span class='ct-code-b-yellow'>C</span> using this sample code.";
	 				typing(".introjs-tooltiptext", text, function() {
	 					$('.introjs-nextbutton').show();
	 				});
				});
				break;
				
				case "printForLoop":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "For displaying two dimensional array values as matrix we require <b class='ct-code-b-yellow'>2</b> for loops.";
						typing(".introjs-tooltiptext", text, function() {
		 					$('.introjs-nextbutton').show();
		 				});
					});
					break;
					
				case "part1":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "It refers to the primitive data type like int,float,long etc."
							typing(".introjs-tooltiptext", text, function() {
			 					$('.introjs-nextbutton').show();
			 				});
					});
					break;
					
				case "part2":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "It refers to the identifier which represents array name."
							typing(".introjs-tooltiptext", text, function() {
			 					$('.introjs-nextbutton').show();
			 				});
					});
					break;
					
				case "part3":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "It is an integer constant represents row size of the array."
							typing(".introjs-tooltiptext", text, function() {
			 					$('.introjs-nextbutton').show();
			 				});
					});
					break;
				
				case "part4":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "It is an integer constant represents column size of the array."
							typing(".introjs-tooltiptext", text, function() {
			 					$('.introjs-nextbutton').show();
			 				});
					});
					break;
				
				
				
				case "codePrintf":
					$('.introjs-helperLayer ').one('transitionend', function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
					break;
				
				case "scanf":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "<b class='ct-code-b-yellow'>scanf()</b> function reads two integer values as "
						+"<b class='ct-code-b-yellow'>row</b> size and <b class='ct-code-b-yellow'>column</b> size.";
		 				typing(".introjs-tooltiptext", text, function() {
		 					$('.introjs-nextbutton').show();
		 				});
					});
					break;
					
				case "restart":
					$('.zIndex').removeClass('zIndex');
					$('.introjs-nextbutton').hide();
					$("#restart").removeClass('opacity00');
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "click to restart.";
		 				typing(".introjs-tooltiptext", text, function() {
		 				});
					});
					break;
				
				case "variableDeclaraiton":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						$("#array").effect("highlight", {color: '#008000'}, 1000, function() {
							var text = "Two dimensional integer array <b class='ct-code-b-yellow'>a[3][3]</b> and intiger variable <b "
										+"class='ct-code-b-yellow'>m,n,i,j</b> are declared.";
			 				typing(".introjs-tooltiptext", text, function() {
			 					$('.introjs-nextbutton').show();
			 				});
						});
					});
					break;
					
				case "getRowColumn":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
					break;
					
				case "animationDiv":
					
					if (intro._currentStep == 10) {
						charAtEnd("rowValue");
	
						$('#animationDiv').removeClass('opacity00').addClass('introjs-showElement');
						$('.introjs-nextbutton').hide();
						 $('.introjs-helperLayer ').one('transitionend', function() {
							 $('#animationDivText').removeClass('opacity00');
							 setTimeout(function() {
									intro.nextStep();
								}, 1000);
						});
						
					} else if (intro._currentStep == 12 ) {
						$('#rowValue, #columnValue').attr('contenteditable','true');
						$('.introjs-nextbutton').hide();
						 $('.introjs-helperLayer ').one('transitionend', function() {
							$('.matrix').removeClass('opacity00');
							charAtEnd('rowValue');
							 var text ="Enter <b class='ct-code-b-yellow'>row</b> and <b class='ct-code-b-yellow'>"
							 			+"column</b> values using <b class='ct-code-b-yellow'>tab</b> and <b class='ct-code-b-yellow'>shift+tab</b>.";
							typing(".introjs-tooltiptext", text, function() {
			 				});
						});
						
					} else if (intro._currentStep == 17 ) {
						console.log("mahesh 13");
						
						 $('.introjs-helperLayer ').one('transitionend', function() {
							 $("#consoleBodyDiv1").append("<div id='outputTyping'></div>");
							 typingId = '#outputTyping';
							 typingContent ="The array elements are :";
							 typing(typingId, typingContent, function() {
								 setTimeout(function() {
										intro.nextStep();
									}, 500);
								});
						 });
						
					} else if (intro._currentStep == 19) {
						 $('.introjs-helperLayer ').one('transitionend', function() {
							 $(".table-css tr:eq(1) .output-value-circle").addClass("circle-css").effect("highlight", {color: 'yellow'}, 2000, function() {
								 $(".table-css tr:eq(1) .output-value-circle").removeClass("circle-css");
							 });
							 $(typingId).removeClass('typingCursor');
								for (var i =0 ; i < parseInt($('#rowValue').text()) ; i++ ) {
								  for (var j = 0; j < parseInt($('#columnValue').text()); j++ ) {
									  $("#consoleBodyDiv1").append("<span  class='final' id='final"+print+"'><span><span>&nbsp;</span>");
									  if (parseInt($('#blinkCursor'+print+'').text()) == 0) {
										  $('#final'+print+'').text("0");
									  } else {
										  $('#final'+print+'').text($('#blinkCursor'+print+'').text());
									  }
									$('#consoleBodyDiv1').append(' ');
									print++;
								  }
								  $('#consoleBodyDiv1').append('<br/>');
								}
								setTimeout(function() {
										intro.nextStep();
								}, 2000);
						 });
						
					} else {
						$('.introjs-nextbutton').hide();
						 $('.introjs-helperLayer ').one('transitionend', function() {
							 var text = "press enter key for next entry.";
							 typing(".introjs-tooltiptext", text, function() {
								tableIndex(); 
							 $("#consoleBodyDiv1").append("<div>Enter the value of a[0][0] &emsp;: <span id='blinkCursor0' class='int input-char outline-none a00' placeholder='value' contenteditable='true' maxlength='2'></span></div>");
							 charAtEnd('blinkCursor0');
							 keyDownEvent();
							 });
						 });
					}
					break;
					
					
					
				case "tableDiv":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var action = intro._introItems[intro._currentStep].action;
						console.log(action);
						switch(action) {
						case "placingValues":
							for (var i = 0; i < parseInt($('#rowValue').text())*parseInt($('#columnValue').text()) ; i++) {
								var l = $("#blinkCursor" + i).offset();
								$("#arrayBox .a" + stackIndex[i]).offset({"top" : l.top,"left" : l.left}).text($("#blinkCursor" + i).text()).addClass('output-value-circle circle-css');
								TweenMax.to($("#arrayBox .a" + stackIndex[i]), 2, {top: 0, left : 0,onComplete : function() {
									$('.arrayValue').removeClass('circle-css');
								  	var text = "The array values placed into respective memory location of an array.";
								  	typing(".introjs-tooltiptext", text, function() {
									  	$('.introjs-nextbutton').show();
								  	});
							  	}});
							}
							$(".table-css tr:eq(1) span").not(".output-value-circle").parent().addClass('background-color');
							$(".table-css tr:eq(1) span").each(function(ind, val) {
							    if (!$(this).text().trim().length) {
							        $(".table-css tr:eq(2) td").eq(ind).find("span").css("opacity", "0.3");
							    }
							});
							break;
						case "arrayCreation":
							$('#tableDiv').removeClass('opacity00').addClass('introjs-showElement');
							$('.introjs-nextbutton').hide();
							$('.introjs-helperLayer ').one('transitionend', function() {
								setTimeout(function() {
									tableCreation();
							}, 1000);
				 				
								setTimeout(function() {
									var text ='<b class="ct-code-b-yellow">a[3][3]</b> this is <b class="ct-code-b-yellow">2</b> dimensional array with '
										+'maximum row size <b class="ct-code-b-yellow">3</b> and maximum column size <b class="ct-code-b-yellow">3</b>.';
									 typing(".introjs-tooltiptext", text, function() {
										$('.introjs-nextbutton').show();
									});
							}, 2000);
							});
						}
					});
					break;
				case "getInputValues":
					$('#rowValue, #columnValue').attr('contenteditable','false');
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text ='<ul><li>The row size is <b class="ct-code-b-yellow">'+parseInt($('#rowValue').text())+'</b> and column size '
									+'is <b class="ct-code-b-yellow">'+parseInt($('#columnValue').text())+'</b> so user can access a '
									+ '<b class="ct-code-b-yellow">'+parseInt($('#rowValue').text())+'</b><b class="ct-code-b-yellow">*</b><b class="ct-code-b-yellow">'
									+''+parseInt($('#columnValue').text())+'</b> matrix.</li><li> For reading values into '
									+'<b class="ct-code-b-yellow">2</b> dimensional array we require two for loops , <b class="ct-code-b-yellow">outer for</b> loop used for '
									+'rows and <b class="ct-code-b-yellow">inner for</b> loop used for columns. Here m size is <b class="ct-code-b-yellow">'+parseInt($('#rowValue').text())+'</b>'
									+' and n size is <b class="ct-code-b-yellow">'+parseInt($('#columnValue').text())+'</b> so the body of the for loops will '
									+'execute <b class="ct-code-b-yellow">'+parseInt($('#rowValue').text())*parseInt($('#columnValue').text())+'</b>'
									+' number of times.</li></ul>';
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
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
			typingId = '#typingDiv';
			typingContent = '<ul><li>Two dimensional array can be used to represents matrix form of elements.</li><li>General format of two dimenstional '
				+'array is as follows <span id="textAnimate" class="back-color"> <span id="part1">data_type</span> <span id="part2">array_name</span><span id="part3">[<span class="green-color">size1</span>]</span><span id="part4">[<span class="green-color">size2'
				+'</span>]</span>;</span></li></ul>';
			typing(typingId, typingContent, function() {
				$(typingId).removeClass('typingCursor');
				var div = $("#textAnimate");
				 div.animate({fontSize: '1.7em'},"slow", function () {
					 intro.nextStep();
				 });
				
			});
		});
	
	function dynamicSteps(action) {
		var dynamicStep = {
				element : "#part1",
				intro : "",
				position : "bottom",
				action: action
		}
		intro.insertOption(intro._currentStep + 1, dynamicStep);
		var dynamicStep = {
				element : "#part2",
				intro : "",
				position : "bottom",
				action: action
		}
		intro.insertOption(intro._currentStep + 2, dynamicStep);
		var dynamicStep = {
				element : "#part3",
				position : "bottom",
				intro : ""
		}
		intro.insertOption(intro._currentStep + 3, dynamicStep);
		var dynamicStep = {
				element : "#part4",
				intro : "",
				position : "bottom"
		}
		intro.insertOption(intro._currentStep + 4, dynamicStep);
	}

	function tableCreation() {
		$('.user-btn').remove();
		var m = 3;
		var n = 3;
		var r = 0;
		var str = ["blue","red","green"];
		var str1 = ["blue-text","red-text","green-text"];
		var str2 = ["first","second","third"];
		for (var i = 0; i < m; i++) {
			var flag = true;
			for (var j = 0; j < n; j++) {
				if (flag) {
					$('tr').eq(0).append('<td colspan=' + n + '><span class="arrayRow">' + str2[i] + ' row</span></td>');
					flag = false;
				}
				$('tr').eq(1).append('<td id="val'+r+'" class="td-value-css '+ str[i] + '"><span id ="arrayVal'+r+'" class="arrayValue a'+i+''+j+'"></span></td>');
				$('tr').eq(2).append('<td><span class='+str1[i]+ ' id="arrIndex'+r+' a'+i+''+j+'">a['+i+']['+j+']<span></td>');
				r++;
			}
		}
		 $('#arrayBox').toggleClass('animated zoomIn').one('animationend', function() {
			$('#arrayBox').removeClass('animated zoomIn');
		}); 
		
	}
	var stack = [];
	var stackIndex = [];
	function tableIndex() {
		var m = parseInt($('#rowValue').text());
		var n = parseInt($('#columnValue').text());
		for (var i = 0; i < m; i++) {
			for (var j = 0; j < n; j++) {
				stack.push('a['+i+']['+j+']');
				stackIndex.push(i + "" + j);
			}
		}
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
	
	  function keyDownEvent(e) {
		  $(".error-msg").remove();
		  $("[contenteditable=true]").off("keydown");
		  $("[contenteditable=true]").on("keydown", function(e) {
		  	var max = $(this).attr("maxlength");
		  	var totalElements = parseInt($('#rowValue').text())*parseInt($('#columnValue').text());
		    if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
		      return;
		    }
		  	if (e.keyCode == 13 && $(this).text().length > 0) {
		  		
		    	$(this).attr("contenteditable", false);
		    	if (totalElements == (val + 1)) {
						e.preventDefault();
						$('.introjs-nextbutton').show();
			    } else {
			    	val++;
			    	$("#consoleBodyDiv1").append("<div id='value"+val+"'>Enter the value of "+stack[index]+" &emsp;: <span id='blinkCursor"+val+"' class='int input-char outline-none a" + stackIndex[index] + "' placeholder='value' contenteditable='true' maxlength='2'></span></div>");
			    	index++;
			    	charAtEnd('blinkCursor'+val+'');
					keyDownEvent(e);
			    }
		    }
		    if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
		      e.preventDefault();
		    }
		    if ($(this).text().length > max) {
		      e.preventDefault();
		    }
		  });
		}
		
	</script>
	<div class="ct-box-main padding0">
		<div class='text-center'>
			<h1 class='label ct-demo-heading' id="heading">Two Dimensional Array</h1>
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
		<div id='mainDiv' class='col-xs-12 padding0'>
			<div class='col-xs-6 '>
				<!-- <div id='codeDiv' class='border'> -->
				<pre class="creampretab4 opacity00" id='codeDiv'>
#include<span>&lt;stdio.h&gt;</span>
void main() {
	<span id='variableDeclaraiton'><span id='array'>int a[3][3]</span>, m, n, i, j;</span>
	<span id='getRowColumn'>printf (" Enter the number of rows and columns: ");</span>
	<span id='scanf'>scanf ("%d %d", &m, &n );</span>
	<span id='getInputValues'>for (i = 0; i &lt; m; i++ ) {
	  for (j = 0; j &lt; n; j++ ) {
		  <span id='matrixValues'>printf ( " Enter the value of a[%d][%d] : " , i, j );</span>
		  scanf ("%d", &a[i][j]);
	  }
	} </span>
	<span id='codePrintf'>printf (" The array elements are : \n");</span>
	<span id='printForLoop'>for( i = 0; i &lt; m; i++ ) {
		for( j = 0; j &lt; n; j++) {
			printf (" \t %d ", a[i][j]);
		}
		printf("\n");
	}</span>
}</pre>
			
			</div>
			<div class='col-xs-6'>
				<div id='animationDiv' class='opacity00'>
				<div id="consoleId1" class="center">
						<div class="output-console-title-bar">
							<span class="title"><b>Console</b></span>
						</div>
						<div class="output-console-body" id="consoleBodyDiv1">
							<span id="animationDivText" class='opacity00'>Enter number of rows and columns : <span spellcheck="false" class="opacity00 empty matrix input-char outline-none" 
							id="rowValue" placeholder="row" maxlength="0" contenteditable="true"><b></b></span>&nbsp;<span spellcheck="false" class="empty opacity00 matrix input-char outline-none" 
							id="columnValue" placeholder="col" maxlength="0" contenteditable="true"><b></b></span></span>
					</div></div>
			</div>
		</div>
</div>
<div class="col-xs-12"><div id='tableDiv'>

<div class='col-xs-12' id='arrayBox'>
						<table class='table-css'>
							<tbody>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
								</tr>
							</tbody>
						</table>
					</div>
</div></div>
	</div>
</body>
</html>