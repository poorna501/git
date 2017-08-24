<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>operator precedence and associativity</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<style type="text/css">
.margin-top-20 {
	margin-top: 20px;
}

#totalDiv {
    border: 1px solid gray;
    border-radius: 8px;
    height: 200px;
    padding: 10px;
}

.color-red {
	color: red;
}

#leftDiv {
	border: 1px solid gray;
    border-radius: 8px;
    height: 299px;
}

 #rightDiv {
 	border: 1px solid gray;
    border-radius: 8px;
    height: 216px;
 }

.creampretab {
	-moz-tab-size: 1;
    background-color: #f5f5f5;
    border: 1px solid #ccc;
    border-radius: 4px;
    color: #333;
    display: block;
    font-size: 12px;
    line-height: 1.42857;
    margin: 0 0 10px;
    padding: 44.5px;
    word-break: break-all;
    word-wrap: break-word;
}

.errMsg {
	color: red;
	font-weight: bold;
	font-family: monospace;
}

[contenteditable=true] {
	outline: none;
	font-family: monospace;
}

.margin-top {
	 margin-top: 10px;
    text-align: center;
}

.ui-effects-transfer {
	border: 1px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 10000001 !important;
}

.user-btn, .user-btn1, .user-btn2 {
	background-color: green;
}

.background-color-yellow {
	background-color: yellow;
}

.position-relative {
	position: relative;
}


#outputDiv {
	margin-top: 5px;
	padding: 0;
	z-index: 9999999;
}

.output-console-title-bar {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.output-console-body {
	border-bottom-left-radius: 6px; 
	border-bottom-right-radius: 6px;
	height: 53px;
	padding: 10px;
}
</style>
</head>
<body>
<script type="text/javascript">
var putElement;
var introjs;
var timelineLite = new TimelineLite();	
var typingSpeed = 5;

$(document).ready(function() {
	introGuide();
	$("[contenteditable=true]").on("click keydown keyup", function(e) {
		$(".errMsg").remove();
		if ($(this).text() == "") {
			$(this).addClass("empty");
		} else {
			$(this).removeClass("empty");
		}
		introjs.refresh();
		
		if ($(".empty").length > 0) {
			$(".introjs-nextbutton").hide();
		} else {
			$(".introjs-nextbutton").show();
		}
		
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		if ($(this).text().length > max) {
			$(".introjs-tooltiptext").append("<div class='errMsg'>Max Length 2 digits only</div>")
			e.preventDefault();
		}
	});
	$("#restart").click(function(){
		location.reload();
	});
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [{
			 		element : "#totalDiv",
					intro : "",
					tooltipClass : "hide"
				},{
				 	element : "#leftDiv",
					intro : "",
					position : "right"
				},{
					 element : "#editNum",
					intro : "",
					position : "right"
			   },{
					element : "#eqtnExe1",
					intro : "",
					tooltipClass : "hide"
			   },{
					element : "#rightDiv",
					intro : "",
					position : "top"
			   },{
					element : "#printf",
					intro : "",
					position : "top"
			   },{
					element : "#outputDiv",
					intro : "",
					tooltipClass : "hide"
			   },{
				 	element : "#restart",
					intro : "",
					position : "right"
				}
			]});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "totalDiv":
			$('.introjs-nextbutton').hide();
			//$("#totalDiv").css({"height" : $("#totalDiv").outerHeight()});
			var text = $("#typingDiv1").html();
			typing("#typingDiv1", text, function() {
				$(".introjs-tooltipbuttons").append("<span class='user-btn introjs-button' onclick='flipFirstEqtn()'>Next &#8594;</span>");
				//$(".typing-two").removeClass("opacity00");
				/* var text = $("#typingDiv2").html();
				typing("#typingDiv2", text, function() {
					setTimeout(function(){
						introjs.nextStep();
					}, 500);
				}); */
			});
		break;
		case "leftDiv":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".user-btn, .user-btn1, .user-btn2").remove();
			introjs.refresh();
			$("[contenteditable=true]").attr("contenteditable", "false");
			$("#leftDiv").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "We will see how Operator Precedence and Associativity work on this program.";
				typing($(".introjs-tooltiptext"), text, function() {
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "editNum":
		$('.introjs-nextbutton').hide();
		$('.introjs-prevbutton').hide();
		introjs.refresh();
		$("[contenteditable=false]").attr("contenteditable", "true");
		$(".introjs-helperLayer").one("transitionend", function() {
			var text = "Here you can edit the all four values.";
			typing($(".introjs-tooltiptext"), text, function() {
				charAtEnd("firstVal");
				introjs.refresh();
				$(".introjs-nextbutton").show();
			});
		});
		break;
		case "eqtnExe1":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function(){
					introjs.nextStep();
				}, 1000);
			});
		break;
		case "rightDiv":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$("[contenteditable=true]").attr("contenteditable", "false");
			$("#rightDiv").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "We are going to execute this equation. ";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					setTimeout(function(){
						$('#eqtnExe1').effect( "transfer", { to: $('#eqtnRef'), className:"ui-effects-transfer" }, 1500, function() {
							$('#eqtnRef').removeClass("opacity00");
							$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationEqtnExe2()">Next &#8594;</a>');
						});
					}, 1000);
				});
			});
		break;
		case "printf":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".user-btn").remove();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<ul><li></li></ul>");
				var text = "Print the final result on the console.";
				typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
					setTimeout(function(){
						introjs.nextStep();
					}, 1500);
				});
			});
		break;
		case "outputDiv":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$("#outputDiv").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "The value of num5 is : " + $("#totalSum").text();
				typing("#body", text, function() {
					setTimeout(function(){
						introjs.nextStep();
					}, 1500);
				});
			});
		break;
		case "restart":
			introjs.refresh();
			$(".background-color-yellow").removeClass("background-color-yellow");
			$(".user-btn").remove();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$('#restart').removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Click restart to see again.";
				typing($(".introjs-tooltiptext"), text);
			});
		break;
		}
	});
	
	introjs.start();
	$('.introjs-nextbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();
}

function animationEqtnExe2() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".user-btn").remove();
	$('#eqtnExe2').removeClass("opacity00");
	var l1 = $("#eqtnRef").offset(); 
	var l2 = $("#eqtnExe2").offset();

	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	TweenMax.from("#eqtnExe2", 1, {top: topLength, left: leftLength});
	
	$("#firstExc").addClass("background-color-yellow");
	$(".introjs-tooltiptext ul").empty();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Highest precedence goes to parentheses. ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		setTimeout(function(){
			TweenMax.to("#num22", 0.5, {rotationX : -90, onComplete:function() {
				$("#num22").text($("#secondVal").text());
				TweenMax.to("#num22", 0.5, {rotationX : 0, onComplete:function() {
					TweenMax.to("#num32", 0.5, {rotationX : -90, onComplete:function() {
						$("#num32").text($("#thirdVal").text());
						TweenMax.to("#num32", 0.5, {rotationX : 0, onComplete:function() {
							TweenMax.to("#firstExc", 0.5, {rotationX : -90, onComplete:function() {
								$("#firstExc").text(parseInt($("#secondVal").text()) + parseInt($("#thirdVal").text()));
								TweenMax.to("#firstExc", 0.5, {rotationX : 0, onComplete:function() {
									$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationEqtnExe3()">Next &#8594;</a>');
								}});
						 	}});
					 	}});
				 	}});
			 	}});	
		 	}});
		}, 1000);
	});
}

function animationEqtnExe3() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".user-btn").remove();
	$('#eqtnExe3').removeClass("opacity00");
	var l1 = $("#eqtnExe2").offset(); 
	var l2 = $("#eqtnExe3").offset();

	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	$("#eqtnExe3").html($("#eqtnExe2").html());
	$("#eqtnExe2 *").removeAttr("id");
	$('#firstMul').addClass("background-color-yellow");
	TweenMax.from("#eqtnExe3", 1, {top: topLength, left: leftLength});
	
	$(".introjs-tooltiptext ul").empty();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Next highest precedence goes to next parentheses in the equation.";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		setTimeout(function(){
			TweenMax.to("#num4", 0.5, {rotationX : -90, onComplete:function() {
				$("#num4").text($("#fourthVal").text());
				TweenMax.to("#num4", 0.5, {rotationX : 0, onComplete:function() {
					TweenMax.to("#firstMul", 0.5, {rotationX : -90, onComplete:function() {
						var mulVal = $("#firstMul").text(parseInt($("#firstExc").text()) * parseInt($("#fourthVal").text()));
						TweenMax.to("#firstMul", 0.5, {rotationX : 0, onComplete:function() {
							$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationEqtnExe4()">Next &#8594;</a>');
						}});
					}});
				}});
			}});
		}, 1000);
	});
}

function animationEqtnExe4() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".user-btn").remove();
	$('#eqtnExe4').removeClass("opacity00");
	var l1 = $("#eqtnExe3").offset(); 
	var l2 = $("#eqtnExe4").offset();

	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	$("#eqtnExe4").html($("#eqtnExe3").html());
	$("#eqtnExe3 *").removeAttr("id");
	$('#divide').addClass("background-color-yellow");
	TweenMax.from("#eqtnExe4", 1, {top: topLength, left: leftLength});
	$(".introjs-tooltiptext ul").empty();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Next Highest precedence goes to division.";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		setTimeout(function() {
			TweenMax.to("#num23", 0.5, {rotationX : -90, onComplete:function() {
				$("#num23").text($("#secondVal").text());
				TweenMax.to("#num23", 0.5, {rotationX : 0, onComplete:function() {
					TweenMax.to("#divide", 0.5, {rotationX : -90, onComplete:function() {
						$("#divide").text(parseInt(parseInt($("#firstMul").text()) / parseInt($("#secondVal").text())));
						TweenMax.to("#divide", 0.5, {rotationX : 0, onComplete:function() {
							$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationEqtnExe5()">Next &#8594;</a>');
						}});
					}});
				}});
			}});
		}, 1000);
	});
}

function animationEqtnExe5() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".user-btn").remove();
	$('#eqtnExe5').removeClass("opacity00");
	var l1 = $("#eqtnExe4").offset(); 
	var l2 = $("#eqtnExe5").offset();

	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	$("#eqtnExe5").html($("#eqtnExe4").html());
	$("#eqtnExe4 *").removeAttr("id");
	$('#num1num2').addClass("background-color-yellow");
	TweenMax.from("#eqtnExe5", 1, {top: topLength, left: leftLength});
	$(".introjs-tooltiptext ul").empty();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Next Highest precedence goes to multiplacation. i.e num1 * num2";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		setTimeout(function() {
			TweenMax.to("#num1", 0.5, {rotationX : -90, onComplete:function() {
				$("#num1").text($("#firstVal").text());
				TweenMax.to("#num1", 0.5, {rotationX : 0, onComplete:function() {
					TweenMax.to("#num21", 0.5, {rotationX : -90, onComplete:function() {
						$("#num21").text($("#secondVal").text());
						TweenMax.to("#num21", 0.5, {rotationX : 0, onComplete:function() {
							TweenMax.to("#num1num2", 0.5, {rotationX : -90, onComplete:function() {
								$("#num1num2").text(parseInt($("#firstVal").text()) * parseInt($("#secondVal").text()));
								TweenMax.to("#num1num2", 0.5, {rotationX : 0, onComplete:function() {
									$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationEqtnExe6()">Next &#8594;</a>');
								}});
							}});
						}});
					}});
				}});
			}});
		}, 1000);
	});
}

function animationEqtnExe6() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".user-btn").remove();
	$('#eqtnExe6').removeClass("opacity00");
	var l1 = $("#eqtnExe5").offset(); 
	var l2 = $("#eqtnExe6").offset();

	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	$("#eqtnExe6").html($("#eqtnExe5").html());
	$("#eqtnExe5 *").removeAttr("id");
	$('#num1num2num3Sub').addClass("background-color-yellow");
	TweenMax.from("#eqtnExe6", 1, {top: topLength, left: leftLength});
	$(".introjs-tooltiptext ul").empty();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Here we have same level of precedence i.e  <b class ='ct-code-b-yellow'>-</b> and <b class ='ct-code-b-yellow'>+</b>"
			+ " so operators can associate from left to right.";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		setTimeout(function() {
			TweenMax.to("#num31", 0.5, {rotationX : -90, onComplete:function() {
				$("#num31").text($("#thirdVal").text());
				TweenMax.to("#num31", 0.5, {rotationX : 0, onComplete:function() {
					TweenMax.to("#num1num2num3Sub", 0.5, {rotationX : -90, onComplete:function() {
						$("#num1num2num3Sub").text(parseInt(parseInt($("#num1num2").text()) - parseInt($("#thirdVal").text())));
						TweenMax.to("#num1num2num3Sub", 0.5, {rotationX : 0, onComplete:function() {
							$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationEqtnExe7()">Next &#8594;</a>');
						}});
					}});
				}});
			}});
		}, 1000);
	});
}

function animationEqtnExe7() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".user-btn").remove();
	$('#eqtnExe7').removeClass("opacity00");
	var l1 = $("#eqtnExe6").offset(); 
	var l2 = $("#eqtnExe7").offset();

	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	$("#eqtnExe7").html($("#eqtnExe6").html());
	$("#eqtnExe6 *").removeAttr("id");
	$('#totalSum').addClass("background-color-yellow");
	TweenMax.from("#eqtnExe7", 1, {top: topLength, left: leftLength});
	$(".introjs-tooltiptext ul").empty();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "And the final result.";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		setTimeout(function() {
			TweenMax.to("#totalSum", 0.5, {rotationX : -90, onComplete:function() {
				$("#totalSum").text(parseInt(parseInt($("#num1num2num3Sub").text()) + parseInt($("#divide").text())));
				TweenMax.to("#totalSum", 0.5, {rotationX : 0, onComplete:function() {
					$(".background-color-yellow").removeClass("background-color-yellow");
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="introjs.nextStep()">Next &#8594;</a>');
				}});
			}});
		}, 1000);
	});
}

function flipFirstEqtn() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".user-btn1").remove();
	$("#firstEqtnFlip").removeClass("opacity00");
	$("#flip1").effect( "highlight",{color: '#ffff33'}, 2000);
	flipEffect("#flip1", 15, function(){
		$("#flip2").effect( "highlight",{color: '#ffff33'}, 2000);
		flipEffect("#flip2", 17, function(){
			$("#flip3").effect( "highlight",{color: '#ffff33'}, 2000);
			flipEffect("#flip3", 13, function(){
				$(".typing-two").removeClass("opacity00");
				var text = $("#typingDiv2").html();
				typing("#typingDiv2", text, function() {
					$(".introjs-tooltipbuttons").append("<span class='user-btn2 introjs-button' onclick='flipSecondEqtn()'>Next &#8594;</span>");
				});
			});
		});
	});
}

function flipSecondEqtn() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".user-btn2").remove();
	$("#secondEqtnFlip").removeClass("opacity00");
	$("#firstFlip").effect( "highlight",{color: '#ffff33'}, 2000);
	flipEffect("#firstFlip", 5, function(){
		$("#secondFlip").effect( "highlight",{color: '#ffff33'}, 2000);
		flipEffect("#secondFlip", 11, function(){
			$("#thirdFlip").effect( "highlight",{color: '#ffff33'}, 2000);
			flipEffect("#thirdFlip", 6, function(){
				$("#fourthFlip").effect( "highlight",{color: '#ffff33'}, 2000);
				flipEffect("#fourthFlip", 3, function(){
					$("#fifthFlip").effect( "highlight",{color: '#ffff33'}, 2000);
					flipEffect("#fifthFlip", 5, function(){
						$(".typing-two").removeClass("opacity00");
						setTimeout(function(){
							introjs.nextStep();
						}, 500);
					});
				});
			});
		});
	});
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

function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 1, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
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

</script>
<div class='text-center margin-top-20'>
	<h4 class='label ct-demo-heading' id='demoTitle'>Operator Precedence and Associativity</h4>
</div>
<div class="col-xs-offset-1 col-xs-10">
	<div class="margin-top-20" id="totalDiv">
		<div id="typingDiv1">
				<ul>
					<li>
						When several operators appear in one expression, evaluation takes place according
						to certain predefined rules, called <b>hierarchy rules.</b>
					</li>
					<li>
						These rules specify the order of evaluation, called <b>precedence level.</b>
						The operator acted on first is said to have higher precedence than those that are acted on later.<br>
						<b class ='color-red'>example: 2 + 3 * 5 - 4</b>&nbsp;&nbsp;<b>let us see how this equation execute</b>.
						&emsp; <span class='user-btn1 introjs-button' onclick='flipFirstEqtn()'>Next &#8594;</span><br>
					</li>
					</ul>
		</div>
		<div class="opacity00" id="firstEqtnFlip" style="margin-left: 25px;">
			<span>
			<b>
			<span id='flip3' style='display: inline-block;'>
			<span id='flip2' style='display: inline-block;'>
			2 + 
			<span id='flip1' style='display: inline-block;'>3 * 5</span>
			</span>
			- 4</span></b></span>
		</div>
		<div class="typing-two opacity00" id="typingDiv2">
				<ul>
					<li>
						<b>Associativity</b> refers to the order in which c evaluates the operations having the same precedence level. Such operators can associate either
						 from right to left or from left to right.<br><b class ='color-red'>example: &nbsp;&nbsp;2 + 3 + 6 - 5 - 3 + 2</b>
						&nbsp;&nbsp;<b>let us see how this equation execute</b>.
						&emsp; <span class='user-btn2 introjs-button' onclick='flipSecondEqtn()'>Next &#8594;</span><br>
					</li>
				</ul>
	   </div>
	   <div class="opacity00" id="secondEqtnFlip" style="margin-left: 25px;">
			<span><b>
			<span id='fifthFlip' style='display: inline-block;'>
			<span id='fourthFlip' style='display: inline-block;'>
			<span id='thirdFlip' style='display: inline-block;'>
			<span id='secondFlip' style='display: inline-block;'>
			<span id='firstFlip' style='display: inline-block;'>
			2 + 3</span>+ 6</span> - 5</span> - 3</span> + 2</span>
			</b></span>
		</div>
	</div>	
</div>
<div class="col-xs-12  margin-top-20">
<div class="col-xs-offset-1 col-xs-5">
	<div id="leftDiv" class="opacity00">
		<pre class="creampretab"><span id="links">#include&lt;stdio.h&gt;</span>
		
void main() 
{
	<span id="editNum">int num1 = <span contenteditable='true' maxlength='1' id='firstVal' spellcheck="false">4</span>;
	int num2 = <span contenteditable='true' maxlength='1' id='secondVal' spellcheck="false">6</span>;
	int num3 = <span contenteditable='true' maxlength='1' id='thirdVal' spellcheck="false">3</span>;
	int num4 = <span contenteditable='true' maxlength='1' id='fourthVal' spellcheck="false">2</span>;</span>
	<span id="eqtnExe1">int num5 = num1 * num2 - num3 + ((num2 + num3) * num4) / num2;</span>
	<span id="printf">printf("The value of num5 is : %d /n", num5);</span>
}
		</pre>	
	</div>
</div>
<div class="col-xs-5">
	<div id="rightDiv" class="opacity00">
		<div id="eqtnRef" class="margin-top position-relative opacity00">int num5 = num1 * num2 - num3 + ((num2 + num3) * num4) / num2;</div>
		
		<div id="eqtnExe2" class="margin-top position-relative opacity00">int num5 = <span id="totalSum" style="display: inline-block;"> 
			<span id="num1num2num3Sub" style="display: inline-block;"> 
			<span id="num1num2" style="display: inline-block;">
			<span id="num1" style="display: inline-block;">num1</span>
		  * <span id="num21" style="display: inline-block;">num2</span></span> - <span id="num31" style="display: inline-block;">num3</span></span> + 
		  <span id="divide" style="display: inline-block;">(<span id="firstMul" style="display: inline-block;">
		  (<span id="firstExc" style="display: inline-block;"><span id="num22" style="display: inline-block;">num2</span> + 
		  <span id="num32" style="display: inline-block;">num3</span></span>) * <span id="num4" style="display: inline-block;">num4</span>
		  </span>) / <span id="num23" style="display: inline-block;">num2</span></span></span>;</div>
		  
		<div id="eqtnExe3" class="margin-top position-relative opacity00">int num5 = num1 * num2 - num3 + ((num2 + num3) * num4) / num2;</div>
		<div id="eqtnExe4" class="margin-top position-relative opacity00">int num5 = num1 * num2 - num3 + ((num2 + num3) * num4) / num2;</div>
		<div id="eqtnExe5" class="margin-top position-relative opacity00">int num5 = num1 * num2 - num3 + ((num2 + num3) * num4) / num2;</div>
		<div id="eqtnExe6" class="margin-top position-relative opacity00">int num5 = num1 * num2 - num3 + ((num2 + num3) * num4) / num2;</div>
		<div id="eqtnExe7" class="margin-top position-relative opacity00">int num5 = num1 * num2 - num3 + ((num2 + num3) * num4) / num2;</div>
	</div>
</div>
	<div class="col-xs-5">
	<div id="outputDiv" class="opacity00">
		<div class="output-console-title-bar">
			<span class="title">Output</span>
		</div>
		<div class="output-console-body" id="body">
			<span id="output"></span>
		</div>
	</div>
	</div>
</div>
<div class="col-xs-12 text-center margin-top-20">
<span class="btn btn-warning btn-sm opacity00" id="restart">Restart</span>
</div>
</body>
</html>
