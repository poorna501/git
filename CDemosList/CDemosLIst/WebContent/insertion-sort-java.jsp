<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insertion Sort CT</title>
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

.margin-top-14 {
	margin-top: 14px;
}

div, span {
	position: relative;
}

.padding0 {
	padding: 0;
}

.creampretab4 {
	-moz-tab-size: 2;
	background-color: lavender !important;
	font-size: 11.5px;
	font-style: inherit;
	overflow-y: auto;
	white-space: pre;
}

#animationDiv {
	border: 1px solid gray;
	border-radius: 8px;
	height: 485px;
}

#outputDiv {
	margin-top: 10px;
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
	height: 93px;
	padding: 10px;
}

[contenteditable=true] {
	outline: none;
	font-family: monospace;
}

.errMsg {
	color: red;
	font-weight: bold;
	font-family: monospace;
}

table {
	table-layout: fixed;
}

td {
    width: 60px;
}

.table-border {
	border: 2px solid;
}

.ui-effects-transfer {
	border: 1px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 10000001 !important;
}

.font-weight-bold {
	font-weight: bold;
}

#cupsDiv {
	margin-top: 40px;
}

.cup-val {
	color: red;
	/* display: inline-block; */
	font-weight: bold;
	position: relative;
	right: 2px;
	top: 30px;
}

.background-color-yellow {
	background-color: yellow;
}

.display-inline-block {
	display: inline-block;
}

#innerCupVal {
	position: relative;
	z-index: 10000005;
	font-weight: bold;
	color: #ff0066;
}

.cup-color {
	color: #E1E1E1; 
}
#color-bold {
	color: yellow;
	font-weight: bold;
}

.border {
	background-color: white;
    border: 1px solid black;
    border-radius: 50%;
    padding: 3px 4px 0;
}

.margin-top-10 {
	margin-top: 10px;
}

.zIndex {
	position: relative;
	z-index: 10000001;
}

.user-btn {
	background-color: green;
}

.introjs-tooltip {
    background-color: white;
    border-radius: 3px;
    box-shadow: 0 1px 10px rgba(0, 0, 0, 0.4);
    max-width: 300px;
    min-width: 320px;
    padding: 10px;
    position: absolute;
    transition: opacity 1.1s ease-out 0s;
    visibility: visible;
}

.blue-color {
}

</style>

<script type="text/javascript">
var tl = new TimelineLite();
var typingSpeed = 5;
var introjs;

$(document) .ready(function() {
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
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
		steps : [{
			element : "#demoTitle",
			intro : "",
			position : "right"
		}, {
			element : "#arrElements",
			intro : "",
			position : "bottom"
		}, {
			element : "#animationDiv",
			intro : "",
			position : "left"
		}, {
			element : "#arrLength",
			intro : "",
			position : "right"
		}, {
			element : "#callSortingMethod",
			intro : "",
			position : "right"
		},{
			element : "#sortingMethod",
			intro : "",
			position : "top"
		}, {
			element : "#animationDiv",
			intro : "",
			position : "left"
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "demoTitle":
			$(".introjs-nextbutton").hide();
			var text = "In this live demo we will learn how " + "<b class ='ct-code-b-yellow'>Insertion Sort</b> will sort the elements. ";
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-nextbutton").show();
			});
			break;
			
		case "arrElements":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "New array created and we can also change the values. "
				typing(".introjs-tooltiptext", text, function() {
					charAtEnd("arrVal1");
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "animationDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (introjs._currentStep == 2) {
				$("#animationDiv").css({"background-color": "white"}).addClass("zIndex");
				$.each($("#arrElements span"), function(index) {
				  $("#arrTable tr:nth-child(2) td span").eq(index).text($(this).text())
				  $("#animationTable tr:nth-child(2) td span").eq(index).text($(this).text())
				});
				var text = "New array created. This array will be sort. ";
				typing(".introjs-tooltiptext", text, function() {
					$('#arrElements').effect( "transfer", { to: $('#arrTable'), className:"ui-effects-transfer" }, 1500, function() {
						$('#arrTable').removeClass("opacity00");
						setTimeout(function(){
							$('#arrTable').effect( "transfer", { to: $('#animationTable'), className:"ui-effects-transfer" }, 1500, function() {
								$('#animationTable').removeClass("opacity00");
								$(".introjs-nextbutton").show();
						 	});
						}, 2000);
					});
				});
				} else if(introjs._currentStep == 6) {
					$("#animationDiv").removeClass("zIndex");
					$(".introjs-helperLayer").one("transitionend", function() {
						$("#sortingMethod").addClass("zIndex").effect("highlight", {color: 'white'}, 1000, function() {
							$(this).removeClass("zIndex");
						});
						$('#sortingMethod').effect( "transfer", { to: $("#rightCode"), className: "ui-effects-transfer" }, 1000, function() {
							$("#rightCode").removeClass("opacity00");
							$(".introjs-tooltip").removeClass("hide");
							$(".introjs-tooltiptext").append("<ul><li></li></ul>");
							var text = "By using this method we will sort the elements. ";
							typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
								$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationTempCup()">Next &#8594;</a>');
							});
						});
					});
				}
			});
			break;
			
		case "arrLength":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "array length i.e. = <span id='tooltipNVal'>8</span>. ";
				typing(".introjs-tooltiptext", text, function() {
					$("#nCupDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animated zoomIn");
						var l = $("#tooltipNVal").offset();
						$("#nVal").removeClass("opacity00").offset({
							"top" : l.top,
							"left" : l.left 
						});
						$("#nVal").addClass("border");
						TweenMax.to("#nVal", 1.5, {top : "30px", left : "-2px", onComplete:function() {
							$("#nVal").removeClass("border");
							$("#nVal").removeAttr("style");
							$(".introjs-nextbutton").show();
						}});
					});
				});
			});
			break;
			
		case "callSortingMethod":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "callSortingMethod. Here arr means the given array and n means the length of the array. "
				typing(".introjs-tooltiptext", text, function() {
					charAtEnd("arrVal1");
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "sortingMethod":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "In this method we will going to sort the elements. "
				typing(".introjs-tooltiptext", text, function() {
					charAtEnd("arrVal1");
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		}
	});

	introjs.setOption('showStepNumbers', false);
	introjs.setOption('exitOnOverlayClick', false);
	introjs.setOption('exitOnEsc', false);
	introjs.setOption('keyboardNavigation', false);
	introjs.start();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();
}

function animationTempCup() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	$(".user-btn").remove();
	$(".introjs-tooltiptext ul").append("<li></li>");
	$("#dclrTmp").addClass("background-color-yellow");
	var text = "Declare <b class ='ct-code-b-yellow'>temp</b> variable. ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$("#tmpCupDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			animationFirstFor();
		});
	});
}

function animationFirstFor() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "declare a int variable <b class ='ct-code-b-yellow'>pos</b> and initialize to "
	+ " <span id='tooltipPosVal'><b class ='ct-code-b-yellow'>1</b></span>";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$("#posIntlzn").addClass("background-color-yellow");
		$("#posCupDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			var l = $("#tooltipPosVal").offset();
			$("#posVal").removeClass("opacity00").offset({
				"top" : l.top,
				"left" : l.left
			});
			$("#animationDiv").css("z-index" , "10000005 !important;");
			$("#posCup").effect( "highlight",{color: '#ffff33'}, 1500, function() {
				$("#animationDiv").css("z-index", "10000005").removeClass("introjs-showElement");
				TweenMax.to("#posVal", 1, {top : "30px", left : "-2px", onComplete:function() {
					$("#animationDiv").addClass("introjs-showElement");
					$("#posVal").removeClass("border");
					$("#posVal").removeAttr("style");
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationPosCondition()">Next &#8594;</a>');
				}});
			});
		});
	});
}
	
 function animationPosCondition() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	$(".user-btn").remove();
	introjs.refresh();
	$(".introjs-tooltiptext ul").empty();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#posCndtn").addClass("background-color-yellow");
	$(".introjs-tooltiptext ul").append("<li></li>");
		 var text = "checking the condition i.e. ";
		 typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
			 $(".introjs-tooltiptext ul li:last-child").append("<div id='tooltipCndtn' class=''>"
					 + "<div id='tooltipPos' class='display-inline-block ct-code-b-yellow'>pos</div> "
					 + "<div class='display-inline-block ct-code-b-yellow'> < </div> "
					 + "<div id='tooltipN' class='display-inline-block ct-code-b-yellow'>n</div></div>"
					 + "<div id='cndtnExp1'></div>");
			 var l1 = $("#tooltipCndtn").offset();
			 var l2 = $("#posCndtn").offset();
			 var topLength = l2.top - l1.top;
			 var leftLength = l2.left - l1.left;
			 TweenMax.from("#tooltipCndtn", 1, {top : topLength, left : leftLength, onComplete:function() {
				 TweenMax.to("#tooltipPos", 0.5, {rotationX : -90, onComplete:function() {
					 $("#tooltipPos").text($("#posVal").text());
					 TweenMax.to("#tooltipPos", 0.5, {rotationX : 0, onComplete:function() {
						 $("#posCup").effect( "highlight",{color: '#ffff33'}, 1000, function() {
							 TweenMax.to("#tooltipN", 0.5, {rotationX : -90, onComplete:function() {
								 $("#tooltipN").text($("#nVal").text());
								 TweenMax.to("#tooltipN", 0.5, {rotationX : 0, onComplete:function() {
									 $("#nCup").effect( "highlight",{color: '#ffff33'}, 1000, function() {
									 	 var text;
										 if (parseInt($("#posVal").text()) < parseInt($("#nVal").text())) {
											 text = "is evaluates to true.";
											 } else {
												 text = "is evaluates to false.";
											 }
										 typing($("#cndtnExp1"), text, function() {
											 if (parseInt($("#posVal").text()) < parseInt($("#nVal").text())) {
												 animationTempInitialization();
											 } else {
												 
											 }
										 });
									 });
								 }});
							 }});
						 });
					 }});
				 }});
			 }});
		 });
	 }
	
function animationTempInitialization() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#tmpInitialization").addClass("background-color-yellow");
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Initialization the temp variable with ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$("#posCup").effect( "highlight",{color: '#ffff33'}, 1000, function() {
			$(".introjs-tooltiptext ul li:last-child").append("<div id='tooltipTmp' class='display-inline-block  ct-code-b-yellow'>"
					+ "<div id='tooltipTmpIntlzn' class='display-inline-block'>temp</div> "
					+ "<div class='display-inline-block ct-code-b-yellow'> = </div> "
					+ "<div id='tooltipArrPos' class='display-inline-block'>"
					+ "arr[<div id='tooltipInPos' class='display-inline-block'>pos</div>]</div></div>");
			var l1 = $("#tooltipTmp").offset();
			var l2 = $("#tmpInitialization").offset();
			var topLength = l2.top - l1.top;
			var leftLength = l2.left - l1.left;
			TweenMax.from("#tooltipTmp", 1, {top : topLength, left : leftLength, onComplete:function() {
				TweenMax.to("#tooltipInPos", 0.5, {rotationX : -90, onComplete:function() {
					$("#tooltipInPos").text($("#posVal").text());
					TweenMax.to("#tooltipInPos", 0.5, {rotationX : 0, onComplete:function() {
						$("#index" + $("#tooltipInPos").text()).effect("highlight", {color: '#ffff33'}, 1000, function() {
							$("#tabVal" + $("#tooltipInPos").text()).parent().effect("highlight", {color: '#ffff33'}, 1000, function() {
								TweenMax.to("#tooltipArrPos", 0.5, {rotationX : -90, onComplete:function() {
									$("#tooltipArrPos").text(parseInt($("#tabVal" + $("#tooltipInPos").text()).text()));
									TweenMax.to("#tooltipArrPos", 0.5, {rotationX : 0, onComplete:function() {
										swapVals("#tabVal" + $("#posVal").text(), "#tmpVal", function() {
											$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationJInitialization()">Next &#8594;</a>');
										});
									}});
								}});
							});
						});
					}});
				}});
			}});
		});
	});
}

function animationJInitialization() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	$(".user-btn").remove();
	introjs.refresh();
	$(".introjs-tooltiptext ul").empty();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#jInitialization").addClass("background-color-yellow");
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Initializing j with pos ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$(".introjs-tooltiptext ul li:last-child").append("<div id='tooltipJPos' class='display-inline-block  ct-code-b-yellow'>" 
				+ "<div id='tooltipJIntlzn' class='display-inline-block'>j</div> " 
				+ "<div class='display-inline-block ct-code-b-yellow'> = </div> " 
				+ "<div id='tooltipToPos' class='display-inline-block'>pos</div></div></div>");
		var l1 = $("#tooltipJPos").offset();
		var l2 = $("#jInitialization").offset();
		var topLength = l2.top - l1.top;
		var leftLength = l2.left - l1.left;
		TweenMax.from("#tooltipJPos", 1, {top : topLength, left : leftLength, onComplete:function() {
			TweenMax.to("#tooltipToPos", 0.5, {rotationX : -90, onComplete:function() {
				$("#tooltipToPos").text($("#posVal").text());
				$("#posCup").effect( "highlight",{color: '#ffff33'}, 2000);
				TweenMax.to("#tooltipToPos", 0.5, {rotationX : 0, onComplete:function() {
					$("#jVal").addClass("opacity00");
					$("#jCupDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animated zoomIn");
						var l = $("#tooltipToPos").offset();
						$("#jVal").text($("#posVal").text()).removeClass("opacity00").offset({
							"top" : l.top,
							"left" : l.left
							});
						$("#jVal").addClass("border");
						$("#animationDiv").css("z-index", "10000005").removeClass("introjs-showElement");
						TweenMax.to("#jVal", 1, {top : "30px", left : "0px", onComplete:function() {
							$("#animationDiv").addClass("introjs-showElement");
							$("#jVal").removeAttr("style");
							$("#jVal").removeClass("border");
							animationJCondition();
						}});
					});
				}});
			}});
		}});
	});
}

function animationJCondition() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#jCondition").addClass("background-color-yellow");
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Check the condition. ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$(".introjs-tooltiptext ul li:last-child").append("<div id='tooltipJCnd' class='display-inline-block  ct-code-b-yellow'>"
				+ "<div id='tooltipJValue' class='display-inline-block'>j</div> "
				+ "<div class='display-inline-block ct-code-b-yellow'> > </div> " 
				+ "<div id='' class='display-inline-block'>0</div></div>"
				+ "<div id='cndtnExp2'></div>");
		var l1 = $("#tooltipJCnd").offset();
		var l2 = $("#jCondition").offset();
		var topLength = l2.top - l1.top;
		var leftLength = l2.left - l1.left;
		TweenMax.from("#tooltipJCnd", 1, {top : topLength, left : leftLength, onComplete:function() {
			TweenMax.to("#tooltipJValue", 0.5, {rotationX : -90, onComplete:function() {
				$("#tooltipJValue").text($("#jVal").text());
				TweenMax.to("#tooltipJValue", 0.5, {rotationX : 0, onComplete:function() {
					$("#jCup").effect( "highlight",{color: '#ffff33'}, 2000);
					$("#jVal").removeAttr("style");
					var text;
					if (parseInt($("#jVal").text()) > 0) {
						text = "is evaluates to true.";
						} else {
							text = "is evaluates to false.";
						}
					typing($("#cndtnExp2"), text, function() {
						if (parseInt($("#jVal").text()) > 0) {
							animationIfCondition();
						} else {
							animationPosIncmnt();
						}
					});
				}});
			}});
		}});
	});
}

function animationIfCondition() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#ifArrJ1").addClass("background-color-yellow");
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Check the if-condition. ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$(".introjs-tooltiptext ul li:last-child").append("<div id='tooltipIfCndtn' class='display-inline-block  ct-code-b-yellow'>"
				+ "<div id='tooltipArrTotal' class='display-inline-block'>arr["
				+ "<div id='tooltipArrJ1' class='display-inline-block'>"
				+ "<div id='tooltipArrJ' class='display-inline-block'>j</div> - 1</div>]</div> " 
				+ "<div class='display-inline-block ct-code-b-yellow'> > </div> " 
				+ "<div id='tooltipToTemp' class='display-inline-block'>temp</div></div></div>"
				+ "<div id='cndtnExp3'></div>");
		var l1 = $("#tooltipIfCndtn").offset();
		var l2 = $("#ifArrJ1").offset();
		var topLength = l2.top - l1.top;
		var leftLength = l2.left - l1.left;
		TweenMax.from("#tooltipIfCndtn", 1, {top : topLength, left : leftLength, onComplete:function() {
			TweenMax.to("#tooltipArrJ", 0.5, {rotationX : -90, onComplete:function() {
				$("#tooltipArrJ").text($("#jVal").text());
				TweenMax.to("#tooltipArrJ", 0.5, {rotationX : 0, onComplete:function() {
					TweenMax.to("#tooltipArrJ1", 0.5, {rotationX : -90, onComplete:function() {
						$("#tooltipArrJ1").text(parseInt($("#jVal").text()) - 1);
						TweenMax.to("#tooltipArrJ1", 0.5, {rotationX : 0, onComplete:function() {
							$("#index" + $("#tooltipArrJ1").text()).effect("highlight", {color: '#ffff33'}, 1000,  function() {
								$("#tabVal" + $("#tooltipArrJ1").text()).parent().effect("highlight", {color: '#ffff33'}, 1000, function() {
									TweenMax.to("#tooltipArrTotal", 0.5, {rotationX : -90, onComplete:function() {
										$("#tooltipArrTotal").text(parseInt($("#tabVal" + $("#tooltipArrJ1").text()).text()));
										TweenMax.to("#tooltipArrTotal", 0.5, {rotationX : 0, onComplete:function() {
											TweenMax.to("#tooltipToTemp", 0.5, {rotationX : -90, onComplete:function() {
												$("#tooltipToTemp").text(parseInt($("#tmpVal").text()));
												TweenMax.to("#tooltipToTemp", 0.5, {rotationX : 0, onComplete:function() {
													$("#tmpCup").effect( "highlight",{color: '#ffff33'}, 1500);
													var text;
													if (parseInt($("#tooltipArrTotal").text()) > (parseInt($("#tmpVal").text()))) {
														text = "is evaluates to true.";
													} else {
														text = "is evaluates to false.";
													}
													typing($("#cndtnExp3"), text, function() {
														if (parseInt($("#tooltipArrTotal").text()) > (parseInt($("#tmpVal").text()))) {
															animationArrJIntlzn();
														} else {
															animationJDcrmnt();
														}
													});
												}});
											}});
										}});
									}});
								});
							});
						}});
					}});
				}});
			}});
		}});
	});
}

function animationArrJIntlzn() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#arrJIntlzn").addClass("background-color-yellow");
	$(".introjs-nextbutton").hide();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Initialize arr[ j ] ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$(".introjs-tooltiptext ul li:last-child").append("<div id='tooltipArrInlz' class='display-inline-block  ct-code-b-yellow'>"
				+ " <div id='tooltipArrJFlip' class='display-inline-block  ct-code-b-yellow'>arr["
				+ "<div id='tooltipJFlip' class='display-inline-block  ct-code-b-yellow'>j</div>]</div>"
				+ " = "
				+ "<div id='tooltipRightArrFlip' class='display-inline-block  ct-code-b-yellow'>arr["
				+ "<div id='tooltipRightJ1Flip' class='display-inline-block  ct-code-b-yellow'>"                                                                                    
				+ "<div id='tooltipRightJFlip' class='display-inline-block  ct-code-b-yellow'>j</div> - 1</div>]</div></div></div>"
				+ "<div id='cndtnExp4'></div>");
		var l1 = $("#tooltipArrInlz").offset();
		var l2 = $("#arrJIntlzn").offset();
		var topLength = l2.top - l1.top;
		var leftLength = l2.left - l1.left;
		TweenMax.from("#tooltipArrInlz", 1, {top : topLength, left : leftLength, onComplete:function() {
			$("#jCup").effect( "highlight",{color: '#ffff33'}, 1000, function() {
				TweenMax.to("#tooltipJFlip", 0.5, {rotationX : -90, onComplete:function() {
					$("#tooltipJFlip").text($("#jVal").text());
					TweenMax.to("#tooltipJFlip", 0.5, {rotationX : 0, onComplete:function() {
						$("#index" + $("#tooltipJFlip").text()).effect("highlight", {color: '#ffff33'}, 1000,  function() {
							$("#tabVal" + $("#tooltipJFlip").text()).parent().effect("highlight", {color: '#ffff33'}, 1000, function() {
								TweenMax.to("#tooltipRightJFlip", 0.5, {rotationX : -90, onComplete:function() {
									$("#tooltipRightJFlip").text($("#jVal").text());
									TweenMax.to("#tooltipRightJFlip", 0.5, {rotationX : 0, onComplete:function() {
										$("#tooltipRightJFlip").text($("#jVal").text());
										TweenMax.to("#tooltipRightJ1Flip", 0.5, {rotationX : -90, onComplete:function() {
											$("#tooltipRightJ1Flip").text(parseInt($("#jVal").text()) - 1);
											TweenMax.to("#tooltipRightJ1Flip", 0.5, {rotationX : 0, onComplete:function() {
												$("#index" + $("#tooltipRightJ1Flip").text()).effect("highlight", {color: '#ffff33'}, 1000,  function() {
													$("#tabVal" + $("#tooltipRightJ1Flip").text()).parent().effect("highlight", {color: '#ffff33'}, 1000, function() {
														TweenMax.to("#tooltipRightArrFlip", 0.5, {rotationX : -90, onComplete:function() {
															$("#tooltipRightArrFlip").text(parseInt($("#tabVal" + $("#tooltipRightJ1Flip").text()).text()));
															TweenMax.to("#tooltipRightArrFlip", 0.5, {rotationX : 0, onComplete:function() {
																swapVals1("#tabVal" + (parseInt($("#jVal").text()) - 1) , "#tabVal" +  $("#jVal").text(), function() {
																	$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationArrJ1Intlzn()">Next &#8594;</a>');
																});
															}});
														}});
													});
												});
											}});
										}});
									}});
								}});
							});
						});
					}});
				}});
			});
		}});
	});
}
	
function animationArrJ1Intlzn() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	$(".user-btn").remove();
	$(".introjs-tooltiptext ul").empty();
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#arrJ1Intlzn").addClass("background-color-yellow");
	$(".introjs-nextbutton").hide();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Initialize arr[j - 1] ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$(".introjs-tooltiptext ul li:last-child").append("<div id='tooltipLastArrInlz' class='display-inline-block  ct-code-b-yellow'>"
				+ " <div id='tooltipLeftArrFlip' class='display-inline-block  ct-code-b-yellow'>arr["
				+ "<div id='tooltipLeftJ1Flip' class='display-inline-block  ct-code-b-yellow'>"
				+ "<div id='tooltipLeftJFlip' class='display-inline-block  ct-code-b-yellow'>j</div> - 1</div>]</div>"
				+ " = "
				+ "<div id='tooltipRightTemp' class='display-inline-block  ct-code-b-yellow'> temp </div>"
				+ "</div>"
				+ " <div id='cndtnExp5'></div>");
		var l1 = $("#tooltipLastArrInlz").offset();
		var l2 = $("#arrJ1Intlzn").offset();
		var topLength = l2.top - l1.top;
		var leftLength = l2.left - l1.left;
		TweenMax.from("#tooltipLastArrInlz", 1, {top : topLength, left : leftLength, onComplete:function() {
			TweenMax.to("#tooltipLeftJFlip", 0.5, {rotationX : -90, onComplete:function() {
				$("#tooltipLeftJFlip").text($("#jVal").text());
				TweenMax.to("#tooltipLeftJFlip", 0.5, {rotationX : 0, onComplete:function() {
					TweenMax.to("#tooltipLeftJ1Flip", 0.5, {rotationX : -90, onComplete:function() {
						$("#tooltipLeftJ1Flip").text(parseInt($("#jVal").text()) - 1);
						TweenMax.to("#tooltipLeftJ1Flip", 0.5, {rotationX : 0, onComplete:function() {
							$("#index" + $("#tooltipLeftJ1Flip").text()).effect("highlight", {color: '#ffff33'}, 1000);
							$("#tabVal" + $("#tooltipLeftJ1Flip").text()).parent().effect("highlight", {color: '#ffff33'}, 1000, function() {
								TweenMax.to("#tooltipRightTemp", 0.5, {rotationX : -90, onComplete:function() {
									$("#tooltipRightTemp").text(parseInt($("#tmpVal").text()));
									TweenMax.to("#tooltipRightTemp", 0.5, {rotationX : 0, onComplete:function() {
										$("#tmpCup").effect("highlight", {color: '#ffff33'}, 1000,  function() {
											swapVals1("#tmpVal", "#tabVal" + $("#tooltipLeftJ1Flip").text(), function() {
												animationJDcrmnt();
											});
										});
									}});
								}});
							});
						}});
					}});
				}});
			}});
		}});
	});
}

function animationJDcrmnt() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#jDcrmnt1").addClass("background-color-yellow");
	$(".introjs-nextbutton").hide();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Decrement j value  ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$(".introjs-tooltiptext ul li:last-child").append(" <div id='tooltipJDcrmnt' class='display-inline-block  ct-code-b-yellow'> j-- </div>");
		var l1 = $("#tooltipJDcrmnt").offset();
		var l2 = $("#jDcrmnt1").offset();
		var topLength = l2.top - l1.top;
		var leftLength = l2.left - l1.left;
		TweenMax.from("#tooltipJDcrmnt", 1, {top : topLength, left : leftLength, onComplete:function() {
			TweenMax.to("#tooltipJDcrmnt", 0.5, {rotationX : -90, onComplete:function() {
				$("#tooltipJDcrmnt").text($("#jVal").text() - 1);
				TweenMax.to("#tooltipJDcrmnt", 0.5, {rotationX : 0, onComplete:function() {
					$("#jCup").effect("highlight", {color: '#ffff33'}, 1000,  function() {
						TweenMax.to("#jVal", 0.5, {rotationX : -90, onComplete:function() {
							$("#jVal").text($("#jVal").text() - 1);
							TweenMax.to("#jVal", 1, {rotationX : 0, onComplete:function() {
								animationJCondition();
							}});
						}});
					});
				}});
			}});
		}});
	});
}

function animationPosIncmnt() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#posIncmnt1").addClass("background-color-yellow");
	$(".introjs-nextbutton").hide();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "Increment pos value  ";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$(".introjs-tooltiptext ul li:last-child").append(" <div id='tooltipPosIncmnt' class='display-inline-block  ct-code-b-yellow'> pos++ </div>");
		var l1 = $("#tooltipPosIncmnt").offset();
		var l2 = $("#posIncmnt1").offset();
		var topLength = l2.top - l1.top;
		var leftLength = l2.left - l1.left;
		TweenMax.from("#tooltipPosIncmnt", 1, {top : topLength, left : leftLength, onComplete:function() {
			TweenMax.to("#tooltipPosIncmnt", 0.5, {rotationX : -90, onComplete:function() {
				$("#tooltipPosIncmnt").text(parseInt($("#posVal").text()) + 1);
				TweenMax.to("#tooltipPosIncmnt", 0.5, {rotationX : 0, onComplete:function() {
					$("#posCup").effect("highlight", {color: '#ffff33'}, 1000,  function() {
						TweenMax.to("#posVal", 0.5, {rotationX : -90, onComplete:function() {
							$("#posVal").text(parseInt($("#posVal").text()) + 1);
							TweenMax.to("#posVal", 1, {rotationX : 0, onComplete:function() {
								$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationPosCondition()">Next &#8594;</a>');
							}});
						}});
					});
				}});
			}});
		}});
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

function swapVals(fromId, toId, callBackFunction) {
	$("body").append("<span id='innerCupVal'>" + $(toId).text() + "</span>");
	
	var l1 = $(toId).offset();
	$("#innerCupVal").offset({
		"top" : l1.top,
		"left" : l1.left
	});
	
	var l = $(fromId).offset();
	$(toId).text($(fromId).text()).offset({
		"top" : l.top,
		"left" : l.left
	}).removeClass("opacity00");
	//$("#innerCupVal").removeClass("border");
	if ($("#innerCupVal").text().trim() === "") {
		TweenMax.to(toId, 1, {top : "30px", left : "-2px", onComplete:function() {
			$(toId).css("color", "#0000ff");
			$("#innerCupVal").remove();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	} else {
		TweenMax.to(toId, 1, {top : "30px", left : "-2px"});
		TweenMax.to("#innerCupVal", 0.5, {opacity:0, delay: 0.5, onComplete: function() {
			$("#innerCupVal").remove();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}
}

function swapVals1(fromId, toId, callBackFunction) {
	$("body").append("<span id='innerCupVal'>" + $(toId).text() + "</span>");
	var l1 = $(toId).offset();
	$("#innerCupVal").offset({
		"top" : l1.top,
		"left" : l1.left
	});
	
	var l = $(fromId).offset();
	$(toId).text($(fromId).text()).offset({
		"top" : l.top,
		"left" : l.left
	}).css("color", "black").removeClass("opacity00");
	
	if ($("#innerCupVal").text().trim() === "") {
		TweenMax.to(toId, 1, {top : "0", left : "0", onComplete:function() {
			$(toId).css("color", "#0000ff");
			$("#innerCupVal").remove();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	} else {
		TweenMax.to(toId, 1, {top : "0", left : "0"});
		TweenMax.to("#innerCupVal", 0.5, {opacity:0, delay: 0.5, onComplete: function() {
			$("#innerCupVal").remove();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}
}
</script>

</head>
<body>
<div class='text-center margin-top-14'>
	<h4 class='label ct-demo-heading' id='demoTitle'>Insertion Sort</h4>
</div>
	<div class='col-xs-12 margin-top-14 padding0'>
		<div class='col-xs-6'>
			<pre class="creampretab4" id='javaCode'>public class insertionSortDemo {
	public static void main(String[] args) {
		<span id="arrElements">int[] arr = { <span contenteditable='true' maxlength='1' id='arrVal1'>7</span>, <span contenteditable='true' maxlength='1' id='arrVal2'>2</span>, <span contenteditable='true' maxlength='1' id='arrVal3'>9</span>, <span contenteditable='true' maxlength='1' id='arrVal4'>3</span>, <span contenteditable='true' maxlength='1' id='arrVal5'>1</span>, <span contenteditable='true' maxlength='1' id='arrVal6'>8</span>, <span contenteditable='true' maxlength='1' id='arrVal7'>6</span>, <span contenteditable='true' maxlength='1' id='arrVal8'>4</span> };</span>
		<span id="arrLength">int n = arr.length;</span>
		insertionSortDemo m = new insertionSortDemo();
		System.out.println("Before Sorting the elements are ");
		<span>m.print(arr, n);</span>
		<span id="callSortingMethod">m.insertionsorting(arr, n);</span>
		System.out.println("After Sorting the elements are ");
		m.print(arr, n);
	}
	
	<span id="sortingMethod">void insertionsorting(int[] arr, int n) {
		<span id="tmpDclr">int temp;</span>
		<span id="firstForLoop">for (<span id='posDclr'>int pos = 1;</span> <span id='firstForCndtn'>pos < n;</span> <span id='posIncrmt'>pos++</span>) {
			<span id="initializeToTmp">temp = arr[pos];</span>
			<span id="secondForLoop">for (<span id='jDclr'>int j = pos;</span><span id='secondForCndtn'> j > 0;</span> <span id="jDcrmnt">j--</span>) {
				<span id="ifCondition">if (<span id="cndtn">arr[j - 1] > temp</span>) {
					<span id="initializeArrJ"><span id="totalRightArr">arr[j] = <span id="valOfArrJ">arr[j - 1];</span></span></span>
					<span id="initializeArrJ1">arr[j - 1] = temp;</span>
				}</span>
			}</span>
			System.out.println("After completion of pass the elements are");
			print(arr, n);
		}</span>
	}</span>
	
	void print(int[] arr, int n) {
		int i;
		for (i = 0; i < n; i++) {
			System.out.print("  " + arr[i]);
		}
		System.out.println();
	}
}</pre>
		</div>
		<div class='col-xs-6'>
			<div id='animationDiv'>
			<table id="arrTable" class="col-xs-offset-1 col-xs-10 text-center margin-top-14 opacity00" align="center">
					<tbody>
						<tr>
							<td>0</td>
							<td>1</td>
							<td>2</td>
							<td>3</td>
							<td>4</td>
							<td>5</td>
							<td>6</td>
							<td>7</td>
						</tr>
						<tr>
							<td class="table-border"><span>7</span></td>
							<td class="table-border"><span>2</span></td>
							<td class="table-border"><span>9</span></td>
							<td class="table-border"><span>3</span></td>
							<td class="table-border"><span>1</span></td>
							<td class="table-border"><span>8</span></td>
							<td class="table-border"><span>6</span></td>
							<td class="table-border"><span>4</span></td>
						</tr>
					</tbody>
				</table>
				<table id="animationTable" class="col-xs-offset-1 col-xs-10 text-center margin-top-20 opacity00" align="center">
					<tbody>
						<tr>
							<td id='index0'>0</td>
							<td id='index1'>1</td>
							<td id='index2'>2</td>
							<td id='index3'>3</td>
							<td id='index4'>4</td>
							<td id='index5'>5</td>
							<td id='index6'>6</td>
							<td id='index7'>7</td>
						</tr>
						<tr>
							<td class="table-border"><span id="tabVal0">7</span></td>
							<td class="table-border"><span id="tabVal1">2</span></td>
							<td class="table-border"><span id="tabVal2">9</span></td>
							<td class="table-border"><span id="tabVal3">3</span></td>
							<td class="table-border"><span id="tabVal4">1</span></td>
							<td class="table-border"><span id="tabVal5">8</span></td>
							<td class="table-border"><span id="tabVal6">6</span></td>
							<td class="table-border"><span id="tabVal7">4</span></td>
						</tr>
					</tbody>
				</table>

				<div id='cupsDiv' class='col-xs-12 text-center'>
					<div id='nCupDiv' class='col-xs-3 opacity00'>
						<div><span id='nVal' class='cup-val border opacity00'>8</span></div>
						<i class='fa fa-coffee fa-3x cup-color' id='nCup'></i>
						<div class='font-weight-bold'>n</div>
					</div>
					
					<div id='tmpCupDiv' class='col-xs-3 opacity00'>
						<div><span id='tmpVal' class='cup-val opacity00'>&nbsp;</span></div>
						<i class='fa fa-coffee fa-3x cup-color' id='tmpCup'></i>
						<div class='font-weight-bold'>temp</div>
					</div>
					
					<div id='posCupDiv' class='col-xs-3 opacity00'>
						<div><span id='posVal' class='cup-val border opacity00'>1</span></div>
						<i class='fa fa-coffee fa-3x cup-color' id='posCup'></i>
						<div class='font-weight-bold'>pos</div>
					</div>
					
					<div id='jCupDiv' class='col-xs-3 opacity00'>
						<div><span id='jVal' class='cup-val border opacity00'>1</span></div>
						<i class='fa fa-coffee fa-3x cup-color' id='jCup'></i>
						<div class='font-weight-bold'>j</div>
					</div>
				</div>
				<div class="col-xs-12 margin-top-10">
				<pre class="creampretab4 col-xs-offset-2 col-xs-8 opacity00" id="rightCode">void insertionsorting(int[] arr, int n) {
	<span id="dclrTmp">int temp;</span>
	for (<span id="posIntlzn">int pos = 1;</span><span id="posCndtn"> pos < n;</span> <span id="posIncmnt1"> pos++ </span>) {
		<span id="tmpInitialization">temp = arr[pos];</span>
		for (<span id="jInitialization">j = pos;</span> <span id="jCondition">j > 0</span>; <span id="jDcrmnt1">j--</span>) {
			<span id="ifCnd">if (<span id="ifArrJ1">arr[j - 1] > temp</span>) {
				<span id="arrJIntlzn">arr[j] = arr[j - 1];</span>
				<span id="arrJ1Intlzn">arr[j - 1] = temp;</span>
			}</span>
		}
	}
}</pre>
				</div>
			</div>
			<div id="outputDiv" class="opacity00">
				<div class="output-console-title-bar">
					<span class="title">Output</span>
				</div>
				<div class="output-console-body">
					<span id="output"></span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>	