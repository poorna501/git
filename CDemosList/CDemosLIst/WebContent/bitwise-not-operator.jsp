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
<script src="/js/jquery-ui-all.js" type="text/javascript" charset="utf-8"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<title>compliment operator</title>
<style>

.input-text {
	border: 2px solid gold;
	text-align: center;
	border-radius: 5px;
	width: 18%;
}

.information-div {
	min-height: 150px;
	border-radius: 10px;
}

.animation-div {
	min-height: 200px;
}

.binary-value-div {
	font-family: monospace;
}

.binary-num {
	margin: 15px;
}

.margin-top20 {
	margin-top: 20px;
}

.nextButton {
	background-color:green;~ A = 1 1 1 0 1 1 0 0
20 *
}

.ct-code-b-green {
	color: green;
}

.val {
	text-align: center;
}

span, div {
	position: relative;
}

.result-div span {
	display: inline-block;
}


</style>
</head>
<body>
<script>

var intro;
var typingInterval = 5;
var tl = new TimelineLite();
	$(document).ready(function() {
		$("[contenteditable=true]").on("keydown keyup", function(e) { // conditions to enter text
			if ($('#num').val() != "" && $('#shiftNum').val() != "") {
				//$('.introjs-nextbutton').show();
				if ($('#shiftNum').val() == "9") {
					$(".introjs-tooltiptext").append("<div class='ct-code-b-red'></br>Please restrict the length of text to 2 characters.</div>");
				} else {
					$('.introjs-nextbutton').show();
				} 
			} else {
				$('.introjs-nextbutton').hide();
			}
			if ((e.shiftKey)) {
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
			$('#num').val('');
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
				element : "#binaryValueDiv",
				intro : "",
				position:"right"
			},{
				element : "#animationDiv",
				intro : "",
				position : "left"
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
							+ "<li>The bitwise compliment operator is represented as <span class='ct-code-b-green'>~</span></li>"
							+ "<li>Bitwise compliment(~) operator is performed on only binary form.</li>" 
							+ "<li>Bitwise compliment operator is an unary operator which works on one operand only. It changes the bits 1's as 0's and 0's as 1's.</li>" 
							+ "</ul>";
				typing("#informationDiv", text, function() {
					$("#informationDiv").css({"z-index": "999999999"});
					intro.nextStep();
				});
			break;
			case "inputDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					TweenMax.to("#inputDiv", 1, {"opacity" : "1"});
					TweenMax.to("#num", 1, {"opacity" : "1"});
					TweenMax.to("#shiftNum", 1, {"opacity" : "1", onComplete:function() {
						var text = "Enter value to perform <span class='ct-code-b-yellow'>compliment (~)</span> operation.";
						typing(".introjs-tooltiptext", text, function() {
							$("#num, #shiftNum").effect( "highlight",{color: 'yellow'}, 1500 );
							$("#num").focus();
						});
					}});
				});
			break;
			case "binaryValueDiv" : 
				$('.introjs-nextbutton').hide();
				var value = $('#num').val();
				var num1=parseInt($('#num').val(), 10).toString(2);
				var zeros1='';
				for(var i=num1.length; i < 8; i++) {
				  zeros1 = 0 + zeros1;
				}
				var binaryNumber = "";
				var number = "";
				$.each((zeros1+num1).split(""), function(ind, val){
					number = number + " " + val;
					binaryNumber =  binaryNumber + " " + '<span id="index' + ind + '" class="val" >' + val + '</span>';
				});
				$('#binaryNum').append("<span> " + value + "<span class='fa fa-long-arrow-right' style='margin:15px;'></span><span id='binaryNumber'>" + binaryNumber + "</span></span></span>");
				intro.refresh();
				$(".introjs-helperLayer ").one('transitionend', function() {
					TweenMax.to("#value", 1, {"opacity" : "1",});
					var text = "Given Number <span class='ct-code-b-yellow'>" + value + "</span> is converted to" 
								+ " <span class='ct-code-b-yellow'>binary</span> number.";
					typing(".introjs-tooltiptext", text, function() {
						$('#animationDiv').append("<div id='val1' class='val opacity00'>A&emsp; = &emsp;<span id='val2'>" + $("#binaryNumber").text() + "</span></div>")
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "animationDiv" :
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					TweenMax.to("#val1", 1, {"opacity" : "1", onComplete:function() {
						var text="In compliment if the digit is one it will convert to Zero and if the digit is zero it will convert to one.";
						typing(".introjs-tooltiptext", text, function() {
							var num1=parseInt($('#num').val(), 10).toString(2);
							var zeros1='';
							for(var i=num1.length; i < 8; i++) {
							  zeros1 = 0 + zeros1;
							}
						    var res = "";
							var number = "";
							$.each((zeros1+num1).split(""), function(ind, val){
								number = number + " " + val;
								res =  res + " " + '<span id="count' + ind + '" >' + val + '</span>';
							});
							$('#animationDiv').append("<div class='val' style='margin-top: 30px;'><span><b>A</b>  =&emsp;</span><span id='val3'>" + res + "</span></div>");
							$("#val3").removeClass('opacity00');
							var l1 = $("#val2").offset();
							var l2 = $("#val3").offset({
							    "top" : l1.top,
									"left": l1.left
							});
							TweenMax.to("#val3", 1, {top:0,left:0, onComplete:function() {
								$('#animationDiv').append('<div class="col-xs-offset-5 col-xs-6">'
										+ '<div class="result-div opacity00" style="margin-top:10px;margin-left:-24px;" id="resultDiv"><b>~ A</b> =&emsp;'
									    + '<span class="opacity00" id="result0">0</span> '
									    + '<span class="opacity00" id="result1">0</span> '
									    + '<span class="opacity00" id="result2">0</span> '
									    + '<span class="opacity00" id="result3">0</span> '
									    + '<span class="opacity00" id="result4">0</span> '
									    + '<span class="opacity00" id="result5">0</span> '
									    + '<span class="opacity00" id="result6">0</span> '
									    + '<span class="opacity00" id="result7">0</span>');
								$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'convertion(7);'>Next &#8594;</a>");
							}});
							
						});
					}});
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

function convertion(id) {
	$(".nextButton").remove();
	TweenMax.to("#resultDiv", 1, {"opacity" : "1", onComplete:function() {
		if(id >= 0) {
			/* $('#count' + id).effect("highlight", {color: '#FF0000'}, 1000, function() { */
				/* if($("#result" + id).text() == 0) {
					flipEffect("#result" + id, 1, function(){
						id--;
					  	onesCompliment(id);
					});
				} */
				
				var l1 = $("#count" + id).offset();
				var l2=$("#result" + id).text($("#count" + id).text()).offset({
			    	"top" :l1.top,
			    	"left":l1.left
			    });
				$('#count' + id).effect("highlight", {color: '#FF0000'}, 1000, function() {
			  		$('#result' + id).removeClass('opacity00');
			  		TweenMax.to("#result" + id, 0.5, {top:0,left:0, onComplete:function() {
			  			if($("#count" + id).text() == 0) {
							flipEffect("#result" + id, 1, function(){
								id--;
								convertion(id);
							});
						}
						else if ($("#count" + id).text() == 1) {
							flipEffect("#result" + id, 0, function(){
								id--;
								convertion(id);
							});
					  	}
					  	
			  		}});
			  	});
				
				
				
				/* if ($('#count' + id).text() == 0) {
					flipEffect("#count" + id, 1, function() {
					$('#result' + id).removeClass('opacity00');
						$('#result' + id).text(1);
						id--;
						convertion(id);
					});
				} else {
					flipEffect("#count" + id, 1, function() {
					$('#result' + id).removeClass('opacity00');
					$('#result' + id).text(0);
					id--;
					convertion(id);
				}); 
				}
					
				
			}); */
		} else {
			var text="Now it will convert this binary result to decimal value.";
			typing(".introjs-tooltiptext", text, function() {
				$("#animationDiv").append("<div class='col-xs-12 margin-top20' id ='convertToDecimal'></div>")
				$("#animationDiv").append("<div class='col-xs-offset-4 col-xs-6 opacity00 margin-top20' id ='decimalValue'></div>")
				$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'decimalValue(0,7)'>Next &#8594;</a>");
			});
				
			
		}
	}});
}

function decimalValue(i,j) {
	$(".nextButton").remove();
		if(i < 8) {
		$('#convertToDecimal').append("<span>2</span><span><sup>"+ i + "</sup></span>&emsp;<span>*</span>&emsp;");
		$('#convertToDecimal').append("<span id='convert" + i + "' class='opacity00'>" + $('#result'+ j).text() + "</span>&emsp;");
		$("#result" + j).effect( "highlight",{color: 'blue'}, 1500, function() {
			var l1 = $("#result" + j).offset();
			var l2 = $("#convert" + i).offset({
			  "top" : l1.top,
			  "left" : l1.left,
			}); 
			$('#convert' + i).removeClass('opacity00');
			TweenMax.to("#convert" + i, 1.5, {top:0,left:0, onComplete:function(){
				if (i < 7) {
					$('#convertToDecimal').append("<span>+</span>&emsp;");
				}
				i++;
				j--;
				decimalValue(i,j);
			}});
		});
		
	} else {
		var text = "This is the decimal value of the binary result.";
		typing(".introjs-tooltiptext", text, function() {
			var j = parseInt($('#table > span').length)-1;
			$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = result();>Next &#8594;</a>");
		});
	}
}

function result() {
	$(".nextButton").remove();
	$("#decimalValue").removeClass('opacity00');
	var a = $("#resultDiv >span").text();
	var num = parseInt(a, 2).toString(10);
	var text="Result in decimal value is : <span class='ct-code-b-red'>" + num + "</span>.";
	typing("#decimalValue", text, function() {
		$('.introjs-nextbutton').show();
	});
}

</script>
	<h2 class="text-center">
		<span class="label label-default ct-demo-heading">Compliment
			Operator</span>
	</h2>
	<div class="margin-top20 text-center">
		<span class="btn btn-warning opacity00" id="restart">Restart</span>
	</div>
	<div id="informationDiv"
		class="col-xs-offset-2 col-xs-9 information-div margin-top20"></div>
	<div id="inputDiv"
		class="col-xs-offset-2 col-xs-8 margin-top20 opacity00">
		<div class="col-xs-offset-4">
			A = <input type="text" id="num" class="input-text opacity00"
				contenteditable="true" maxlength="2" placeholder="Number"></input>
		</div>
	</div>
	<div class="col-xs-offset-5 col-xs-4 binary-value-div margin-top20" id="binaryValueDiv">
	<div id="value" class="opacity00">
			A = <span id="binaryNum" class="binary-num"></span>
		</div>
	</div>
	<div id="animationDiv" class="col-xs-offset-3 col-xs-7 animation-div">
	<!-- <div id="resultDiv" class="col-xs-offset-4 col-xs-8 result-div margin-top20"></div> -->
	
	</div>
		

</body>
</html>