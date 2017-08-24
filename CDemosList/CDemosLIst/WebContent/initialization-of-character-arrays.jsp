<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/animate.css">
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src='/js/intro.js'></script>
<link rel="stylesheet" href="/css/font-awesome.min.css">
<title>Initialization of character arrays</title>

<style type="text/css">

.border {
	border-radius: 8px;
	border: 1px solid burlywood;
    padding: 20px;
}

.margin-top-1 {
	margin-top: 1%;
}

.margin-top-2 {
	margin-top: 2%;
}

.margin-top-3 {
	margin-top: 3%;
}

.margin-top-10 {
	margin-top: 10%;
}

.small-box, .small-box-green, .small-box-royalblue, 
.small-box-firebrick, .small-box-blueviolet {
	border: 1px solid;
	padding: 1px;
	text-align: center;
	width: 55px;
	visibility: ;
}

.small-box-green {
	border-color: green;
}

.small-box-royalblue {
	border-color: royalblue;
}

.small-box-firebrick {
	border-color: firebrick;
}

.small-box-blueviolet {
	border-color: blueviolet;
}

.addressBox, .elementBox {
	padding: 4px;
	text-align: center;
	width: 55px;
	color: gray;
}

.rowtdClass {
	padding: 4px;
	text-align: center;
	width: 55px;
}

.navy {
	color: navy;
}

div, span {
	position: relative;
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 1px;
	position: relative;
	z-index: 9999999;
}

.output-value-circle {
	background: white;
	color: black;
}

.introjs-tooltip {
	min-width: 280px;
}

.user-btn {
	background-color: green;
}

.ui-effects-transfer {
	border: 1px solid green;
	 z-index: 9999999 !important;
}

</style>
</head>

<body>
<div class="main-div col-xs-12">
	<div class="text-center heading-css margin-top-2" id="heading">
		<h3 class='label ct-demo-heading'>
			<span>Initialization of character arrays</span>
		</h3>
	</div>
	<div class="col-xs-12 margin-top-3">
		<div class="col-xs-4 col-xs-offset-1 margin-top-2 border" id="exampleDiv1">
			<div class="col-xs-12">
				<span id="firstExample" class="margin-top-2">
					char ch[ ] = {'<span class="inputChar1" id='char1'>c</span>','<span class="inputChar1" id='char2'>o</span>',
					'<span class="inputChar1" id='char3'>d</span>','<span class="inputChar1" id='char4'>e</span>',
					'<span class="inputChar1" id='char5'>\0</span>'};
				</span>
				<div id="tableDiv1" class="opacity00 margin-top-3">
					<table align="center">
						<tr>
							<td class="elementBox"><span class="" id="element1">ch[0]</span></td>
							<td class="elementBox"><span class="" id="element2">ch[1]</span></td>
							<td class="elementBox"><span class="" id="element3">ch[2]</span></td>
							<td class="elementBox"><span class="" id="element4">ch[3]</span></td>
							<td class="elementBox"><span class="" id="element5">ch[4]</span></td>
						</tr>
						<tr class="" id="smallBox1">
							<td class="small-box"><span class="displayChar1 opacity00" id="value1">c</span></td>
							<td class="small-box"><span class="displayChar1 opacity00" id="value2">o</span></td>
							<td class="small-box"><span class="displayChar1 opacity00" id="value3">d</span></td>
							<td class="small-box"><span class="displayChar1 opacity00" id="value4">e</span></td>
							<td class="small-box"><span class="displayChar1 opacity00" id="value5">\0</span></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col-xs-4 col-xs-offset-1 margin-top-2 border opacity00" id="exampleDiv2">
			<div class="col-xs-12">
				<span id="secondExample" class="margin-top-2 opacity00">
					char ch[ ] = "<span class="inputChar2" id="stringChar1">c</span><span class="inputChar2" id="stringChar2">o</span><span class="inputChar2" id="stringChar3">d</span><span class="inputChar2" id="stringChar4">e</span>";
				</span>
				<div id="tableDiv2" class="margin-top-3 opacity00">
					<table align="center">
						<tr>
							<td class="elementBox"><span class="" id="element1">ch[0]</span></td>
							<td class="elementBox"><span class="" id="element2">ch[1]</span></td>
							<td class="elementBox"><span class="" id="element3">ch[2]</span></td>
							<td class="elementBox"><span class="" id="element4">ch[3]</span></td>
							<td class="elementBox"><span class="" id="element5">ch[4]</span></td>
						</tr>
						<tr class="" id="smallBox2">
							<td class="small-box"><span class="displayChar2 opacity00" id="stringValue1">c</span></td>
							<td class="small-box"><span class="displayChar2 opacity00" id="stringValue2">o</span></td>
							<td class="small-box"><span class="displayChar2 opacity00" id="stringValue3">d</span></td>
							<td class="small-box"><span class="displayChar2 opacity00" id="stringValue4">e</span></td>
							<td class="small-box"><span class="displayChar2 opacity00" id="stringValue5">\0</span></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-4 col-xs-offset-1 margin-top-3 border opacity00" id="exampleDiv3">
			<div class="col-xs-12">
				<span id="thirdExample" class="margin-top-2 opacity00">
					char ch[6] = "<span class="inputString3" id="inputString3">CODETANTRA</span>";
				</span>
				<div id="tableDiv3" class="margin-top-3 opacity00">
					<table align="center">
						<tr>
							<td class="elementBox"><span class="" id="element1">ch[0]</span></td>
							<td class="elementBox"><span class="" id="element2">ch[1]</span></td>
							<td class="elementBox"><span class="" id="element3">ch[2]</span></td>
							<td class="elementBox"><span class="" id="element4">ch[3]</span></td>
							<td class="elementBox"><span class="" id="element5">ch[4]</span></td>
							<td class="elementBox"><span class="" id="element6">ch[5]</span></td>
						</tr>
						<tr class="" id="smallBox3" style="font-size: 12px;">
							<td class="small-box"><span class="displayChar3 opacity00" id="">C</span></td>
							<td class="small-box"><span class="displayChar3 opacity00" id="">O</span></td>
							<td class="small-box"><span class="displayChar3 opacity00" id="">D</span></td>
							<td class="small-box"><span class="displayChar3 opacity00" id="">E</span></td>
							<td class="small-box"><span class="displayChar3 opacity00" id="">T</span></td>
							<td class="small-box"><span class="displayChar3 opacity00" id="">A</span></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col-xs-6 col-xs-offset-1 margin-top-3 border opacity00" id="exampleDiv4">
			<div class="col-xs-12">
				<span id="fourthExample" class="margin-top-2 opacity00">
					char a[2][7] = {"<span class="fourthIndex1">MAY</span>", "<span class="fourthIndex2">JUNE</span>"};
				</span>
				<div id="tableDiv4" class="margin-top-3 opacity00">
					<table align="center">
						<tr style="font-size: 12px;">
							<td class="elementBox"><span class="" id="element1">a[0][0]</span></td>
							<td class="elementBox"><span class="" id="element2">a[0][1]</span></td>
							<td class="elementBox"><span class="" id="element3">a[0][2]</span></td>
							<td class="elementBox"><span class="" id="element4">a[0][3]</span></td>
							<td class="elementBox"><span class="" id="element5">a[0][4]</span></td>
							<td class="elementBox"><span class="" id="element6">a[0][5]</span></td>
							<td class="elementBox"><span class="" id="element7">a[0][6]</span></td>
							<td class="elementBox"><span class="" id="element8">a[1][0]</span></td>
							<td class="elementBox"><span class="" id="element9">a[1][1]</span></td>
							<td class="elementBox"><span class="" id="element10">a[1][2]</span></td>
							<td class="elementBox"><span class="" id="element11">a[1][3]</span></td>
							<td class="elementBox"><span class="" id="element12">a[1][4]</span></td>
							<td class="elementBox"><span class="" id="element12">a[1][5]</span></td>
							<td class="elementBox"><span class="" id="element12">a[1][6]</span></td>
						</tr>
						<tr class="" id="smallBox4" style="font-size: 12px;">
							<td class="small-box-green"><span class="char-visible-one opacity00" id="">M</span></td>
							<td class="small-box-green"><span class="char-visible-one opacity00" id="">A</span></td>
							<td class="small-box-green"><span class="char-visible-one opacity00" id="">Y</span></td>
							<td class="small-box-green"><span class="char-visible-one-zero opacity00" id="">\0</span></td>
							<td class="small-box-green char-invisible "><span class="opacity00" id="">0</span></td>
							<td class="small-box-green char-invisible"><span class="opacity00" id="">0</span></td>
							<td class="small-box-green char-invisible"><span class="opacity00" id="">0</span></td>
							<td class="small-box-royalblue"><span class="char-visible-two opacity00" id="">J</span></td>
							<td class="small-box-royalblue"><span class="char-visible-two opacity00" id="">U</span></td>
							<td class="small-box-royalblue"><span class="char-visible-two opacity00" id="">N</span></td>
							<td class="small-box-royalblue"><span class="char-visible-two opacity00" id="">E</span></td>
							<td class="small-box-royalblue"><span class="char-visible-two-zero opacity00" id="">\0</span></td>
							<td class="small-box-royalblue char-invisible"><span class="opacity00" id="">0</span></td>
							<td class="small-box-royalblue char-invisible"><span class="opacity00" id="">0</span></td>
						</tr>
						<tr class="" id="rowSpan1">
							<td colspan="7" class="rowtdClass" id="rowTwoId1" style="color: green;">0<sup><b>th</b></sup> row</td>
							<td colspan="7" class="rowtdClass" id="rowTwoId2" style="color: royalblue;">1<sup><b>st</b></sup> row</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-8 col-xs-offset-1 margin-top-3 border opacity00" id="exampleDiv5">
			<div class="col-xs-12">
				<span id="fifthExample" class="margin-top-2 opacity00">
					char a[ ][4] = {{‘<span class="inputChar5" id="character1">t</span>’},{’<span class="inputChar5" id="character2">e</span>’},
					{’<span class="inputChar5" id="character3">n</span>’}};;
				</span>
				<div id="tableDiv5" class="margin-top-3 opacity00">
					<table align="center">
						<tr>
							<td class="elementBox"><span class="" id="element1">a[0][0]</span></td>
							<td class="elementBox"><span class="" id="element2">a[0][1]</span></td>
							<td class="elementBox"><span class="" id="element3">a[0][2]</span></td>
							<td class="elementBox"><span class="" id="element4">a[0][3]</span></td>
							<td class="elementBox"><span class="" id="element5">a[1][0]</span></td>
							<td class="elementBox"><span class="" id="element6">a[1][1]</span></td>
							<td class="elementBox"><span class="" id="element7">a[1][2]</span></td>
							<td class="elementBox"><span class="" id="element8">a[1][3]</span></td>
							<td class="elementBox"><span class="" id="element9">a[2][0]</span></td>
							<td class="elementBox"><span class="" id="element10">a[2][1]</span></td>
							<td class="elementBox"><span class="" id="element11">a[2][2]</span></td>
							<td class="elementBox"><span class="" id="element12">a[2][3]</span></td>
							<td class="elementBox"><span class="" id="element13">a[3][0]</span></td>
							<td class="elementBox"><span class="" id="element14">a[3][1]</span></td>
							<td class="elementBox"><span class="" id="element15">a[3][2]</span></td>
							<td class="elementBox"><span class="" id="element16">a[3][3]</span></td>
						</tr>
						<tr class="" id="smallBox5">
							<td class="small-box-green"><span class="displayChar5 opacity00" id="displayValue1">t</span></td>
							<td class="small-box-green"><span class="appendZero opacity00" id="">\0</span></td>
							<td class="small-box-green char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-green char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-firebrick"><span class="displayChar5 opacity00" id="displayValue2">e</span></td>
							<td class="small-box-firebrick"><span class="appendZero opacity00" id="">\0</span></td>
							<td class="small-box-firebrick char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-firebrick char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-royalblue"><span class="displayChar5 opacity00" id="displayValue3">n</span></td>
							<td class="small-box-royalblue"><span class="appendZero opacity00" id="">\0</span></td>
							<td class="small-box-royalblue char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-royalblue char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-blueviolet char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-blueviolet char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-blueviolet char-invisible-two"><span class="opacity00" id="">0</span></td>
							<td class="small-box-blueviolet char-invisible-two"><span class="opacity00" id="">0</span></td>
						</tr>
						<tr class="" id="rowSpan2">
							<td colspan="4" class="rowtdClass" id="rowTwoId1" style="color: green;">0<sup><b>th</b></sup> row</td>
							<td colspan="4" class="rowtdClass" id="rowTwoId2" style="color: firebrick;">1<sup><b>st</b></sup> row</td>
							<td colspan="4" class="rowtdClass" id="rowTwoId3" style="color: royalblue;">2<sup><b>nd</b></sup> row</td>
							<td colspan="4" class="rowtdClass" id="rowTwoId4" style="color: blueviolet;">3<sup><b>rd</b></sup> row</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="text-center margin-top-2" id="restartDiv">
			<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
		</div>
	</div>
</div>

</body>
<script type="text/javascript">
var typingInterval = 10;
$(document).ready(function() {
	introGuide();
});

function introGuide() {
	introjs = introJs();
	$("body").keydown(function(e) {
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
	
	$("#restart").click(function() {
		location.reload();
	});
	
	introjs.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		tooltip : false,
		steps :[{
			element :'#exampleDiv1',
			intro : '',
			animateStep : 'firstExIntro',
		}, {
			element :'#firstExample',
			intro : '',
		}, {
			element :'#exampleDiv1',
			intro : '',
			animateStep : 'firstBoxZooming',
		}, {
			element :'#exampleDiv1',
			intro : '',
			animateStep : 'animation1',
		}, {
			element :'#exampleDiv2',
			intro : '',
			animateStep : 'secondExIntro',
		}, {
			element :'#secondExample',
			intro : '',
		}, {
			element :'#exampleDiv2',
			intro : '',
			animateStep : 'secondBoxZooming',
		}, {
			element :'#exampleDiv2',
			intro : '',
			animateStep : 'animation2',
		}, {
			element :'#exampleDiv3',
			intro : '',
			animateStep : 'thirdExIntro',
		}, {
			element :'#thirdExample',
			intro : '',
		}, {
			element :'#exampleDiv3',
			intro : '',
			animateStep : 'thirdBoxZooming',
		}, {
			element :'#exampleDiv3',
			intro : '',
			animateStep : 'animation3',
		}, {
			element :'#exampleDiv4',
			intro : '',
			animateStep : 'fourthExIntro',
		}, {
			element :'#fourthExample',
			intro : '',
		}, {
			element :'#exampleDiv4',
			intro : '',
			animateStep : 'fourthBoxZooming',
		}, {
			element :'#exampleDiv4',
			intro : '',
			animateStep : 'animation4',
		}, {
			element :'#exampleDiv5',
			intro : '',
			animateStep : 'fifthExIntro',
		}, {
			element :'#fifthExample',
			intro : '',
		}, {
			element :'#exampleDiv5',
			intro : '',
			animateStep : 'fifthBoxZooming',
		}, {
			element :'#exampleDiv5',
			intro : '',
			animateStep : 'animation5',
		}, {
			element :'#restart',
			intro : "Click to restart",
			position : 'right',
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		$(".introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton").hide();
		var elementId = targetElement.id;
		switch(elementId) {
		case 'exampleDiv1':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'firstExIntro':
				var typingContent = "Let us consider an one dimensional character array and it can be initialised as follows."
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-nextbutton").show();
					});
				break;
			case 'firstBoxZooming':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "Here size is not mentioned. So the size is fixed depending on the initilization characters.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							boxAnimation("#tableDiv1", function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
			case 'animation1':
				animatingChar('#char', '#value', ($('.inputChar1').length + 1), 1, function() {
						var typingContent = "NULL character <span class='ct-code-b-yellow'>\'\\0\'</span> must be added by the user " +
						"at the end of the initialization because it initializes the values character by character.";
						typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
							$(".introjs-nextbutton").show();
					});
				});
				break;
			}
			break;
		case 'firstExample':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "Here the characters <span class='ct-code-b-yellow'>'c'</span>, <span class='ct-code-b-yellow'>'o'</span>, " +
				"<span class='ct-code-b-yellow'>'d'</span>, <span class='ct-code-b-yellow'>'e'</span> are stored character " +
				"by character in the character array ch."
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'exampleDiv2':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'secondExIntro':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "The above representation can also be written as follows."
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$("#secondExample,#exampleDiv2").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'secondBoxZooming':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "Here size is not mentioned. So the size is fixed depending on the initilization characters.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							boxAnimation("#tableDiv2", function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
			case 'animation2': 
				animatingChar('#stringChar', '#stringValue', ($('.inputChar2').length + 1), 1, function() {
					var typingContent = "In this initialization the NULL character <span class='ct-code-b-yellow'>\'\\0\'</span> is " +
					"automatically appended by the system.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							TweenMax.to($("#stringValue5"), 1, {opacity: 1, onComplete: function() {
								$(".introjs-nextbutton").show();
							}});
						});
					});
				});
				break;
			}
			break;
		case 'secondExample':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "Here double quotes are used to mention the string constant."
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case 'exampleDiv3':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'thirdExIntro':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "Let us consider another example.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$("#thirdExample,#exampleDiv3").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'thirdBoxZooming':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "According to the array size the memory allocated, Here array size is 6 so the memory allocated in 6 regions.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							boxAnimation("#tableDiv3", function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
			case 'animation3':
				$("#inputString3").effect("transfer", { to: $("#smallBox3")}, 2000).addClass(".ui-effects-transfer", function() {
					TweenMax.to($(".displayChar3"), 1, {opacity: 1, onComplete: function() {
						var typingContent = "In this only the first 6 characters of the string <span class='ct-code-b-yellow'>CODETANTRA</span> " +
						"are assigned to the array text and <span class='ct-code-b-yellow'>NULL</span> is not included. " +
						"The output may contain unexpected characters after the first six characters <span class='ct-code-b-yellow'>CODETA</span>.";
						typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
							$(".introjs-nextbutton").show();
						});
					}});
				});
				break;
			}
			break;
		case 'thirdExample':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "Here size of the array is declared with 6."
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
					});
			});
			break;
		case 'exampleDiv4':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'fourthExIntro':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "Let us consider an example on <span class='ct-code-b-yellow'>two dimensional character arrays</span>.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$("#fourthExample,#exampleDiv4").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'fourthBoxZooming':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "So the memory allocated for 2 rows and each row contains 7 columns.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							boxAnimation("#tableDiv4", function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
			case 'animation4':
				var typingContent = "In this representation the first row containing <span class='ct-code-b-yellow'>MAY</span>, " +
				"the second row containing <span class='ct-code-b-yellow'>JUNE</span>.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".fourthIndex1").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
						TweenMax.to($(".char-visible-one"), 1, {opacity: 1, onComplete: function() {
							$(".fourthIndex2").effect( "highlight", {color:"dodgerblue"}, 1000, function() {
								TweenMax.to($(".char-visible-two"), 1, {opacity: 1, onComplete: function() {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
									$(".user-btn").click(function() {
										$(".user-btn").remove();
										var typingContent = "after initializing characters <span class='ct-code-b-yellow'>\'\\0\'</span> appended by the system.";
										typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
											$(".displayChar4-1-0").removeClass("opacity00");
											TweenMax.to($(".char-visible-one-zero"), 1, {opacity: 1, onComplete: function() {
												TweenMax.to($(".char-visible-two-zero"), 1, {opacity: 1, onComplete: function() {
													$(".char-invisible").css("background-color", "buttonshadow");
													$(".introjs-nextbutton").show();
												}});
											}});
										});
									});
								}});
							});
						}});
					});
				});
				break;
			}
			break;
		case 'fourthExample':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "Here size of row 2 and size of column 7 are given, Based on the size of row and column the memory will be allocated.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
					});
			});
			break;
		case 'exampleDiv5':
			var animateStep = introjs._introItems[introjs._currentStep].animateStep;
			switch(animateStep) {
			case 'fifthExIntro':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "Let us consider another example on <span class='ct-code-b-yellow'>two dimensional character arrays</span>.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$("#fifthExample,#exampleDiv5").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					});
				});
				break;
			case 'fifthBoxZooming':
				$('.introjs-helperLayer').one('transitionend', function() {
					var typingContent = "So the memory allocated for 4 rows and each row contains 4 columns.";
					typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							boxAnimation("#tableDiv5", function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
				break;
			case 'animation5':
				var typingContent = "So in each braces of the characters are initiliazed their respective regions.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					animatingChar('#character', '#displayValue', ($('.inputChar5').length + 1), 1, function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
						$(".user-btn").click(function() {
							$(".user-btn").remove();
							var typingContent = "After initiliazing the characters NULL value <span class='ct-code-b-yellow'>\'\\0\'</span> " +
							"is appended by the system.";
							typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
								TweenMax.to($(".appendZero"), 1, {opacity: 1, onComplete: function() {
									$(".char-invisible-two").css("background-color", "buttonshadow");
									$(".introjs-nextbutton").show();
								}});
							});
						});
					});
				});
				break;
			}
			break;
		case 'fifthExample':
			$('.introjs-helperLayer').one('transitionend', function() {
				var typingContent = "Here size of the column 4 are given, Based on the size of column the memory will be allocated.";
				typing('.introjs-tooltiptext', typingContent, typingInterval, 'white', function() {
					$(".introjs-nextbutton").show();
					});
			});
			break;
		case 'restart':
			$(".introjs-tooltip").css("min-width", "-moz-max-content");
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#restart").fadeTo(1000, 1);
				$("#restart").removeClass("opacity00");
			});
			break;
		}
	});
	introjs.start();
}

function typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval": typingInterval,
		"cursor_color": cursorColor
	}, function() {
		$(typingId).removeClass('typingCursor');
		if (typeof typingCallbackFunction === "function") {
			typingCallbackFunction();
		}
	});
}

function boxAnimation(id, callBackFunction) {
	$(id).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		$(id).removeClass("animated zoomIn");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function fromEffectWithTweenMax(selector1, selector2, callBackFunction) {
	var l1 = $(selector1).offset();
	var l2 = $(selector2).offset();
	var topLength = l1.top - l2.top;
	var leftLength = l1.left - l2.left;
	TweenMax.from($(selector2), 1, {top: topLength, left: leftLength, onComplete: function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}

function animatingChar(selector1, selector2, length, index, callBackFunction) {
	$(selector2 + index).removeClass('opacity00'); 
	fromEffectWithTweenMax(selector1 + index, selector2 + index, function() {
		index++;
		if (length > index) {
			animatingChar(selector1, selector2, length, index, callBackFunction);
		} else {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}
	});
}
	
</script>
</html>