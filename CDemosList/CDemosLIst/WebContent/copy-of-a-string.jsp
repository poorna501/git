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
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">

<script src="/js/jquery-latest.js"></script>
<script src="/js/intro.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/gs/TweenMax.min.js"></script>

<title>Copy of a string</title>
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
	height: 175px;
}

table {
	margin-top: 20px;
	width: 100%;
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
	border-radius: 15px;
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
	padding: 15px;
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

#userString, #copyString {
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
}

.value {
    bottom: 7px;
    color: black;
    display: inline-block;
    font-family: monospace;
    font-weight: bold;
    position: relative;
    right: 22px;
}

#cup {
	background-color: #003399;
	border: 1px solid white;
	border-radius: 7px;
	box-shadow: 0 2px 15px rgba(0, 0, 0, 0.4);
	height: 34px;
	left: 353px;
	padding-bottom: 2px;
	position: absolute;
	top: 70px;
	width: 54px;
}

.i-position {
	bottom: 4px;
	color: white;
	left: 2px;
	position: relative;
}

.z-index {
	z-index: 1000004;
}
</style>
<script>
var introcode;
var typingInterval = 35;
var count = 0;
var i = 0;
$(document).ready(function() {
	introGuide();
	
	$('#restart').click(function() {
		location.reload();
	});

});

function introGuide() {
	introcode = introJs();
	introcode.setOptions({
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
							element: '#intDec',
							intro: ''
						}, {
							element: '#charDec',
							intro: '',
						}, {
							element: '#memory',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#enterString',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#scanf',
							intro: ''
						}, {
							element: '#output',
							intro: ''
						}, {
							element: '#memory',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#forLoop',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#iInitialization',
							intro: ''
						}, {
							element: '#condition',
							intro: ''
						}, {
							element: '#stringLength',
							intro: '',
							position: 'right'
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#restart',
							intro: '',
							position: 'right'
						}]
				})
	
introcode.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "program":
			$('.introjs-nextbutton').hide();
			var text = "This is a program which describes to find the <span class='ct-code-b-yellow'>copy of a string</span> without using any string library functions.";
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();
			});
			break;
			
		case "intDec":
			$('.introjs-nextbutton').hide();
			var text = "Here we declared an integer variable <span class='ct-code-b-yellow'>i</span>.";
			typing('.introjs-tooltiptext', text, function() {
				$("#cup").removeClass("opacity00").addClass('z-index');
				$('.introjs-nextbutton').show();
			});
			break;
			
		case "charDec":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "Here we declared two char arrays with the size 20";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "memory":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (introcode._currentStep == 3) {
					$("#memory").removeClass("opacity00");
					$("#tableId1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#tableId1").removeClass("animated zoomIn")
						$("#tableId2").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
							$("#tableId2").removeClass("animated zoomIn");
							border();
							$("#userString, #copyString").append("<td><div class='opacity00'></div></td>");
							setTimeout(function() {
								introcode.nextStep();
							}, 1000);
						});
					});
				} else {
					$("#userString").removeClass("hide");
					spaceFind();
					setTimeout(function() {
						introcode.nextStep();
					}, 800);
				}
			});
			break;
	
		case "enterString":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>printf()</span> function is used to "
							+"<span class='ct-code-b-yellow'>print</span> the <span class='ct-code-b-yellow'>data</span> "
							+"or user defined <span class='ct-code-b-yellow'>message</span> on <span class='ct-code-b-yellow'> "
							+ "console</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "output":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (introcode._currentStep == 5) {
					$("#output").removeClass("opacity00");
					$(".firstLine").append('<span id="printString">Enter a string : </span>');
					timeOut();
				} else if (introcode._currentStep == 7) {
					$(".firstLine").append('<span id="textEnter"></span>');
					$("#textEnter").append('<input type="text" class="input" maxlength="19" id ="usrText">');
					caretAtEnd(document.getElementById('usrText'));
					events();
					var text = "Enter string.";
					typing('.introjs-tooltiptext', text, function() {
						//$('.introjs-nextbutton').show();
					});
				} else {
					$(".thirdLine").append('<span id="lengthString">The copied string = </span>');
					$.each($("#usrText").val().split(""), function(index, value) {
						if (value.trim() == "") {
							return false;
						}
						$("#lengthString").append('<span>' + value + '</span>');
					});
					timeOut();
				}
			});
			break;
			
		case "scanf":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<div>scanf() is a library function, <span class='ct-code-b-yellow'>%s</span> is a format specifier which reads a char array until white space occured.</div>"
							+ "The <span class='ct-code-b-yellow'>null character('\\0')</span> is placed at the end of the string by the system.";
		typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "iInitialization":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				setTimeout(function() {
					var l1 = $(".value").offset();
					var l2 = $(".zero").offset();
					var l3 = (l2.top-l1.top) - parseInt($(".value").css("bottom"));
					var l4 = (l2.left-l1.left) - parseInt($(".value").css("right"));
					$(".value").removeClass("opacity00").removeAttr("style");
					TweenMax.from(".value", 1, {top: l3, left: l4});
					var text = "Here we initialized <span class='ct-code-b-yellow'>i</span> with <span class='ct-code-b-yellow'>0</span>.";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});	
				}, 500);
			});
			break;
			
		case "forLoop":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				setTimeout(function() {
					introcode.nextStep();
				}, 500);
			});
			break;
			
		case "condition":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (count < ($("#usrText").val().length)) {
					var newStep = {
						element :'#line1',
						intro :'',
						position : "right",
					}
					introcode.insertOption(introcode._currentStep + 1, newStep);
					var text = "<div>a[" + count + "] = " + $('#usrText').val().charAt(count) + "</div>"
								+ "<span class='ct-code-b-yellow'>" +  $('#usrText').val().charAt(count) +" != \\0 </span>condition <span class='ct-code-b-yellow'>true</span> it will enters in to the loop.";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});
				} else {
					var newStep = {
							element :'#delimeter',
							intro :'',
							position : "right",
						}
						introcode.insertOption(introcode._currentStep + 1, newStep);
					var text = 	 "<div>a[" + count + "] = \\0" 
								+ "<span class='ct-code-b-yellow'>\\0 != \\0</span> condition <span class='ct-code-b-yellow'>fails</span> so it will comes out of the loop.";
					typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
					});
				}
			});
			break;
			
		case "line1":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>b[" + count + "] = " + $('#usrText').val().charAt(count) + "</span";
				typing('.introjs-tooltiptext', text, function () {
					var newStep = {
							element :'#tableId2',
							intro :'',
							tooltipClass: 'hide'
						}
						introcode.insertOption(introcode._currentStep + 1, newStep);
						$('.introjs-nextbutton').show()
					});
				});
				break;
				
		case "tableId2":
			$('.introjs-nextbutton').hide()
			introcode.refresh();
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (count < ($("#usrText").val().length)) {
					$("#tdBorder" + i).text($("#usrText").val().charAt(count));
					var newStep = {
							element :'#increment',
							intro :'',
					}
					introcode.insertOption(introcode._currentStep + 1, newStep);
					timeOut();
				} else {
					$("#tdBorder" + i).text("\\0");
					timeOut();
				}
			});
			break;
			
		case "increment":
			i++;
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>i</span> is incremented to <span class='ct-code-b-yellow animate'>" + i + "</span>";
				typing('.introjs-tooltiptext', text, function () {
					setTimeout(function() {
						TweenMax.to(".value", 1, {rotationX: 90, onComplete: function() {
							$(".value").text(""+ i +"");
							TweenMax.to(".value", 1, {rotationX: 0, onComplete: function() {
								var newStep = {
										element :'#condition',
										intro :'',
								}
								introcode.insertOption(introcode._currentStep + 1, newStep);
								count++;
								$('.introjs-nextbutton').show();
		           			}});
						}});
					}, 500);
				});
			});
			break;
			
		case "delimeter":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var newStep = {
						element :'#tableId2',
						intro :'',
						tooltipClass: 'hide'
					}
					introcode.insertOption(introcode._currentStep + 1, newStep);
				var text = "<span class='ct-code-b-yellow'>b[" + count + "] = \\0";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "stringLength":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "The function printf( ) using <span class='ct-code-b-yellow'>%s</span> as the conversion specification displays the string.";
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
	
	introcode.start();
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

function border() {
	for (var i = 0; i < 20; i++) {
		$("#userString").append("<td class='td-border'></td>");
		$("#copyString").append("<td class='td-border' id='tdBorder"+i+"'></td>");
	}

}

function spaceFind() {
	$.each($("#usrText").val().split(""), function(index, value) {
		if (value.trim() != "") {
	    	$("#userString td").eq(index + 1).addClass("filled").text(value);
	    } else {
	    	$("#userString td").eq(index + 1).text("\\0");
			return false;
	    }
	});

	if ($(".filled").length < 20) {
		$("#userString td").eq($(".filled").length + 1).text("\\0");
	}
}

function events() {
	$("#usrText").on("keydown", function(e) {
		var max = $(this).attr("maxlength");
		$('.error-text').remove();
		if ($.inArray(e.keyCode, [46, 8, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		
		if (e.keyCode == 13 || e.keyCode === 9) {
			e.preventDefault();
		}
		if ($(this).val().length > max-1) {
			$('.introjs-tooltiptext').append("<span class='ct-red error-text'><br/>String length 19.</span>");
			e.preventDefault();
		}
	}); 
	
	$("#usrText").on("keyup", function(e) {
		if ($("#usrText").val().length < 1) {
			$('.introjs-nextbutton').hide();
		} else {
			$('.introjs-nextbutton').show();
		}
	});
}

function timeOut() {
	setTimeout(function() {
		introcode.nextStep();
	}, 1000);
}

</script>
<body>
	<div class="demo-heading text-center margin-top-25">
		<h4 class="label ct-demo-heading" id="heading">Sample program on Strings</h4>
	</div>
	<div class="col-xs-12 margin-top-40">
		<div class="col-xs-12">
			<div class="col-xs-5 padding0" id="program">
<pre class="margin0">
<span id="cup" class="opacity00"><span class="i-position">i=</span><i class="fa fa-coffee fa-2x sm"></i><span class="value opacity00">0</span></span>
#include&lt;stdio.h&gt;
int main() {
	<span id="intDec">int i;</span>
   <span id="charDec">char a[20], b[20];</span>
   <span id="enterString">printf ("Enter a string : ");</span>
   <span id="scanf">scanf ("%s", ch);</span>
   <span id="forLoop">for (<span id="iInitialization">i = <span class="zero">0</span></span>; <span id="condition">a[i] != '\0'</span>; <span id="increment">i++</span>) {</span>
      <span id="line1">b[i] = a[i];</span>
   }
   <span id="delimeter">b[i] = '\0';</span>
   <span id="stringLength">printf (The copied string = %s \n ",b);</span>
}

</pre>
			</div>
			<div class="col-xs-7">
				<div class="col-xs-12" id="memory">
					<table id="tableId1" class="opacity00" align="center">
						<tbody>
							<tr id="addres1Id">
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
							<tr id="userString">
								<td><div class="td-border opacity00">00</div></td>
							</tr>
							</tbody>
						</table>
						
						<table id="tableId2" class="opacity00" id="zeroAppend" align="center">
						<tbody>
							<tr id="addres2Id">
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
							<tr id="copyString">
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
		</div></div>
		<div class="col-xs-12 text-center margin-top-40">
			<span id="restart" class="opacity00 btn btn-warning">Restart</span>
		</div>
	</div>
</body>
</html>