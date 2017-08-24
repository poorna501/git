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
<title>self referential structure</title>
<style>
.border-div {
	border: 2px solid gray;
	border-radius: 11px;
	/* height: 658px; */
}

.information-div {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	z-index: 9999999;
}

.table-border {
	border: 2px solid gray;
	text-align: center;
	/* padding:14px 42px; */
	/* width: 54%; */
	width: 12%;
	height: 26px;
}

.margin-top20 {
	margin-top: 20px;
}

.s-value {
	position: relative;
	display: inline-block;
}

.ct-code-b-green {
	color: green;
}

.nextButton {
	background-color: green;
}

.information-div {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	z-index: 9999999;
}

.svg-css {
	top: 0;
	left: 0;
	position: absolute;
	height: 100%;
	width: 100%;
	z-index: 7777777;
}

.cursor-wait {
	cursor: wait !important;
}

.padding3 {
	padding: 3px 9px 0 3px;
}

.creampretab4 {
	-moz-tab-size: 2;
	background-color: lavender !important;
	font-size: 11px;
	font-style: inherit;
	line-height: 1.5;
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

.display-inline {
	display: inline-flex;
}

th, td {
	padding: 3px 7px;
}

.introjs-fixParent {
	position: relative !important;
}

.sValue {
	width: 14px;
}

.z-index-class {
	position: relative;
	z-index: 9999999;
	background-color: white;
}

</style>
</head>
<body>
<script>


var intro;
var typingInterval = 5;
$(document).ready(function() {
	$(".line").hide();
	$(document).keydown(function(objEvent) {
	    if (objEvent.keyCode == 9) {  //tab pressed
	        objEvent.preventDefaulemptyt(); // stops its action
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
				element : "#codeDiv1",
				intro : "",
				position:"right"
			},{
				element : "#intType",
				intro : "",
				position:"right"
			},{
				element : "#floatType",
				intro : "",
				position:"right"
			},{
				element : "#innerStruct",
				intro : "",
				position:"right"
			},{
				element : "#informationDiv",
				tooltipClass:"hide"
			},{
				element : "#codeDiv",
				intro : "",
				position:"right"
			},{
				element : "#structDeceleration",
				intro : "",
				position:"right"
			},{
				element : "#mainMethod",
				intro : "",
				position:"right"
			},{
				element : "#variables",
				intro : "",
				position:"right"
			},{
				element : "#s1variable",
				intro : "",
				position:"right"
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#s2variable",
				intro : "",
				position:"right"
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#s1Printf",
				intro : "",
				position:"right"
			},{
				element : "#outputDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#s1Scanf",
				intro : "",
				position:"right"
			},{
				element : "#data1",
				tooltipClass:"hide"
			},{
				element : "#s2Printf",
				intro : "",
				position:"right"
			},{
				element : "#outputDiv",
				intro : "",
				position:"bottom"
			},{
				element : "#s2Scanf",
				intro : "",
				position:"right"
			},{
				element : "#data2",
				tooltipClass:"hide"
			},{
				element : "#stmt1",
				intro : "",
				position:"bottom"
			},{
				element : "#animationDiv",
				tooltipClass:"hide"
			},{
				element : "#stmt2",
				intro : "",
				position:"bottom"
			},{
				element : "#animationDiv",
				tooltipClass:"hide"
			},{
				element : "#printf",
				intro : "",
				position:"bottom"
			},{
				element : "#outputDiv",
				tooltipClass:"hide"
			},{
				element : "#termination",
				intro : "",
				position:"bottom"
			},{
				element : "#informationDiv",
				tooltipClass:"hide"
			},{
				element : "#restart",
				intro : "",
				position:"right",
			}
			]});
		
			intro.onafterchange(function(targetElement) {
			var elementId = targetElement.id;
			switch (elementId) {
			case "codeDiv1":
				$('.introjs-nextbutton').hide();
				var text = "Let, us consider an example, <br> This is the declaration of new user defined datatype <span class='ct-code-b-yellow'>student</span>.";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').show();
				});
			break;	
			case "intType":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the integer member declared in user defined datatype student datatype.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "floatType":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the float member declared in user defined student datatype.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "innerStruct":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This statement gives an error because decleration of student has not yet completed.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'flips();'>Next &#8594;</a>");
					});
				});
			break;
			case "informationDiv":
				$('.introjs-nextbutton').hide();
				$("#animation1").remove();
				intro.refresh();
				$(".introjs-helperLayer ").one('transitionend', function() {
					if (intro._currentStep == 28) {
						$("#lastPoint").removeClass("opacity00");
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					} else {
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
					}
				});
				break;
			case "codeDiv" :
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#codeDiv").removeClass("opacity00").hide().fadeIn(1500,function() {
						var text = "Let us consider an example code.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
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
			case "structDeceleration":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the declaration of new user defined datatype <span class='ct-code-b-yellow'>example</span>, which contains one integer member and one pointer member";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "variables":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the definition of struct variables, it will <span class='ct-code-b-yellow'>allocate memory</span> to the variables s1 and s2.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
						function numbers() {
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
					});
				});
				break;
			case "s1variable":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "The memory will be allocated to s1 variable.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "s2variable":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "The memory will be allocated to s2 variable.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "animationDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					if (intro._currentStep == 10) {
						$("#s1memory, #s1").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							var text = "Memory allocation of s1.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						});
					} else if (intro._currentStep == 12) {
						$("#s2memory, #s2").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							var text = "Memory allocation of s1.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						});
					} else if (intro._currentStep == 22) {
						$("#stmt1").addClass('z-index-class');
						$("#value1").effect( "highlight",{color: '#008000'}, 1500, function() {	
								$("#address2").effect( "highlight",{color: '#008000'}, 1500, function() {
								$("#stmt3").effect( "highlight",{color: '#008000'}, 1500, function() {
									$("#innerspans1").effect( "highlight",{color: '#008000'}, 1500, function() {
										$("#p").effect( "highlight",{color: '#008000'}, 1500, function() {
										$("#p1").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
												$("#arrowMark1").show();
												TweenMax.to("#arrowMark1", 1, {attr:{x2: "54.8%", y2: "64%" }, onComplete:function() {
													$("#stmt1").removeClass('z-index-class');
													intro.nextStep();
												}});
											});
										});	
									});
								});
							});
						});
					} else if (intro._currentStep == 24) {
						$("#stmt2").addClass('z-index-class');
						$("#stmt4").effect( "highlight",{color: '#008000'}, 1500, function() {
							$("#innerspans2").effect( "highlight",{color: '#008000'}, 1500, function() {
								$("#secondp").effect( "highlight",{color: '#008000'}, 1500, function() {
									$("#value2").effect( "highlight",{color: '#008000'}, 1500, function() {	
										$("#p2").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
											$("#stmt2").removeClass('z-index-class');
											intro.nextStep();
										});
									});	
								});
							});
						});
					}
				});
				break;
			case "s1Printf":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This statement is used to print in the console.";
					$("#output").append('<span id="enterData1"></span><span class="padding3 containnumbers" contenteditable="true" id="s1value" maxlength="3" spellcheck="false"></span><br>');
					numbers();
					typing(".introjs-tooltiptext", text, function() {stmt3
						$("#outputDiv").removeClass("opacity00").hide().fadeIn(2000,function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
				break;
			case "outputDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one('transitionend', function() {
					if (intro._currentStep == 14) {
						var text = "Enter a value for s1 : ";
						typing("#enterData1", text, function() {
							$("#s1value").effect( "highlight",{color: 'yellow'}, 1500);
							$("#s1value").focus();
							var text = "enter a value for s1.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						});
					} else if (intro._currentStep == 18) {
						var text = "Enter a value for s2 : ";
						typing("#enterData2", text, function() {
							$("#s2value").effect( "highlight",{color: 'yellow'}, 1500);
							$("#s2value").focus();
							var text = "enter a value for s2.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						});
					} else if (intro._currentStep == 26) {
						var text = $("#data1").text() + " --> " + $("#data2").text();
						typing("#details", text, function() {
							$("#printdetails").effect( "highlight",{color: 'yellow'}, 1500);
							$("#printdetails").focus();
							var text = "enter a value for s2.";
							typing(".introjs-tooltiptext", text, function() {
								intro.nextStep();
							});
						});
					} 
				});
				break;
			case "s1Scanf":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#s1value").attr("contenteditable", false);
					$("#data1").addClass("opacity00");
					$("#data1").text($("#s1value").text());
					var text = "It will get the value of s1 from standard input device(keyboard).";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "data1":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#data1").removeClass("opacity00").hide().fadeIn(2000,function() {
						intro.nextStep();
					});
				});
				break;
			case "s2Printf" :
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This statement is used to print in the console.";
					$("#output").append('<span id="enterData2"></span><span class="padding3 containnumbers" contenteditable="true" id="s2value" maxlength="3" spellcheck="false"></span><br>');
					numbers();
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "s2Scanf":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#s2value").attr("contenteditable", false);
					$("#data2").addClass("opacity00");
					$("#data2").text($("#s2value").text());
					var text = "It will get the value of s2 from standard input device(keyboard).";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "data2":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one('transitionend', function() {
					$("#data2").removeClass("opacity00").hide().fadeIn(2000,function() {
						intro.nextStep();
					});
				});
				break;
			case "stmt1":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one('transitionend', function() {
					var text = "This statement will store address of s2 in pointer variable p of s1.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "stmt2":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
				var text = "This statement will store <span class='ct-code-b-yellow'>NUll</span> in pointer variable p of s2 i.e, it does not link to the next structure variable.";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			case "printf":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#output").append('<span id="details"></span>');
					var text = "This statement will print the details in console.";
					typing(".introjs-tooltiptext", text, function() {
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
		$('.introjs-nextbutton').show();
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

	function flips() {
		$('.nextButton').hide();
		$("#sValue").effect("highlight",{color: 'yellow'}, 1500, function() {
			flipEffect("#sValue", "*s", function() {
				var text = "Here, s is a structure pointer variable. so, it allocates only <span class='ct-code-b-yellow'>2 bytes</span> to share the address of struct student type.";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').show();
				});
			});
		});
	}


	function numbers() {
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


		
	</script>
	<h2 class="text-center">
		<span class="label label-default ct-demo-heading" id="heading">self
			referential structure</span>
	</h2>
	<div class="col-xs-offset-5 col-xs-3 margin-top20" id="animation1">
		<pre class="code-div creampretab4" id="codeDiv1">
<span>struct student {</span>
	<span id="intType">int a;</span>
	<span id="floatType">float b;</span>
	<span id="innerStruct">struct student <span class="s-value"
				id="sValue">s</span>;</span>
};<!-- </div> -->
</pre>
	</div>
	<div id="informationDiv"
		class="col-xs-offset-2 col-xs-8 information-div margin-top20 visibility-hidden">
		<div class="col-xs-12 margin-top20" id="text">
			<ul>
				<li>A structure is called as self referential structure if it
					contains a pointer to itself.</li>
				<li>The general syntax of a self referential structure can be
					given as follows,<br> <span class="ct-code-b-green col-xs-offset-2">struct
						tagname {<br><span class="col-xs-offset-3">datatype1 var1;</span><br> <span class="col-xs-offset-3">datatype2 var2;</span><br>
						<span class="col-xs-offset-3">struct tagname *p;</span><br> <span class="col-xs-offset-2">};</span>
				</span>
				</li>
				<li class="opacity00" id="lastPoint">The self referential structures are mainly used in linked list concept of data structures.</li>
			</ul>
		</div>
	</div>
	<div class="col-xs-12 margin-top20 visibility-hidden" id="mainDiv">
		<div class="col-xs-5">
			<pre class="code-div creampretab4 opacity00" id="codeDiv">
<span id="structDeceleration">struct example {
	int data;
	struct example *p;
};</span>
<span id="mainMethod">main() {</span>
	<span id="variables">struct example <span id="s1variable">s1</span>, <span
					id="s2variable">s2</span>;</span>
	<span id="s1Printf">printf("Enter a value for s1 : ");</span>
	<span id="s1Scanf">scanf("%d", &s1.data);</span>
	<span id="s2Printf">printf("Enter a value for s2 : ");</span>
	<span id="s2Scanf">scanf("%d", &s2.data);</span>
	<span id="stmt1"><span id="stmt3">s1.p</span> = <span id="value1">&s2;</span></span>
	<span id="stmt2"><span id="stmt4">s2.p</span> = <span id="value2">NULL;</span></span>
	<span id="printf">printf("%d --> %d\n", s1.data, s1.p->data);</span>
<span id="termination">}</span>
</pre>
		</div>
		<div class="col-xs-6">
			<div class="col-xs-12" id="svgDiv">
				<div class="col-xs-12 margin-bottom30 margin-top20" id ="animationDiv">
					<svg class="svg-css" id="svgId"> 
							<marker refX="4" refY="2.5" markerWidth="5" markerHeight="5"
							orient="auto" style="fill: gray;" id="arrow"> 
								<path d="M0,0 L5,2.5 L0,5 Z" class="arrow" /> 
							</marker> 
							<line id="arrowMark1" class="line" x1="44.9%" y1="64%" x2="44.9%"
							y2="64%"
							style="marker-end: url(#arrow); stroke: gray; stroke-width: 2; display: inline;" />
					</svg>
					<!-- <div class="margin-top20 col-xs-10" id="memory"> -->
						<div class="col-xs-12" style="padding: 5px 15px;">
							<span class="col-xs-6 opacity00 text-center" id="s1"><span id="innerspans1">s1</span></span>
							<span class="col-xs-6 opacity00 text-center" id="s2"><span id="innerspans2">s2</span></span>
						</div>
						<div class="col-xs-6">
						<div class="col-xs-12 border-div opacity00" id="s1memory">
							<table align="center">
								<tbody>
									<tr>
										<td style="text-align: center;" id="data">data</td>
										<td style="text-align: center;" id="p">p</td>
									</tr>
									<tr>
										<td class="table-border" id="data1"></td>
										<td class="table-border opacity00" id="p1">1054</td>
									</tr>
									<tr>
										<td style="text-align: center; color: violet" id="address1">1024</td>
										<td style="text-align: center; color: violet;">1026</td>
									</tr>

								</tbody>
							</table>
						</div>
						</div>
						<div class="col-xs-6">
						<div class="col-xs-12 border-div opacity00" id="s2memory">
							<table align="center">
								<tbody>
									<tr>
										<td style="text-align: center;" id="secondData">data</td>
										<td style="text-align: center;" id="secondp">p</td>
									</tr>
									<tr>
										<td class="table-border" id="data2"></td>
										<td class="table-border opacity00" id="p2">NULL</td>
									</tr>
									<tr>
										<td style="text-align: center; color: violet" id="address2">1054</td>
										<td style="text-align: center; color: violet;">1056</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div></div>
				</div>
			</div>
		
		<div class="col-xs-6 margin-top20 output-div opacity00" id="outputDiv">
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