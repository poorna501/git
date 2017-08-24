<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/tablesorter/jquery-ui.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">

<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/data-structures-css.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js" type="text/javascript" charset="utf-8"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<title>Bitwise OR</title>

<style>

[contenteditable=true]:empty:before {
	content: attr(placeholder);
	color: #B8B8A0;
}

.border {
	border: 2px solid gray;
	border-radius: 15px;
	min-height: 150px;
}

.animation-div-border {
	height: 320px;
	font-family: monospace;
}

.table-border {
	border: 2px solid gray;
	padding: 4px 6px;
}

.margin-top20 {
	margin-top: 20px;
}

.input-text {
	/* width: 40px; */
	border: 2px solid gold;
	text-align: center;
	border-radius: 5px;
	width: 18%;
}

.line-div {
	border: 1px solid gray;
}

.nextButton {
	background-color: green;
}

.ct-code-b-green {
	color: green;
}

.reveal-right {
	position: relative;
	overflow: hidden;
	-moz-animation: reveal-right 1s ease;
	-moz-animation-fill-mode: forwards; 
}

@-moz-keyframes reveal-right {
	0%   {width: 0%;}
	100% {width: 100%;}
}

/* .blinking-circle {
	border: 1px solid red;
	border-radius : 50%;
	padding: 2px 3px;
} */

</style>
</head>
<body>
	<script>

var intro;
var typingInterval = 5;
var tl = new TimelineLite();
$(document).ready(function() {
	
	$("[contenteditable=true]").on("keydown keyup", function(e) { // conditions to enter text
		if ($('#firstNum').val() != "" && $('#secondNum').val() != "") {
			$('.introjs-nextbutton').show();
		} else {
			$('.introjs-nextbutton').hide();
		}
		if((e.shiftKey)) {
			e.preventDefault();
		}
		$(".ct-code-b-red").remove();
		var max = $(this).attr("maxlength");
		
	    if ((e.which != 8) && (e.which != 46) && (e.which != 37) && (e.which != 39) && ($(this).val().length) > max) {
	    	$(".introjs-tooltiptext").append("<div class='ct-code-b-red'></br>Please restrict the length of text to 2 characters.</div>");
	    	e.preventDefault();
	    }
	    
		if (((e.which >= 48 && e.which <= 57) || (e.which >= 96 && e.which <= 105) || e.which == 8 || e.which == 46)) {
			return true;
		} else {
			e.preventDefault();
		}
 	});
	
	$("#restart").click(function(){
		$('#firstNum').val('');
		$('#secondNum').val('');
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
				element : "#inputDiv",
				intro : "",
				position:"right"
			},{
				element : "#table1",
				intro : "",
				poition: "right"
			},{
				element : "#animationDiv",
				intro : "",
				position:"right"
			},{
				element : "#restart",
				intro : "",
				position:"right"
			}
			]});
		
		intro.onafterchange(function(targetElement) {
			var elementId = targetElement.id;
			switch (elementId) {
			case "informationDiv":
				$('.introjs-nextbutton').hide();
				$("#informationDiv").css({"z-index": "999999999","background-color": "rgb(243, 235, 235)"});
				var text = "<br><ul><li>Bitwise operators are used for manipulation of data at bit level (binary data).</li>" 
							+ "<li>The bitwise OR operator is represented as <span class='ct-code-b-green'>|</span>. Which is called" 
							+ " as <span class='ct-code-b-green'>pipe</span>.</li>"
							+ "<li>Bitwise OR(|) operator is performed on only binary Data.</li>" 
							+ "<li>The output of bitwise OR is 0 if the corresponding bits of all operands is 0. If either bit of an operand" 
							+ " is 1, the result of corresponding bit is evaluated to 1.</li>" 
							+ "</ul>";
				typing("#informationDiv", text, function() {
					$("#informationDiv").css({"z-index": "999999999"})
					intro.nextStep();
				});
			break;	
			case "inputDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					TweenMax.to("#inputDiv", 1, {"opacity" : "1"});
					TweenMax.to("#firstNum", 1, {"opacity" : "1"});
					TweenMax.to("#secondNum", 1, {"opacity" : "1", onComplete:function() {
						var text = "Enter two values to perform <span class='ct-code-b-yellow'>Bitwise OR (|)</span> operation between them.";
						typing(".introjs-tooltiptext", text, function() {
							$("#firstNum, #secondNum").effect( "highlight",{color: 'yellow'}, 1500 );
							$("#firstNum").focus();
							
							$('#animationDiv').append('<div class="col-xs-4"><div id="firstBinaryValue" class="opacity00"><b>A</b> = <span id="valueSpan1">' 
									+ '</span><span class="fa fa-long-arrow-right" aria-hidden="true" style="margin:15px;">' 
									+ '</span><span id="value"></span></div></div>');
							$('#animationDiv').append('<div class="col-xs-4"><div id="secondBinaryValue" class="opacity00"><b>B</b> = <span id="valueSpan2">'
									+ '</span><span class="fa fa-long-arrow-right" aria-hidden="true" style="margin:15px;">' 
								 	+ '</span><span id="value2"></span></div></div>');
							
							var newStep = {
								"element" : "#firstBinaryValue",
								"position" : "right",
								"intro" : ""
							};
							
							intro.insertOption(intro._currentStep + 1, newStep);
							var newStep = {
								"element" : "#secondBinaryValue",
								"position" : "right",
								"intro" : ""
							};
							
							intro.insertOption(intro._currentStep + 2, newStep);
						});
					}});
				});
			break;
			
			
			case "firstBinaryValue":
				$('.introjs-nextbutton').hide();
					var num1=parseInt($('#firstNum').val(), 10).toString(2);
					var zeros1='';
					for(var i=num1.length; i < 8; i++) {
					  zeros1 = 0 + zeros1;
					}
					var res = "";
					var number = "";
					$.each((zeros1+num1).split(""), function(ind, val){
						number = number + " " + val;
						res =  res + " " + '<span id="index' + ind + '" >' + val + '</span>';
					});
					
					$("#value").text(number);
					$("#valueSpan1").text($('#firstNum').val());
					$(".introjs-helperLayer ").one('transitionend', function() {
						intro.refresh();
						TweenMax.to("#firstBinaryValue", 1,{opacity : 1, onComplete:function() {
							var text = "Number <span class = 'ct-code-b-yellow'>" + $('#firstNum').val() + "</span> converted to " 
							+ "<span class = 'ct-code-b-yellow'>binary</span> number.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						}});
					});
			break;
				
			case "secondBinaryValue":
				$('.introjs-nextbutton').hide();
				var num2=parseInt($('#secondNum').val(), 10).toString(2);
				var zeros2='';
				for(var i=num2.length; i < 8; i++) {
				  zeros2 = 0 + zeros2;
				}
				var res1 = "";
				var number1 = "";
				$.each((zeros2+num2).split(""), function(ind, val){
					number1 = number1 + " " + val;
					res1 =  res1 + " " + '<span id="count' + ind + '" >' + val + '</span>';
				});
				$("#value2").text(number1);
				$("#valueSpan2").text($('#secondNum').val());
				$(".introjs-helperLayer ").one('transitionend', function() {
					intro.refresh();
					TweenMax.to("#secondBinaryValue", 1,{opacity : 1, onComplete:function() {
						var text = "Number <span class = 'ct-code-b-yellow'>" + $('#secondNum').val() + "</span> converted to " 
									+ "<span class = 'ct-code-b-yellow'>binary</span> number.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					}});
				});
			break;
			case "table1":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#table1").removeClass("opacity00").hide().fadeIn(2000, function() {
						var text="As per the table the Bitwise OR(|) Operation will return <span class = 'ct-code-b-yellow'>0</span> only" 
									+ " when <span class = 'ct-code-b-yellow'>both</span> the bits of A and B are <span class = 'ct-code-b-yellow'>0's</span>.<br>" 
									+ "Now let us see the example, ";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
			break;
			case "animationDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var num1=parseInt($('#firstNum').val(), 10).toString(2);
					var num2=parseInt($('#secondNum').val(), 10).toString(2);
					var zeros1='';
					for(var i=num1.length; i < 8; i++) {
					  zeros1 = 0 + zeros1;
					}
					var zeros2='';
					for(var i=num2.length; i < 8; i++) {
					  zeros2 = 0 + zeros2;
					}
					var res = "";
					var number = "";
					$.each((zeros1+num1).split(""), function(ind, val){
						number = number + " " + val;
						res =  res + " " + '<span id="index' + ind + '" >' + val + '</span>';
					});
					var res1 = "";
					var number1 = "";
					$.each((zeros2+num2).split(""), function(ind, val){
						number1 = number1 + " " + val;
						res1 =  res1 + " " + '<span id="count' + ind + '" >' + val + '</span>';
					});
					var text = "The given two values will be conveted to binary and then in between the two binary values And operation will be performed.";
					typing(".introjs-tooltiptext", text, function() {
						$("#value").effect("highlight", {color: '#FF0000'}, 1000, function() {
							$('#animationDiv').append('<div class="col-xs-8"><div class="col-xs-offset-3 col-xs-5" style="margin-top:60px;padding: 2px 3px;"><b>A</b> =   '
									 + '</span>' + res  + '</div></div>');
							setTimeout(function(){
								$("#value2").effect("highlight", {color: '#FF0000'}, 1000, function() {
									$('#animationDiv').append('<div class="col-xs-8"><div class="col-xs-offset-3 col-xs-5" style="margin-top:10px;padding: 2px 3px;"><b>B</b> =   '
											 + '</span>' + res1  + '</div></div>');
									$('#animationDiv').append('<div class="col-xs-offset-2 col-xs-2 " style="margin-top:10px;padding:0;width:22%;">'
										+ '<div class="line-div reveal-right" id="lineDiv"></div>'
										+ '<div class="opacity00" style="margin-top:10px;" id="resultDiv"><span style="margin-left:-23px;"><b>A | B</b> =</span>'
									    + '<span id="resultValueDiv" style="margin-left: 8px;"><span class="opacity00" id="result0">0</span> '
									    + '<span class="opacity00" id="result1">0</span> '
									    + '<span class="opacity00" id="result2">0</span> '
									    + '<span class="opacity00" id="result3">0</span> '
									    + '<span class="opacity00" id="result4">0</span> '
									    + '<span class="opacity00" id="result5">0</span> '
									    + '<span class="opacity00" id="result6">0</span> '
									    + '<span class="opacity00" id="result7">0</span></span>'
									    + '</div></div>');
									$('#animationDiv').append('<div class="col-xs-offset-5 col-xs-6 opacity00" id="display">The Decimal value of <span id="resultValue"></span> is : <span id="decimalResult"></span></div>');
									var text = "Here to understand easily about the Bitwise OR (|) operation we have a table.";
									typing(".introjs-tooltiptext", text, function() {
										
										var newStep = {
												"element" : "#display",
												"position" : "right",
												"intro" : ""
											};
											
											intro.insertOption(intro._currentStep + 1, newStep);
										
										$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'perform(7)'>Next &#8594;</a>");
									});
								});
							}, 1000);
						});
					});
				});
			break;	
			
			case "display":
				$('.introjs-nextbutton').hide();
				var result=parseInt($('#resultValueDiv span').text(), 2).toString(10);
				
				/* var l1 = $('#resultValueDiv span').offset();
				var l2 = $('#resultValue').offset({
				  "top":l1.top,
				  "left":l1.left
				});
			    TweenMax.to("#resultValue",1,{top: 0,left: 0}); */
				
				$("#resultValue").text($('#resultValueDiv span').text());
				$("#decimalResult").text(result);
				$(".introjs-helperLayer ").one('transitionend', function() {
					intro.refresh();
					$("#display").removeClass("opacity00").hide().fadeIn(2000, function() {
						var text="This is the decimal value of the result."
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
							//$('#animationDiv').append('<div class="col-xs-offset-5 col-xs-6" id="display">The Decimal value of <span id="resultValue"></span> is : <span id="decimalResult"></span></div>');
						});
					});
				});
				break;
			case "restart":
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

function perform(i) {
	$('.nextButton').remove();
	if(i >= 0) {
		TweenMax.to("#resultDiv", 1, {"opacity" : "1", onComplete:function() {
			var id = "#row" + $('#index' + i).text() + $('#count' + i).text();
			$('#index' + i).effect("highlight", {color: '#FF0000'}, 1000);
			$('#count' + i).effect("highlight", {color: '#FF0000'}, 1000, function() {
				//$('#index' + i).removeClass('blinking-circle');
				//$('#count' + i).removeClass('blinking-circle');
				$(id).effect("highlight", {color: '#008000'}, 1000, function() {
				    if($('#index' + i).text() == "0" && $('#count' + i).text() == "0") {
				    	$('#result' + i).removeClass('opacity00');
				    	var l1=$(id + " td:last-child span").offset();
				    	l2=$('#result' + i).offset({
				    		"top": l1.top,
				    		"left":l1.left
				    	});
				    	$('#result' + i).text(0);
			    	    TweenMax.to("#result" + i, 1,{top:0,left:0, onComplete:function() {
			    	    	
			    	    }});
				    } else {
				    	$('#result' + i).removeClass('opacity00');			
				    	var l1=$(id + " td:last-child span").offset();
				    	l2=$('#result' + i).offset({ 
				    		"top": l1.top,
				    		"left":l1.left
				    	});
				    	$('#result' + i).text(1);
			    	    TweenMax.to("#result" + i, 1,{top:0,left:0, onComplete:function() {
			    	    	
			    	    }});
				     }
				    i--;
				    perform(i);
				});		
			 });
		}});
	} else {
		$(".introjs-nextbutton").show();
	}
}

</script>
	<h2 class="text-center">
		<span class="label label-default ct-demo-heading">Bitwise OR operator</span>
	</h2>
	<div class="margin-top20 text-center">
		<span class="btn btn-warning opacity00" id="restart">Restart</span>
	</div>
	<div id="informationDiv"
		class="col-xs-offset-2 col-xs-8 border margin-top20"></div>
	<div id="inputDiv"
		class="col-xs-offset-2 col-xs-8 margin-top20 opacity00">
		<div class="col-xs-offset-4">
			A = <input type="text" id="firstNum" class="input-text opacity00"
				contenteditable="true" maxlength="2" placeholder="Number"></input>
			&emsp; B = <input type="text" id="secondNum"
				class="input-text opacity00" contenteditable="true" maxlength="2"
				placeholder="Number"></input>
		</div>
	</div>
	<div id="animationDiv"
		class="col-xs-offset-2 col-xs-8 animation-div-border margin-top20">
		<div id="tableDiv" class="col-xs-4 margin-top20"
			style="margin-bottom: 20px;">
			<table class="table-border text-center margin-top20 opacity00"
				align="center" id="table1">
				<tr>
					<th class="table-border">operand1</th>
					<th class="table-border">operand2</th>
					<th class="table-border">operand1 | operand2</th>
				</tr>
				<tr id="row00">
					<td class="table-border">0</td>
					<td class="table-border">0</td>
					<td class="table-border"><span id="1">0</span></td>
				</tr>
				<tr id="row01">
					<td class="table-border">0</td>
					<td class="table-border">1</td>
					<td class="table-border"><span id="2">1</span></td>
				</tr>
				<tr id="row10">
					<td class="table-border">1</td>
					<td class="table-border">0</td>
					<td class="table-border"><span id="3">1</span></td>
				</tr>
				<tr id="row11">
					<td class="table-border">1</td>
					<td class="table-border">1</td>
					<td class="table-border"><span id="4">1</span></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>