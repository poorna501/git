<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>large</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/animate.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js" type="text/javascript"></script>

<style>
.border, .table-border {
	border: 2px solid black;
}

.margin-top {
	margin-top: 35px;
}

.zIndex {
	position: relative;
	z-index: 10000001 !important;
}

.height {
	height: 550px;
}

th, td {
	text-align: center;
	width: 60px !important;
}

.margin {
	margin-left: auto;
	margin-right: auto;
}

.display-none {
	display: none;
}

table {
	table-layout: fixed;
	width: 50%;
}

/* .button {
	text-align: center;
}
 */
.error-msg {
	color: red;
	font-weight: bold;
}

#forJavaCode {
	margin-top: 40px;
}

#table1 {
	position: relative;
	table-layout: fixed;
}

.user-btn {
	background-color: green;
}

#javaCode {
	height: 675px;
}

.creampretab4 {
	-moz-tab-size: 4;
	background-color: lavender !important;
	font-size: 14px;
	font-style: inherit;
	overflow-y: auto;
	padding: 5px;
	white-space: pre;
}

pre {
	background-color: #ccc;
}

[contenteditable=true] {
	outline: none;
	font-family: monospace;
}

.errMsg {
	color: red;
	font-weight: bold;
}

.ui-effects-transfer {
	border: 1px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 10000000;
}

.col-xs-6 {
	width: 50%;
}

#outputDiv {
	margin-top: 20px;
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
	height: 80px;
	padding: 10px;
	font-size: 15px;
}

.cup-color {
	color: #e1e1e1;
}

.cup-val {
	color: red;
	font-weight: bold;
	position: relative;
	right: 3px;
	top: 30px;
}

.margin-top1 {
	margin-top: 120px;
}

.display-inline-block {
	display: inline-block;
}

.nValue {
	background-color: white;
	border: 1px solid black;
	border-radius: 50%;
	padding: 2px 4px 0;
	z-index: 10000001;
}

.margin-top25 {
	margin-top: 25px;
}

.color-pink {
	color: hotpink;
	font-weight: bold;
}

.color-white {
	color: white;
	font-weight: bold;
}

.color-green {
	background-color: green;
}

#cupsDiv .col-xs-2 {
	width: 20%;
}

#table2 span {
	position: relative;
}

.ct-code-b-red {
	color: #ff0000;
}

.index-color {
	background-color: yellow;
}

</style>
</head>
<body>
	<script type="text/javascript">
	var step = 0;
	var typingSpeed = 5;
	var itr = 7;
	var tl;
$(document).ready(function() {
	tl = new TimelineLite();
	$("[contenteditable=true]").on("click keydown keyup", function(e) {
		$(".errMsg").remove();
		if ($(this).text() == "") {
			$(this).addClass("empty");
			$(".introjs-tooltiptext").append("<div class='errMsg'>Empty value is n't valid</div>");
		} else {
			$(this).removeClass("empty");
		}
		intro.refresh();
		
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
			$(".introjs-tooltiptext").append("<div class='errMsg'>Max Length 2 digits only</div>");
			e.preventDefault();
		}
	});
	
	$("#restart").click(function() {
		location.reload();
	})
	
	intro = introJs();
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [{
			element : "#heading",
			intro : "", 
			position : "bottom"
		}, {
			element : "#arrElements",
			intro : "",
			position : "bottom"
		}, {
			element :"#mainAnimation",
			intro:"",
			position : "left"
		}, {
			element :"#length",
			intro:"",
			position : "right"
		}, {
			element :"#callMethod",
			intro:"",
			position : "top"
		}, {
			element :"#methodBody",
			intro:"",
			position : "top"
		}, {
			element: "#firstForLoop",
			intro:"",
			position : "top"
		}, {
			element: "#mainAnimation",
			intro:"",
			position : "left"
		}, {
			element: "#returnArr",
			intro:"",
			position : "right"
		}, {
			element: "#forEachLoop",
			intro:"",
			position : "right"
		}, {
			element: "#outputDiv",
			intro:"",
			tooltipClass: "hide"
		}, {
			element: "#restart",
			intro:"",
			position : "right"
		}
		]});
	intro.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "heading":
			$('.introjs-skipbutton').hide();
		    $('.introjs-prevbutton').hide();
		    $(".introjs-nextbutton").hide();
        	var text = "In this live demo you are going to learn how <b class ='ct-code-b-yellow'>Selection sort</b> works based on "
        	+"<b class ='ct-code-b-yellow'>Largest Element.</b>";
        	typing(".introjs-tooltiptext", text, function() {
        		$(".introjs-nextbutton").show();
        	});
        	break;
		case "length":
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "array length i.e. = <span id='tooltipNVal' class ='ct-code-b-yellow'>8</span>.";
			 	typing(".introjs-tooltiptext", text, function() {
			 		$("#nCupDiv").removeClass("display-none").addClass("animated zoomIn").one("animationend", function() {
						var l = $("#tooltipNVal").offset();
						$("#nVal").removeClass("opacity00").offset({
							"top" : l.top,
							"left" : l.left
						});
						$("#nVal").addClass("nValue"); 
							 TweenMax.to("#nVal", 1, {opacity:1,top : "30px", left : "-2px", onComplete:function() {
								$("#nVal").removeClass("nValue");
								$("#nVal").removeAttr("style");
								$(".introjs-nextbutton").show();
							}}); 
					});
	        	});
			 });
			 break;
		case "arrElements":
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
			 	var text = "You can edit any value from this array.";
			 	typing(".introjs-tooltiptext", text, function() { 
			 		charAtEnd("arrVal1");
	        		$(".introjs-nextbutton").show();
	        	});
			 });
			 break;
		case "methodBody":
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<b class ='ct-code-b-yellow'>doSelectionSort</b> method body";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case "firstForLoop":
			intro.refresh();
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text ='<b>For loop</b> code';
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			
			});
			break;
		case "callMethod":
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "Call the <b class ='ct-code-b-yellow'>doSelectionSort</b> method";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case "mainAnimation":
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (intro._currentStep == 2) {
					
					$("#mainAnimation").css({"z-index" : "10000001", "background-color": "white", "position" : "relative"});
					$.each($("#arrElements span"), function(index) {
						$("#table1 tr:nth-child(2) th div").eq(index).text($(this).text())
					});
					$('.introjs-tooltiptext').show();
					var text = "New array created.";
			 		typing(".introjs-tooltiptext", text, function() {
			 			$("#arrElements").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
			 				$(this).removeClass("zIndex");
			 				$('#arrElements').effect( "transfer", { to: $('#table1'), className:"ui-effects-transfer" }, 1500, function() {
								$('#table1').removeClass("opacity00");
								$('.value').attr('contenteditable','false');
								$(".introjs-nextbutton").show();
							});
			 			});
	        		});
				} else if (intro._currentStep == 7) {
					$('.introjs-tooltip').css("min-width","350px");
						$(this).removeClass("zIndex");
						$("#firstForLoop").addClass("zIndex").effect("highlight", {color: 'white'}, function() {
						$('#firstForLoop').effect( "transfer", { to: $("#forJavaCode"), className: "ui-effects-transfer" }, 1000, function() {
							$(this).removeClass("zIndex");
							$("#forJavaCode").removeClass("opacity00");
							$(".introjs-tooltip").removeClass("hide");
							$(".introjs-tooltiptext").append("<ul id='ulTag'><li></li></ul>");
							var text = "By using this method we will sort the elements.";
							typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
								$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstForExe()">Next →</a>');
							});
						});
						});
				}
			 });
			 break;
			 
		case "returnArr":
			$(".introjs-nextbutton").hide();
			$('.introjs-tooltip').css("min-width","200px");
			$('.introjs-helperLayer ').one('transitionend', function() {
			 	var text = "This method returns the sorted array...";
			 	typing(".introjs-tooltiptext", text, function() { 
	        		$(".introjs-nextbutton").show();
	        	});
			 });
			 break;
			 
			 
		case "forEachLoop":
			$(".introjs-nextbutton").hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
			 	var text = "This method return sorted array...";
			 	typing(".introjs-tooltiptext", text, function() { 
	        		$(".introjs-nextbutton").show();
	        	});
			 });
			 break;
			 
		case "outputDiv":
			$(".introjs-nextbutton").hide();
			$('.introjs-tooltiptext').hide();
			
			$("#table2 tr:last-child th span").each(function() {
				$("#output").append("<span>" + $(this).text() + "</span>&emsp;");
			});
			$('.introjs-helperLayer ').one('transitionend', function() {
				tl.to("#output", 1, {opacity : 1, onComplete:function() {
					intro.nextStep();	
				}});
			});
			 break;
			 
		case "restart":
			$(".introjs-nextbutton").hide();
			$('.introjs-tooltiptext').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#restart").removeClass("opacity00")
				$('.introjs-tooltiptext').show();
			 	var text = "click to restart";
			 	typing(".introjs-tooltiptext", text);
			 });
			 break;
		}
	});
	intro.start();
});


function firstForExe() {
	 $(".user-btn").remove();
	 $(".introjs-tooltiptext ul").append("<li></li>");
	 	
		
	 var text = "Declare a int varible<b class ='ct-code-b-yellow'> i </b> for index of an array and initialization as follows";
	typing(".introjs-tooltiptext ul li:last-child", text, function() {
		$(".introjs-tooltiptext #ulTag").append("<li><b class ='ct-code-b-yellow'><span id='iInitialization' class='opacity00'>"
												+ "int i = <Span id='iOfNFinal' class='display-inline-block'><span id='iOfN' class='display-inline-block'>n</span> - 1</span></span></b></li>");
		var pos1 =  $("#iDcrl").offset();
		$("#iInitialization").offset({"top": pos1.top, "left": pos1.left});
		$("#mainAnimation").css("z-index", "9999999");
		$("#iDcrl").effect("highlight", {color: 'yellow'}, 1000, function() {
			tl.to("#iInitialization", 1, {opacity: 1, top:0, left:0, onComplete: function() {
				$("#mainAnimation").css("z-index", "10000001");
				$("#iInitialization").removeClass("opacity00");
				flipEffect("#iOfN",8, function() {
					flipEffect("#iOfNFinal",itr, function() {
						$("#tmpCupDiv").removeClass("display-none").addClass("animated zoomIn").one("animationend", function() {
							$(this).removeClass("animated zoomIn");
							var l1 = $('#iOfNFinal').offset();
							$('#tmpVal').removeClass('opacity00').offset({"top":l1.top,"left":l1.left});
							$("#tmpVal").addClass("nValue");
							$("#mainAnimation").removeClass('introjs-showElement');
								TweenMax.to("#tmpVal", 1, {opacity:1,top : "30px", left : "-3px",onComplete:function() {
								$("#mainAnimation").addClass('introjs-showElement');
								$("#tmpVal").removeClass("nValue");
								iCndtnStep();
							}});  
						});
					});
				});
			}});
		});
	});	
}


var duplicateArr = true;

function iCndtnStep() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext #ulTag *").removeAttr("id");
	
	$(".introjs-tooltiptext #ulTag").append("<li><b id = 'forCondition"+itr+"' class='ct-code-b-yellow opacity00'>"
											+"<span class='ct-code-b-yellow display-inline-block' id='iVal"+itr+"'>i</span> >= 0</b></li>");
	var l1 = $("#iCond").offset();
	$("#forCondition" + itr).offset({"top": l1.top, "left": l1.left});
	$("#mainAnimation").css("z-index", "9999999");
	$("#iCond").effect("highlight", {color: 'yellow'}, 1000, function() {
		tl.to("#forCondition" + itr, 1, {opacity: 1, top:0, left:0, onComplete: function() {
			$("#mainAnimation").css("z-index", "10000001");
			$("#forCondition" + itr).removeClass("opacity00");
			flipEffect("#iVal" + itr, itr, function() {
				if (duplicateArr) {
					duplicateArr = !duplicateArr;
					selectionAnimation(function() {
						$('#indexVal'+itr).addClass('index-color');
						evaluteICndtnStep();
					});
				} else {
					$('#indexVal'+itr).addClass('index-color');
					evaluteICndtnStep();
				}
			});
		}});
	});
}

function evaluteICndtnStep() {
	
	 var text = "";
	if (parseInt($("#tmpVal").text()) >= 0) {
		text = "evaluates to  <span class='ct-code-b-yellow'>true</span>....."
	} else {
		text = "evaluates to  <span class='ct-code-b-red'>false</span>....."
	}
	$("#forCondition" + itr).append("&emsp;<span class='display-inline-block color-white'></span>");
	typing($("#forCondition" + itr + " > span:last-child"), text, function() {
		if (parseInt($("#tmpVal").text()) >= 0) {
			forloopAnimate();
		} else {
			$("#arr0").parent().effect("highlight", {color: 'yellow'}, 1000, function() {
				$(this).css("background-color", "yellow");
				$('#indexVal'+itr).removeClass('index-color');
				$(".introjs-nextbutton").show();
			});
		}
	});
}

function forloopAnimate() {
	$("#indexDeclrtn").effect("highlight", {color: 'yellow'}, 1000, function() {
		$(".introjs-tooltiptext #ulTag").append("<li class='opacity00' id = 'tooltipIndex"+itr+"'> "+
				"<span class='ct-code-b-yellow'>int index = <span id = 'iInIndex"+itr+"' class='display-inline-block'>i</span></span> </li>");
		var l2 = $("#indexDeclrtn").offset();
		$("#tooltipIndex" + itr).offset({"top": l2.top, "left": l2.left});
		$("#mainAnimation").css("z-index", "9999999");
		tl.to("#tooltipIndex" + itr, 1, {opacity: 1, top:0, left:0, onComplete: function() {
			$("#mainAnimation").css("z-index", "10000001");
			$("#tooltipIndex" + itr).removeClass("opacity00");
		}});
		tl.to("#iInIndex"+itr, 0.5, {rotationX : -90, onComplete:function() {
			$("#iInIndex" + itr).text($("#tmpVal").text());
		}});
		tl.to("#iInIndex" + itr, 0.5, {rotationX : 0, onComplete: function() {
			$('#posVal').addClass("opacity00");
			$("#posCupDiv").removeClass("display-none").addClass("animated zoomIn").one("animationend", function() {
				$(this).removeClass("animated zoomIn");
				var l2 = $('#iInIndex' + itr).offset();
				$('#posVal').offset({"top": l2.top,"left":l2.left});
				$("#mainAnimation").removeClass('introjs-showElement');
				$('#posVal').text($("#tmpVal").text()).addClass("nValue");
				$("#mainAnimation").css("z-index", "10000005");
				tl.to('#posVal', 1, {opacity:1, top:"30px",left:"-3px",onComplete: function() {
					$("#mainAnimation").addClass('introjs-showElement');
					$("#mainAnimation").css("z-index", "9999999");
					$('#posVal').removeClass("opacity00 nValue");
						$("#arr" + $("#posVal").text()).parent().effect("highlight", {color: 'yellow'}, 1000, function() {
						 	$("#arr" + $("#posVal").text()).parent().addClass("color-green")
							$("#jDcrl").effect("highlight", {color: 'yellow'}, 1000, function() {
							 $(".introjs-tooltiptext #ulTag").append("<li> <b class='ct-code-b-yellow'><span id='tooltipJDcrl"+itr+"' class='opacity00'> int j = "
																		+"<span id='iFlipJ"+itr+"' class='display-inline-block'> i</span></b></li>");
							var l3 = $("#jDcrl").offset();
							$("#tooltipJDcrl" + itr).offset({"top": l3.top, "left": l3.left});
							$("#mainAnimation").css("z-index", "10000005");
							tl.to("#tooltipJDcrl" + itr, 1, {opacity: 1, top:0, left:0, onComplete: function() {
								$("#mainAnimation").css("z-index", "9999999");
								$("#tooltipJDcrl" + itr).removeClass("opacity00");
								flipEffect("#iFlipJ" + itr, $("#tmpVal").text(), function() {
										var cupLen2 = $("#iFlipJ" + itr).offset();
										$("#jVal").offset({"top": cupLen2.top, "left": cupLen2.left}).text($("#iFlipJ" + itr).text());
										$("#mainAnimation").removeClass('introjs-showElement');
										$("#jVal").addClass("opacity00"); 
										$("#jCupDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
											$(this).removeClass("animated zoomIn");
											$("#jVal").addClass("nValue").removeClass("opacity00");
											$("#mainAnimation").css("z-index", "10000005");
											tl.to("#jVal", 1, {opacity: 1, top:"30px", left:"-3px", onComplete: function() {
												$("#mainAnimation").addClass('introjs-showElement');
												$("#mainAnimation").css("z-index", "9999999");
												$("#jVal").removeClass("nValue");
												jCndtnStep();
											}});
										});
								});
							}}); 
						}); 
					});
				}});
			});
		}});
	});
}

function jCndtnStep() {
	$(".introjs-tooltiptext #ulTag *").removeAttr("id");
	$(".introjs-tooltiptext #ulTag").append("<li><b id='tooltipJCndtn' class='ct-code-b-yellow opacity00'> "
			+ "<span class='display-inline-block' id='tooltipJ'>j</span> >=</span> 0 </b></li>");
	
	$("#jCond").effect("highlight", {color: 'yellow'}, 1000, function() {
		var l2 = $("#jCond").offset();
		$("#tooltipJCndtn").offset({"top": l2.top, "left": l2.left});
		$("#mainAnimation").css("z-index", "9999999");
		tl.to("#tooltipJCndtn", 1, {opacity: 1, top:0, left:0, onComplete: function() {
			$("#mainAnimation").css("z-index", "10000001");
			$("#tooltipJCndtn").removeClass("opacity00");
				flipEffect("#tooltipJ", $("#jVal").text(), function() {
					var text = "";
					if (parseInt($("#jVal").text()) >= 0) {
						text = "Evaluates to <span class='ct-code-b-yellow'>true</span>...."
					} else {
						text = "Evaluates to <span class='ct-code-b-red'>false</span>...."
					}
					$("#tooltipJCndtn").append("&emsp;<span class='display-inline-block  color-white'></span>");
					typing($("#tooltipJCndtn > span:last-child"), text, function() {
						if (parseInt($("#jVal").text()) >= 0) {
							ifCndtnStep();
						} else {
							$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="smallerValStep()">Next →</a>');
						}
					});
				});
			
		}});
	});
}

function ifCndtnStep() {
	$(".introjs-tooltiptext #ulTag *").removeAttr("id");
	
	 $(".introjs-tooltiptext #ulTag").append("<li>"
				+ "<b id='tooltipIfCndtn' class='ct-code-b-yellow opacity00'><span id='tooltipArrJ' class='display-inline-block'>arr[" 
				+ "<span id='tooltipArrJVal' class='display-inline-block'>j</span>]</span>" 
				+ " <span class='display-inline-block'>></span> " 
				+ "<span id='tooltipArrIdx' class='display-inline-block'>arr[" 
				+ "<span id='tooltipArrIdxVal' class='display-inline-block'>index</span>]</span>"
				+ "</b></li>");
	$("#ifCndtn").effect("highlight", {color: 'yellow'}, 1000, function() {
		var l2 = $("#ifCndtn").offset();
		$("#tooltipIfCndtn").offset({"top": l2.top, "left": l2.left});
		$("#mainAnimation").css("z-index", "9999999");
		tl.to("#tooltipIfCndtn", 1, {opacity: 1, top:0, left:0, onComplete: function() {
			$("#mainAnimation").css("z-index", "10000001");
			$("#tooltipIfCndtn").removeClass("opacity00");
			flipEffect("#tooltipArrIdxVal", $("#posVal").text(), function() {
				$("#arr" + $("#posVal").text()).parent().effect("highlight", {color: 'yellow'}, 1000, function() {
					flipEffect("#tooltipArrIdx", $("#arr" + $("#posVal").text()).text(), function() {
						flipEffect("#tooltipArrJVal", $("#jVal").text(), function() {
							$("#arr" + $("#jVal").text()).parent().effect("highlight", {color: 'yellow'}, 1000, function() {
								flipEffect("#tooltipArrJ", $("#arr" + $("#jVal").text()).text(), function() {
									
									var val1 = parseInt($("#arr" + $("#posVal").text()).text());
									var val2 = parseInt($("#arr" + $("#jVal").text()).text());
									
									var text = "";
									if (val2 > val1) {
										text = "Evaluates to <span class='ct-code-b-yellow'>true</span>...."
									} else {
										text = "Evaluates to <span class='ct-code-b-red'>false</span>...."
									}
									$("#tooltipIfCndtn").append("&emsp;<span class='display-inline-block color-white'></span>");
									typing($("#tooltipIfCndtn > span:last-child"), text, function() {
										if (val2 > val1) {
											$(".color-green").removeClass("color-green");
											$("#arr" + $("#jVal").text()).parent().addClass("color-green");
											smallestIndexStep();
										} else {
											jDecrementStep();
											
										}
									});
								});
							});
						});
					});
				});
			});
		}});
	});
}

function smallestIndexStep() {
	$(".introjs-tooltiptext #ulTag *").removeAttr("id");
	
	$(".introjs-tooltiptext #ulTag").append("<li><b class='ct-code-b-yellow opacity00' id='tooltipIndex'> "
		              + " index = <span id='tooltipJ' class='display-inline-block'>j</span></b></li>");
	$("#smallestIndex").effect("highlight", {color: 'yellow'}, 1000, function() {
		var l2 = $("#smallestIndex").offset();
		$("#mainAnimation").css("z-index", "9999999");
		$("#tooltipIndex").offset({"top": l2.top, "left": l2.left});
		tl.to("#tooltipIndex", 1, {opacity: 1, top:0, left:0, onComplete: function() {
			$("#mainAnimation").css("z-index", "10000001");
			$("#tooltipIndex").removeClass("opacity00");
			flipEffect("#tooltipJ", $("#jVal").text(), function() {
				 swapEffect("#tooltipJ", "#posVal", function() {
					jDecrementStep();
				}); 
			});
		}});
	}); 
}

function jDecrementStep() {
	$(".introjs-tooltiptext #ulTag *").removeAttr("id");
	
	$(".introjs-tooltiptext #ulTag").append("<li><b id='tooltipJIncrmt' class='ct-code-b-yellow'>"
                    						+"<span id='tooltipJ' class='display-inline-block'>j--</span></b></li>");                                         
	var l2 = $("#jIncre").offset();
	$("#tooltipJ").offset({"top": l2.top, "left": l2.left});
	$("#mainAnimation").css("z-index", "9999999");
	tl.to("#tooltipJ", 1, {opacity: 1, top:0, left:0, onComplete: function() {
		$("#tooltipJ").removeClass("opacity00");
		$("#mainAnimation").css("z-index", "10000001");
		$("#tooltipJIncrmt").removeClass("opacity00");
		flipEffect("#tooltipJ", parseInt($("#jVal").text()) - 1, function() {
			
			 swapEffect("#tooltipJ", "#jVal", function() {
				jCndtnStep();
			}); 
		})
	}});
}

function smallerValStep() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext #ulTag li").remove();
	

	$(".introjs-tooltiptext #ulTag").append("<li> <b id='tooltipLarger' class='ct-code-b-yellow'>int largerNumber = <span id='tooltipArr' class='display-inline-block'>"
											+"arr[<span id='tooltipArrIdx' class='display-inline-block'>index</span>]</span></b></li>");
	
	var l2 = $("#smallerNumDclr").offset();
	$("#tooltipLarger").offset({"top": l2.top, "left": l2.left});
	$("#mainAnimation").css("z-index", "9999999");
	tl.to("#tooltipLarger", 1, {opacity: 1, top:0, left:0, onComplete: function() {
		$("#mainAnimation").css("z-index", "10000001");
		flipEffect("#tooltipArrIdx", $("#posVal").text(), function() {
			$("#arr" + $("#posVal").text()).parent().effect("highlight", {color: 'yellow'}, 1000, function() {
				flipEffect("#tooltipArr", $("#arr" + $("#posVal").text()).text(), function() {
					
					if ($("#smallerNumCupDiv").hasClass("zoomIn")) {
						swapEffect("#tooltipArr", "#smallerVal", function() {
							copyBiggerToSmaller();
						});
					} else {
						$("#smallerNumCupDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							$("#smallerVal").removeClass("opacity00");
							var l = $("#tooltipArr").offset();
							$("#smallerVal").removeClass("opacity00").offset({"top" : l.top,"left" : l.left})
							.addClass("nValue").text($("#tooltipArr").text());
							tl.to("#smallerVal", 1, {opacity: 1, top:"30px", left:"-3px", onComplete: function() {
								$("#smallerVal").removeClass("nValue");
								copyBiggerToSmaller();
							}});
						});
					}
				});
			});
		});
	}});
}


function copyBiggerToSmaller() {
	$(".introjs-tooltiptext #ulTag *").removeAttr("id");
	
	 $(".introjs-tooltiptext #ulTag").append("<li><b class='ct-code-b-yellow opacity00' id='tooltipCopyArrItoArrIdx'>"
     										+"arr[<span id='tooltipIdx' class='display-inline-block'>index</span>] = "
             								+ "<span id='tooltipArr' class='display-inline-block'>arr[<span id='tooltipI' class='display-inline-block'>i</span>]<span></b></li>");

	$("#copyArrItoArrIdx").effect("highlight", {color: 'yellow'}, 1000, function() {
		var l2 = $("#copyArrItoArrIdx").offset();
		$("#mainAnimation").css("z-index", "9999999");
		$("#tooltipCopyArrItoArrIdx").offset({"top": l2.top, "left": l2.left});
		tl.to("#tooltipCopyArrItoArrIdx", 1, {opacity: 1, top:0, left:0, onComplete: function() {
			$("#mainAnimation").css("z-index", "10000001");
			$("#tooltipCopyArrItoArrIdx").removeClass("opacity00");
			flipEffect("#tooltipI", $("#tmpVal").text(), function() {
				flipEffect("#tooltipArr", $("#arr" + $("#tmpVal").text()).text(), function() {
					flipEffect("#tooltipIdx", $("#posVal").text(), function() {
						swapEffect("#tooltipArr", "#arr" + $("#posVal").text(), function() {
							copySmallerToBigger();
						});						
					});
				});
			});
		}});
	});
}

function copySmallerToBigger() {
	
	$(".introjs-tooltiptext #ulTag *").removeAttr("id");
	
	 $(".introjs-tooltiptext #ulTag").append("<li><b id='tooltipCopylargeValToArrI' class='ct-code-b-yellow opacity00'>"
             +"arr[<span id='tooltipI' class='display-inline-block'>i</span>] = <span id='tooltipBigNo' class='display-inline-block'>largerNumber</span>"
             +"</b></li>");


	$("#tooltipCopylargeValToArrI").effect("highlight", {color: 'yellow'}, 1000, function() {
		var l2 = $("#copySmallValToArrI").offset();
		$("#mainAnimation").css("z-index", "9999999");
		$("#tooltipCopylargeValToArrI").offset({"top": l2.top, "left": l2.left});
		tl.to("#tooltipCopylargeValToArrI", 1, {opacity: 1, top:0, left:0, onComplete: function() {
			$("#mainAnimation").css("z-index", "10000001");
			$("#tooltipCopylargeValToArrI").removeClass("opacity00");
			flipEffect("#tooltipBigNo", $("#smallerVal").text(), function() {
				flipEffect("#tooltipI", $("#tmpVal").text(), function() {
					swapEffect("#tooltipBigNo", "#arr" + $("#tmpVal").text(), function() {
						$(".color-green").removeClass("color-green");
						$("#arr" + $("#tmpVal").text()).parent().css("background-color", "yellow");
						$('#indexVal'+itr).removeClass('index-color');
						iDecrementStep();
					});
				});
			});
		}});
	});
}

function iDecrementStep() {
	itr--;
	$(".introjs-tooltiptext #ulTag *").removeAttr("id");
			
	$(".introjs-tooltiptext #ulTag").append("<li><b id='tooltipIIncrmt' class='ct-code-b-yellow opacity00'>"
        						            +"<span id='tooltipI' class='display-inline-block'>i--</span></b></li>");


	$("#iIncre").effect("highlight", {color: 'yellow'}, 1000, function() {
		var l2 = $("#iIncre").offset();
		$("#tooltipIIncrmt").offset({"top": l2.top, "left": l2.left});
		$("#mainAnimation").css("z-index", "9999999");
		tl.to("#tooltipIIncrmt", 1, {opacity: 1, top:0, left:0, onComplete: function() {
			$("#mainAnimation").css("z-index", "10000001");
			$("#tooltipIIncrmt").removeClass("opacity00");
			flipEffect("#tooltipI", parseInt($("#tmpVal").text()) - 1, function() {
				swapEffect("#tooltipI", "#tmpVal", function() {
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="iCndtnStep()">Next  →</a>');
				});
			})
		}});
	});
}


function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}

function swapEffect(selector1, selector2, callBackFunction) {
	$("#mainAnimation").css("z-index", "9999999");
	$(selector1).css("position", "relative").addClass("color-pink");
	$("body").append("<span id='innerDiv' class='zIndex ct-code-b-yellow'> " + $(selector1).html() +  " </span>");
	$("#innerDiv *").removeAttr("id");
	var l1 = $(selector1).offset();
	var l2 = $(selector2).offset();
	$("#innerDiv").offset({"top" : l1.top, "left" : l1.left});
	var topLength = l2.top - l1.top;
	var leftLength =l2.left - l1.left;
	
	TweenMax.to(selector1, 1, {top : topLength, left : leftLength});
	TweenMax.to(selector2, 0.5, {opacity:0, delay: 0.5, onComplete: function() {
		$(selector1).removeAttr("style").removeClass("color-pink");
		$(selector2).removeAttr("style").text($(selector1).text());
		
		$("#mainAnimation").css("z-index", "10000001");
		if (typeof callBackFunction === "function") {
			$("#innerDiv").remove();
			callBackFunction();
		}
	}});
	
}


function typing(selector, text, callbackFunction) {
	$(selector).typewriting(text, {
		"typing_interval": 10,
		"cursor_color": "white"
	}, function() {
		if(typeof callbackFunction === "function") {
			callbackFunction();
		}
	});
}
function selectionAnimation(callbackFunction) {
	$('.values').attr('contenteditable','false');
	for(var i = 0; i < 8; i++) {
		$("#arr" + i).text($("#index" + i).text());
	}
	var l1 = $('#table1').offset();
	$("#table2").offset({
			"top" : l1.top,
			"left" : l1.left
		});
	TweenMax.to("#table2", 1, {opacity:1, top : 0, left : 0,onComplete : function() {
		$("#table2").removeClass("opacity00");
		if(typeof callbackFunction === "function") {
			callbackFunction();
		}
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
	<div class="ct-box-main">
		<div class='text-center'>
			<h1 class='label ct-demo-heading' id="heading">Selection sort largest</h1>
		</div>
		<div class="margin-top">
			<div class="col-xs-6 height">
				<pre class="creampretab4" id='javaCode'>
public class selectionSort {
	public static void main(String a[]) {
		<span id="arrElements">int[] arr1 = { <span
						contenteditable='true' maxlength='1' id='arrVal1' class="value">17</span>, <span
						contenteditable='true' maxlength='1' id='arrVal2' class="value">12</span>, <span
						contenteditable='true' maxlength='1' id='arrVal3' class="value">19</span>, <span
						contenteditable='true' maxlength='1' id='arrVal4' class="value">13</span>, <span
						contenteditable='true' maxlength='1' id='arrVal5' class="value">21</span>, <span
						contenteditable='true' maxlength='1' id='arrVal6' class="value">81</span>, <span
						contenteditable='true' maxlength='1' id='arrVal7' class="value">68</span>, <span
						contenteditable='true' maxlength='1' id='arrVal8' class="value">44</span> };</span>
		<span id="length">int n = arr1.length;</span>
		<span id="callMethod">int[] arr2 = doSelectionSort(arr1);</span>
		
		<span id='forEachLoop'>for (int i : arr2) {
			System.out.print(i + " ");
		}</span>
	}

	
	<span id="methodBody">public static int[] doSelectionSort(int[] arr) {
		<span>int n = arr1.length;</span>
		<span id="firstForLoop">for (<span id="indexValue">int i = n - 1;</span><span
							id=condition1> i >= 0 </span>;<span id="increment1"> i--</span>) {
			<span id="pos">int index = i;</span>
			
			<span id="secondForLoop">for (int j = i ; j >= 0; j--) {
				if (arr[j] > arr[index]) {
					index = j;
				}
			}</span>
			int largeNumber = arr[i];
			arr[i] = arr[index];
			arr[index] = largeNumber;
			
		}</span>
		<span id='returnArr'>return arr;</span>
	}</span>
}</pre>
			</div>
			<div class="col-xs-6">
				<div id="mainAnimation" class="height border">
					<div id='cupsDiv' class='col-xs-12 text-center'>
						<div id='nCupDiv' class='col-xs-2 display-none'>
							<div>
								<span id='nVal' class='cup-val opacity00 nValue'>8</span>
							</div>
							<i class='fa fa-coffee fa-3x  cup-color' id='nCup'></i>
							<div class='font-weight-bold'>n</div>
						</div>

						<div id='tmpCupDiv' class='col-xs-2 display-none'>
							<div>
								<span id='tmpVal' class='cup-val opacity00'>7</span>
							</div>
							<i class='fa fa-coffee fa-3x cup-color' id='tmpCup'></i>
							<div class='font-weight-bold'>i</div>
						</div>

						<div id='posCupDiv' class='col-xs-2 display-none'>
							<div>
								<span id='posVal' class='cup-val opacity00'>0</span>
							</div>
							<i class='fa fa-coffee fa-3x  cup-color' id='posCup'></i>
							<div class='font-weight-bold'>index</div>
						</div>

						<div id='jCupDiv' class='col-xs-2 opacity00'>
							<div>
								<span id='jVal' class='cup-val opacity00'>1</span>
							</div>
							<i class='fa fa-coffee fa-3x  cup-color' id='jCup'></i>
							<div class='font-weight-bold'>j</div>
						</div>
						
						<div id='smallerNumCupDiv' class='col-xs-2 opacity00'>
							<div>
								<span id='smallerVal' class='cup-val opacity00'>1</span>
							</div>
							<i class='fa fa-coffee fa-3x  cup-color' id='smallerCup'></i>
							<div class='font-weight-bold'>largerNum</div>
						</div>
						
					</div>
					<table class="margin margin-top1 opacity00" id="table1"
						style="width: 50%">
						<tr class="border-none">
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
							<th class="table-border"><div class="values" id="index0"
									contenteditable='false' maxlength="1">11</div></th>
							<th class="table-border"><div class="values" id="index1"
									contenteditable='false' maxlength="1">21</div></th>
							<th class="table-border"><div class="values" id="index2"
									contenteditable='false' maxlength="1">13</div></th>
							<th class="table-border"><div class="values" id="index3"
									contenteditable='false' maxlength="1">4</div></th>
							<th class="table-border"><div class="values" id="index4"
									contenteditable='false' maxlength="1">44</div></th>
							<th class="table-border"><div class="values" id="index5"
									contenteditable='false' maxlength="1">43</div></th>
							<th class="table-border"><div class="values" id="index6"
									contenteditable='false' maxlength="1">2</div></th>
							<th class="table-border"><div class="values" id="index7"
									contenteditable='false' maxlength="1">7</div></th>
						</tr>
					</table>

					<table class="margin opacity00 margin-top25" id="table2"
						style="width: 50%">
						<tr class="border-none">
							<td id ="indexVal0">0</td> 
							<td id ="indexVal1">1</td>
							<td id ="indexVal2">2</td>
							<td id ="indexVal3">3</td>
							<td id ="indexVal4">4</td>
							<td id ="indexVal5">5</td>
							<td id ="indexVal6">6</td>
							<td id ="indexVal7">7</td>
						</tr>
						<tr>
							<th class="table-border"><span class="arrVal0" id="arr0"
									contenteditable='false' maxlength="1">11</span></th>
							<th class="table-border"><span class="arrVal1" id="arr1"
									contenteditable='false' maxlength="1">21</span></th>
							<th class="table-border"><span class="arrVal2" id="arr2"
									contenteditable='false' maxlength="1">13</span></th>
							<th class="table-border"><span class="arrVal3" id="arr3"
									contenteditable='false' maxlength="1">4</span></th>
							<th class="table-border"><span class="arrVal4" id="arr4"
									contenteditable='false' maxlength="1">44</span></th>
							<th class="table-border"><span class="arrVal5" id="arr5"
									contenteditable='false' maxlength="1">43</span></th>
							<th class="table-border"><span class="arrVal6" id="arr6"
									contenteditable='false' maxlength="1">2</span></th>
							<th class="table-border"><span class="arrVal7" id="arr7"
									contenteditable='false' maxlength="1">7</span></th>
						</tr>
					</table>
					<div id="forJavaCode" class="col-xs-offset-2 col-xs-8 opacity00">
						<pre>
for (<span id="iDcrl">int i = n - 1</span>;<span id="iCond"><span
								id="iIncond"> i </span>>= <span> 0</span></span>; <span id="iIncre">i--</span>) {
	<span id="indexDeclrtn">int index = i;</span>
	for (<span id="jDcrl">int j = i;</span> <span id="jCond"> j >= 0;</span> <span
								id="jIncre">j--</span>) {
		if (<span id='ifCndtn'>arr[j] > arr[index]</span>) {
			<span id='smallestIndex'>index = j;</span>
		}
	}
	<span id='smallerNumDclr'>int largeNumber = arr[i];</span>
	<span id='copyArrItoArrIdx'>arr[i] = arr[index];</span>
	<span id='copySmallValToArrI'>arr[index] = largeNumber;</span>
}
				</pre>
					</div>
				</div>
				<div id="outputDiv">
					<div class="output-console-title-bar">
						<span class="title">Output</span>
					</div>
					<div class="output-console-body"><span id="output" class='opacity00'></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class='col-xs-12 margin-top25 text-center'>
		<span id='restart' class='btn btn-warning btn-sm opacity00'>Restart &nbsp;<i class='fa fa-refresh'></i></span>
	</div>
</body>
</html>