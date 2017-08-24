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

<title>Length of a string</title>
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
	height: 102px;
}

table {
	margin-top: 20px;
	table-layout: fixed;
	width: 100%;
	text-align: center;
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

#userString {
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
							element: '#charDec',
							intro: '',
							position: 'right'
						}, {
							element: '#memory',
							intro: '',
							tooltipClass: 'hide',
							position: 'left'
						}, {
							element: '#intDec',
							intro: '',
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
							element: '#stringIs',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#whileCond',
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
			var text = "This is a program which describes to find the <span class='ct-code-b-yellow'>length of a string</span> without using any string library functions.";
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();
			});
			break;
			
		case "charDec":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "Here we declared a char array with size 20";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "memory":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (introcode._currentStep == 2) {
					$("#memory").removeClass("opacity00");
					$("#tableId").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#tableId").removeClass("animated zoomIn");
						$("#userString").removeClass("hide");
						for (var i = 0; i < 20; i++) {
							$("#userString").append("<td class='td-border'></td>");
						}
						$("#userString").append("<td><div class='opacity00'></div></td>");
						setTimeout(function() {
							introcode.nextStep();
						}, 1000);
					});
				} else {
					spaceFind();
					$('.introjs-tooltip').removeClass("hide");
					var text = "Each string must be ended with a <span class='ct-code-b-yellow'>delimiter('\\0')</span>";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});
				}
			});
			break;
			
		case "intDec":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "Here we declared an integer variable <span class='ct-code-b-yellow'>i</span> and initialized with <span class='ct-code-b-yellow'>0</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$("#cup").removeClass("opacity00").addClass("z-index");
					setTimeout(function() {
						var l1 = $(".value").offset();
						var l2 = $(".zero").offset();
						var l3 = (l2.top-l1.top) - parseInt($(".value").css("bottom"));
						var l4 = (l2.left-l1.left) - parseInt($(".value").css("right"));
						$(".value").removeClass("opacity00");
						TweenMax.from(".value", 1, {top: l3, left: l4});
						$('.introjs-nextbutton').show();
					}, 800)
				});
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
					
				} else if (introcode._currentStep == 10){
					$(".secondLine").append('<span id="givenString">The entered string is&nbsp;:&nbsp;</span>');
					$.each($("#usrText").val().split(""), function(index, value) {
						if (value.trim() == "") {
							return false;
						}
						$("#givenString").append('<span>' + value + '</span>');
					});
					timeOut();
				} else {
					$(".thirdLine").append('<span id="lengthString">The length of the string </span>');
					$.each($("#usrText").val().split(""), function(index, value) {
						if (value.trim() == "") {
							return false;
						}
						$("#lengthString").append('<span>' + value + '</span>');
					});
					$("#lengthString").append('<span id="length"> is ' + count +'</span>');
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
			
		case "stringIs":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "printf() function used with <span class='ct-code-b-yellow'>%s</span> to print the given string on the console.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "whileCond":
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (($("#usrText").val().charAt(count)) == " " || ($("#usrText").val().charAt(count) == "")) {
					var text = "<div>ch[" + count + "] = \\0 </div>"
								+ "<span class='ct-code-b-yellow'>\\0 != \\0</span> condition returns<span class='ct-code-b-yellow'>false</span> so it will comes out of the loop.";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});
				} else {
					var newStep = {
						element :'#increment',
						intro :'',
						position : "right",
					}
					introcode.insertOption(introcode._currentStep + 1, newStep);
					var text = "<div>ch[" + count + "] = " + $('#usrText').val().charAt(count) + "</div>"
								+ "<span class='ct-code-b-yellow'>     " +  $('#usrText').val().charAt(count) +" != \\0 </span>condition <span class='ct-code-b-yellow'>true</span> it will enters in to the loop.";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});
				}
			});
			break;
			
		case "increment":
			i++;
			$('.introjs-nextbutton').hide()
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>i</span> is incremented to <span class='ct-code-b-yellow animate'>" + i + "</span>";
				typing('.introjs-tooltiptext', text, function () {
					setTimeout(function() {
						TweenMax.to(".value", 1, {rotationX: 90, onComplete: function() {
							 $(".value").text(""+ i +"");
							TweenMax.to(".value", 1, {rotationX: 0, onComplete: function() {
								var newStep = {
									element :'#whileCond',
									intro :'',
									position : "right",
								}
								introcode.insertOption(introcode._currentStep + 1, newStep);
								count++;
								$('.introjs-nextbutton').show()
						  }});
						}});
					}, 500);
				})
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
		$('.error-text').remove();
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
	}, 800);
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
   <span id="charDec">char ch[20];</span>
   <span id="intDec">int i = <span class="zero">0</span>;</span>
   <span id="enterString">printf ("Enter a string : ");</span>
   <span id="scanf">scanf ("%s", ch );</span>
   <span id="stringIs">printf ("The entered string is : %s \n", ch);</span>
   <span id="whileCond">while (ch[i] != '\0')</span> {
       <span id="increment">i++;</span>
   }
   <span id="stringLength">printf ("The length of the string %s is %d \n",ch, i);</span>
}

</pre>
			</div>
			<div class="col-xs-7">
				<div class="col-xs-12 opacity00" id="memory">
					<table class="opacity00" id="tableId">
						<tbody>
							<tr class="address-one" id="addresId">
								<td><b class="ct-blue-color">ch</b></td>
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
								
							<tr id="userString" class="hide">
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
</body>
</html>