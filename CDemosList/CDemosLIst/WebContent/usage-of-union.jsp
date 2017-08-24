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
<script src="/js/jquery-ui-all.js" type="text/javascript"
	charset="utf-8"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<title>unions</title>
<style>

.information-div {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	z-index: 9999999;
}

.margin-top20 {
	margin-top: 20px;
}

.margin-bottom20 {
	margin-bottom: 20px;
}

.border-div {
	border: 2px solid gray;
	border-radius: 11px;
}

.table-border {
	border: 2px solid gray;
	text-align: center;
	width: 1%;
	height: 26px;
}

/* .div-border {
	border: 2px solid gray;
	text-align: center;
	width: 23%;
	height: 26px;
	display: inline-block;
	margin: 0;
	padding: 0;
} */

.no-left-border {
	border-left: none;
	margin-left: -5px;
}

.fa-2x {
    font-size: 1em;
	color:blue;
}

.flipClass {
	display: inline-block;
	position: relative;
}

.dot-value {
	display: inline-block;
	position: relative;
	color: navy;
}

.circle {
	border: 2px solid blue;
	border-radius: 50%;
	padding: 3px 8px;
}

.ct-code-b-green {
	color: green;
}

.nextButton {
	background-color: green;
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

/* .creampretab4 {
	-moz-tab-size: 2;
	background-color: lavender !important;
	font-size: 11px;
	font-style: inherit;8
	line-height: 1.5;
	overflow-y: auto;
	white-space: pre;
	word-spacing: -3px;
	position: relative;
} */

.table1-css {
	display: flex;
	height: 100%;
	position: absolute;
	align-items: center;
	top: 0;
	width: 100%;
	left:0;
	padding: 0px 15px;
}

.svg-css {
	top: 0;
	left: 0;
	position: absolute;
	height: 100%;
	width: 100%;
	z-index: 7777777;
}

.add-color {
	background-color: pink;
}

.text-class {
	text-anchor: unset;
}

</style>
</head>
<body>
<script>

var count = 1;
var i = 1;
var j = 1;
var intro;
var typingInterval = 5;
$(document).ready(function() {
	$(".line").hide();
	$(".text-class").hide();
	$(document).keydown(function(objEvent) {
	    if (objEvent.keyCode == 9) {  //tab pressed
	        objEvent.preventDefault(); // stops its action
	    }
	});
	$("#restart").click(function(){
		location.reload(); 
	});
		intro = introJs();
		intro.setOptions({
			showStepNumbers: false,
			exitOnOverlayClick: false,
			showBullets: false,
			exitOnEsc: false,
			keyboardNavigation: false,
			steps : [ {
				element : "#codeDiv",
				intro : "",
				position:"right"
			},{
				element : "#definition",
				intro : "",
				position:"right"
			},{
				element : "#memoryallocation1",
				intro : "",
				position:"right"
			},{
				element : "#codeDiv",
				intro : "",
				position:"left"
			},{
				element : "#memoryallocation1",
				intro : "",
				position:"right"
			},{
				element : "#informationDiv",
				tooltipClass:"hide"
			},{
				element : "#codeDiv1",
				intro : "",
				position:"right"
			},{
				element : "#union",
				intro : "",
				position:"right"
			},{
				element : "#mainMethod",
				intro : "",
				position:"right"
			},{
				element : "#variable",
				intro : "",
				position:"right"
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#noValue",
				intro : "",
				position:"right"
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#printno",
				intro : "",
				position:"right"
			},{
				element : "#outputDiv",
				tooltipClass:"hide"
			},{
				element : "#priceValue",
				intro : "",
				position:"right"
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#printPirce",
				intro : "",
				position:"right"
			},{
				element : "#outputDiv",
				tooltipClass:"hide"
			},{
				element : "#sValue",
				intro : "",
				position:"right"
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#prints",
				intro : "",
				position:"right"
			},{
				element : "#outputDiv",
				tooltipClass:"hide"
			},{
				element : "#termination",
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
			case "codeDiv":
				$('.introjs-nextbutton').hide();
				$('.nextButton').hide();
				if (intro._currentStep == 3) {
					$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "unions can be used to access all the members from one memory slot i.e, we can save the memory.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'flipToUnion()'>Next &#8594;</a>");
					});
					});
				} else {
					var text = "Let us consider an example, <br> This is the declaration of new user defined" 
								+ " datatype <span class='ct-code-b-yellow'>student</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'arrows()'>Next &#8594;</a>");
					});
				}
			break;
			case "definition":
				$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the definition of the new structure variable st for the user defined datatype student.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "memoryallocation1":
				$('.nextButton').remove();
				$('.introjs-nextbutton').hide();
				$("#four").removeClass('circle');
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#memoryallocation1").removeClass("opacity00");
					if (intro._currentStep == 4) {
						$("#table1").effect("highlight",{color: 'yellow'}, 1500, function() {
							flipTable(function() {
								var text = "Here 4 bytes of memory is allocated for st.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'showingMemoryOfb()'>Next &#8594;</a>");
									//$('.introjs-nextbutton').show();
								})
							});
						});
					} else {
						$("#table1").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							var text = "In structure each memeber can be accessed at any time i.e, space is required for" 
										+ " each and every member of the structure anytime.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						});
					}
				});
				break;
			case "informationDiv":
				$('.introjs-nextbutton').hide();
				$("#mainDiv").remove();
				intro.refresh();
				$(".introjs-helperLayer ").one('transitionend', function() {
				$("#informationDiv, #mainDiv").removeClass("visibility-hidden");
				$('.introjs-nextbutton').hide();
				$("#text").css({"height" : $("#text").outerHeight()});
				var text = $("#text").html();
				typing("#text", text, function() {
					$("#informationDiv").css({"z-index": "999999999"});
					setTimeout(function() {
						intro.nextStep();
					}, 1000);
				});
				});
				break;
			case "codeDiv1":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#codeDiv1").removeClass("opacity00").hide().fadeIn(1500, function() {
						$("#outputDiv").removeClass('opacity00');
						var text = "Let us consider an example code for unions.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
				break;
			case "union":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the declaration which describes that a new user defined datatype emp is created with 3 members."; 
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "mainMethod":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "main() is the operating system call which is the starting execution piont of a program.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "variable":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the definition of union variables and it allocates memory to e.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "animationDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					if (intro._currentStep == 10) {
						$("#e, #ememory").removeClass("opacity00").addClass("animated zoomIn");
						var text = "In union only one member can be accessed at a time.";
						typing(".introjs-tooltiptext", text, function() {
							$("#e, #ememory").removeClass("animated zoomIn");
							$('.introjs-nextbutton').show();
						});
					}
						if (intro._currentStep == 12) {
							$("#dotValue").removeClass("opacity00");
							$("#dotValue").effect("highlight",{color: 'yellow'}, 1500, function() {
								flipEffect("#dotValue", "e.no (2 bytes)", function() {
									$("#data3").effect("highlight",{color: 'yellow'}, 1500);
									$("#data4").effect("highlight",{color: 'yellow'}, 1500, function() {
										$("#data3, #data4").hide();
										$("#data5").removeClass('hide');
										$("#data5").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
											var text = "Here, only the integer value 99 will be stored in 2 bytes.Here, only e.no value can be accessed.";
											typing(".introjs-tooltiptext", text, function() {
												$("#res" + i).removeClass('checking');
												$("#data5").removeClass("animated zoomIn");
												$('.introjs-nextbutton').show();
											});
										});
									});
								});
							});
						} else if (intro._currentStep == 16) {
							$("#dotValue").removeClass("opacity00");
							$("#dotValue").effect("highlight",{color: 'yellow'}, 1500, function() {
								flipEffect("#dotValue", "e.price (4 bytes)", function() {
									$("#data1").effect("highlight",{color: 'yellow'}, 1500);
									$("#data2").effect("highlight",{color: 'yellow'}, 1500);
									$("#data3").effect("highlight",{color: 'yellow'}, 1500);
									$("#data4").effect("highlight",{color: 'yellow'}, 1500, function() {
										$("#data1, #data2, #data3, #data4").hide();
										$("#data6").removeClass('hide');
										$("#data6").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
											var text = "The float value 5.5 will be stored in 4 bytes.Here, only e.price value can be accessed.";
											typing(".introjs-tooltiptext", text, function() {
												$("#res" + i).removeClass('checking');
												$("#data5").removeClass("animated zoomIn");
												i++;
												$('.introjs-nextbutton').show();
											});
										});
									});
								});
							});
						} else if (intro._currentStep == 20) {
							$("#dotValue").removeClass("opacity00");
							$("#dotValue").effect("highlight",{color: 'yellow'}, 1500, function() {
								flipEffect("#dotValue", "e.s (1 bytes)", function() {
									$("#data4").removeClass("opacity00");
									$("#data4").effect("highlight",{color: 'yellow'}, 1500, function() {
										$("#data4").addClass("animated zoomIn").one("animationend", function() {
											var text = "char value will be stored in only 1 byte.Here, only e.s value can be accessed.";
											typing(".introjs-tooltiptext", text, function() {
												$("#res" + i).removeClass('checking');
												$("#data5").removeClass("animated zoomIn");
												i++;
												$('.introjs-nextbutton').show();
											});
										});
									});
								});
							});
						}
				});
				break;
			case "outputDiv":
				$(".introjs-helperLayer ").one('transitionend', function() {
					console.log("sdmfgdf");
					if ($("#output" + j).hasClass('print-result')) {
						$("#output" + j).text($("#res" + j).text());
						$("#output" + j).removeClass('print-result');
						j++;
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					}
				});
				break;
			case "printno":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text="This statement will print the string in console.";
					typing(".introjs-tooltiptext", text, function() {
						$("#output").append('<span id="output1"></span><br>');
						$("#output1").addClass('print-result');
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "printPirce":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text="This statement will print the string in console.";
					typing(".introjs-tooltiptext", text, function() {
						$("#output").append('<span id="output2"></span><br>');
						$("#output2").addClass('print-result');
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "prints":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text="This statement will print the string in console.";
					typing(".introjs-tooltiptext", text, function() {
						$("#output").append('<span id="output3"></span>');
						$("#output3").addClass('print-result');
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "noValue":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "Here int value <span class='ct-code-b-yellow'>99</span> is assigned to a variable no of variable e.";
					typing(".introjs-tooltiptext", text, function() {
						$("#data5").text($("#res1").text());
						$("#res1").addClass('checking');
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "priceValue":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					//$("#innerspans1").text("e");
					$("#data6").addClass("opacity00");
					$("#data5").hide();
					$("#data3, #data4").show();
					var text = "Here float <span class='ct-code-b-yellow'>5.5</span> is assigned to a variable price of variable e.";
					typing(".introjs-tooltiptext", text, function() {
						$("#data6").text($("#res2").text());
						$("#res2").addClass('checking');
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "sValue":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					//$("#innerspans1").text("e");
					$("#data6").hide();
					$("#data1, #data2, #data3, #data4").show();
					//$("#data4").addClass("opacity00");
					var text = "Here char value <span class='ct-code-b-yellow'>A</span> is assigned to a variable no of variable e.";
					typing(".introjs-tooltiptext", text, function() {
						$("#data4").text($("#res3").text()).addClass('opacity00');
						$("#res3").addClass('checking');
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "termination":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the termination of main() method.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
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
		$('.introjs-nextbutton').hide();
		$('.introjs-prevbutton').hide();
		$('.introjs-skipbutton').hide();
		$('.introjs-bullets').hide();
});

	function typing(typingId, typingContent,callBackFunction) {
		$('.nextButton').hide();
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

	function flipTable(callBackFunction) {
		TweenMax.to($(".table1-css , .table2-css"), 0.5, {rotationX : -90, onComplete:function() {
			$(".table1-css").addClass('opacity00');
			$(".table2-css").removeClass('opacity00');
			TweenMax.to($(".table1-css , .table2-css"), 0.5, {rotationX : 0, onComplete:function() {
				if (typeof callBackFunction === "function") {
					callBackFunction();
				}
			}});
		}});
	}

	function arrows() {
		$('.nextButton').remove();
		var text = "Total of <span class='ct-code-b-yellow'>7 bytes</span> will be allocated to variable of struct student st.";
		typing(".introjs-tooltiptext", text, function() {
			$("#arrow1").append("<span class='arrow-div' id = 'arrowId" + count + "'>" +
					"<span class='fa fa-long-arrow-left fa-2x arrow-gray-css arrow-left' id='arrowLeft" 
					+ count + "'></span>" +
			"</span>");
			$("#byte1").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
				$("#arrow2").append("<span class='arrow-div' id = 'arrowId" + count + "'>" +
						"<span class='fa fa-long-arrow-left fa-2x arrow-gray-css arrow-left' id='arrowLeft" 
						+ count + "'></span>" +
				"</span>");
				$("#byte2").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
					$("#arrow3").append("<span class='arrow-div' id = 'arrowId" + count + "'>" +
							"<span class='fa fa-long-arrow-left fa-2x arrow-gray-css arrow-left' id='arrowLeft" + count + "'></span></span>");
					$("#byte3").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$('.introjs-nextbutton').show();
						//$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'flipToUnion();'>Next &#8594;</a>");
					});
				});
			});
		});
	}

	function flipToUnion() {
		$('.nextButton').remove();
			$("#struct1").effect("highlight",{color: 'yellow'}, 1500, function() {
				flipEffect("#struct1", "union", function() {
				$("#struct2").effect("highlight",{color: 'yellow'}, 1500, function() {
					flipEffect("#struct2", "union", function() {
						var text = "In union we use the keyword <span class='ct-code-b-yellow'>union</span>" 
									+ " for declaration and definition purpose.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'circle();'>Next &#8594;</a>");
							//$('.introjs-nextbutton').show();
						});
					});
				});
			});
		});
	}

	function circle() {
		$('.nextButton').remove();
		$("#four").addClass('circle');
		var text = "In unions the memory slot is created developing on the size of the highest" 
					+ " range datatype. So, here 4 bytes will be allocated for the union variable.";
		typing(".introjs-tooltiptext", text, function() {
			$('.introjs-nextbutton').show();
		});
	}

	function showingMemoryOfb() {
		$('.nextButton').remove();
		$('.introjs-nextbutton').hide();
		$("#tabletd1, #tabletd2, #tabletd3, #tabletd4").addClass('add-color');
		$("#tabletd1, #tabletd2, #tabletd3, #tabletd4").effect("highlight",{color: 'pink'}, 1500, function() {
			$("#btext").show(2000);
			$("#arrowMark1").show();
			TweenMax.to("#arrowMark1", 1, {attr:{x2: "23.9%", y2: "47%" }});
			$("#arrowMark2").show();
			TweenMax.to("#arrowMark2", 1, {attr:{x2: "91.9%", y2: "47%" }, onComplete:function() {
				var text = "We can access one of the member b in union as st.b.";
				typing(".introjs-tooltiptext", text, function() {
					$('.nextButton').remove();
					$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'showingMemoryOfa();'>Next &#8594;</a>");
				});
			}});
		});
	}

	function showingMemoryOfa() {
		$('.nextButton').remove();
		$("#tabletd1, #tabletd2, #tabletd3, #tabletd4").removeClass('add-color');
		$("#tabletd3, #tabletd4").addClass('add-color');
		$("#tabletd3, #tabletd4").effect("highlight",{color: 'pink'}, 1500, function() {
			$("#atext").show(2000);
			$("#arrowMark3").show();
			TweenMax.to("#arrowMark3", 1, {attr:{x2: "91.9%", y2: "55%" }});
			$("#arrowMark4").show();
			TweenMax.to("#arrowMark4", 1, {attr:{x2: "58.9%", y2: "55%" }, onComplete:function() {
				var text = "The same memory can be split to use the member a, here a is int type and it requires only 2 bytes<br>" 
							+ "When user accessing st.a,st.b and st.c are not available.";
				typing(".introjs-tooltiptext", text, function() {
					$('.nextButton').remove();
					$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'showingMemoryOfc();'>Next &#8594;</a>");
				});
			}});
		});
	}

	function showingMemoryOfc() {
		$('.nextButton').remove();
		$('.introjs-nextbutton').hide();
		$("#tabletd3, #tabletd4").removeClass('add-color');
		$("#tabletd4").addClass('add-color');
		$("#tabletd4").effect("highlight",{color: 'pink'}, 1500, function() {
			$("#ctext").show(2000);
			$("#arrowMark5").show();
			TweenMax.to("#arrowMark5", 1, {attr:{x2: "91.9%", y2: "65%" }});
			$("#arrowMark6").show();
			TweenMax.to("#arrowMark6", 1, {attr:{x2: "75.9%", y2: "65%" }, onComplete:function() {
				var text = "The same memory can be split to use the member c, here a is char type and it requires only 1 byte<br>" 
							+ "When user accessing st.c,st.b and st.a are not available.";
				typing(".introjs-tooltiptext", text, function() {
					$("#tabletd4").removeClass('add-color');
					$('.introjs-nextbutton').show();
				});
			}});
		});
	}

</script>
	<h2 class="text-center">
		<span class="label label-default ct-demo-heading" id="heading">usage of unions</span>
	</h2>
	<div class="col-xs-offset-3 col-xs-7 border-div margin-top20"
		id=mainDiv>
		<div class="col-xs-5" style="margin-top: 10px;">
			<pre class="code-div creampretab4" id="codeDiv">
<span><span class="flipClass" id="struct1" style="width: 42px;">struct</span> student {</span>
	<span id="intType">int a;</span> <span id="arrow1"></span> <span
					class="ct-code-b-green opacity00" id="byte1">2 bytes</span>
	<span id="floatType">float b;</span> <span id="arrow2"></span> <span
					class="ct-code-b-green opacity00" id="byte2"><span id="four">4</span> bytes</span>
	<span id="charType">char c;</span> <span id="arrow3"></span> <span
					class="ct-code-b-green opacity00" id="byte3">1 byte</span>
};
<span id="definition"><span class="flipClass" id="struct2"
					style="width: 42px;">struct </span> student st;</span>
</pre>
		</div>
		<div class="col-xs-7">
			<div class="col-xs-12" id="svgDiv">
				<div class="col-xs-12 opacity00" id="memoryallocation1"
					style="padding: 0 15px 50px;">
					<svg class="svg-css" id="svgId"> 
							<marker refX="4" refY="2.5" markerWidth="5" markerHeight="5"
							orient="auto" style="fill: gray;" id="arrow"> 
								<path d="M0,0 L5,2.5 L0,5 Z" class="arrow" /> 
							</marker> 
							<line id="arrowMark1" class="line" x1="54.9%" y1="47%" x2="54.9%"
							y2="47%"
							style="marker-end: url(#arrow); stroke: gray; stroke-width: 2; display: inline;" />
							<text x="222" y="84" fill="green" id="btext" class="text-class">b</text>
							<line id="arrowMark2" class="line" x1="61.9%" y1="47%" x2="61.9%"
							y2="47%"
							style="marker-end: url(#arrow); stroke: gray; stroke-width: 2; display: inline;" />
							<line id="arrowMark3" class="line" x1="77.9%" y1="55%" x2="77.9%"
							y2="55%"
							style="marker-end: url(#arrow); stroke: gray; stroke-width: 2; display: inline;" />
							<text x="291" y="99" fill="green" id="atext" class="text-class">a</text>
							<line id="arrowMark4" class="line" x1="72.9%" y1="55%" x2="72.9%"
							y2="55%"
							style="marker-end: url(#arrow); stroke: gray; stroke-width: 2; display: inline;" />
							<text x="323" y="115" fill="green" id="ctext" class="text-class">c</text>
							<line id="arrowMark5" class="line" x1="85.8%" y1="65%" x2="85.8%"
							y2="65%"
							style="marker-end: url(#arrow); stroke: gray; stroke-width: 2; display: inline;" />
							<line id="arrowMark6" class="line" x1="81.9%" y1="65%" x2="81.9%"
							y2="65%"
							style="marker-end: url(#arrow); stroke: gray; stroke-width: 2; display: inline;" />
					</svg>
					<div class="col-xs-offset-2 col-xs-10 text-center">st</div>
					<div class="col-xs-offset-2 col-xs-10 border-div"
						style="padding: 0px 15px 50px;">
						<div class="table1-css">
							<table align="center" class="opacity00" id="table1">
								<tbody>
									<tr>
										<td style="text-align: center;" id="intBytes"
											class="ct-code-b-green">2 bytes</td>
										<td style="text-align: center;" id="floatBytes"
											class="ct-code-b-green">4 bytes</td>
										<td style="text-align: center;" id="charBytes"
											class="ct-code-b-green">1 byte</td>
									</tr>
									<tr>
										<td style="text-align: center;" id="a">a</td>
										<td style="text-align: center;" id="b">b</td>
										<td style="text-align: center;" id="c">c</td>
									</tr>
									<tr>
										<td class="table-border"></td>
										<td class="table-border"></td>
										<td class="table-border"></td>
									</tr>
									<tr>
										<td style="text-align: center; color: navy;" id="aaddress">1032</td>
										<td style="text-align: center; color: navy;" id="baddress">1034</td>
										<td style="text-align: center; color: navy;" id="caddress">1038</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="table2-css opacity00">
							<table id="table2">
								<tbody>
									<tr>
										<td colspan="4" class="ct-code-b-green"
											style="text-align: center;">4 bytes</td>
									</tr>
									<tr>
										<td class="table-border" id="tabletd1"></td>
										<td class="table-border" id="tabletd2"></td>
										<td class="table-border" id="tabletd3"></td>
										<td class="table-border" id="tabletd4"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="informationDiv" class="col-xs-offset-2 col-xs-8 information-div margin-top20 visibility-hidden">
		<div class="col-xs-12 margin-top20" id="text">
			<ul>
				<li>Union is a derived data type to organize a group of related data items of different
					data types, in which only one member can be accessed at a time because memory is
					created only for one member which one creates highest number of bytes.</li>
				<li>The general syntax of a union can be
					given as follows,<br> <div class="ct-code-b-green col-xs-offset-2 col-xs-7">union
						tagname {<br><div class="col-xs-offset-1">datatype1 var1;</div> <div class="col-xs-offset-1">datatype2 var2;</div>
						<div class="col-xs-offset-1">union tagname uvar1,uvar2,...uvarn;</div> <div class="col-xs-offset-0">};</div>
				</div>
				</li>
				<li class="opacity00" id="lastPoint">The self referential structures are mainly used in linked list concept of data structures.</li>
			</ul>
		</div>
	</div>


	<div>
		<div class="col-xs-offset-1 col-xs-4 margin-top20">
			<pre class="code-div opacity00" id="codeDiv1">
<span id="union">union emp
{
 int no;
 float price;
 char s;
};</span>
<span id="mainMethod">void main() {</span>
  <span id="variable">union emp e;</span>
  <span id="noValue">e.no = <span id="res1">99</span>;</span>
  <span id="printno">printf("%d \n", e.no);</span>
  <span id="priceValue">e.price = <span id="res2">5.5</span>;</span>
  <span id="printPirce">printf("%f \n", e.price);</span>
  <span id="sValue">e.s = '<span id="res3">A</span>';</span>
  <span id="prints">printf("%c \n", e.s);</span>
  <span id="termination">}</span>
</pre>
		</div>
		<div class="col-xs-offset-1 col-xs-4">
			<div class="col-xs-12 margin-bottom30 margin-top20" id="animationDiv">
				<div class="col-xs-12" style="padding: 5px 15px;">
					<span class="col-xs-offset-3 col-xs-6 opacity00 text-center" id="e"
						style="padding-right: 0px;"><span class="inner-span1"
						id="innerspans1">e</span></span>
				</div>
				<div class="col-xs-12">
					<div class="col-xs-offset-2 col-xs-8 border-div opacity00"
						id="ememory" style="padding: 15px;">
						<div class="text-center opacity00" id="dotValue" class="dot-value">e</div>
						<table align="center">
							<tbody>
								<tr>
									<td class="table-border" id="data1"></td>
									<td class="table-border" id="data2"></td>
									<td class="table-border" id="data3"></td>
									<td class="table-border" id="data4"></td>
									<td class="table-border hide" id="data5" style="width: 2%"></td>
									<td class="table-border hide" id="data6"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-xs-12 margin-top20 output-div opacity00"
				id="outputDiv">
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
	</div>
</body>
</html>