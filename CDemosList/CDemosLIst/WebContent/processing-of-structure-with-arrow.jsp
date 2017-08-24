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
<title>processing of structure with arrow operator</title>
<style>

.border-div {
	border:2px solid gray;
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

.margin-top20 {
	margin-top: 20px;
}

.cursor-wait {
    cursor: wait !important;
}

.padding3 {
	padding: 3px 9px 0 3px;
}

.ct-code-b-green {
	color: green;
}

.margin-bottom30 {
	margin-bottom: 30px;
}

.introjs-fixParent {
	position: relative !important;
}

.svg-css {
	top: 0;
	left: 0;
	position: absolute;
	height: 100%;
	width: 100%;
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
				element : "#informationDiv",
				tooltipClass:"hide"
			},{
				element : "#codeDiv",
				intro : "",
				position:"right"
			},{
				element : "#declaration",
				intro : "",
				position:"right"
			},{
				element : "#pointerVariable",
				intro : "",
				position:"right"
			},{
				element : "#pDiv",
				intro : "",
				position:"right",
			},{
				element : "#mallocStmt",
				intro : "",
				position:"bottom",
			},{
				element : "#animationDiv",
				intro : "",
				position:"bottom",
			},{
				element : "#enterName",
				intro : "",
				position:"bottom",
			},{
				element : "#outputDiv",
				intro : "",
				position:"bottom",
			},{
				element : "#readName",
				intro : "",
				position:"bottom",
			},{
				element : "#pname",
				tooltipClass:"hide"
			},{
				element : "#enterPages",
				intro : "",
				position:"bottom",
			},{
				element : "#outputDiv",
				intro : "",
				position:"bottom",
			},{
				element : "#readPages",
				intro : "",
				position:"bottom",
			},{
				element : "#ppages",
				tooltipClass:"hide"
			},{
				element : "#enterPrice",
				intro : "",
				position:"bottom",
			},{
				element : "#outputDiv",
				intro : "",
				position:"bottom",
			},{
				element : "#readprice",
				intro : "",
				position:"bottom",
			},{
				element : "#pprice",
				tooltipClass:"hide"
			},{
				element : "#printDetails",
				intro : "",
				position:"bottom",
			},{
				element : "#outputDiv",
				tooltipClass:"hide"
			},{
				element : "#termination",
				intro : "",
				position:"bottom",
			},{
				element : "#restart",
				intro : "",
				position:"right",
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
					setTimeout(function(){
						intro.nextStep();
					}, 1000);
				});
			break;
			case "codeDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "Let us consider an example code for accessing member of a structure by using <span class='ct-code-b-yellow'>arrow</span> operator.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;	
			case "declaration":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the declaration of new user defined datatype <span class='ct-code-b-yellow'>book</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;	
			case "pointerVariable":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the definition of struct variables, it will <span class='ct-code-b-yellow'>allocate memory</span> to the <span class='ct-code-b-yellow'>pointer</span> variables p with <span class='ct-code-b-yellow'>2 bytes</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
				
			break;	
			case "pDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#tableOfp").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						var text = "This is the memory of pointer variable p which stores the <span class='ct-code-b-yellow'>address</span>.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
			break;
			case "mallocStmt":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "In this statement <span class='ct-code-b-yellow'>malloc()</span> is used to allocate memory to the members of the book datatype.";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "animationDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#memory").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$("#arrowMark1").show();
						TweenMax.to("#arrowMark1", 1, {attr:{x2: "35%", y2: "45%" }, onComplete:function() {
							$("#address1").effect( "highlight",{color: 'yellow'}, 1500, function() {
								$("#address").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
									var text = "In this way the memory allocation takes palce.";
									typing(".introjs-tooltiptext", text, function() {
										$('.introjs-nextbutton').show();
									});
								});
							});
						}});
					});
				});
			break;
			case "enterName":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This statement is used to print the statement in the console.";
					typing(".introjs-tooltiptext", text, function() {
						$("#output").append('<span id="name"></span><span class="padding3" contenteditable="true" id="editname" maxlength="18" spellcheck="false"></span><br>');
						characters();
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "outputDiv" :
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					if (intro._currentStep == 8) {
						var text = "enter name : ";
						typing("#name", text, function() {
							$("#editname").effect( "highlight",{color: 'yellow'}, 1500);
							$("#editname").focus();
							var text = "enter name.";
							typing(".introjs-tooltiptext", text, function() {
							});
						});
					} else if (intro._currentStep == 12) {
						var text = "enter pages : ";
						typing("#pages", text, function() {
							$("#editpages").effect( "highlight",{color: 'yellow'}, 1500);
							$("#editpages").focus();
							var text = "enter number of pages.";
							typing(".introjs-tooltiptext", text, function() {
							});
						});
					} else if (intro._currentStep == 16) {
						var text = "enter price : ";
						typing("#price", text, function() {
							$("#editprice").effect( "highlight",{color: 'yellow'}, 1500);
							$("#editprice").focus();
							var text = "enter price.";
							typing(".introjs-tooltiptext", text, function() {
							});
						});
					} else if (intro._currentStep == 20) {
						var text = "Name : "+ $("#pname").text() + "  pages : " + $("#ppages").text() + "  price : " + $("#pprice").text() + "";
						typing("#result", text, function() {
							setTimeout(function(){
								intro.nextStep();
							}, 1000);
						});
					}
				});
			break;
			case "readName":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#editname").attr("contenteditable", false);
					$("#pname").addClass("opacity00");
					$("#pname").text($("#editname").text());
					var text = "It will get the value of name by standard input device(keyboard).";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				}); 
			break;
			case "pname":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#pname").removeClass("opacity00").hide().fadeIn(2000,function() {
						intro.nextStep();
					});
				});
			break;
			case "enterPages":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This statement is used to print the statement in the console.";
					typing(".introjs-tooltiptext", text, function() {
						$("#output").append('<span id="pages"></span><span class="padding3" contenteditable="true" id="editpages" maxlength="3" spellcheck="false"></span><br>');
						numbers();
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "readPages":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#editpages").attr("contenteditable", false);
					$("#ppages").addClass("opacity00");
					$("#ppages").text($("#editpages").text());
					var text = "It will get the value of pages by standard input device(keyboard).";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				}); 
			break;
			case "ppages":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#ppages").removeClass("opacity00").hide().fadeIn(2000,function() {
						intro.nextStep();
					});
				});
			break;
			case "enterPrice":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This statement is used to print the statement in the console.";
					typing(".introjs-tooltiptext", text, function() {
						$("#output").append('<span id="price"></span><span class="padding3" contenteditable="true" id="editprice" maxlength="3" spellcheck="false"></span><br>');
						numbers();
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "readprice":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#editprice").attr("contenteditable", false);
					$("#pprice").addClass("opacity00");
					$("#pprice").text($("#editprice").text());
					var text = "It will get the value of price by standard input device(keyboard).";
					typing(".introjs-tooltiptext", text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "pprice":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#pprice").removeClass("opacity00").hide().fadeIn(2000,function() {
						intro.nextStep();
					});
				});
			break;
			case "printDetails" :
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This statement will print in the console.";
					typing(".introjs-tooltiptext", text, function() {
						$("#output").append('<span id="result"></span>');
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "termination" :
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "This is the termination of main method.";
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
	$('.introjs-nextbutton').hide();
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

function characters() {
	$("[contenteditable=true]").on("keydown keyup", function(e) {
		$(".ct-code-b-red").remove();
		var max = $(this).attr("maxlength");
		if (($(this).text().length) > max) {
			$(".introjs-tooltiptext").append("<div class='ct-code-b-red'></br>Please restrict the length of text to 20 characters, because the array variable size is name[20].</div>");
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
		
		if (((e.which >= 60 && e.which <= 90))) {
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
		<span class="label label-default ct-demo-heading" id = "heading">Processing of structure using arrow(->) operator</span>
	</h2>
	<div id="informationDiv" class="col-xs-offset-2 col-xs-8 information-div margin-top20">
		<div class="col-xs-12 margin-top20" id="text">
			<ul>
				<li>A pointer pointing to a structure is known as structure pointer.</li>
				<li>If a pointer to the structure variable is declared, then arrow notation is used to access the members of structure.</li>
				<li>  Remember that on the left hand side of dot operator there must always be a structure variable, whereas on the left hand side of
				 the arrow operator there must always be a pointer to a structure.</li>
			</ul>
		</div>
	</div>
	<div class="col-xs-12 margin-top20">
		<div class="col-xs-5">
			<pre class="code-div creampretab4" id="codeDiv">
<span id="declaration">struct book {
char name[20];
int pages;
float price;
};</span>
main() {
<span id="pointerVariable">struct book *p;</span>
<span id="mallocStmt">p = (struct book*)malloc(sizeOf(struct book));</span>
<span id="enterName">printf("enter name : ");</span>
<span id="readName">scanf("%s",(p->name));</span>
<span id="enterPages">printf("enter pages : ");</span>
<span id="readPages">scanf("%d",(p->pages));</span>
<span id="enterPrice">printf("enter price : ");</span>
<span id="readprice">scanf("%f",(p->price));</span>
<span id="printDetails">printf("Name : ",(p->name),"\tpages : ",(p->pages),"\tprice : ",(p->price));</span>
<span id="termination">}</span>
	</pre>
		</div>
		<div class="col-xs-6" id="animationDiv">
			<div class="col-xs-12" id="svgDiv">
				<svg class="svg-css" id="svgId"> 
						<marker refX="4" refY="2.5" markerWidth="5" markerHeight="5"
						orient="auto" style="fill: gray;" id="arrow"> 
							<path d="M0,0 L5,2.5 L0,5 Z" class="arrow" /> 
						</marker> 
						<line id="arrowMark1" class="line" x1="24.9%" y1="45%" x2="24.9%"
						y2="45%"
						style="marker-end: url(#arrow); stroke: gray; stroke-width: 2; display: inline;" />
						<!-- <line id="arrowMark1" class="line" style="marker-end: url("#arrow"); stroke: gray; stroke-width: 2; display: inline;" y2="45%" x2="24.9%" y1="45%" x1="24.9%" /> -->				
				</svg>
				<div class="col-xs-12 margin-bottom30">
					<div class="margin-top20 col-xs-offset-1 col-xs-2" id="pDiv">
						<table align="center" class="margin-top20 opacity00" id="tableOfp">
							<tbody>
								<tr>
									<td id="pvalue" class="table-border"><span id="address"
										class="opacity00">1024</span></td>
								</tr>
								<tr>
									<td class="text-center" id="p">p</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div
						class="col-xs-offset-1 margin-top20 col-xs-6 border-div opacity00"
						id="memory">
						<table align="center">
							<tbody>
								<tr>
									<td style="text-align: center;">name</td>
									<td style="text-align: center;">pages</td>
									<td style="text-align: center;">price</td>
								</tr>
								<tr>
									<td class="table-border" id="pname"></td>
									<td class="table-border" id="ppages"></td>
									<td class="table-border" id="pprice"></td>
								</tr>
								<tr>
									<td style="text-align: center; color: violet" id="address1">1024</td>
									<td style="text-align: center; color: violet;">1044</td>
									<td style="text-align: center; color: violet;">1046</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-6 margin-top20 output-div" id="outputDiv">
			<div class="output-console-title-bar">
				<span class="title">Output</span>
			</div>
			<div class="output-console-body">
				<span class="output" id="output"></span>
			</div>
		</div>
		<div class="col-xs-6 margin-top20 text-center">
			<span class="btn btn-warning opacity00" id="restart">Restart</span>
		</div></body>
</html>