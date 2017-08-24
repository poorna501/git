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
<title>Print Character Program</title>
</head>
<style>
.output-console-title-bar {
	background-image: -moz-linear-gradient(center top, #e8e8e8, #bcbbbc);
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	font-size: 0.75em;
 	/* margin-top: 20px;  */
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
	height: 143px;
	overflow: auto;
	padding: 10px;
	white-space: pre-line;
}

.introjs-tooltiptext br {
	margin: 15px;
}

.introjs.tooltiptext > span{
	display: inline-block;
}

.introjs-tooltip {
	min-width: 280px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
}

.introjs-prevbutton, .introjs-nextbutton, .introjs-skipbutton {
	border-radius: 3px !important;
}

.introjs-prevbutton {
	background-color: #5bc0de !important;
}

.introjs-nextbutton {
	background-color: green !important;
}

.introjs-skipbutton {
	margin-right: 15px !important;
	background-color: orange !important;
}

.ct-pink-color {
	font-family: monospace;
	color: #ed138e;
	outline: none;
}

.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: rgb(252, 66, 66);
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

#typewritingId {
	height: 167px; 
}

.blink {
  animation: blinker 1s linear infinite;
}

@keyframes blinker {  
  100% { opacity: 0.0; }
}

.fa-arrow-right {
	color: red;
	position: relative;
	-webkit-animation: myfirst 1s infinite; /* Chrome, Safari, Opera */
	-webkit-animation-direction: alternate; /* Chrome, Safari, Opera */
	animation: myfirst 1s infinite;
	/* animation-direction:alternate; */
}

@keyframes myfirst { 0% {
	left: 0px;
	top: 0px;
}
100%{
	left:15px;
	top:0px;
	}
}

.address-box {
	height: 169px;
	border: 1px solid lightgray;
	border-radius: 4px;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0 0;
    border-radius: 10px;
    font-size: 18px;
    position: relative;
    z-index: 9999999;
}

.creamPreTab4 {
	height: 167px;
}

.padding0 {
	padding: 0px;
}

.panel-heading {
	padding: 2px 70px;
}

.panel-body {
	padding: 12px 30px;
}

.panel-group {
	margin-top: 45px;
}

#startBtn {
	margin-top: 10px;
}

#in, .input-char {
	width: 170px;
 /* padding: 8px; */
	border-width: 0px 0 0 0;
	background-color: #000;
	color: #0f0;
}

.base-address {
	font-size: 12px;
    height: 37px;
    margin-left: 39px;
    margin-top: -15px;
    padding: 2px;
    width: 40px;
}

</style>
<body>
<div class="col-sm-12 text-center">
	<div class="margin-padding-css text-center" >
		<div class="col-sm-1"></div>
		<div class="col-sm-offset-3 col-sm-3">
			<h3><span class="ct-demo-heading label label-default" id="titleName">gets() and puts() on Strings</span></h3>
		</div>
	</div>
</div>
<div class="body-div col-sm-12 padding0">
<br>
<div class="col-xs-5">
<!-- <pre id="typewritingId"></pre> -->
<pre class="creamPreTab4" id="preBody">
<span id='line1'>main()</span> {
	<span id='line2'>char ch[20] ;</span>
	<span id='line3'>printf ( “ Enter a string : “);</span>
	<span id='line4'>gets(ch);</span>
	<span id='line5'>printf (“The entered string is : “);</span>
	<span id='line6'>puts(ch);</span>
<span id='line7'>}</span>
</pre>
</div>
<div class="col-xs-7">
	<div class="address-box" id="addressBox">
  		<div class="col-xs-12" id="animationBox">
  			<table id="tableId" class="table visibility-hidden" style="margin-top: 10px;">
				
				<tbody>
					<tr class="table-bordered">
				        <td class="table-bordered"> <b class="ct-code-b-blue">ch</b></td>
				        <td class="table-bordered">0</td>
				        <td class="table-bordered">1</td>
				        <td class="table-bordered">2</td>
				        <td class="table-bordered">3</td>
				        <td class="table-bordered">4</td>
				        <td class="table-bordered">5</td>
				        <td class="table-bordered">6</td>
				        <td class="table-bordered">7</td>
				        <td class="table-bordered">8</td>
				        <td class="table-bordered">9</td>
				        <td class="table-bordered">10</td>
				        <td class="table-bordered">11</td>
				        <td class="table-bordered">12</td>
				        <td class="table-bordered">13</td>
				        <td class="table-bordered">14</td>
				        <td class="table-bordered">15</td>
				        <td class="table-bordered">16</td>
				        <td class="table-bordered">17</td>
				        <td class="table-bordered">18</td>
				        <td class="table-bordered">19</td>
					</tr>
			  
			      <tr id="tableRowId" class="hidden">
				     	<td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td>
				        <td class="td-css visibility-hidden"></td> 
			      	</tr>
				</tbody>
  			</table>
  			<div id="baseAddresssId" class="base-address visibility-hidden"><span><b>4515</b><i aria-hidden="true" class="fa fa-arrow-down" style="color: red; margin-left: 7px;"></i><span style="color: blue; margin-left: 5px;">Base Address</span></span></div>
		</div>
	</div>
</div>
</div>
	<div class="col-sm-offset-4 col-sm-4">
		<div id="consoleId" class="center">
			<div class="output-console-title-bar">
				<span class="title"><b>Console</b></span>
			</div>
			<div class="output-console-body" id="consoleBodyDiv">
				<span id="typeChar"></span>
					<span id="hiddenTypingChar" class="hidden">Enter a String : <input id='inputChar' class='input-char' tabindex='0' /></span>
				<span id="totalEnterChar" ></span>
				<span id="enterHiddenTotal" class="hidden">The entered string is : <input id="hiddenTotalEnterChar" maxlength='20' class='input-char' tabindex='0' /></span>
			</div>
		</div>
	</div>
<div><button type="button" class="col-sm-1 col-sm-offset-5 btn btn-warning opacity00" id="restartBtn" style="margin-top: 30px;">Restart </button></div>
<script>
$(document).ready(function() {
	
	$("#restartBtn").click(function() {
		$("#inputChar").val('');
		$("#hiddenTotalEnterChar").val('');
		location.reload();
	});
	
	console.log();
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
						element :'#addressBox',
						intro :'',
						position:"bottom"
					},{
						element :'#line3',
						intro :'',
						position:"bottom"
					},{
						element :'#consoleId',
						intro :'',
						position:"bottom"
					},{
						element :'#line4',
						intro :'',
						position:"bottom"
					},{
						element :'#tableId',
						intro :'',
						position:"left"
					},{
						element :'#line5',
						intro :'',
						position:"bottom"
					},{
						element :'#consoleId',
						intro :'',
						position:"bottom"
					},{
						element :'#line6',
						intro :'',
						position:"bottom"
					},{
						element :'#hiddenTotalEnterChar',
						intro :'',
						position:"bottom"
					},{
						element :'#restartBtn',
						intro :'',
						position:"bottom"
					}]
	});
	
	intro.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "preBody" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "Here is the program to read and print a string using gets() and puts().", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line1" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "main() is the operating system call.<ul><li>main is execution starting point for any c programs</li></ul>", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line2" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "ch is varaiable which is of type char.<ul><li>It allocates 1 byte of memory.</li><li>It stores only 1 character.</li></ul> ", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "addressBox" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#tableId").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
					typing(".introjs-tooltiptext", "ch is stored 20 bytes. ", 10, "",function() {
						$('.introjs-nextbutton').show();
					});
				});
			});
			break;
			
		case "line3" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "printf() is library function, uesd to display anything in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line4" :
			$("#hiddenTypingChar").removeClass("hidden");
			$("#totalBlinkText").addClass("hidden");
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "gets(ch) is library function which reads only 1 char from keyboard.", 10, "",function() {
					var result = $("#inputChar").val();
					
					$("table tr:nth-child(2)").addClass("table-bordered");
					for(var i = 0; i <= result.length; i++) {
						if (result.length >= 0 && result.length < 20) {
							if (i == result.length) {
								$("table tr:nth-child(2) td:eq("+ (i+1) + ")").addClass("table-bordered").text("\\0");
								console.log("i am in if...")
								$("table tr:nth-child(2)").addClass("table-bordered");
							} else {
								$("table tr:nth-child(2) td:eq("+ (i+1) +")").addClass("table-bordered").text(result[i]);
								$("table tr:nth-child(2)").addClass("table-bordered");
							}
						}  else {
							if (i == 19) {
								console.log("Hello" + result[i]);
								$("table tr:nth-child(2) td:eq("+ (i+1) + ")").addClass("table-bordered").text("\\0");
								$("table tr:nth-child(2)").addClass("table-bordered");
								break;
							} else {
								console.log("I am in else" + result[i]);
								$("table tr:nth-child(2) td:eq("+ (i+1) +")").addClass("table-bordered").text(result[i]);
								$("table tr:nth-child(2)").addClass("table-bordered");
							}
						} 
					}
				//	console.log("result = " + result);
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "tableId" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#tableRowId").removeClass("hidden");
				intro.refresh();
				setTimeout(function() {
					$(".td-css").removeClass("visibility-hidden").addClass("animated zoomIn ct-code-b-green").one('animationend', function() {
						$("#baseAddresssId").removeClass("visibility-hidden").addClass("animated zoomIn ct-code-b-green").one('animationend', function() {
							typing(".introjs-tooltiptext", "The entered string is allocated in a memory of an array and <span class='ct-code-b-green'>\0</span> is append at the end of the string.", 50, "",function() {
								$('.introjs-nextbutton').show();
							});
						});
					});
				}, 1000);
			});
			break;

		case "line5" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "printf() is library function, uesd to display anything in double quotes on the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "line6" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				typing(".introjs-tooltiptext", "puts() is used to write a string on to the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "consoleId" :
			$('.introjs-nextbutton').hide();
			if(intro._currentStep == 6) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing("#typeChar", "<span id='totalBlinkText'>Enter a String : <span id='blinkChar'><input id='in' maxlength='0' tabindex='0' value=''/></span></span>", 10, "",function() {
						$("#hiddenTypingChar").removeClass("hidden");
						$("#totalBlinkText").addClass("hidden");
						$("#inputChar").focus();
						typing(".introjs-tooltiptext", "Enter the string. ", 10, "",function() {
							$('#inputChar').keyup(function(e) {
								if ($("#inputChar").val().length < 1) {
									$('.introjs-nextbutton').hide();
								} else {
									$('.introjs-nextbutton').show();
								}
							});
						});
					});
				});
				
			} else if(intro._currentStep == 10) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing("#totalEnterChar", "The entered string is : <span id='putValueId'></span>", 10, "",function() {
						$("#totalEnterChar").addClass("hidden");
						$("#enterHiddenTotal").removeClass("hidden");
						typing(".introjs-tooltiptext", "The text, entered string is printed on to the console. ", 10, "",function() {
							setTimeout(function() {
								intro.nextStep();
							},2000);
						});
						//$('.introjs-nextbutton').show();
					});
				});
			}
			break;
			
		case "hiddenTotalEnterChar" :
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				$("#hiddenTotalEnterChar").val($("#inputChar").val());
				typing(".introjs-tooltiptext", "here, the given string is printed on to the output screen.", 10, "",function() {
					$('.introjs-nextbutton').show();
				});
			});
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
	
	typing(".introjs-tooltiptext", "Let us learn execution of sample program for reading (or) printing a string using gets() and puts().", 10, "",function() {
		$('.introjs-nextbutton').show();
	});
	
}); // end of document.ready function

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