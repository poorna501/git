<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/animate.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/font-awesome-animation.min.css" rel="stylesheet">
<script src="/js/bootstrap.min.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/gs/TimelineLite.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.padding0 {
	padding: 0px;
}

.opacity00 {
	opacity: 0;
}

.margin-top30 {
	margin-top: 30px;
}

.color-rose {
	color: #8B008B;
}

.introjs-tooltip {
	min-width: 260px;
}

pre {
	background-color: lavender;
	color: black;
	height: 200px;
}

#parentDiv {
	/* border: 2px solid gray; */
	border-radius: 3px;
	display: inline-block;
	height: 350px;
}

.next-button {
	background-color: green !important; 
	border: 1px solid #d4d4d4;
    border-radius: 0.2em;
    /* color: #333;
    cursor: pointer; */
    display: inline-block;
    font: 11px sans-serif;
    padding: 3px;
}

.table-border {
	border: 2px solid gray;
	text-align: center;
	/* padding:14px 42px; */
	/* width: 54%; */
	/* width: 12%; */
	width: 111px;
	height: 26px;
}

.memory {
	border: 2px solid gray;
	border-radius: 9px;
}

.output-console-title-bar {
	border-top-left-radius: 4px;
    border-top-right-radius: 4px;
}

.output-console-body {
	height: 75px;
}

.display-none {
	display: none;
}

 @keyframes blink {
    /* 0%   { background-color: #fff; } */
    50% { background-color: blue; }
    99% { background-color: blue; }
/*     100% { background-color: #fff; } */
  }
 
.flash {
 	animation: blink 1s 1;
 }
 
 .zIndex {
 	z-index: 9999999 !important;
 	background-color: white;
 	position: relative;
 }
 
.output-console-body {
    color: #f0f0f0;
    font-family: monospace;
    font-size: 10px;
    white-space: normal;
} 

.discard-red {
	background-color: red;
}
</style>
<script type="text/javascript">
var count = 1;
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
						element : ".ct-demo-heading",
						intro : "",
						position : "left",
					},
					{
						element : "#firstPre",
						intro : "",
						position : "right",
						action : "firstSyntax"
					},
					{
						element : "#structDeclaration",
						intro : "",
						position : "top",
						action : "firstSyntax"
					},{
						element : "#structInitialization",
						intro : "",
						position : "right",
						action : "firstSyntax"
					},{
						element : "#memoryArea",
						intro : "",
						position : "top",
						action : "firstSyntax"
					},{
						element : "#printMethod",
						intro : "",
						tooltipClass: "hide",
						action : "firstSyntax"
					},{
						element : "#outputDiv",
						intro : "",
						position : "right",
						action : "firstSyntax"
					}
				]
})

	intro.onafterchange(function(targetElement) {
		var ElementId = targetElement.id;
		var action = intro._introItems[intro._currentStep].action;
		switch (ElementId) {
		
		case "firstPre":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#firstPre").removeClass("opacity00");
				
				if (action == "firstSyntax") {
					$("#firstPre").addClass("zoomIn animated");
					setTimeout(function() {
						var text = "Let us consider the <span class='ct-code-b-yellow'>structure</span> example."
						typing(".introjs-tooltiptext",text, function() {
							$("#firstPre").removeClass("zoomIn animated");
						})
					}, 950);
				} else if (action == "secondSyntax") {
					reAnimating();
					$("#arrVal").append("<span id='charVal'>115</span>, <span id='intVal'>1.25</span>, '<span id='floatVal'>a</span>'").addClass("display-none");
					var text = "For example the initialized values are different than the <span class='ct-code-b-yellow'>data types</span>"
								+" of the <span class='ct-code-b-yellow'>members</span>, then see the results.";
						typing(".introjs-tooltiptext", text, function() {
							$("#arrVal").fadeIn("500");
						})
				} else if (action == "thirdSyntax") {
					reAnimating();
					$("#arrVal").append("'<span id='charVal'>s</span>', <span id='intVal'>25</span>").addClass("display-none");
					var text = "Let us consider a <span class='ct-code-b-yellow'>structure</span> with two initialized values."
						typing(".introjs-tooltiptext", text, function() {
							$("#arrVal").fadeIn("500");
						})
				} else if (action == "fourthSyntax") {
					reAnimating();
					$("#arrVal").append("'<span id='charVal'>k</span>', <span id='intVal'>555</span>, <span id='floatVal'>14.45</span>, <span class='discard'>22</span>, <span class='discard'>'M'</span> ").addClass("display-none");
					var text = "Here we are trying to give values more than the declared variable in <span class='ct-code-b-yellow'>structure</span>."
						typing(".introjs-tooltiptext", text, function() {
							$("#arrVal").fadeIn("500");
						})
				}
			});
		break;
		
		case "structDeclaration":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (action == "firstSyntax") {
					var text = "This is <span class='ct-code-b-yellow'>structure</span> declaration for new user"
								+" defined data type <span class='ct-code-b-yellow'>book</span>.";
								typing(".introjs-tooltiptext",text)
				} else if (action == "fourthSyntax") {
					var text = "In this <span class='ct-code-b-yellow'>structure</span> declaration we have declared only two members"
								+" for new user defined data type <span class='ct-code-b-yellow'>book</span>";
								typing(".introjs-tooltiptext",text);
				}
			});
		break;
		
		case "structInitialization":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				
				$("#structInitialization").removeClass("visibility-hidden");
				
				if (action == "firstSyntax" || action == "secondSyntax") {
					var text = "This is <span class='ct-code-b-yellow'>structure</span> definition which allocates"
								+" memory to the <span class='ct-code-b-yellow'>structure</span> variable <span class='ct-code-b-yellow'>b</span>.";
								typing(".introjs-tooltiptext",text);
				}  else if (action == "thirdSyntax") {
					var text = "In this <span class='ct-code-b-yellow'>structure</span> definition we are initializing only for"
								+" <span class='ct-code-b-yellow'>char</span> and <span class='ct-code-b-yellow'>int</span>.";
					typing(".introjs-tooltiptext",text);
				} else if (action == "fourthSyntax") {
					var text ="In this <span class='ct-code-b-yellow'>structure</span> definition we are initializing more than what we have "
								+" declared in structure <span class='ct-code-b-yellow'>book</span>.";
								typing(".introjs-tooltiptext",text);
				} 
				
			});
		break;	
		
		case "memoryArea":
			$(".introjs-nextbutton").hide();//memoryArea
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#memoryArea").removeClass("opacity00");
				if (action == "firstSyntax"){
					var text = "The members of <span class='ct-code-b-yellow'>b</span> variable can be accessed by using the dot(.)"
								+" operator as  <span class='ct-code-b-yellow'>b.letter</span>, <span class='ct-code-b-yellow'>b.pages</span>,"
								+" <span class='ct-code-b-yellow'>b.price</span>.";
									memoryArea(text);
				} else if (action == "secondSyntax") {
					var text = "<ul><li>Here <span class='ct-code-b-yellow'>115</span> is an <span class='ct-code-b-yellow'>integer</span>"
								+" constant but it is going to stored in <span class='ct-code-b-yellow'>char</span>"
								+" variable <span class='ct-code-b-yellow'>letter</span>, 115 is"
								+" treated as <span class='ct-code-b-yellow'>ASCII</span> value but not an integer.</li><span id='first'></span></ul>";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").hide();
						
						var charVal = String.fromCharCode($("#charVal").text());
						var intVal = Math.floor($("#intVal").text());
						var floatVal = ($("#floatVal").text().charCodeAt(0)).toFixed(2);
						
						$("#bLetter").text(charVal);
						$("#bPages").text(intVal);
						$("#bPrice").text(floatVal);
						
						$("#span1, #charVal").addClass("flash");
						$("#bLetter").addClass("flash");
						
						setTimeout(function() {
						$("#bLetter").fadeIn("slow", function() {
							var text = "<li><span class='ct-code-b-yellow'>1.234</span> is a <span class='ct-code-b-yellow'>float</span>"
										+" constant but it will stored in <span class='ct-code-b-yellow'>int</span>"
										+" variable <span class='ct-code-b-yellow'>pages</span>, so it stores"
										+" only value <span class='ct-code-b-yellow'>1</span> i.e, it truncates"
										+" <span class='ct-code-b-yellow'>.234</span> .</li><span id='second'></span>";
										typing("#first", text, function() {
											
											$(".introjs-nextbutton").hide();
											$("#span2, #intVal").addClass("flash");
											$("#bPages").addClass("flash");
											setTimeout(function() {
											$("#bPages").fadeIn("slow", function() {
											var text = "<li><span class='ct-code-b-yellow'>'a'</span> is a <span class='ct-code-b-yellow'>"
														+"character</span> constant, the"
														+" <span class='ct-code-b-yellow'>ASCII</span> value for the character is"
														+" <span class='ct-code-b-yellow'>97</span> so it is"
														+" stored in <span class='ct-code-b-yellow'>float</span> variable"
														+" <span class='ct-code-b-yellow'>price</span> with decimal point.</li>";
														
														typing("#second", text, function() {
															$(".introjs-nextbutton").hide();
															$("#span3, #floatVal").addClass("flash");
															$("#bPrice").addClass("flash");
															setTimeout(function() {
																$("#bPrice").fadeIn("slow", function() {
																	$(".introjs-nextbutton").show();
																});
														},1400);
													});
												});
											},1000);
										});
								});
						},600);
					})
					
				} else if (action == "thirdSyntax") {
					var text = "If we try to access the float value as <span class='ct-code-b-yellow'>b.price</span>"
								+" we get a <span class='ct-code-b-yellow'>garbage</span> value.";
					typing(".introjs-tooltiptext",text,function() {
						$(".introjs-nextbutton").hide();
						$("#bLetter").text($("#charVal").text());
						$("#bPages").text($("#intVal").text());
						$("#bPrice").text("0.00");
						$("#bLetter").fadeIn("slow", function() {
							$("#bPages").fadeIn("slow", function() {
								$("#bPrice").fadeIn("slow", function() {
									$(".introjs-nextbutton").show();
								});
							})
						})
					});
				} else if (action == "fourthSyntax") {
					var text = "Originally in <span class='ct-code-b-yellow'>structure</span> we have three members,"
								+" but initialized with <span class='ct-code-b-yellow'>5</span> values so the"
								+" first three values will be assigned to the members of <span class='ct-code-b-yellow'>"
								+"structure</span> and the remaining two values are discarded.";
					memoryArea(text);
				}
			});
		break;
		
		case "printMethod":
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function() {
					$(".introjs-nextbutton").click();
				}, 400);
			})
		break;
			
		case "outputDiv":
			$(".introjs-nextbutton").hide();
			$("#printMethod").addClass("zIndex");
						
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#outputDiv").removeClass("opacity00");				
				if (action === "firstSyntax") {
					/* $("#output").append("<span class='display-none'>" + $("#charVal").text() +"</span>"
							+"  <span class='display-none'>"+ parseInt($("#intVal").text()) +"</span> "
							+" <span class='display-none'>"+ $("#floatVal").text() +"</span>"); */
							commonCode();
					outPutDiv(function() {
						var text = "Let us consider another example.";
						typing(".introjs-tooltiptext", text,function() {
							dynamicSteps("secondSyntax", false, true);
							
						})
					});
				} else if (action == "secondSyntax") {
					
					var charVal = String.fromCharCode($("#charVal").text());
					var intVal = Math.floor($("#intVal").text());
					var floatVal = ($("#floatVal").text().charCodeAt(0)).toFixed(2);
					
					$("#output").append("<span class='display-none'>" + charVal +"</span>"
							+"  <span class='display-none'>"+ intVal +"</span> "
							+" <span class='display-none'>"+ floatVal +"</span>");
					outPutDiv(function() {
						var text = "Let us consider another example.";
						typing(".introjs-tooltiptext", text,function() {
							dynamicSteps("thirdSyntax", false, true);
							
						})
					});
				} else if (action == "thirdSyntax") {
					console.log(" in the third..")
					$("#output").append("<span class='display-none'>" + $("#charVal").text() +"</span>"
							+"  <span class='display-none'>"+ parseInt($("#intVal").text()) +"</span> "
							+" <span class='display-none'>"+ $("#bPrice").text() +"</span>");
					outPutDiv(function() {
						var text = "Let us consider another example.";
						typing(".introjs-tooltiptext", text, function() {
							dynamicSteps("fourthSyntax", false, true);
					});
						
					})
				} else if (action == "fourthSyntax") {
				
					/* $("#output").append("<span class='display-none'>" + $("#charVal").text() +"</span>"
							+"  <span class='display-none'>"+ parseInt($("#intVal").text()) +"</span> "
							+" <span class='display-none'>"+ $("#floatVal").text() +"</span>"); */
							commonCode();
					
					outPutDiv(function() {
						var text = "Click on next button.";
						typing(".introjs-tooltiptext", text,function() {
							var nextStep = {
									element : "#restart",
									intro : "Click on button to start.",
									position : "right",
							}
							intro.insertOption(intro._currentStep + 1, nextStep);
						})
					});
				}
			})
		break;
			
		case "restart":
			$(".introjs-nextbutton").hide();
			$("#restart").removeClass("opacity00");
		break;
		
		}
	})
	intro.start();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$(".introjs-nextbutton").hide();
	var text = "Here we are going to learn the initialization of <span class='ct-code-b-yellow'>structure</span>.click on the next button.";
	typing(".introjs-tooltiptext", text, function() {
		$(".introjs-nextbutton").show();
	})
	
	$("#restart").click(function() {
		 location.reload();
	})
})
	
	function commonCode() {
		$("#output").append("<span class='display-none'>" + $("#charVal").text() +"</span>"
				+"  <span class='display-none'>"+ parseInt($("#intVal").text()) +"</span> "
				+" <span class='display-none'>"+ $("#floatVal").text() +"</span>");
	}
	function memoryArea(text) {
		typing(".introjs-tooltiptext",text,function() {
			//$("#memoryArea").removeClass("zoomIn animated");
			$(".introjs-nextbutton").hide();
			$("#bLetter").text($("#charVal").text());
			$("#bPages").text($("#intVal").text());
			$("#bPrice").text($("#floatVal").text());
			
			$("#span1, #charVal").addClass("flash");
			$("#bLetter").addClass("flash");
			setTimeout(function() {
			$("#bLetter").fadeIn("slow", function() {
				$("#span2, #intVal").addClass("flash");
				$("#bPages").addClass("flash");
				setTimeout(function() {
				$("#bPages").fadeIn("slow", function() {
					$("#span3, #floatVal").addClass("flash");
					$("#bPrice").addClass("flash");
					setTimeout(function() {
						$("#bPrice").fadeIn("slow", function() {
							$(".introjs-nextbutton").show();
							$(".discard").addClass("discard-red");
						});
					},1400);
				})
				},1000);
			})
			},600);
		});
	}
	
	function reAnimating() {
		//$("#structInitialization").addClass("visibility-hidden")
		$("#arrVal").empty();
		$("#bLetter, #bPages, #bPrice").text("");
		$(".flash").removeClass("flash");
		$("#bLetter, #bPages, #bPrice").removeAttr('style');
		$("#output").empty();
	}

function outPutDiv(callBackFunction) {
	$(".char").addClass("flash");
	$("#output span:eq(0)").fadeIn("slow", function() {
		$("#output span:eq(0)").addClass("flash");
		setTimeout(function() {
			$(".decimal").addClass("flash");
			$("#output span:eq(1)").fadeIn("slow", function() {
				$("#output span:eq(1)").addClass("flash");
				setTimeout(function() {
					$(".float").addClass("flash");
					$("#output span:eq(2)").fadeIn("slow", function() {
						$("#output span:eq(2)").addClass("flash");
						$("#printMethod").removeClass("zIndex");
						$(".introjs-nextbutton").show();
						
						if (typeof callBackFunction === "function") {
							callBackFunction();
						}
						
					})
				},400);
			})
		},200);
	})
}
	
	function dynamicSteps(action, isRequired, isMemory) {
		var step = 0;
		
			var nextStep = {
				element : "#firstPre",
				intro : "",
				position : "right",
				action : action
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
			
			if (isRequired) {
				var nextStep = {
					element : "#structDeclaration",
					intro : "",
					position : "top",
					action : action
				}
				intro.insertOption(intro._currentStep + ++step, nextStep);
			}
			
			var nextStep = {
				element : "#structInitialization",
				intro : "",
				position : "right",
				action : action
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
			
			if (isMemory) {
				var nextStep = {
					element : "#memoryArea",
					intro : "",
					position : "bottom",
					action : action
				}
				intro.insertOption(intro._currentStep + ++step, nextStep);
			}
			var nextStep = {
				element : "#printMethod",
				intro : "",
				position : "right",
				tooltipClass: "hide",
				action : action
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
			
			var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "right",
				action : action
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
	}
	
	
	function typing(selector, text, callBackFunction) {
		var typingSpeed = 40;
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			$(".introjs-nextbutton").show();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		})
	}

</script>
</head>
<body>
<div class="col-xs-12 padding0">
	<h2 class="text-center">
		<span class="label label-default ct-demo-heading">Structure Initialization</span>
	</h2>
</div>
<div class="col-xs-12 margin-top10 text-center">
		<span class="btn btn-warning opacity00" id="restart">Restart</span>
</div>
<div class="col-xs-12 padding0 margin-top30">
<div id="parentDiv" class="padding0 col-xs-offset-2 col-xs-9">
	<div class="col-xs-12 padding0 margin-top0">
		<div class="col-xs-5 padding0">
<pre class="opacity00" id="firstPre">
<div style="margin-top: 21px;"><span id='structDeclaration'>struct <span class="color-rose">Book</span> {
  <span class="color-rose">char</span> <span id='span1'>letter</span>;
  <span class="color-rose">int</span> <span id='span2'>pages</span>;
  <span id='decl'><span class="color-rose">float</span> <span id='span3'>price</span>;</span>
};</span>
<span id='structInitialization'>struct <span class="color-rose">Book</span> b = {<span id='arrVal'>'<span id="charVal">M</span>', <span id="intVal">999</span>, <span id="floatVal">11.007</span></span>};</span>
<span id="printMethod"><span class="color-rose">printf</span>("<span class='char'>%c</span> <span class='decimal'>%d</span> <span class='float'>%f</span>", <span class='char'>b.letter</span>, <span class='decimal'>b.pages</span>, <span class='float'>b.price</span>);</span>
</div>
</pre>
	</div>
	<div class="col-xs-offset-1 col-xs-5 padding0" style="margin-top: 55px;">
		<div class="col-xs-12 padding0 opacity00" id="memoryArea">
			<div class="col-xs-12 text-center padding0 color-rose">b</div>
				<div class="col-xs-12 padding0 memory">
					<table align="center">
							<tr>
								<td style="text-align: center;">letter</td>
								<td style="text-align: center;">pages</td>
								<td style="text-align: center;">price</td>
							</tr>
							<tr>
								<td class="table-border"><span class ="display-none" id="bLetter"></span></td>
								<td class="table-border"><span class="display-none" id="bPages"></span></td>
								<td class="table-border"><span class="display-none" id="bPrice"></span></td>
							</tr>
							<tr>
								<td style="text-align: center; color: midnightblue">1014</td>
								<td style="text-align: center; color: midnightblue;">1015</td>
								<td style="text-align: center; color: midnightblue;">1017</td>
							</tr>

						</table>
				</div>
		</div>
	
	</div>
	</div>
	<div class="col-xs-offset-3 col-xs-6" style="margin-top:25px">
		<div id="outputDiv" class="opacity00">
			<div class="output-console-title-bar">
				<span class="title">Output</span>
			</div>
			<div class="output-console-body">
				<span class="output" id="output"></span>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>
