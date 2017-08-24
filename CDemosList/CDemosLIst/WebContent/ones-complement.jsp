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
<title>one's complement</title>
<style>
.input-text {
	border: 2px solid gold;
	text-align: center;
	border-radius: 5px;
	width: 18%;
}

.ct-code-b-red {
	color: red;
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
	position:relative;
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
	color:green;
}

.ui-effects-transfer {
	border: 1px solid black; 
	border-radius: 15px;
	z-index: 999999999;
 }

.line-div {
	border: 1px solid gray;
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

.result-div {
	min-height: 25px;
}

.blinking {
	animation-name: blink;
	animation-duration: 1s;
	animation-iteration-count: 1;
	animation-direction: alternate;
}

@keyframes blink {
	50% {
		background: red;
	}
}

.red {
	color: red;
}

.padding0 {
	padding: 0 !important;
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
	 	$("[contenteditable=true]").on("keydown keyup", function(e) {
	 		if ($('#firstNum').val() != "") {
				$('.introjs-nextbutton').show();
			} else {
				$('.introjs-nextbutton').hide();
			}
			if ((e.shiftKey)) {
				e.preventDefault();
			}
			$(".ct-code-b-red").remove();
			var max = $(this).attr("maxlength");
			if (($(this).val().length) > max) {
				$(".introjs-tooltiptext").append("<div class='ct-code-b-red'></br>Please restrict the length of text to 2 characters.</div>");
				if ((e.which == 46) || (e.which == 8) || (e.which == 37) || (e.which == 39)) {
					return true;
				} else {
				e.preventDefault();
				}
			}
			if ($("[contenteditable=true]").val().length == 0) {
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
			}, {
				element : "#resultDiv",
				intro : "",
				position : "left"
			},{
				element : "#restart",
				intro : "",
				tooltipClass : "hide"
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
					$("#informationDiv").css({"z-index": "999999999"});
					intro.nextStep();
				});
			break;
			case "inputDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					TweenMax.to("#inputDiv", 1, {"opacity" : "1"});
					TweenMax.to("#firstNum", 1, {"opacity" : "1"});
					TweenMax.to("#shiftNum", 1, {"opacity" : "1", onComplete:function() {
						var text = "Select datatype and enter value to perform <span class='ct-code-b-yellow'>one's complement</span>.";
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
					for(var i=num1.length; i < 16; i++) {
						 zeros1 = 0 + zeros1;
					}
					$.each((zeros1+num1).split(""), function(ind, val) {
						number = number + " " + val;
						binaryNumber =  binaryNumber + " " + '<span id="index' + ind + '" class="val" >' + val + '</span>';
					});
				} else if ($("#type").val() == "short int") {
					for(var i=num1.length; i < 8; i++) {
						 zeros1 = 0 + zeros1;
					}
					$.each((zeros1+num1).split(""), function(ind, val) {
						number = number + " " + val;
						binaryNumber =  binaryNumber + " " + '<span id="index' + ind + '" class="val" >' + val + '</span>';
					});
				} else if ($("#type").val() == "long int") {
					for(var i=num1.length; i < 32; i++) {
						 zeros1 = 0 + zeros1;
					}
					$.each((zeros1+num1).split(""), function(ind, val) {
						number = number + " " + val;
						binaryNumber =  binaryNumber + " " + '<span id="index' + ind + '" class="val" >' + val + '</span>';
					});
				}
					
				$(".introjs-helperLayer ").one('transitionend', function() {
					if ($("#type").val() == "short int") {
						var text ="Here, the given number " + value + " is converted into <span class='ct-code-b-yellow'>binary</span> data and stored it" 
						+ " in <span class='ct-code-b-yellow'>8 bits</span> depending on the data type."
						/* var text = "Let us convert the given number <span class='ct-code-b-yellow'>" + value 
						+ "</span> to <span class='ct-code-b-yellow'>8</span> bit <span class='ct-code-b-yellow'>binary</span> number."; */
					} else if ($("#type").val() == "int") {
						var text ="Here, the given number <span class='ct-code-b-yellow'>" + value + "</span> is converted into <span class='ct-code-b-yellow'>binary</span> data and stored" 
						+ " it in <span class='ct-code-b-yellow'>16 bits</span> depending on the data type."
					} else if($("#type").val() == "long int") {
						var text ="Here, the given number " + value + " is converted into <span class='ct-code-b-yellow'>binary</span> data and stored" 
						+ " it in <span class='ct-code-b-yellow'>32 bits</span> depending on the data type."
					}
					$(".introjs-helperLayer ").one('transitionend', function() {
						typing(".introjs-tooltiptext", text, function() {
							TweenMax.to("#aSpan", 1, {"opacity" : "1", onComplete:function() {
								$("#binaryNum").append("<span>" + $("#firstNum").val() + "&emsp;</span>");
								$("#binaryNum").append("<span id='arrow1' class='arrow' align='center'><i style='margin:0px;padding:0px;' class='fa fa-arrow-right'></i></span>");
								$('#orginalValue').append(binaryNumber);
								intro.refresh();
								$("#valueDiv").append('<div id="numberToPerform"></div>');
								for (var i = 0; i < $("#orginalValue > span").length; i++) {
									$("#numberToPerform").append("<span id = 'value" + i +"'></span>&nbsp;")
								}
								$('.introjs-nextbutton').show();
								}});
							});
						});
					});
		break;
			case "animationDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#numberToPerform").before("<span class='col-xs-4'>Binary value of " + $("#firstNum").val() + "</span>");
					$("#numberToPerform").before("<span class='col-xs-1'><i class='fa fa-arrow-right'></i></span>");
					$('#orginalValue').addClass('z-index').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
						for(var i = 0;i < $("#orginalValue > span").length; i++) {
							var l1 = $("#index" + i).offset();
							$("#value" + i).text($("#index"+i).text()).offset({
							  "top":l1.top,
							  "left":l1.left
							});
							TweenMax.to("#value" + i,1,{top:0,left:0});
						}
						$('#orginalValue').removeClass('z-index');
					});
					var text ="This is the binary value of <span class='ct-code-b-yellow'>" + $("#firstNum").val() + "</span>."
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'negativeValues();'>Next &#8594;</a>");
					});
				});
			break;
			case "resultDiv" :
				$(".introjs-helperLayer ").one('transitionend', function() {
					var n =$("#complimentValue > span").text()
					var num1 = parseInt(n, 2).toString(10);
					var text="One's complement value for <span class='ct-code-b-red'>" + $("#firstNum").val() + "</span> " 
						+ " = <span class='ct-code-b-red'>" + $("#complimentValue > span").text() + "</span> .<br>" 
						+ "In decimal representation the result is <span class='ct-code-b-red'>" + num1 + "</span>.";
					intro.refresh();
					typing(".result-div", text, function() {
						intro.refresh();
						var text = "This is the result."
						typing(".introjs-tooltiptext", text, function() {
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
	$("#complimentValue").before("<span class='col-xs-4 margin-top20'>One's complement value</span>");
	$("#complimentValue").before("<span class='col-xs-1 margin-top20'><i class='fa fa-arrow-right'><i/></span>");
	
	if ($("#type").val() == "int") {
		for(var i = 0; i < 16; i++) {
			$("#complimentValue").append('<span class="result opacity00" style="display:inline-block;" id="result'+ i + '">0</span>&nbsp;');
		}
		var text ="Here,to get one's complement result it will convert 1's as 0's and 0's as 1's."
			typing(".introjs-tooltiptext", text, function() {
		$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment(15);'>Next &#8594;</a>");
			});
	} else if ($("#type").val() == "short int") {
		for(var i = 0; i < 8; i++) {
			$("#complimentValue").append('<span class="result opacity00" style="display:inline-block;" id="result'+ i + '">0</span>&nbsp;');
		}
		var text ="To get one's complement convert 1's into 0's and 0's into 1's."
			typing(".introjs-tooltiptext", text, function() {
		$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment(7);'>Next &#8594;</a>");
			});
	} else if ($("#type").val() == "long int") {
		for(var i = 0; i < 32; i++) {
			$("#complimentValue").append('<span class="result opacity00" style="display:inline-block;" id="result'+ i + '">0</span>&nbsp;');
		}
		
		var text ="Here,to get one's complement result it will convert 1's as 0's and 0's as 1's."
			typing(".introjs-tooltiptext", text, function() {
			
		$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'onesCompliment(31);'>Next &#8594;</a>");
			});
			}
}

function onesCompliment(id) {
	$(".nextButton").remove();
	intro.refresh();
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
					flipEffect("#result" + id, 0, function(){
						id--;
					  	onesCompliment(id);
					});
			  	}
			  	
	  		}});
	  	});
		
	  	
	} else {
		var text = "This is the one's compliments value of the given number."
		typing(".introjs-tooltiptext", text, function() {
			$('.introjs-nextbutton').show();
		});
	}
}

</script>

<h2 class="text-center">
		<span class="label label-default ct-demo-heading">One's Complement</span>
	</h2>
	<div id="informationDiv"
		class="col-xs-offset-2 col-xs-8 information-div margin-top20">
		<div class="col-xs-12 margin-top20" id="text">
			<ul>
				<li>One's complement of a binary number is defined as value
					obtained by inverting all binary bits<br> i.e. swapping all <span
					class='ct-code-b-green'>1's to 0's</span> and all <span
					class='ct-code-b-green'>0's to 1's</span>.
				</li>
			</ul>

		</div>
	</div>
	<div id="inputDiv" class="col-xs-offset-4 col-xs-4 margin-top20 opacity00">
	<span>Data type : </span>
		<select id="type" style="margin-left: 20px;">
			<option value="int">int</option>
			<option value="short int">short int</option>
			<option value="long int">long int</option>
		</select> 
		<span id="number" style="margin-left: 20px;">Number : </span>
			<input type="text" id="firstNum" class="input-text opacity00" contenteditable="true" maxlength="2" placeholder="Number"
			style="margin-left: 20px;"/>
			 
	</div>
	<div class="col-xs-offset-3 col-xs-7 binary-value-div margin-top20" id="binaryValueDiv">
		
		<div class="col-xs-12 padding0" id ="values">
			<span id="aSpan" class="opacity00">Number = </span>
			<div id="binaryNum" style="display:inline;" class="binary-num">
			</div>
			<div id="orginalValue" style="display:inline;margin-left:20px;"></div>
		</div>
		
	</div>
	<div id="animationDiv"
		class="col-xs-offset-3 col-xs-6 animation-div margin-top20">
		<div class="col-xs-12 padding0" style="text-align:center;margin-top:50px;">
		<div id= "valueDiv"></div>
		<div id="complimentValue" class="col-xs-7 margin-top20" style="padding:0;"></div>
		</div>
	</div>
<div id="resultDiv"
		class="col-xs-offset-4 col-xs-5 result-div margin-top20"
		style="text-align: center;"></div>
		
		<div class="col-xs-offset-4 col-xs-4 margin-top20 text-center">
		<span class="btn btn-warning opacity00" id="restart">Restart</span>
	</div>
</body>
</html>