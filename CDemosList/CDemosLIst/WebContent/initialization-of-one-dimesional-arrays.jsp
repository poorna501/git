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

<title>Initialization of arrays</title>
</head>
<style>

#infoDiv {
	background-color: rgb(243, 235, 235);
	border-radius: 10px;
	font-size: 15px;
	padding: 11px 12px;
	/* margin-left: 19.5%;
	margin-top: 1%; */
}

.margin-top-1 {
	margin-top: 1%;
}

.smallBox1, .smallBox2, .smallBox3, .smallBox4, .smallBox5 {
	border: 1px solid gray;
	padding: 4px;
	text-align: center;
	width: 55px;
}

.addressBox, .elementBox {
	padding: 4px;
	text-align: center;
	width: 55px;
}

.addressBox {
	color: green;
}

.margin-top-3 {
	margin-top: 3%;
}

.margin-top-2 {
	margin-top: 2%;
}

.z-index9999999 {
	z-index: 9999999;
}

.border {
	border: 1px solid;
	border-radius: 6px;
}

span, div {
	position: relative;
}

.user-btn {
	background-color: green;
}

.animated-border {
	border-color: rgba(255, 255, 255, 0);
    animation: 2s ease 0s normal none 1 running animated-border;
}

@keyframes animated-border {  
  100% { border-color: dodgerblue; }
}
}

</style>
<body>
<div class="main-div col-xs-12">
	<div class="text-center margin-top-1" id="heading">
		<h3 class='label ct-demo-heading'>
			<span>Initialization of arrays</span>
		</h3>
	</div>
	<div class="text-center margin-top-1" id="restartDiv">
		<a class="btn btn-warning opacity00" id="restart"><i class="fa fa-refresh"></i>&nbsp;Restart</a>
	</div>
	<div class="col-xs-8 col-xs-offset-2 margin-top-2 infoDiv" id="infoDiv">
		<ul>
			<li>Arrays a kind of data structure that can store a fixed-size sequential collection 
				of elements of the same type. And an array is used to store a collection of data.</li>
			<li>The elements of an array may be assigned with the values using initialization instead of reading them by the I/O functions.</li>
		 	<li> An array can be initialized in its declaration only.</li>
			<li>The list of values are enclosed in braces { }.</li>
			<li>The values are separated by commas and they must be constants or constant expressions.</li>
		</ul>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-3 col-xs-offset-1 margin-top-2 border opacity00" id="exampleDiv1">
			<div id="firstExample" class="opacity00 margin-top-2">
				int a[<span id="arraySize1">4</span>]={<span id="input1">10</span>,<span id="input2">20</span>,<span id="input3">30</span>,
													<span id="input4">40</span>};
			</div>
			<div id="tableDiv1" class="margin-top-3">
				<table align="center">
					<tr>
						<td class="elementBox"><span class="opacity00" id="element1">a[0]</span></td>
						<td class="elementBox"><span class="opacity00" id="element2">a[1]</span></td>
						<td class="elementBox"><span class="opacity00" id="element3">a[2]</span></td>
						<td class="elementBox"><span class="opacity00" id="element4">a[3]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox1">
						<td class="smallBox1"><span class="opacity00" id="value1">10</span></td>
						<td class="smallBox1"><span class="opacity00" id="value2">20</span></td>
						<td class="smallBox1"><span class="opacity00" id="value3">30</span></td>
						<td class="smallBox1"><span class="opacity00" id="value4">40</span></td>
					</tr>
					<tr class="opacity00" id="address1">
						<td class="addressBox">1024</td>
						<td class="addressBox">1026</td>
						<td class="addressBox">1028</td>
						<td class="addressBox">1030</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="col-xs-3 col-xs-offset-1 margin-top-2 border opacity00" id="exampleDiv2">
			<div id="secondExample" class="opacity00 margin-top-2">
				int a[<span id="arraySize2">5</span>]={<span id="inputValue1">10</span>,<span id="inputValue2">20</span>,
														<span id="inputValue3">30</span>};
			</div>
				<div id="tableDiv2" class="margin-top-3">
				<table align="center">
					<tr>
						<td class="elementBox"><span class="opacity00" id="element5">a[0]</span></td>
						<td class="elementBox"><span class="opacity00" id="element6">a[1]</span></td>
						<td class="elementBox"><span class="opacity00" id="element7">a[2]</span></td>
						<td class="elementBox"><span class="opacity00" id="element8">a[3]</span></td>
						<td class="elementBox"><span class="opacity00" id="element9">a[4]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox2">
						<td class="smallBox2"><span class="opacity00" id="valueId1">10</span></td>
						<td class="smallBox2"><span class="opacity00" id="valueId2">20</span></td>
						<td class="smallBox2"><span class="opacity00" id="valueId3">30</span></td>
						<td class="smallBox2"><span class="opacity00" id="valueId4">0</span></td>
						<td class="smallBox2"><span class="opacity00" id="valueId5">0</span></td>
					</tr>
					<tr class="opacity00" id="address2">
						<td class="addressBox">1016</td>
						<td class="addressBox">1018</td>
						<td class="addressBox">1020</td>
						<td class="addressBox">1022</td>
						<td class="addressBox">1024</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="col-xs-2 col-xs-offset-1 margin-top-2 border opacity00" id="exampleDiv3">
			<div id="thirdExample" class="opacity00 margin-top-2">
				int a[<span id="arraySize3">2</span>]={<span id="inValue1">10</span>,<span id="inValue2">20</span>,<span id="inValue3">30</span>,
														<span id="inValue4">40</span>,<span id="inValue5">50</span>};
			</div>
				<div id="tableDiv3" class="margin-top-3">
				<table align="center">
					<tr>
						<td class="elementBox"><span class="opacity00" id="element10">a[0]</span></td>
						<td class="elementBox"><span class="opacity00" id="element11">a[1]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox3">
						<td class="smallBox3"><span class="opacity00" id="valueIds1">10</span></td>
						<td class="smallBox3"><span class="opacity00" id="valueIds2">20</span></td>
					</tr>
					<tr class="opacity00" id="address3">
						<td class="addressBox">1022</td>
						<td class="addressBox">1024</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-3 col-xs-offset-1 margin-top-2 border opacity00" id="exampleDiv4">
			<div id="fourthExample" class="opacity00 margin-top-2">
				int a[<span id="arraySize4"> </span>]={<span id="inputCount"><span id="inputVal1">10</span>,
						<span id="inputVal2">20</span>,<span id="inputVal3">30</span></span>};
			</div>
				<div id="tableDiv4" class="margin-top-3">
				<table align="center">
					<tr>
						<td class="elementBox"><span class="opacity00" id="element12">a[0]</span></td>
						<td class="elementBox"><span class="opacity00" id="element13">a[1]</span></td>
						<td class="elementBox"><span class="opacity00" id="element14">a[2]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox4">
						<td class="smallBox4"><span class="opacity00" id="valuesId1">10</span></td>
						<td class="smallBox4"><span class="opacity00" id="valuesId2">20</span></td>
						<td class="smallBox4"><span class="opacity00" id="valuesId3">30</span></td>
					</tr>
					<tr class="opacity00" id="address4">
						<td class="addressBox">1020</td>
						<td class="addressBox">1024</td>
						<td class="addressBox">1026</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="col-xs-6 col-xs-offset-1 margin-top-2 border opacity00" id="exampleDiv5">
			<div id="fifthExample" class="opacity00 margin-top-2">
				int a[<span id="arraySize5">10</span>]={<span id="inpVal">0</span>};
			</div>
				<div id="tableDiv5" class="margin-top-3">
				<table align="center">
					<tr>
						<td class="elementBox"><span class="opacity00" id="elementVal0">a[0]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal1">a[1]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal2">a[2]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal3">a[3]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal4">a[4]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal5">a[5]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal6">a[6]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal7">a[7]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal8">a[8]</span></td>
						<td class="elementBox"><span class="opacity00" id="elementVal9">a[9]</span></td>
					</tr>
					<tr class="visibility-hidden" id="smallBox5">
						<td class="smallBox5"><span class="opacity00" id="lastValue">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
						<td class="smallBox5"><span class="opacity00 lastValues">0</span></td>
					</tr>
					<tr class="opacity00" id="address5">
						<td class="addressBox">1028</td>
						<td class="addressBox">1030</td>
						<td class="addressBox">1032</td>
						<td class="addressBox">1034</td>
						<td class="addressBox">1036</td>
						<td class="addressBox">1038</td>
						<td class="addressBox">1040</td>
						<td class="addressBox">1042</td>
						<td class="addressBox">1044</td>
						<td class="addressBox">1046</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>

</body>

<script type="text/javascript">
$(document).ready(function() {
	introGuide();
	$("body").keydown(function(e) {
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
});

function introGuide() {
	introjs = introJs();
	
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
			element :'#infoDiv',
			intro : '',
			tooltipClass : 'hide',
		}, {
			element : '#exampleDiv1',
			intro : '',
			position : 'right',
		}, {
			element : '#exampleDiv2',
			intro : '',
			position : 'right',
		}, {
			element : '#exampleDiv3',
			intro : '',
			position : 'bottom',
		}, {
			element : '#exampleDiv4',
			intro : '',
			position : 'bottom',
		}, {
			element : '#exampleDiv5',
			intro : '',
			position : 'bottom',
		}, {
			element :"#restart",
			intro : "Click to restart",
			position : 'right',
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		$(".introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton").hide();
		var elementId = targetElement.id;
		switch(elementId) {
		case 'infoDiv' :
			$("#infoDiv").css({height: $("#infoDiv").outerHeight()});
			var text = $("#infoDiv").html();
			typing($("#infoDiv"), text, function() {
				$("#infoDiv").addClass('z-index9999999');
				setTimeout(function () {
					introjs.nextStep();
				}, 1000);
			});
			break;
		case 'exampleDiv1':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleDiv1").removeClass("opacity00", function() {
					typing('.introjs-tooltiptext', "Let us consider a example on <span class='ct-code-b-yellow'>one dimensional array</span>."
							, function() {
						$("#firstExample").removeClass("opacity00");
						var text = $("#firstExample").html();
						typing($("#firstExample"), text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
							$(".user-btn").click(function() {
								$(".user-btn").remove();
								typing('.introjs-tooltiptext', "The size of the array is 4. So the memory alloted into 4 regions.", function() {
									$("#arraySize1").effect( "highlight", {color:"dodgerblue"}, 2000, function() {
										$("#smallBox1").removeClass("visibility-hidden");
										$(".smallBox1").addClass("animated-border").one('animationend', function() {
											$(".smallBox1").off();
											$(".smallBox1").css("border-color", "dodgerblue");
											$("#address1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
												typing('.introjs-tooltiptext', "Here <span class='ct-code-b-yellow'>1024</span>" +
														" is the base address and every time the address stores two bytes of memory" +
														" because of it is an <span class='ct-code-b-yellow'>integer data type</span>.", function() {
													$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
													$(".user-btn").click(function() {
														$(".user-btn").remove();
														typing('.introjs-tooltiptext', "The values with in the braces are scanned from left to right"
															+ " and assigned them to a[0], a[1], and so on. <br>And the values allocated into"
															+ " the memory.", function() {
															$("#element1").removeClass("opacity00", function() {
																$("#element2").removeClass("opacity00", function() {
																	$("#element3").removeClass("opacity00", function() {
																		$("#element4").removeClass("opacity00", function() {
																			firstAnimation(1);
																		});
																	});
																});
															});
														});
													});
												});
											});
										});
									});
								});
							});
						});
					}); 
				});
			}); 
			break;
		case 'exampleDiv2':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleDiv2").removeClass("opacity00", function() {
					typing('.introjs-tooltiptext', "Now look at the another example.", function() {
						$("#secondExample").removeClass("opacity00");
						var text = $("#secondExample").html();
						typing($("#secondExample"), text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
							$(".user-btn").click(function() {
								$(".user-btn").remove();
								typing('.introjs-tooltiptext', "The size of the array is 5. So the memory allocated into 5 regions.", function() {
									$("#arraySize2").effect( "highlight", {color:"dodgerblue"}, 2000, function() {
										$("#smallBox2").removeClass("visibility-hidden");
										$(".smallBox2").addClass("animated-border").one('animationend', function() {
											$(".smallBox2").off();
											$(".smallBox2").css("border-color", "dodgerblue");
											$("#address2").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
												$("#element5").removeClass("opacity00", function() {
													$("#element6").removeClass("opacity00", function() {
														$("#element7").removeClass("opacity00", function() {
															$("#element8").removeClass("opacity00", function() {
																$("#element9").removeClass("opacity00", function() {
																	secondAnimation(1);
																});
															});
														});
													});
												});
											});
										});
									});
								});
							});
						});
					});
				});
			});
			break;
		case 'exampleDiv3':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleDiv3").removeClass("opacity00", function() {
					typing('.introjs-tooltiptext', "Now look at the another example.", function() {
						$("#thirdExample").removeClass("opacity00");
						var text = $("#thirdExample").html();
						typing($("#thirdExample"), text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
							$(".user-btn").click(function() {
								$(".user-btn").remove();
								typing('.introjs-tooltiptext', "The size of the array is 2. So the memory allocated into 2 regions.", function() {
									$("#arraySize3").effect( "highlight", {color:"dodgerblue"}, 2000, function() {
										$("#smallBox3").removeClass("visibility-hidden");
										$(".smallBox3").addClass("animated-border").one('animationend', function() {
											$(".smallBox3").off();
											$(".smallBox3").css("border-color", "dodgerblue");
											$("#address3").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
												$("#element10").removeClass("opacity00", function() {
													$("#element11").removeClass("opacity00", function() {
														thirdAnimation(1);
													});
												});
											});
										});
									});
								});
							});
						});
					});
				});
			});
			break;
		case 'exampleDiv4':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleDiv4").removeClass("opacity00", function() {
					typing('.introjs-tooltiptext', "Now look at the another example.", function() {
						$("#fourthExample").removeClass("opacity00");
						var text = $("#fourthExample").html();
						typing($("#fourthExample"), text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
							$(".user-btn").click(function() {
								$(".user-btn").remove();
								typing('.introjs-tooltiptext', "The size of a <span class='ct-code-b-yellow'>one dimensional array</span>" +
										" need not be mentioned in its initialization. In this case, the compiler will count the values" +
										" assigned and take it as the size of that array.", function() {
									$("#inputCount").effect("highlight", {color:"#FF9900"}, 2000, function() {
										$("#arraySize4").effect("highlight", {color:"dodgerblue"}, 2000, function() {
											$("#smallBox4").removeClass("visibility-hidden");
											$(".smallBox4").addClass("animated-border").one('animationend', function() {
												$(".smallBox4").off();
												$(".smallBox4").css("border-color", "dodgerblue");
												$("#address4").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
													$("#element12").removeClass("opacity00", function() {
														$("#element13").removeClass("opacity00", function() {
															$("#element14").removeClass("opacity00", function() {
																fourthAnimation(1);
															});
														});
													});
												});
											});
										});
									});
								});
							});
						});
					});
				});
			});
			break;
		case 'exampleDiv5':
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#exampleDiv5").removeClass("opacity00", function() {
					typing('.introjs-tooltiptext', "Now look at the another example.", function() {
						$("#fifthExample").removeClass("opacity00");
						var text = $("#fifthExample").html();
						typing($("#fifthExample"), text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
							$(".user-btn").click(function() {
								$(".user-btn").remove();
								typing('.introjs-tooltiptext', "The size of the array is 10." +
										" So the memory allocated into 10 regions", function() {
									$("#arraySize5").effect( "highlight", {color:"dodgerblue"}, 2000, function() {
										$("#smallBox5").removeClass("visibility-hidden");
										$(".smallBox5").addClass("animated-border").one('animationend', function() {
											$(".smallBox5").off();
											$(".smallBox5").css("border-color", "dodgerblue");
											$("#address5").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
												elementRecursion(0);
											});
										});
									});
								});
							});
						});
					});
				});
			});
			break;
		case "restart":
			$(".introjs-skipbutton, .introjs-prevbutton, .introjs-nextbutton").hide();
			$('.introjs-helperLayer').one("transitionend", function() {
				$("#restart").fadeTo(1000, 1);
				$("#restart").removeClass("opacity00");
			});
			break;
		}
	});
	introjs.start();
}

function typing(selector, text, callBackFunction) {
	var typingSpeed = 10;
	$(selector).typewriting( text , {
		"typing_interval": typingSpeed,
		"cursor_color": 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		$(".introjs-nextbutton").removeClass("opacity00");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	})
}

function zooming(selector, callBackFunction) {
	$(selector).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}	
	});
}

function firstAnimation(i) {
	var l3 = $("#input" + i).offset();
	var l4 = $("#value" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$("#value" + i).removeClass("opacity00");
	TweenMax.from("#value" + i, 0.7, {top: topLength, left: leftLength, onComplete: function() {
		if (i < $("#arraySize1").text()) {
			firstAnimation(++i);
		} else {
			$(".introjs-nextbutton").show();
		}
	}});
} 

function secondAnimation(i) {
	var l3 = $("#inputValue" + i).offset();
	var l4 = $("#valueId" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$("#valueId" + i).removeClass("opacity00");
	TweenMax.from("#valueId" + i, 0.5, {top: topLength, left: leftLength, onComplete: function() {
		if (i < 3) {
			secondAnimation(++i);
		} else{
			typing('.introjs-tooltiptext', "So the remaining regions filled with the <span class='ct-code-b-yellow'>0</span>\'s", function() {
				$("#valueId4").removeClass("opacity00").effect("highlight", {color:"#00FF00"}, 2000, function() {
					$("#valueId5").removeClass("opacity00").effect("highlight", {color:"#00FF00"}, 2000, function() {
						$(".introjs-nextbutton").show();
					});
				});
			});
		}
	}});
}

function thirdAnimation(i) {
	var l3 = $("#inValue" + i).offset();
	var l4 = $("#valueIds" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$("#valueIds" + i).removeClass("opacity00");
	TweenMax.from("#valueIds" + i, 0.5, {top: topLength, left: leftLength, onComplete: function() {
		if (i < 2) {
			thirdAnimation(++i);
		} else {
			$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
			$(".user-btn").click(function() {
				$(".user-btn").remove();
				typing('.introjs-tooltiptext',"Here the number of initial values exceeds the size of the array," +
						" so the remaining values are skip automatically.", function() {
					$("#inValue3").effect( "highlight", {color:"red"}, 1000, function() {
						$("#inValue4").effect( "highlight", {color:"red"}, 1000, function() {
							$("#inValue5").effect( "highlight", {color:"red"}, 1000, function() {
								$(".introjs-nextbutton").show();
							});
						});
					});
				});
			});
		}
	}});
}

function fourthAnimation(i) {
	var l3 = $("#inputVal" + i).offset();
	var l4 = $("#valuesId" + i).offset();
	var topLength = l3.top - l4.top;
	var leftLength = l3.left-l4.left;
	$("#valuesId" + i).removeClass("opacity00");
	TweenMax.from("#valuesId" + i, 0.5, {top: topLength, left: leftLength, onComplete: function() {
		if (i < 3) {
			fourthAnimation(++i);
		} else {
			$(".introjs-nextbutton").show();
		}
	}});
}

function elementRecursion(i) {
	$("#elementVal" + i).removeClass("opacity00", function() {
		if (i < 9) {
			elementRecursion(++i);
		} else {
			var l3 = $("#inpVal").offset();
			var l4 = $("#lastValue").offset();
			var topLength = l3.top - l4.top;
			var leftLength = l3.left-l4.left;
			$("#lastValue").removeClass("opacity00");
			TweenMax.from("#lastValue", 0.5, {top: topLength, left: leftLength, onComplete: function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn'>Next &#8594;</a>");
				$(".user-btn").click(function() {
					$(".user-btn").remove();
					typing('.introjs-tooltiptext', "The size of the array is 10 but the values in the braces is only one." +
							" The remaining elements are initialized with 0\'s because" +
							" missing elements are assigned zero value automatically.", function() {
						$(".lastValues").removeClass("opacity00");
						TweenMax.staggerFrom(".lastValues", 1, {opacity:1, top:-95, onComplete: function() {
							$(".introjs-nextbutton").show();
						}});
					});
				});
			}});
		}
	});
}


</script>

</html>