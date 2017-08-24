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
<link href="/css/animate.css" rel="stylesheet">

<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/data-structures-css.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js" type="text/javascript"
	charset="utf-8"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<title>two's complement</title>
<style>
.input-text {
	border: 2px solid gold;
	text-align: center;
	border-radius: 5px;
	width: 18%;
}

.information-div {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	z-index: 9999999;
}

.animation-div {
	min-height: 150px;
}

.margin-top20 {
	margin-top: 20px;
}

.z-index {
	z-index: 9999999;
	position: relative;
	background-color: white;
}

.binary-value-div {
	font-family: monospace;
}

.td-border {
	border: 2px solid gray !important;
}

td {
	text-align: center;
	padding: 2px 6px !important;
}

.table {
	margin-top: 70px;
	width: 70%;
	padding: 0 !important;
}

span {
	position: relative;
}

.nextButton {
	background-color: green;
}

.ct-code-b-green {
	color: green;
}

.ui-effects-transfer {
	border: 1px solid black;
	border-radius: 15px;
	z-index: 999999999;
}

.result-div {
	min-height: 25px;
}

}
.red {
	color: red;
}

.padding0 {
	padding: 0 !important;
}

.table-border {
	border: 2px solid gray;
	text-align: center;
}

.line {
	border: 1px solid gray;
}

.no-border {
	border: 2px solid transparent !important;
}

table {
	padding: 0 !important;
}
</style>
</head>
<body>

	<script>

var intro;
var typingInterval = 5;
var zeros1 = '';
var binaryNumber = "";
var number = "";
	$(document).ready(function() {
			
			
		var flag = true;
		$("[contenteditable=true]").on("keydown keyup", function(e) { // conditions to enter text
			if(!$("#firstNum").val().startsWith('-')){
				$(".ct-code-b-red").remove();
				$('.introjs-nextbutton').hide();
				$(".introjs-tooltiptext").append("<div class='ct-code-b-red'></br>Please enter negative values.</div>");
				return;
			}
			if ($('#firstNum').val() != "" && $('#firstNum').val().length >= 2) {
				$('.introjs-nextbutton').show();
			} else {
				$('.introjs-nextbutton').hide();
			}

			
			if ((e.shiftKey)) {
				e.preventDefault();
			}
			$(".ct-code-b-red").remove();
			var max = $(this).attr("maxlength");
			
			if(($("#type").val() == "long int" || $("#type").val() == "short int" || $("#type").val() == "int")) {
				if ($('#firstNum').val().length >= 1) {
					flag = false;
				} else if ($('#firstNum').val().indexOf('-') == -1) {
					flag = true;
				}
				
				if ((e.which == 109 || e.which == 173) && flag) {
					flag = false;
					return true;
				}
			}
			
			
			if ((e.which != 8) && (e.which != 46) && (e.which != 37) && (e.which != 39) && ($(this).val().length) > max) {
		  		e.preventDefault();
			}
		    
			if (((e.which >= 48 && e.which <= 57) || (e.which >= 96 && e.which <= 105) || e.which == 8 || e.which == 46)) {
				return true;
			} else {
				e.preventDefault();
			}
		});
		
		$("#restart").click(function() {
			$('#firstNum').val('');
			$('#type').val('');
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
					position:"bottom" 
				},{
					element : "#binaryValueDiv",
					intro : "",
					position:"right"
				},{
					element : "#animationDiv",
					intro : "",
					position : "left",
				},{
					element : "#animationDiv2",
					intro : "",
					position : "left"
				},{
					element : "#restart",
					intro : "",
					position : "right"
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
							$("#table").removeClass("opacity00");
							intro.nextStep();
						});
					break;
					case "inputDiv":
						$('.introjs-nextbutton').hide();
						$(".introjs-helperLayer ").one('transitionend', function() {
							TweenMax.to("#inputDiv", 1, {"opacity" : "1"});
							TweenMax.to("#firstNum", 1, {"opacity" : "1"});
							TweenMax.to("#shiftNum", 1, {"opacity" : "1", onComplete:function() {
								var text = "Select any datatype and enter the values to perform <span class='ct-code-b-yellow'>two's complement</span>.";
								typing(".introjs-tooltiptext", text, function() {
									$("#firstNum, #shiftNum").effect( "highlight",{color: 'yellow'}, 1500 );
									$("#firstNum").focus();
								});
							}});
						});
					break;
					case "binaryValueDiv" : 
						$('.introjs-nextbutton').hide();
						var value = $('#firstNum').val();
						var positiveNumber = Math.abs(value);
						var num1 = parseInt(positiveNumber, 10).toString(2);
						if ($("#type").val() == "int") {
							for	(var i = num1.length; i < 16; i++) {
								zeros1 = 0 + zeros1;
							}
							$.each((zeros1 + num1).split(""), function(ind, val) {
								number = number + " " + val;
								binaryNumber =  binaryNumber + " " + '<span id="index' + ind + '" class="val" >' + val + '</span>';
							});
						} else if ($("#type").val() == "short int") {
							for (var i = num1.length; i < 8; i++) {
								zeros1 = 0 + zeros1;
							}
							$.each((zeros1 + num1).split(""), function(ind, val) {
								number = number + " " + val;
								binaryNumber =  binaryNumber + " " + '<span id="index' + ind + '" class="val" >' + val + '</span>';
							});
						} else if ($("#type").val() == "long int") {
							for (var i = num1.length; i < 32; i++) {
								zeros1 = 0 + zeros1;
							}
							$.each((zeros1 + num1).split(""), function(ind, val) {
								number = number + " " + val;
								binaryNumber =  binaryNumber + " " + '<span id="index' + ind + '" class="val" >' + val + '</span>';
							});
						}
							
						$(".introjs-helperLayer ").one('transitionend', function() {
							if ($("#type").val() == "short int") {
								/* var text = "The given number <span class='ct-code-b-yellow'>" + value 
											+ "</span> will be converted to <span class='ct-code-b-yellow'>8</span> bit" 
											+ " <span class='ct-code-b-yellow'>binary</span> number."; */
								var text ="Here, the given number " + value + " is converted into <span class='ct-code-b-yellow'>binary</span> data " 
										+ "and stored it in <span class='ct-code-b-yellow'>8 bits</span> depending on the data type."
							} else if ($("#type").val() == "int") {
								/* var text = "The given number <span class='ct-code-b-yellow'>" + value 
											+ "</span> will be converted to <span class='ct-code-b-yellow'>8</span> bit" 
											+ " <span class='ct-code-b-yellow'>binary</span> number."; */
								var text ="Here, the given number " + value + " is converted into <span class='ct-code-b-yellow'>binary</span> data and stored it" 
								+ " in <span class='ct-code-b-yellow'>16 bits</span> depending on the data type."
							} else if ($("#type").val() == "long int") {
								/* var text = "The given number <span class='ct-code-b-yellow'>" + value 
											+ "</span> will be converted to <span class='ct-code-b-yellow'>8</span> bit" 
											+ " <span class='ct-code-b-yellow'>binary</span> number."; */
								var text ="Here, the given number " + value + " is converted into <span class='ct-code-b-yellow'>binary</span> data and stored it" 
								+ " in <span class='ct-code-b-yellow'>32 bits</span> depending on the data type."
							}
							var a = $("#firstNum").val();
							var positiveNumber = a.substring(1);
							
							$(".introjs-helperLayer ").one('transitionend', function() {
								typing(".introjs-tooltiptext", text, function() {
									TweenMax.to("#aSpan", 1, {"opacity" : "1", onComplete:function() {
										$("#binaryNum").append("<span>" + positiveNumber + "&emsp;</span>");
										$("#binaryNum").append("<span id='arrow1' class='arrow' align='center'><i style='margin-left:10px;' class='fa fa-arrow-right'></i></span>");
										$("#binaryNum").removeClass('opacity00').addClass("animated zoomIn").one("animationend", function() {
											$('#orginalValue').append(binaryNumber);
											$("#orginalValue").removeClass('opacity00').addClass("animated zoomIn").one("animationend", function() {
												intro.refresh();
												$("#valueDiv").append('<div class="col-xs-8" id="numberToPerform"></div>');
												for (var i = 0;i < $("#orginalValue > span").length; i++) {
													$("#numberToPerform").append("<span id = 'value" + i +"'></span>&nbsp;");
												}
												$('.introjs-nextbutton').show();
											});
										});
										
									}});
								});
							});
						});
					break;
					case "animationDiv":
						$('.introjs-nextbutton').hide();
						$(".introjs-helperLayer ").one('transitionend', function() {
							var a = $("#firstNum").val();
							var positiveNumber = a.substring(1);
							$("#valueDiv").prepend("<span class='col-xs-1'><i class='fa fa-arrow-right'></i></span>");
							$("#valueDiv").prepend("<span class='col-xs-3'>Binary value of " + positiveNumber + "</span>");
							$('#orginalValue').addClass('z-index').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
								for(var i = 0;i < $("#orginalValue > span").length;i++) {
									var l1 = $("#index" + i).offset();
									$("#value" + i).text($("#index"+i).text()).offset({
										"top":l1.top,
										"left":l1.left
									});
									TweenMax.to("#value" + i,1,{top:0,left:0});
								}
								$('#orginalValue').removeClass('z-index');
							});
							var text ="This is the binary value of <span class='ct-code-b-yellow'>" + $('#firstNum').val() + "</span> two's complement will be performed on this binary number."
							typing(".introjs-tooltiptext", text, function() {
								for (var i = 0;i < $("#orginalValue > span").length; i++) {
									$("#valueDiv2").append("<span id = 'secondDivValue" + i +"'></span>&nbsp;");
								}
								$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'negativeValues();'>Next &#8594;</a>");
							});
						});
					break;
					case "animationDiv2" : 
						$('.introjs-nextbutton').hide();
						$(".introjs-helperLayer").one('transitionend', function() {
							var text = $("#animationDiv2Text").html();
							$("#animationDiv2Text").removeClass("opacity00");
							typing("#animationDiv2Text", text, function() {
								$('#twosComplimentResult').addClass('z-index').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
									$("#valueDiv2").prepend("<span class='col-xs-1'><i class='fa fa-arrow-right'><i/></span>");
									$("#valueDiv2").prepend("<span class='col-xs-3'>Two's complement value</span>");
									for(var i = 0; i < $("#orginalValue > span").length;i++) {
										var l1 = $("#twosResultSpan" + i).offset();
										$("#secondDivValue" + i).text($("#twosResultSpan"+i).text()).offset({
											"top":l1.top,
											"left":l1.left
										});
										TweenMax.to("#secondDivValue" + i,1,{top:0,left:0});
									}
									$('#twosComplimentResult').removeClass('z-index');
								});
								var text1 ="To get decimal value again we will convert two's compliment value to one's complement value."
								typing(".introjs-tooltiptext", text1, function() {
									intro.refresh();
									var text = "this is the decimal value."
									typing(".introjs-tooltiptext", text, function() {
										$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'negativeValues2();'>Next &#8594;</a>");
									});
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

	function flipEffect(selector, val, callBackFunction) {
		TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
			$(selector).html(val);
			TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
				if (typeof callBackFunction === "function") {
					callBackFunction();
				}
			}});
		}});
	}
	
	
	function negativeValues() {
		$(".nextButton").remove();
		intro.refresh();
		$("#complimentValueDiv").prepend("<span class='col-xs-1'><i class='fa fa-arrow-right'><i/></span>");
		$("#complimentValueDiv").prepend("<span class='col-xs-3'>One's complement value</span>");
		if ($("#type").val() == "int") {
			for(i = 0; i < 16; i++) {
				$("#complimentValue > div:eq(0)").append('<span class="result opacity00" style="display:inline-block;" id="result'+ i + '">0</span>&nbsp;');
			}
			var text ="First, the binary value will be converted to <span class='ct-code-b-yellow'>one's" 
					+ " complement</span> value (i.e, 0's as 1's and 1's as 0's)."
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment(15);'>Next &#8594;</a>");
				});
		} else if ($("#type").val() == "short int") {
			for(i = 0; i < 8; i++) {
				$("#complimentValue > div:eq(0)").append('<span class="result opacity00" style="display:inline-block;" id="result'+ i + '">0</span>&nbsp;');
			}
			var text ="First, the binary value will be converted to one's complement value."
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment(7);'>Next &#8594;</a>");
			});
		} else if ($("#type").val() == "long int") {
			for(i = 0; i < 32; i++) {
				$("#complimentValue > div:eq(0)").append('<span class="result opacity00" style="display:inline-block;" id="result'+ i + '">0</span>&nbsp;');
			}
			var text ="First, the binary value will be converted to one's complement value."
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment(31);'>Next &#8594;</a>");
			});
		}
	}

	function onesCompliment(id) {
		$(".nextButton").remove();
		if(id >= 0) {
			var l1 = $("#value" + id).offset();
			var l2=$("#result" + id).text($("#value" + id).text()).offset({
				"top" :l1.top,
				"left":l1.left
			});
			$('#value' + id).effect("highlight", {color: '#FF0000'}, 1000, function() {
		  		$('#result' + id).removeClass('opacity00');
		  		TweenMax.to("#result" + id, 0.3, {top:0,left:0, onComplete:function() {
		  			if($("#result" + id).text() == 0) {
						flipEffect("#result" + id, 1, function(){
							id--;
							onesCompliment(id);
						});
					}
					else if ($("#result" + id).text() == 1) {
						flipEffect("#result" + id, 0, function() {
							id--;
							onesCompliment(id);
						});
					}
		  		}});
			});
			
		} else {
			var text = "This is the one's compliments value of the given number."
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'oneAndline();'>Next &#8594;</a>");
			});
		}
	}
	
	function oneAndline() {
		$(".nextButton").remove();
		intro.refresh();
		var text = "Now, <span class='ct-code-b-yellow'>1</span> will be <span class='ct-code-b-yellow'>added</span> to the" 
				+ " one's complement value inorder to get two's complement value."
		typing(".introjs-tooltiptext", text, function() {
			TweenMax.to("#addOne", 1, {"opacity" : "1", onComplete:function() {
				for(var i = $("#orginalValue > span").length - 1; i >= 0; i--) {
					$("#addOne").prepend("<span class='ct-code-b-red opacity00' id='addingOne" + i + "'>1</span>&nbsp;");
				}
				
				$("#addingOne" + ($("#orginalValue > span").length - 1)).addClass(".one").removeClass("ct-code-b-red opacity00");
				
				TweenMax.to("#line", 1, {"opacity" : "1", onComplete:function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'twosCompliment();'>Next &#8594;</a>");
				}});
			}});
		});
	}
	
	function twosCompliment() {
		$(".nextButton").remove();
		$("#twosComplimentResultDiv").prepend("<span class='col-xs-3'>Two's complement value</span>");
		for (var i = 0; i < $("#orginalValue > span").length; i++) {
			$("#twosComplimentResult").append('<span class="twos-result-span opacity00" id="twosResultSpan' + i + '">0</span>&nbsp;');
		}
		intro.refresh();
		var len = $('#orginalValue span').length-1;
		if($("#compliment span:last-child").text() == 0) {
			intro.refresh();
			twosComplimentWithoutOne(len);
		} else {
			intro.refresh();
			twosComplimentWithOne(len);
		}
		matter2();
	}
	
	function matter2() {
		$(".nextButton").remove();
		var text ="This is the two's compliment value of <span class='ct-code-b-yellow'>" + $("#firstNum").val() + "</span>."
		typing(".introjs-tooltiptext", text, function() {
			$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'typingText();'>Next &#8594;</a>");
		});
	}
	
	function twosComplimentWithoutOne(i) {
		if (i == $('#orginalValue span').length - 1) {
			$("#addingOne" + i).effect( "highlight",{color: 'green'}, 500);
		}
		$("#result" + i).effect( "highlight",{color: 'green'}, 500);
		if(i >= 0) {
			if (i == $('#orginalValue span').length - 1) {
				if ($("#compliment span:last-child").text() == 0) {
					TweenMax.to("#twosResultSpan" + i, 0, {"opacity" : "1"});
					$("#twosResultSpan" + i).text(1);
				}
				i--;
				setTimeout(function() {
					twosComplimentWithoutOne(i);
				},800);
			} else {
				if ($("#result" + i).text() == 1) {
					TweenMax.to("#twosResultSpan" + i, 0, {"opacity" : "1"});
					$("#twosResultSpan" + i).text(1);
			  	} else {
			  		TweenMax.to("#twosResultSpan" + i, 0, {"opacity" : "1"});
					$("#twosResultSpan" + i).text(0);
				}
				i--;
				setTimeout(function() {
					twosComplimentWithoutOne(i);
				},800);
			}
		}
	}
	
	function twosComplimentWithOne(i) {
		if (i == $('#orginalValue span').length-1) {
			$("#result" + i).effect( "highlight",{color: 'green'}, 500,function() {
				$("#addingOne" + i).effect( "highlight",{color: 'green'}, 500);
			});
			if ($("#compliment span:last-child").text() == 1) {
				TweenMax.to("#twosResultSpan" + i, 0, {"opacity" : "1"});
				$("#twosResultSpan" + i).text(0);
			}
			if ($("#result" + i).prev().text() == 0) {
				i--;
				$("#result" + i).effect( "highlight",{color: 'green'}, 1000);
				TweenMax.to("#addingOne" + i, 0, {"opacity" : "1"});
				TweenMax.to("#twosResultSpan" + i, 0, {"opacity" : "1"});
				$("#twosResultSpan" + i).text(1);
				//i--;
				setTimeout(function() {
					i--;
					noCarry(i);
				},800);
			} else if ($("#result" + i).prev().text() == 1) {
				setTimeout(function() {
					i--;
					carry(i);
				},800);
			}
		}
	}
	
	function carry(i) {
		if(i >= 0) {
			$("#result" + i).effect( "highlight",{color: 'green'}, 500);
			if($("#result" + i).text() != 0) {
				if($("#result" + i).text() == 1) {
					TweenMax.to("#addingOne" + i, 0, {"opacity" : "1"});
					TweenMax.to("#twosResultSpan" + i, 1, {"opacity" : "1"});
					$("#twosResultSpan" + i).text(0);
					i--;
					setTimeout(function() {
						carry(i);
					},800);
				}
			} else if ($("#result" + i).text() == 0) {
				if (i == $("#compliment span").text().lastIndexOf("0")) {
			  		TweenMax.to("#addingOne" + i, 0, {"opacity" : "1"});
					TweenMax.to("#twosResultSpan" + i, 1, {"opacity" : "1"});
					$("#twosResultSpan" + i).text(1);
		  		} 
				i--;
				setTimeout(function() {
					noCarry(i);
				},800);
			}
		}
	} 
	
	function noCarry(i) {
		if(i >= 0) {
			$("#result" + i).effect( "highlight",{color: 'green'}, 500);
			if ($("#result" + i).text() == 1) {
				TweenMax.to("#twosResultSpan" + i, 0, {"opacity" : "1"});
				$("#twosResultSpan" + i).text(1);
			} else if ($("#result" + i).text() == 0) {
		  		TweenMax.to("#twosResultSpan" + i, 0, {"opacity" : "1"});
				$("#twosResultSpan" + i).text(0);
			}
			i--;
			setTimeout(function() {
				noCarry(i);
			},800);
		} 
	}
	
	function typingText() {
		$(".nextButton").remove();
		var text="Binary value of <span class='ct-code-b-red'>" + $("#firstNum").val() + "</span> is" 
			+ " = <span class='ct-code-b-red' id = 'typingValue'>" + $("#twosComplimentResult > span").text() + "</span> .<br>" ;
		typing("#resultDivTextLine1", text, function() {
			$('.introjs-nextbutton').show();
		});
	}
	
	function negativeValues2() {
		$(".nextButton").remove();
		intro.refresh();
		$("#complimentValueDiv2").prepend("<span class='col-xs-1 padding0'><i class='fa fa-arrow-right'><i/></span>");
		$("#complimentValueDiv2").prepend("<span class='col-xs-3 padding0'>One's comple ment value</span>");
		if ($("#type").val() == "int") {
			for(i = 0; i < 16; i++) {
				$("#complimentValue2 > div:eq(0)").append('<span class="result opacity00" style="display:inline-block;" id="originalResult'+ i + '">0</span>&nbsp;');
			}
			var text ="First, the binary value will be converted to <span class='ct-code-b-yellow'>one's" 
					+ " complement</span> value (i.e, 0's as 1's and 1's as 0's)."
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment2(15);'>Next &#8594;</a>");
			});
		} else if ($("#type").val() == "short int") {
			for(i = 0; i < 8; i++) {
				$("#complimentValue2 > div:eq(0)").append('<span class="result opacity00" style="display:inline-block;" id="originalResult'+ i + '">0</span>&nbsp;');
			}
			var text ="First, the binary value will be converted to one's complement value."
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment2(7);'>Next &#8594;</a>");
			});
		} else if ($("#type").val() == "long int") {
			for(i = 0; i < 32; i++) {
				$("#complimentValue2 > div:eq(0)").append('<span class="result opacity00" style="display:inline-block;" id="originalResult'+ i + '">0</span>&nbsp;');
			}
			var text ="First, the binary value will be converted to one's complement value."
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment2(31);'>Next &#8594;</a>");
			});
		}
	}

	function onesCompliment2(id) {
		$(".nextButton").remove();
		if (id >= 0) {
			var l1 = $("#secondDivValue" + id).offset();
			var l2=$("#originalResult" + id).text($("#secondDivValue" + id).text()).offset({
				"top" :l1.top,
				"left":l1.left
			});
			$('#secondDivValue' + id).effect("highlight", {color: '#FF0000'}, 1000, function() {
		  		$('#originalResult' + id).removeClass('opacity00');
		  		TweenMax.to("#originalResult" + id, 0.3, {top:0,left:0, onComplete:function() {
		  			if ($("#originalResult" + id).text() == 0) {
						flipEffect("#originalResult" + id, 1, function(){
							id--;
							onesCompliment2(id);
						});
					}
					else if ($("#originalResult" + id).text() == 1) {
						flipEffect("#originalResult" + id, 0, function() {
							id--;
							onesCompliment2(id);
						});
					}
		  		}});
			});
			
		} else {
			var text = "This is the one's compliments value of the given number."
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'oneAndline2();'>Next &#8594;</a>");
			});
		}
	}
	
	function oneAndline2() {
		$(".nextButton").remove();
		intro.refresh();
		var text = "Now, <span class='ct-code-b-yellow'>1</span> will be <span class='ct-code-b-yellow'>added</span> to the" 
				+ " one's complement value inorder to get two's complement value."
		typing(".introjs-tooltiptext", text, function() {
			TweenMax.to("#addOne2", 1, {"opacity" : "1", onComplete:function() {
				for(var i = $("#orginalValue > span").length - 1; i >= 0; i--) {
					$("#addOne2").prepend("<span class='ct-code-b-red opacity00' id='secondaddingOne" + i + "'>1</span>&nbsp;");
				}
				
				$("#secondaddingOne" + ($("#orginalValue > span").length - 1)).addClass(".one").removeClass("ct-code-b-red opacity00");
				
				TweenMax.to("#line2", 1, {"opacity" : "1", onComplete:function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'twosCompliment2();'>Next &#8594;</a>");
				}});
			}});
		});
	}
	
	function twosCompliment2() {
		$(".nextButton").remove();
		$("#twosComplimentResultDiv2").prepend("<span class='col-xs-3'>Result</span>");
		for (var i = 0; i < $("#orginalValue > span").length; i++) {
			$("#twosComplimentResult2").append('<span class="twos-result-span opacity00" id="originalResultSpan' + i + '">0</span>&nbsp;');
		}
		intro.refresh();
		var len = $('#orginalValue span').length-1;
		if($("#compliment2 span:last-child").text() == 0) {
			intro.refresh();
			twosComplimentWithoutOne2(len);
		} else {
			intro.refresh();
			twosComplimentWithOne2(len);
		}
		matter3();
	}
	
	function matter3() { 
		var text ="This is the two's compliment value of <span class='ct-code-b-yellow'>" + $("#firstNum").val() + "</span>."
		typing(".introjs-tooltiptext", text, function() {
			$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'typingText2();'>Next &#8594;</a>");
		});
	}
	
	function twosComplimentWithoutOne2(i) {
		if (i == $('#orginalValue span').length - 1) {
			$("#secondaddingOne" + i).effect( "highlight",{color: 'green'}, 500);
		}
		$("#originalResult" + i).effect( "highlight",{color: 'green'}, 500);
		if(i >= 0) {
			if (i == $('#orginalValue span').length - 1) {
				if ($("#compliment2 span:last-child").text() == 0) {
					TweenMax.to("#originalResultSpan" + i, 0, {"opacity" : "1"});
					$("#originalResultSpan" + i).text(1);
				}
				i--;
				setTimeout(function() {
					twosComplimentWithoutOne2(i);
				},800);
			} else {
				if ($("#originalResult" + i).text() == 1) {
					TweenMax.to("#originalResultSpan" + i, 0, {"opacity" : "1"});
					$("#originalResultSpan" + i).text(1);
			  	} else {
			  		TweenMax.to("#originalResultSpan" + i, 0, {"opacity" : "1"});
					$("#originalResultSpan" + i).text(0);
				}
				i--;
				setTimeout(function() {
					twosComplimentWithoutOne2(i);
				},800);
			}
		}
	}
	
	function twosComplimentWithOne2(i) {
		if (i == $('#orginalValue span').length-1) {
			$("#originalResult" + i).effect( "highlight",{color: 'green'}, 500,function() {
				$("#secondaddingOne" + i).effect( "highlight",{color: 'green'}, 500);
			});
			if ($("#compliment2 span:last-child").text() == 1) {
				TweenMax.to("#originalResultSpan" + i, 0, {"opacity" : "1"});
				$("#originalResultSpan" + i).text(0);
			}
			if ($("#originalResult" + i).prev().text() == 0) {
				i--;
				$("#originalResult" + i).effect( "highlight",{color: 'green'}, 1000);
				TweenMax.to("#secondaddingOne" + i, 0, {"opacity" : "1"});
				TweenMax.to("#originalResultSpan" + i, 0, {"opacity" : "1"});
				$("#originalResultSpan" + i).text(1);
				setTimeout(function() {
					i--;
					noCarry2(i);
				},800);
			} else if ($("#originalResult" + i).prev().text() == 1) {
				setTimeout(function() {
					i--;
					carry2(i);
				},800);
			}
		}
	}
	
	function carry2(i) {
		if(i >= 0) {
			$("#originalResult" + i).effect( "highlight",{color: 'green'}, 500);
			if($("#originalResult" + i).text() != 0) {
				if($("#originalResult" + i).text() == 1) {
					TweenMax.to("#secondaddingOne" + i, 0, {"opacity" : "1"});
					TweenMax.to("#originalResultSpan" + i, 1, {"opacity" : "1"});
					$("#originalResultSpan" + i).text(0);
					i--;
					setTimeout(function() {
						carry2(i);
					},800);
				}
			} else if ($("#originalResult" + i).text() == 0) {
				if(i == $("#compliment2 span").text().lastIndexOf("0")) {
			  		TweenMax.to("#secondaddingOne" + i, 0, {"opacity" : "1"});
					TweenMax.to("#originalResultSpan" + i, 1, {"opacity" : "1"});
					$("#originalResultSpan" + i).text(1);
		  		}
				i--;
				setTimeout(function() {
					noCarry2(i);
				},800);
			}
		}
	} 
	
	function noCarry2(i) {
		if(i >= 0) {
			$("#originalResult" + i).effect( "highlight",{color: 'green'}, 500);
			if ($("#originalResult" + i).text() == 1) {
				TweenMax.to("#originalResultSpan" + i, 0, {"opacity" : "1"});
				$("#originalResultSpan" + i).text(1);
		  	} else if ($("#originalResult" + i).text() == 0) {
		  		TweenMax.to("#originalResultSpan" + i, 0, {"opacity" : "1"});
				$("#originalResultSpan" + i).text(0);
			}
			i--;
			setTimeout(function() {
				noCarry2(i);
			},800);
		}
	}
	
	function typingText2() {
		$(".nextButton").remove();
		$("#twosComplimentResultDiv2").append('<div><span id="resultDivTextLine2" class="col-xs-offset-3"></span></div>');
		intro.refresh();
		var n =$("#twosComplimentResult2 > span").text();
		var num1 = parseInt(n, 2).toString(10);
		var text="In decimal representation result is <span class='ct-code-b-red'>" + num1 + "</span>.";
		intro.refresh();
		typing("#resultDivTextLine2", text, function() {
			$('.introjs-nextbutton').show();
		});
	}
	
	</script>

	<h2 class="text-center">
	
		<span class="label label-default ct-demo-heading">Two's
			Complement</span>
			<!-- <div class="col-xs-offset-4 margin-top20 text-center"> -->
		<span class="btn btn-warning opacity00" id="restart">Restart</span>
	<!-- </div> -->
	</h2>
	<div id="informationDiv"
		class="col-xs-offset-2 col-xs-9 information-div margin-top20">
		<div class="col-xs-8 margin-top20" id="text">
			<ul>
				<li>Two's complement is performed only on <span
					class='ct-code-b-green'><b>negative</b></span> values.
				</li>
				<li>The procedure to get two's complement value is:</li>
				<ul>
					<li>First, the given number will be converted to binary number</li>
					<li>Then, binary number will be converted to one's complement
						value<br> (i.e, 0's as 1's and 1's as 0's).
					</li>
					<li>Finally, 1 will be added to one's complement value to get
						two's complement value.</li>
					<li>As per the table addition is performed ,</li>
				</ul>
			</ul>
		</div>
		<div class="col-xs-3">
			<table id="table" class="table table-border opacity00" style="margin: 20px 0;">
				<tr>
					<th class="table-border">a</th>
					<th class="table-border">b</th>
					<th class="table-border">a + b</th>
				</tr>
				<tr>
					<td class="table-border">0</td>
					<td class="table-border">0</td>
					<td class="table-border">0</td>
				</tr>
				<tr>
					<td class="table-border">0</td>
					<td class="table-border">1</td>
					<td class="table-border">1</td>
				</tr>
				<tr>
					<td class="table-border">1</td>
					<td class="table-border">0</td>
					<td class="table-border">1</td>
				</tr>
				<tr>
					<td class="table-border">1</td>
					<td class="table-border">1</td>
					<td class="table-border">0<span class="ct-code-b-green">(1
							carry)</span></td>
				</tr>
			</table>
		</div>
	</div>
	<div id="inputDiv"
		class="col-xs-offset-4 col-xs-4 margin-top20 opacity00">
		Data type : <select id="type" style="margin-left: 20px;">
			<option value="int">int</option>
			<option value="short int">short int</option>
			<option value="long int">long int</option>
		</select> <span id="number" style="margin-left: 20px;">Number : </span> <input
			type="text" id="firstNum" class="input-text opacity00"
			contenteditable="true" maxlength="3" placeholder="Number"
			style="margin-left: 20px;" />
	</div>

	<div class="col-xs-offset-4 col-xs-6 binary-value-div margin-top20"
		id="binaryValueDiv">
		<div class="col-xs-12 padding0" id="values">
			<span id="aSpan" class="opacity00">Number = </span>
			<div id="binaryNum" style="display: inline;"
				class="binary-num opacity00"></div>
			<div class="original-value opacity00" id="orginalValue"
				style="display: inline;"></div>
		</div>

	</div>
	<div id="animationDiv"
		class="col-xs-offset-3 col-xs-6 animation-div margin-top20"
		style="padding: 20px;">
		<div class="col-xs-12 padding0">
			<div class="padding0" style="margin: auto;">
				<div id="valueDiv" class="col-xs-12"></div>
				<div class="col-xs-12 margin-top20" id="complimentValueDiv">
					<div id="complimentValue" class="col-xs-7"
						style='width: -moz-fit-content;'>
						<div id="compliment"></div>
						<div id="addOne" style="" class="opacity00">
							<!-- <span id="one">1</span> -->
						</div>
						<div id="line" class="col-xs-12 line padding0 opacity00"></div>
					</div>
				</div>

				<div id="twosComplimentResultDiv" class="col-xs-12">
					<div id="twosComplimentResult" class="col-xs-offset-1 col-xs-5"></div>
				</div>
				<div class="col-xs-offset-2">
					<span id="resultDivTextLine1"></span>
				</div>
			</div>
		</div>
	</div>

	<div id="animationDiv2"
		class="col-xs-offset-3 col-xs-6 animation-div margin-top20">
		<div>
			<Span id="animationDiv2Text" class="col-xs-offset-2 opacity00">Convertion
				of same number from binary to decimal</Span>
		</div>
		<div class="col-xs-12 padding0"
			style="margin: auto; margin-top: 20px;">
			<div class="padding0" style="margin: auto;">
				<div id="valueDiv2">
					<!-- <span>Two's complement value</span> -->
				</div>
				<div class="col-xs-12 margin-top20" id="complimentValueDiv2">
					<div id="complimentValue2" class="col-xs-7 padding0"
						style='width: -moz-fit-content;'>
						<!-- <span>One's complement value</span> -->
						<div id="compliment2"></div>
						<div id="addOne2" style="" class="opacity00">
							<!-- <span id="one">1</span> -->
						</div>
						<div id="line2" class="col-xs-12 line padding0 opacity00"></div>
					</div>
				</div>

				<div id="twosComplimentResultDiv2" class="col-xs-12">
					<div id="twosComplimentResult2"
						class="col-xs-offset-1 col-xs-5 padding0"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>