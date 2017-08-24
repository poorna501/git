<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.css">
<script src="/js/bootstrap.min.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>

<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenLite.min.js" type="text/javascript"></script>
<script src="/js/gs/TimelineLite.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="/css/font-awesome.min.css" />
<link href="/css/introjs.css" rel="stylesheet">
<link rel="stylesheet" href="/css/introjs-ct.css" />
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/animate.css" />
<title>Usage of #define</title>
</head>
<style>
#informationdiv {
	background-color: rgb(243, 235, 235);
    border-radius: 2px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 80px;
    margin-top: 20px;
  /*   color: green; */
    padding: 10px;
}

.introjs-tooltip {
	min-width: 280px;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0 0;
    border-radius: 10px;
    font-size: 18px;
    position: relative;
    z-index: 9999999;
}

.ct-code-b-green {
	font-family: monospace;
	font-weight: bold;
	color: green;
}

.ct-code-b-brown {
	font-family: monospace;
	font-weight: bold;
	color: brown;
}

.position-relative {
	position: relative;
}

.display-inline {
	display: inline-block;
}

.preJavaBoxCodeDiv {
	border: 1px solid grey;
	border-radius: 4px; 
	height: 255px;
	margin-top: 10px;
}

.output-console-title-bar {
	background-image: -moz-linear-gradient(center top, #e8e8e8, #bcbbbc);
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	font-size: 0.75em;
 	/* margin-top: 20px; */
	padding: 2px 0;
	text-align: center;
}

.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 14px;
	margin-bottom: 14px;
	height: 100px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

.preJavaBoxCodeDiv1 {
	border: 1px solid grey;
	border-radius: 4px; 
	height: 160px;
	margin-top: 10px;
}

.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: rgb(252, 66, 66);
}

.ct-code-b-yellow {
	font-family: monospace;
	font-weight: bold;
	color: yellow;
}

.ct-code-b-blue {
	font-family: monospace;
	font-weight: bold;
	color: blue;
}

.ct-code-b-brown {
	font-family: monospace;
	font-weight: bold;
	color: brown;
}

.ct-code-b-green {
	font-family: monospace;
	font-weight: bold;
	color: green;
}

.panel-heading {
	padding: 2px;
}

.enter-values {
	/* width: 60px; */
 /* padding: 8px; */
	border-width: 0px 0 0 0;
	background-color: #000;
	color: #0f0;
	border: 1px solid grey;
	border-radius : 4px;
}

</style>
<body>
<div class="col-sm-12 text-center">
	<div class="margin-padding-css text-center" >
		<div class="col-sm-1"></div>
		<div class="col-sm-offset-3 col-sm-3">
			<h3><span class="ct-demo-heading label label-default" id="titleName">Usage of #define</span></h3>
		</div>
	</div>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-8 col-xs-offset-2 opacity00'></div>
</div>
<div class="col-xs-12 padding0">
	<div class="col-xs-6">
		<div class="">
<pre class="creamPreTab4 preJavaBoxCodeDiv opacity00" id="preBody">
<span id="line1">#include &lt;stdio.h&gt;</span>
<span id="line2">#define PI 3.141</span>
<span id="line3">main()</span> {
  <span id="line4">float radius, area, circumference;</span>
  <span id="line5">printf("\n Enter the radius: ");</span>
  <span id="line6">scanf("<span id="scanPercent">%f</span>", <span id="scanAmpPercentId">&amp;radius</span>);</span>
  <span id="line7">area = <span id="piValue1" class="position-relative display-inline">PI</span> * radius * radius;</span>
  <span id="line8">circumference = 2 * <span id="piValue2" class="position-relative display-inline">PI</span> * radius;</span>
  <span id="line9">printf("Area of a circle is %f\n", area);</span>
  <span id="line10">printf("Circumference of circle : %0.4f\n", circumference);</span>
<span id="line11">}</span>
			</pre>
		</div>
	</div>
	<div class="col-xs-6">
		<div class="preJavaBoxCodeDiv opacity00" id="animationDiv">
			<div class="col-xs-12" style="margin-top: 10px;">
				<div class="col-xs-4">
					<div class="panel-group text-center opacity00 position-relative" id="radiusId">
						<div class="panel panel-info" style="height: 72px;">
							<div class="panel-heading">radius</div>
							<div class="panel-body text-center">
								<span id="panelRadiusBody" class="visibility-hidden"><span id="radiusValue" class="ct-code-b-green"></span></span>
							</div>
						</div>
						<span id="radiusAddress">1024</span>
 					</div>
				</div>
				<div class="col-xs-4">
					<div class="panel-group text-center opacity00 position-relative" id="areaId">
						<div class="panel panel-info"  style="height: 72px;">
							<div class="panel-heading">area</div>
							<div class="panel-body text-center">
								<span id="panelAreaBody" class="visibility-hidden ct-code-b-green"></span>
							</div>
						</div>
						<span id="areaAddress">5026</span>
 					</div>
				</div>
				<div class="col-xs-4">
					<div class="panel-group text-center opacity00 position-relative" id="circumferenceId">
						<div class="panel panel-info" style="height: 72px;">
							<div class="panel-heading">circumference</div>
							<div class="panel-body text-center">
								<span id="panelCircumferenceBody" class="visibility-hidden ct-code-b-green"></span>
							</div>
						</div>
						<span id="circumAddress">4434</span>
 					</div>
				</div>
			</div>
			<div class="col-xs-12">
				<div class="col-xs-offset-1 col-xs-9">
					<div id="consoleId" class="center visibility-hidden">
						<div class="output-console-title-bar">
							<span class="title"><b>Console</b></span>
						</div>
						<div class="output-console-body" id="consoleBodyDiv">
							<span id="typeRadiusId" class=""></span>
							<span id="enterRadiusValue" class="hidden">Enter the radius : <input id='inputChar' maxlength='3' class='enter-values' tabindex='0' /></span>
						
							<span id="finalAreaValue"></span>
							<span id="finalCircumferenceValue"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="col-xs-12 padding0">
	<div class="col-xs-6">
		<div class="">
<pre class="creamPreTab4 preJavaBoxCodeDiv1 opacity00" id="preBody1">
#include&lt;stdio.h&gt;
<span id="line12">#define CUBE(x) x * x * x</span>
<span id="line13">main()</span> {
    <span id="line14">int a;</span>
    <span id="line15">printf("Enter a number: ");</span>
    <span id="line16">scanf("<span id="scanPercent1">%d</span>", <span id="scanAmpPercentId1">&amp;a</span>);</span>
    <span id="line17">printf("The cube of the given number = %d", <span id="cubeAId"><span id="aCubeValue" class="position-relative display-inline">CUBE(a)</span></span>)</span>;
<span id="line18">}</span></pre>
		</div>
	</div>
	<div class="col-xs-6">
		<div class="preJavaBoxCodeDiv1 opacity00" id="animationDiv1">
			<div class="col-xs-12" style="margin-top: 10px;">
				<div class="col-xs-3">
					<div class="panel-group text-center visibility-hidden" id="aValue">
						<div class="panel panel-info">
							<div class="panel-heading" style="padding: 1px 25px;">a</div>
							<div class="panel-body text-center">
								<span id="panelABody" class="visibility-hidden"><span id="aNumber" class="ct-code-b-green"></span></span>
							</div>
						</div>
						<span id="aValAddress">3540</span>
 					</div>
				</div>
				<div class="col-xs-9">
					<div id="consoleId1" class="center opacity00">
						<div class="output-console-title-bar">
							<span class="title"><b>Console</b></span>
						</div>
						<div class="output-console-body" id="consoleBodyDiv1">
							<span id="typeNumberId" class=""></span>
							<span id="enterNumberId" class="hidden">Enter a number : <input id='inputChar1' maxlength='3' class='enter-values' tabindex='0' onkeypress="return isNumber(event)" /></span>
						
							<span id="finalCubeValue"></span>
							<span id=""></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div><button type="button" class="col-sm-1 col-sm-offset-6 btn btn-warning opacity00" id="restartBtn" style="margin-top: 10px;">Restart </button></div>
<script type="text/javascript">
var t1;
$(document).ready(function() {
	
	t1 = new TimelineLite();
	$("#restartBtn").click(function() {
		$("#inputChar").attr("disabled", false);
		$("#inputChar").val('');
		$("#inputChar1").val('');
		$("#hiddenTotalEnterChar").val('');
		location.reload();
	});
	
	
	$("#inputChar").bind("keyup", function(e) {
		$('.ct-code-b-red').remove();
		if ($("#inputChar").val().startsWith('.') || $("#inputChar").val().endsWith('.')) {
			//$('.ct-code-b-red').remove();
			$(".introjs-tooltiptext").append("<div class='ct-code-b-red'>Enter valid Float value.</div>");
			$(".introjs-nextbutton").hide();
			//e.preventDefault();
			return false;
		} else {
			$(".introjs-nextbutton").show();
		}
		
		if (e.keyCode == 190 || e.keyCode == 110) {
			//$('.ct-code-b-red').remove();
			$(".introjs-nextbutton").show();
			return true;
		}
		
		if($("#inputChar").val() == "") {
			//$('.ct-code-b-red').remove();
			$(".introjs-nextbutton").hide();
		}
		
		if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
			//$('.ct-code-b-red').remove();
			$(".introjs-nextbutton").show();
		} 
		
		if((e.shiftKey) || (e.keyCode > 8 && e.keyCode < 48) || (e.keyCode > 57 && e.keyCode < 96) || (e.keyCode > 105)) {
			//$('.ct-code-b-red').remove();
			$(".introjs-nextbutton").hide();
			$(".introjs-tooltiptext").append("<div class='ct-code-b-red'>Enter only the float values.</div>");
			e.preventDefault();
		} 
	});
	
	intro = introJs();
	intro.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		
		steps : [{
					element :'#titleName',
					intro :'',
					position:"right"
				},{
					element :'#informationdiv',
					intro :'',
					position:"bottom"
				},{
					element :'#preBody',
					intro :'',
					position:"bottom"
				},{
					element :'#line1',
					intro :'',
					position:"bottom"
				},{
					element :'#line2',
					intro :'',
					position:"bottom"
				},{
					element :'#piValue1',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#piValue2',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line3',
					intro :'',
					position:"bottom"
				},{
					element :'#line4',
					intro :'',
					position:"bottom"
				},{
					element :'#animationDiv',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line5',
					intro :'',
					position:"bottom"
				},{
					element :'#animationDiv',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#consoleId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line6',
					intro :'',
					position:"bottom"
				},{
					element :'#inputChar',
					intro :'',
					position:"bottom"
				},{
					element :'#radiusId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line7',
					intro :'',
					position:"bottom"
				},{
					element :'#areaId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line8',
					intro :'',
					position:"bottom"
				},{
					element :'#circumferenceId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line9',
					intro :'',
					position:"bottom"
				},{
					element :'#consoleId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line10',
					intro :'',
					position:"bottom"
				},{
					element :'#consoleId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#preBody1',
					intro :'',
					position:"bottom"
				},{
					element :'#line12',
					intro :'',
					position:"bottom"
				},{
					element :'#cubeAId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line13',
					intro :'',
					position:"bottom"
				},{
					element :'#line14',
					intro :'',
					position:"bottom"
				},{
					element :'#aValue',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line15',
					intro :'',
					position:"bottom"
				},{
					element :'#consoleId1',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line16',
					intro :'',
					position:"bottom"
				},{
					element :'#inputChar1',
					intro :'',
					position:"bottom"
				},{
					element :'#aValue',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#line17',
					intro :'',
					position:"bottom"
				},{
					element :'#cubeAId',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#consoleId1',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#restartBtn',
					intro :'',
					position:"left"
			}]
	});
	
	intro.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "preBody" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#preBody").removeClass("opacity00");
				typing(".introjs-tooltiptext", "Here is the program to know about the preprocessor directive <span class='ct-code-b-yellow'>#define</span> in C-language.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});			/* tooltipClass: "hide" */
			});
			break;
			
		case "informationdiv" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#informationdiv").removeClass("opacity00");
				typing("#informationdiv", "<ul id='defination' class=''>" +
							"<li># define is a preprocessor command which substitutes the constant value at each symbolic name.</li>" +
							"<li># is preprocessor which executes the directives before the compilation process.</li>" +
							"<li>The format of #define is <span class='ct-code-b-green' style='margin-left: 15px;'>#define symbolicname constant</span></li>" +
						"</ul>", 10, "",function() {
					typing(".introjs-tooltiptext", "let us consider examples on #define.", 10, "",function() {
						$('.introjs-nextbutton').show();
					});
				});
			});
			break;
			
		case "line1" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "It is a header file which contains standard <span class='ct-code-b-yellow'>input/output</span> library functions.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line2" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "By using #define directive we define a constant <span class='ct-code-b-yellow'>PI</span> with its value <span class='ct-code-b-yellow'>3.141</span> and so when ever compilation starts first all the occurrences of <span class='ct-code-b-yellow'>PI</span> is replaced by <span class='ct-code-b-yellow'>3.141</span>.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "piValue1" :
			$(".introjs-tooltip").hide();
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				t1.to("#piValue1", 0.5, {opacity: 1, rotationX: -90, onComplete: function() {
					$("#piValue1").text("3.141");
					intro.refresh();
				}});
				
				t1.to("#piValue1", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
					setTime();
				}});
			});
			break;
			
		case "piValue2" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "", 10, "",function() {
					t1.to("#piValue2", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#piValue2").text("3.141");
						intro.refresh();
					}});
					
					t1.to("#piValue2", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						setTime();
					}});
				});
			});
			break;
			
		case "line3" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>main()</span> is the operating system call.<ul><li><span class='ct-code-b-yellow'>main()</span> is execution starting point for any c program.</li></ul>", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line4" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "here <span class='ct-code-b-yellow'>3</span> variables are declared of float type which allocates 4 bytes of memory to each variable.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line5" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>printf()</span> is a library function, used to display the message specified with in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line6" :
			$('.introjs-nextbutton').hide();
			$("#typeInputChar").addClass("hidden");
			$("#enterRadiusValue").removeClass("hidden");
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#scanPercent").effect("highlight", {color: '#008000'}, 1000, function() {
					$("#scanAmpPercentId").effect("highlight",{color: '#008000'}, 1000, function() {
						typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>scanf()</span> function reads the given float value from the keyboard. it stores the given value in the memory of the particular variable.", 10, "",function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
			});
			break;
			
		case "line7" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "the expression is evaluated and the result is stored in area.</br>" +
						"<span>area = <span id='totalRadius' class='ct-code-b-yellow position-relative display-inline'>3.141 * <span  id='radiusOne' class='ct-code-b-yellow position-relative display-inline'>r</span> * <span id='radiusTwo' class='ct-code-b-yellow position-relative display-inline'>r</span></span></span>", 10, "",function() {
					
					t1.to("#radiusOne", 2, {opacity:1, rotationX: -90, onComplete: function() {
						if($('#inputChar').val().includes(".")) {
							$("#radiusOne").text($('#inputChar').val() + '00000');
						} else {
							$("#radiusOne").text($('#inputChar').val() + '.000000');							
						}
					}});
					
					t1.to("#radiusOne", 1, {opacity:1, rotationX: 0});
					
					t1.to("#radiusTwo", 1, {opacity:1, rotationX: -90, onComplete: function() {
						if($('#inputChar').val().includes(".")) {
							$("#radiusTwo").text($('#inputChar').val() + '00000');
						} else {
							$("#radiusTwo").text($('#inputChar').val() + '.000000');							
						}
					}});
					
					t1.to("#radiusTwo", 1, {opacity:1, rotationX: 0});
					var l1;
					var result;
					if($('#inputChar').val().includes(".")) {
						l1 = parseFloat($('#inputChar').val() + '00000');
						result = 3.141 * l1 * l1;
						console.log("final result with dot = " + result);
					} else {
						l1 = parseFloat($('#inputChar').val() + '.000000');
						result = 3.141 * l1 * l1;
						console.log("final result without dot = " + result);
					}
					
					var givenString = result.toString();
					console.log("resulted givenString is = " + givenString);
					var indexOfDot = givenString.indexOf(".");
					var index;
					if (indexOfDot == -1) {
						index = 0;
					} else {
						index = givenString.substring(indexOfDot + 1, givenString.length).length;
					}
					if(index > 6) {
						givenString = givenString.substring(0, 8);
					}
					
					for (var i = index; i < 6; i++) {
						if(i == 0) {
							givenString = givenString.concat(".0");
						} else {
							givenString = givenString.concat("0");
						}
					}
					console.log("givenString = " + givenString);
					
					t1.to("#totalRadius", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#totalRadius").text(givenString);
						$("#panelAreaBody").text(givenString);
						$("#totalRadius").addClass("ct-code-b-yellow");
					}});
					
					t1.to("#totalRadius", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						$('.introjs-nextbutton').show();
					}});
							
				});
			});
			break;
			
		case "line8" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "the expression is evaluated and the result is stored in circumference.</br>" +
						"<span>circumference = <span id='totalCircumference' class='ct-code-b-yellow position-relative display-inline'>2 * <span  id='circumPiValue' class='ct-code-b-yellow position-relative display-inline'>3.141</span> * <span id='circumRadius' class='ct-code-b-yellow position-relative display-inline'>r</span></span></span>", 10, "",function() {
						
					t1.to("#circumRadius", 2, {opacity:1, rotationX: -90, onComplete: function() {
						if($('#inputChar').val().includes(".")) {
							$("#circumRadius").text($('#inputChar').val() + '00000');
						} else {
							$("#circumRadius").text($('#inputChar').val() + '.000000');
						}
					}});
					
					t1.to("#circumRadius", 1, {opacity:1, rotationX: 0});
					var l1;
					var result;
					if($('#inputChar').val().includes(".")) {
						l1 = parseFloat($('#inputChar').val() + '00000');
						result = 2 * 3.141 * l1;
					} else {
						l1 = parseFloat($('#inputChar').val() + '.000000');
						result = 2 * 3.141 * l1;
					}
					
					
					var givenString = result.toString();
					console.log("resulted givenString is = " + givenString);
					var indexOfDot = givenString.indexOf(".");
					var index;
					if (indexOfDot == -1) {
						index = 0;
					} else {
						index = givenString.substring(indexOfDot + 1, givenString.length).length;
					}
					if(index > 6) {
						givenString = givenString.substring(0, 8);
					}
					
					for (var i = index; i < 6; i++) {
						if(i == 0) {
							givenString = givenString.concat(".0");
						} else {
							givenString = givenString.concat("0");
						}
					}
					console.log("givenString = " + givenString);
					t1.to("#totalCircumference", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#totalCircumference").text(givenString);
						$("#panelCircumferenceBody").text(givenString);
						$("#totalCircumference").addClass("ct-code-b-yellow");
					}});
					
					t1.to("#totalCircumference", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						$('.introjs-nextbutton').show();
					}});
				});
			});
			break;
			
		case "line9" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>printf()</span> is a library function, used to display the message specified with in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line10" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>printf()</span> is a library function, used to display the message specified with in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line12" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>CUBE(x)</span> is a symbolic function.<br/> Before compilation starts it is replaced with the formula <span class='ct-code-b-yellow'>x * x * x</span>.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line13" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>main()</span> is the operating system call.<ul><li><span class='ct-code-b-yellow'>main()</span> is execution starting point for any c program.</li></ul>", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line14" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "here <span class='ct-code-b-yellow'>One</span> variable is declared of int type which allocates 2 bytes of memory.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line15" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>printf()</span> is a library function, used to display the message specified with in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line17" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>printf()</span> is a library function, used to display the message specified with in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "radiusId" :
			
			if($('#inputChar').val().includes(".")) {
				$("#radiusValue").text($('#inputChar').val() + '00000');
			} else {
				$("#radiusValue").text($('#inputChar').val() + '.000000');
			}
			
			$('.introjs-nextbutton').hide();
			$("#inputChar").attr("disabled", true);
			$('.introjs-helperLayer ').one('transitionend', function() {
				intro.refresh();
				$("#panelRadiusBody").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
					setTime();
				});
			});
			break;
			
		case "areaId" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#panelAreaBody").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
					setTime();
				});
			});
			break;
			
		case "circumferenceId" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#panelCircumferenceBody").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
					setTime();
				});
			});
			break;
			
		case "animationDiv" :
			$('.introjs-nextbutton').hide();
			$("#animationDiv").removeClass("opacity00");
			if(intro._currentStep == 9) {
				$('.introjs-helperLayer').one('transitionend', function() {
					
					$("#radiusId").removeClass("opacity00");
					TweenMax.staggerFrom("#radiusId", 0.6, {opacity:0, top: -100}, -0.5, function() {
						$("#areaId").removeClass("opacity00");
						TweenMax.staggerFrom("#areaId", 0.6, {opacity:0, top: -100}, -0.5, function() {
							$("#circumferenceId").removeClass("opacity00");
							TweenMax.staggerFrom("#circumferenceId", 0.6, {opacity:0, top: -100}, -0.5, function() {
								setTime();
							});
						});
					});
				});
				
			} else if(intro._currentStep == 11) {
				$(".introjs-tooltip").addClass("hidden");
				$('.introjs-helperLayer').one('transitionend', function() {
					$("#consoleId").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
						setTime();
					});
				});
			}
			break;
			
		case "inputChar" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#inputChar").focus();
				typing(".introjs-tooltiptext", "Enter the radius.</br>" +
						"<span id='errorTextBox1' class='ct-code-b-red'></span>", 10, "",function() {
				});
			});
			break;
			
		case "consoleId" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 12) {
				$('.introjs-helperLayer').one('transitionend', function() {
					typing("#typeRadiusId", " <span id='typeInputChar'>Enter the radius : </span>", 10, "",function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
				});
				
			} else if(intro._currentStep == 21) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing("#finalAreaValue", "<br /> Area of circle is : <span class='ct-code-b-green'>"+ $("#panelAreaBody").text() +"</span>", 10, "",function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
				});
				
			} else if(intro._currentStep == 23) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing("#finalCircumferenceValue", "Circumference of circle : <span class='ct-code-b-green'>"+ $("#panelCircumferenceBody").text() +"</span>", 10, "",function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
				});
			}
			break;
			
		case "preBody1" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#preBody1").removeClass("opacity00");
				$("#animationDiv1").removeClass("opacity00");
				$("#animationDiv").removeClass("opacity00");
				typing(".introjs-tooltiptext", "Consider another example, here <span class='ct-code-b-yellow'>#define</span> replaces formula rather than values.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "aValue" :
			$('.introjs-nextbutton').hide();
			if(intro._currentStep == 29) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#aValue").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
				});
				
			} else if(intro._currentStep == 34) {
				$("#aNumber").text($('#inputChar1').val());
				$("#inputChar1").attr("disabled", true);
				$('.introjs-helperLayer ').one('transitionend', function() {
					$("#panelABody").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
						intro.refresh();
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
				});
			}
			break;
			
		case "line16" :
			$('.introjs-nextbutton').hide();
			$("#typeInputChar1").addClass("hidden");
			$("#enterNumberId").removeClass("hidden");
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#scanPercent1").effect("highlight", {color: '#008000'}, 1000, function() {
					$("#scanAmpPercentId1").effect("highlight",{color: '#008000'}, 1000, function() {
						typing(".introjs-tooltiptext", "<span class='ct-code-b-yellow'>scanf()</span> function reads the given int value from the keyboard. it stores the given value in the memory of the particular variable.", 10, "",function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
			});
			break;
			
		case "inputChar1" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typing(".introjs-tooltiptext", "Enter a number.</br>" +
				"<span id='errorTextBox2' class='ct-code-b-red'></span>", 10, "",function() {
					$("#inputChar1").focus();
					$("#inputChar1").keyup(function() {
						if ($("#inputChar1").val().length == '') {
							$('.introjs-nextbutton').hide();
						} else {
							$('.introjs-nextbutton').show();
						}
					});
				});
			});
			break;
			
		case "cubeAId" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 26) {
				$('.introjs-helperLayer').one('transitionend', function() {
					t1.to("#aCubeValue", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#aCubeValue").html('<span id="a1" class="position-relative display-inline">a</span> * <span id="a2" class="position-relative display-inline">a</span> * <span id="a3" class="position-relative display-inline">a</span>');
						intro.refresh();
					}});
	
					t1.to("#aCubeValue", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					}});
				}); // 36
				
			} else if (intro._currentStep == 36) {
				$('.introjs-helperLayer').one('transitionend', function() {
					
					t1.to("#a1", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#a1").text($('#inputChar1').val());
					}});
					
					t1.to("#a1", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
					}});
					
					t1.to("#a2", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#a2").text($('#inputChar1').val());
					}});
					
				    t1.to("#a2", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
				    	intro.refresh();
				    }});
				    
					t1.to("#a3", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#a3").text($('#inputChar1').val());
					}});
					
					t1.to("#a3", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						intro.refresh();
					}});
					
					var l1 = parseInt($('#inputChar1').val());
					var result = l1 * l1 * l1;
					
					t1.to("#aCubeValue", 0.5, {opacity:1, rotationX: -90, onComplete: function() {
						$("#aCubeValue").text(result);
						intro.refresh();
					}});

					t1.to("#aCubeValue", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					}});
				});
			}
			break;
			
		case "consoleId1" :
			$('.introjs-nextbutton').hide();
			if (intro._currentStep == 31) {
				$("#consoleId1").removeClass("opacity00");
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing("#typeNumberId", " <span id='typeInputChar1'>Enter a number : </span>", 10, "",function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
				});
				
			} else if (intro._currentStep == 37) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing("#finalCubeValue", "The cube of the given number is : <span class='ct-code-b-green'>"+ $("#aCubeValue").text() +"</span>", 10, "",function() {
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					});
				});
			}
			break;
			
		case "restartBtn" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#restartBtn").removeClass("opacity00");
				typing(".introjs-tooltiptext", "Click to restart.", 10, "",function() {
					
				});
			});
			break;
		}
	});
	intro.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	
	typing(".introjs-tooltiptext", "Let us learn about the preprocessor directive <span class='ct-code-b-yellow'>#define</span>.", 10, "", function() {
		$('.introjs-nextbutton').show();
	});
});


function setTime() {
	setTimeout(function() {
		intro.nextStep();
	}, 1000);
}

function isNumber(evt) {
	$(".error-text").remove();
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
    	$("#errorTextBox2").addClass("ct-code-b-red");
    	$("#errorTextBox2").text("Enter only integer values");
        return false;
    } else {
    	$("#errorTextBox2").removeClass("ct-code-b-red");
    	$("#errorTextBox2").text("");
	    return true;
    }
}

function typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval": typingInterval,
		"cursor_color": cursorColor
	}, function() {
		$(typingId).removeClass('typingCursor');
		typingCallbackFunction();
	});
}

</script>
</body>
</html>
