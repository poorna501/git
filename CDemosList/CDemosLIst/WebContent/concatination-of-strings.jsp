<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css" >
<link rel="stylesheet" href="/css/introjs-ct.css" >
<link rel="stylesheet" href="/css/animate.css">'
<link rel="stylesheet" href="/css/font-awesome.min.css">

<script src="/js/jquery-latest.js"></script>
<script src="/js/intro.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/gs/TweenMax.min.js"></script>

<title>Concatination of a string</title>
</head>
<style>

.margin-top-25 {
	margin-top: 25px;
}

.margin-top-40 {
	margin-top: 40px;
}

.margin0 {
	margin: 0px;
}

pre {
    padding: 10px;
    font-size: 13px;
    white-space: pre;
	-moz-tab-size: 6;
    border-radius: 8px;
    background-color: lavander;
}

#memory {
	border: 1px solid lightgray;
	border-radius: 8px;
	height: 265px;
}

table {
	margin-top: 20px;
	width: 95%;
	text-align: center;
	table-layout: fixed;
}

.td-border {
	padding: 4px;
	text-align: center;
	border: 1px solid lightgray;
}

#output {
	height: 129px;
	border-radius: 8px;
	border: 1px solid lightgray;
}

.padding0 {
	padding: 0;
}

.panel-heading {
	padding: 3px;
	letter-spacing: 1px;
	font-family: monospace;
	font-weight: bold;
	background-image: -moz-linear-gradient(center top, #e8e8e8, #bcbbbc);
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
}

.panel {
	border-radius: 0px;
}

.panel-body {
	padding: 8px;
	letter-spacing: 1px;
	background-color: black;
	color: white;
	height: 100px;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
}

.input {
	background-color: black;
	border: medium none;
	letter-spacing: 1px;
}

#stringTd1, #stringTd2, #stringTd3 {
	font-family: monospace;
	font-weight: bold;
	color: green;
	font-size: 14px;
}

.ct-red {
	font-family: monospace;
	font-weight: bold;
	color: red;
}

.fa {
	color: white;
	top: 2px;
	position: relative;
}

.i-value, .j-value {
    bottom: 5px;
    color: black;
    display: inline-block;
    font-weight: bold;
    position: relative;
    right: 23px;
}

#cupI {
	background-color: #003399;
	border: 1px solid white;
	border-radius: 7px;
	box-shadow: 0 2px 15px rgba(0, 0, 0, 0.4);
	height: 34px;
	left: 360px;
	padding-bottom: 2px;
	position: absolute;
	top: 150px;
	width: 54px;
}

.i-position, .j-position {
	bottom: 4px;
	color: white;
	left: 2px;
	position: relative;
}

.circle {
	background-color: #337ab7;
	border-radius: 50%;
	padding-left: 2px;
	padding-right: 2px;
	border: 1px solid #003399;
}

#cupJ {
	background-color: #003399;
	border: 1px solid white;
	border-radius: 7px;
	box-shadow: 0 2px 15px rgba(0, 0, 0, 0.4);
	height: 34px;
	left: 463px;
	padding-bottom: 2px;
	position: absolute;
	top: 150px;
	width: 54px;
}

.z-index {
	z-index: 1000004;
}
</style>
<body>
	<div class="demo-heading text-center margin-top-25">
		<h4 class="label ct-demo-heading" id="heading">Sample program on Strings</h4>
	</div>
	<div class="col-xs-12 margin-top-40">
		<div class="col-xs-12">
			<div class="col-xs-5 padding0" id="program">
<pre class="margin0">
		
#include&lt;stdio.h&gt;
int main() {
   <span id="charDec">char a[20], b[20], c[20];</span>
   <span id="intDec">int i, j;</span>
   <span id="firstString">printf("Enter the first string : ");</span>
   <span id="scanA">scanf("%s", a);</span>
   <span id="secondString">printf("Enter the second string : ");</span><span id="cupI" class="opacity00"><span class="i-position">i=</span><i class="fa fa-coffee fa-2x sm"></i><span class="i-value opacity00">0</span></span>
   <span id="scanB">scanf("%s", b);</span>
   <span id="loopA">for (<span id="iInitialization">i = <span class="zero">0</span></span>; <span id="condition1">a[i] != '\0'</span>; <span id="iIncrement">i++</span>) {</span>
       <span id="line1">c[i] = a[i];</span></span><span id="cupJ" class="opacity00"><span class="j-position">j=</span><i class="fa fa-coffee fa-2x sm"></i><span class="j-value opacity00">0</span></span>
   }
   <span id="loopB">for (<span id="jInitialization">j = <span class="j-zero">0</span></span>; <span id="condition2">b[j] != '\0'</span>; <span id="jIncrement">j++</span>) {</span>
       <span id="line2">c[i] = b[j];</span>
       <span id="secondIIncrement">i++;</span>
   }
   <span id="delimeter">c[i] = '\0';</span>
   <span id="concatenatedString">printf("The concatenated string = %s \n ",c);</span>
}


</pre>
			</div>
			<div class="col-xs-7">
				<div class="col-xs-12 padding0 " id="memory">
					<table  id="tableId1" class="opacity00" align="center">
						<tbody>
							<tr>
								<td><b class="ct-blue-color">a</b></td>
								<td>0</td>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>7</td>
								<td>8</td>
								<td>9</td>
							</tr>
								
							<tr id="stringTd1">
								<td><div class="td-border opacity00">00</div></td>
							</tr>
						</tbody>
					</table>
					<table id="tableId2" class="opacity00" align="center">
						</tbody>	
							<tr class="text-center">
								<td><b class="ct-blue-color">b</b></td>
								<td>0</td>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>7</td>
								<td>8</td>
								<td>9</td>
							</tr>
								
							<tr id="stringTd2" border="2px">
							<td><div class="td-border opacity00">00</div></td>
							</tr>
						</tbody>
					</table>
					<table id="tableId3" class="opacity00" align="center">
						<tbody>
							<tr>
								<td><b class="ct-blue-color">c</b></td>
								<td>0</td>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>7</td>
								<td>8</td>
								<td>9</td>
								<td>10</td>
								<td>11</td>
								<td>12</td>
								<td>13</td>
								<td>14</td>
								<td>15</td>
								<td>16</td>
								<td>17</td>
								<td>18</td>
								<td>19</td>
							</tr>
								
							<tr id="stringTd3">
							<td><div class="td-border opacity00">00</div></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-xs-5 col-xs-offset-1 margin-top-25 padding0 opacity00" id="output">
				<div class="panel-heading text-center">Output</div>
				<div class="panel panel-body">
					<div class="firstLine"></div>
					<div class="secondLine"></div>
					<div class="thirdLine"></div>
				</div>
			</div>
		</div>
		<div class="col-xs-12 text-center margin-top-40">
			<span id="restart" class="opacity00 btn btn-warning">Restart</span>
		</div>
	</div>
	
<script>
var introjs;
var typingInterval = 35;
var countI = 0;
var i = 0;
var j = 0;
var countJ = 0;

$(document).ready(function() {
	introGuide();
	
	$('#restart').click(function() {
		location.reload();
	});

});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
				showStepNumbers : false,
				exitOnOverlayClick : false,
				showBullets : false,
				exitOnEsc : false,
				keyboardNavigation : false,
				steps : [ {
							element: '#program',
							intro: '',
							position: 'right'
						}, {
							element: '#charDec',
							intro: '',
							position: 'right'
						}, {
							element: '#memory',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#intDec',
							intro: ''
						}, {
							element: '#firstString',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#scanA',
							intro: '',
						}, {
							element: '#output',
							intro: '',
							position: 'left'
						}, {
							element: '#memory',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#secondString',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#scanB',
							intro: '',
						}, {
							element: '#output',
							intro: '',
							position: 'left'
						}, {
							element: '#memory',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#loopA',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#iInitialization',
							intro: ''
						}, {
							element: '#condition1',
							intro: ''
						}, {
							element: '#jInitialization',
							intro: ''
						}, {
							element: '#concatenatedString',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#restart',
							intro: '',
							position: 'right'
						} ]
	})
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "program":
			$('.introjs-nextbutton').hide();
			var text = "This is a program which describes to find the <span class='ct-code-b-yellow'>concatination of strings</span> without using any string library functions.";
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();
			});
			break;
			
		case "charDec":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "Here we declared three char arrays with the size 20";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "memory":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (introjs._currentStep == 2) {
					$("#memory").removeClass("opacity00");
					$("#tableId1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#tableId1").removeClass("animated zoomIn");
						$("#tableId2").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
							$("#tableId2").removeClass("animated zoomIn");
							$("#tableId3").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
								$("#tableId3").removeClass("animated zoomIn");
								tableBorder();
								$("#stringTd1, #stringTd2").append("<td><div class='opacity00'></div></td>");
								timing();
							});
						});
					});
				} else if (introjs._currentStep == 8) {
					firstUserSpaceFind();
					timing();
				} else  {
					secondUserSpaceFind();
					timing();
				}
			});
			break;
				
		case "intDec":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "Here we declared two variables i, j";
				typing('.introjs-tooltiptext', text, function() {
					$("#cupI, #cupJ").removeClass("opacity00").addClass("z-index");
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "firstString":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#cupI, #cupJ").removeClass("z-index");
				var text = "<span class='ct-code-b-yellow'>printf()</span> function is used to "
							+ "<span class='ct-code-b-yellow'>print</span> the <span class='ct-code-b-yellow'>data</span> "
							+ "or user defined <span class='ct-code-b-yellow'>message</span> on <span class='ct-code-b-yellow'> "
							+ "console</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				})
			});
			break;
			
		case "output":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (introjs._currentStep == 5) {
					$("#output").removeClass("opacity00");
					$(".firstLine").append('<span id="firstStringPrint">Enter the first string : </span>');
					timing();
				} else if (introjs._currentStep == 7) {
					$(".firstLine").append('<span id="firstText"></span>');
					$("#firstText").append('<input type="text" class="input" maxlength="9" id ="user1Text">')
					var text = "Enter string";
					typing('.introjs-tooltiptext', text, function() {
						caretAtEnd(document.getElementById('user1Text'));
						keydownEvent();
						$("#user1Text").on("keyup", function(e) {
							$('.error-text').remove();
							if ($("#user1Text").val().length < 1) {
								$('.introjs-nextbutton').hide();
							} else {
								$('.introjs-nextbutton').show();
							}
						});
						//$('.introjs-nextbutton').show();
					});
				} else if (introjs._currentStep == 10) {
					$(".secondLine").append('<span id="firstStringPrint">Enter the second string : </span>');
					timing();
				} else if (introjs._currentStep == 12) {
					var text = "Enter string";
					typing('.introjs-tooltiptext', text, function() {
						$(".secondLine").append('<span id="secondText"></span>');
						$("#secondText").append('<input type="text" class="input" id="user2Text" maxlength="9">')
						caretAtEnd(document.getElementById('user2Text'));
						keydownEvent();
						$("#user2Text").on("keyup", function(e) {
							if ($("#user2Text").val().length < 1) {
								$('.introjs-nextbutton').hide();
							} else {
								$('.introjs-nextbutton').show();
							}
						});
					});
				} else {
					$(".thirdLine").append('<span id="concatString">The concatenated string = '+ $("#user1Text").val() + $("#user2Text").val() + '</span>');
					timing();
				}
			});
			break;
			
		case "scanA":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text =	"The function <span class='ct-code-b-yellow'>scanf()</span> can be used to read a string by using the conversion"
							+ " specification %s. it reads a string until a white space character is read and the <span class='ct-code-b-yellow'>NULL('\\0')</span> is"
							+ "	automatically appended to the string.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "secondString":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>printf()</span> function is used to "
							+ "<span class='ct-code-b-yellow'>print</span> the <span class='ct-code-b-yellow'>data</span> "
							+ "or user defined <span class='ct-code-b-yellow'>message</span> on <span class='ct-code-b-yellow'> "
							+ "console</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "scanB":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text =	"The function <span class='ct-code-b-yellow'>scanf()</span> can be used to read a string by using the conversion"
							+ " specification %s. it reads a string until a white space character is read and the <span class='ct-code-b-yellow'>NULL('\\0')</span> is"
							+ "	automatically appended to the string.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "loopA":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				setTimeout(function() {
					introjs.nextStep();
				}, 800);
			});
			break;
			
		case "iInitialization":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "Here we initialized <span class='ct-code-b-yellow'>i</span> with <span class='ct-code-b-yellow'>0</span>.";
				$("#cupI").addClass("z-index");
				typing('.introjs-tooltiptext', text, function() {
					setTimeout(function() {
						var l1 = $(".i-value").offset();
						var l2 = $(".zero").offset();
						var l3 = l2.top-l1.top - parseInt($(".i-value").css("bottom"));
						var l4 = (l2.left-l1.left) - parseInt($(".i-value").css("right"));
						$(".i-value").removeClass("opacity00").addClass("circle");
						TweenMax.from(".i-value", 2, {top: l3, left: l4, onComplete:function() {
						  	$(".i-value").removeAttr("style").removeClass("circle");
							$('.introjs-nextbutton').show();
						}});
					}, 800);
				});
			});
			break;
			
		case "condition1":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (countI < $("#user1Text").val().length) {
					var text = "<div>a[" + countI + "] = " + $('#user1Text').val().charAt(countI) + "</div>"
								+ "<span class='ct-code-b-yellow'>" +  $('#user1Text').val().charAt(countI) +" != \\0 </span>condition <span class='ct-code-b-yellow'>true</span> it will enters in to the loop.";
					typing('.introjs-tooltiptext', text, function() {
						var newStep = getStep('#line1', '', '', '');
						introjs.insertOption(introjs._currentStep + 1, newStep);
						$('.introjs-nextbutton').show();
					});
				} else {
					var text = "<div>a[" + countI + "] = \\0 </div>"
								+ "<span class='ct-code-b-yellow'>\\0 != \\0</span> condition <span class='ct-code-b-yellow'>fails</span> so it will comes out of the loop.";
					typing('.introjs-tooltiptext', text, function() {
						var newStep = getStep('#loopB', '', 'hide', '');
						introjs.insertOption(introjs._currentStep + 1, newStep);
						$('.introjs-nextbutton').show();
					});
				}
			});
			break;
				
		case "line1":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>c[" + countI + "] = " + $('#user1Text').val().charAt(countI) + "</span>";
				typing('.introjs-tooltiptext', text, function() {
					var newStep = getStep('#tableId3', '', 'hide', '');
					introjs.insertOption(introjs._currentStep + 1, newStep);
					$('.introjs-nextbutton').show();
				})
			});
			break;
				
		case "tableId3":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				introjs.refresh();
				if (countI < $("#user1Text").val().length) {
					$("#tdBorder" + i).text(($("#user1Text").val().charAt(countI)));
					var newStep = getStep('#iIncrement', '', '', '');
					introjs.insertOption(introjs._currentStep + 1, newStep);
					timing();
				} else if (countJ < $("#user2Text").val().length) {
					$("#tdBorder" + i).text(($("#user2Text").val().charAt(countJ)));
					var newStep = getStep('#secondIIncrement', '', '', '');
					introjs.insertOption(introjs._currentStep + 1, newStep);
					timing();
				}
				else {
					$("#tdBorder" + i).text("\\0");
					timing();
				}
			});
			break;
			
		case "iIncrement":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow value-text'>i</span> is incremented to <span class='ct-code-b-yellow'>" + (i+1) + "</span>";
				typing('.introjs-tooltiptext', text, function () {
					countI++;
					setTimeout(function() {
						var newStep = getStep('#condition1', '', '', 'right');
						introjs.insertOption(introjs._currentStep + 1, newStep);
						TweenMax.to(".i-value", 1, {rotationX: 90, onComplete: function() {
						   	$(".i-value").text(i+1);
						   	TweenMax.to(".i-value", 1, {rotationX: 0, onComplete: function() {
						   		i++;
								$('.introjs-nextbutton').show();
						   	}});
						}});
					}, 800);
				});
			});
			break;
			
		case "loopB":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				timing();
			});
			break;
				
		case "jInitialization":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#cupI").removeClass("z-index");
				$("#cupJ").addClass("z-index");
				var text = "Here we initialized <span class='ct-code-b-yellow'>j</span> with <span class='ct-code-b-yellow'>0</span>";
				typing('.introjs-tooltiptext', text, function() {
					setTimeout(function() {
						var l1 = $(".j-value").offset();
						var l2 = $(".j-zero").offset();
						var l3 = l2.top-l1.top - parseInt($(".j-value").css("bottom"));
						var l4 = (l2.left-l1.left) - parseInt($(".j-value").css("right"));
						$(".j-value").removeClass("opacity00").addClass("circle");
						TweenMax.from(".j-value", 2, {top: l3, left: l4, onComplete:function() {
						  	$(".j-value").removeAttr("style").removeClass("circle");
							$('.introjs-nextbutton').show();
							var newStep = getStep('#condition2', '', '', 'right');
							introjs.insertOption(introjs._currentStep + 1, newStep);
							$('.introjs-nextbutton').show();
						}});
					}, 800);
				});
			});
			break;
			
		case "condition2":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (countJ < $("#user2Text").val().length) {
					var text = "<div>b[" + countJ + "] = " + $('#user2Text').val().charAt(countJ) + "</div>"
								+ "<span class='ct-code-b-yellow'>" +  $('#user2Text').val().charAt(countJ) +" != \\0 </span>condition <span class='ct-code-b-yellow'>true</span> it will enters in to the loop.";
					typing('.introjs-tooltiptext', text, function() {
						var newStep = getStep('#line2', '', '', '');
						introjs.insertOption(introjs._currentStep + 1, newStep);
						$('.introjs-nextbutton').show();
					});
				} else {
					var text = "<div>b[" + countJ + "] = \\0 </div>"
								+ "<span class='ct-code-b-yellow'>\\0 != \\0</span> condition <span class='ct-code-b-yellow'>fails</span> so it will comes out of the loop.";
					typing('.introjs-tooltiptext', text, function() {
						var newStep = getStep('#delimeter', '', 'show', '');
						introjs.insertOption(introjs._currentStep + 1, newStep);
						$('.introjs-nextbutton').show();
					});
				}
			});
			break;
			
		case "line2":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>c[" + i + "] = " + $('#user2Text').val().charAt(countJ) + "</span>";
				typing('.introjs-tooltiptext', text, function() {
					var newStep = getStep('#tableId3', '', 'hide', '');
 					introjs.insertOption(introjs._currentStep + 1, newStep);
					$('.introjs-nextbutton').show();
				})
			});
			break;
				
		case "jIncrement":
			j++;	
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#cupJ").addClass("z-index");
				$("#cupI").removeClass("z-index");
				var text = "<span class='ct-code-b-yellow value-text-j'>j</span> is incremented to <span class='ct-code-b-yellow'>" + j + "</span>";
				typing('.introjs-tooltiptext', text, function () {
					countJ++;
					setTimeout(function() {
						TweenMax.to(".j-value", 1, {rotationX: 90, onComplete: function() {
							$(".j-value").text(j);
			    			TweenMax.to(".j-value", 1, {rotationX: 0, onComplete: function() {
								var newStep = getStep('#condition2', '', '', 'right');
								introjs.insertOption(introjs._currentStep + 1, newStep);
								$('.introjs-nextbutton').show();
					    	}});
			    		}});
					}, 800);
				});
			});
			break;
			
		case "secondIIncrement":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#cupJ").removeClass("z-index");
				$("#cupI").addClass("z-index");
				var text = "<span class='ct-code-b-yellow value-text1'>i</span> is incremented to <span class='ct-code-b-yellow'>" + (i+1) + "</span>";
				typing('.introjs-tooltiptext', text, function () {
					var newStep = getStep('#jIncrement', '', '', 'right');
					introjs.insertOption(introjs._currentStep + 1, newStep);
					setTimeout(function() {
						TweenMax.to(".i-value", 1, {rotationX: 90, onComplete: function() {
						   	$(".i-value").removeAttr("style").text(i+1);
						   	TweenMax.to(".i-value", 1, {rotationX: 0, onComplete: function() {
						   		i++;
								$('.introjs-nextbutton').show();
						   	}});
						}});
					}, 800);
				});
			});
			break;
			
		case "delimeter":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>c[" + i + "] = \\0";
				typing('.introjs-tooltiptext', text, function() {
					var newStep = getStep('#tableId3', '', 'hide', '');
					introjs.insertOption(introjs._currentStep + 1, newStep);
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "concatenatedString":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "The function printf( ) using %s as the conversion specification displays the string.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;

		case "restart":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#restart").removeClass("opacity00");
				var text = "Click to restart.";
				typing(".introjs-tooltiptext", text);
			});
			break;
		
		}
	});
	
	introjs.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
}

function typing(typingId, typingContent,callBackFunction) {
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

function caretAtEnd(element) {
	element.focus();
	if (typeof window.getSelection != "undefined" && typeof document.createRange != "undefined") {
		var range = document.createRange();
		range.selectNodeContents(element);
		range.collapse(false);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
	}
}

function timing() {
	setTimeout(function() {
		introjs.nextStep();
	}, 1000);
}

function keydownEvent() {
	$(".input").on("keydown", function(e) {
		var max = $(this).attr("maxlength");
		$('.error-text').remove();
		if ($.inArray(e.keyCode, [46, 8, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		
		if (e.keyCode == 13 || e.keyCode === 9) {
			e.preventDefault();
		}
		if ($(this).val().length > max-1) {
			$('.introjs-tooltiptext').append("<span class='ct-red error-text'><br/>String length 9.</span>");
			e.preventDefault();
		}
	}); 
}

function tableBorder() {
	for (var i = 0; i < 10; i++) {
		$("#stringTd1, #stringTd2").append("<td class='td-border'></td>");
	}
	
	for (var i = 0; i < 20; i++) {
		$("#stringTd3").append('<td class="td-border" id="tdBorder' + i + '"></td>');
	}
}

function firstUserSpaceFind() {
	$.each($("#user1Text").val().split(""), function(index, value) {
		if (value.trim() != "") {
	    	$("#stringTd1 td").eq(index + 1).addClass("filled").text(value);
	    } else {
	    	$("#stringTd1 td").eq(index + 1).text("\\0");
			return false;
	    }
	});

	if ($(".filled").length < 10) {
		$("#stringTd1 td").eq($(".filled").length + 1).text("\\0");
	}
}

function secondUserSpaceFind() {
	$.each($("#user2Text").val().split(""), function(index, value) {
		if (value.trim() != "") {
			$("#stringTd2 td").eq(index + 1).addClass("auto-filled").text(value);
		} else {
			$("#stringTd2 td").eq(index + 1).text("\\0");
			return false;
		}
	});
	if ($(".auto-filled").length < 10) {
		$("#stringTd2 td").eq($(".auto-filled").length + 1).text("\\0");
	}
}

function getStep(element, intro, tooltipClass, position) {
	var step = {};
	if (typeof element != 'undefined') {
		step['element'] = element;
	}
	if (typeof intro != 'undefined') {
		step['intro'] = intro;
	}
	if (typeof tooltipClass != 'undefined') {
		step['tooltipClass'] = tooltipClass;
	}
	if (typeof position != 'undefined') {
		step['position'] = position;
	}
	return step;
}

</script>
</body>
</html>