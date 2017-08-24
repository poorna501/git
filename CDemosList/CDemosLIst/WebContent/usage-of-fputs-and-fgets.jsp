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

<title>Usage of fputs() and fgets()</title>
</head>
<style>
.margin-top-25 {
	margin-top: 25px;
}

.padding0 {
	padding: 0;
}

.margin-0 {
	margin: 0;
}

#typingDiv {
	height: 120px;
	border-radius: 8px;
	border: 1px solid lightgray;
	padding: 8px;
	letter-spacing: 1px;
}

pre {
    font-size: 13px;
    border-radius: 8px;
    background-color: lavander;
}

.ct-file {
	border-radius: 8px;
	height: 150px;
	border: 1px solid gray;
	padding: 8px;
}

.file-name, .panel-heading {
	font-family: monospace;
	font-weight: bold;
	text-align: center;
}

.output-console-title-bar {
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
}

.output-console-body {
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	height: 150px;
	overflow: visible;
	padding: 10px;
	white-space: initial;
	font-size: 13px;
}

.panel {
	border-radius: 0px;
	margin: 0px;
	border: 1px solid #337ab7;
}

.panel-heading {
	padding: 2px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

.panel-body {
	padding: 4px;
	border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
	text-align: center;
	height: 30px;
}

table {
	width: 100%;
	table-layout: fixed;
	text-align: center;
	margin-top: 15px;
}

.td-border {
	padding: 4px;
	text-align: center;
	border: 1px solid lightgray;
}

#memory {
	border: 1px solid lightgray;
	height: 174px;
	border-radius: 8px;
}

#fpAddressStorage {
	margin-top: 53px;
}

.svg-css {
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
	position: absolute;
	z-index: 9999999;
}

.ct-pink {
	color: fuchsia;
	font-family: monospace;
	font-weight: bold;
}

.ui-effects-transfer {
    border: 1px solid #337ab7;
    z-index: 99999999 !important;
}

.input, #userText {
	background-color: black;
	border: medium none;
	letter-spacing: 1px;
}

.ct-text {
	background-color: transparent;
	border: medium none;
	letter-spacing: 1px;
}

.z-index {
	z-index: 1000004 !important;
	background-color: white;
}

#char1Address {
	margin-top: 25px;
}
</style>
<body>
	<div class="demo-heading text-center margin-top-25">
		<h4 class="label ct-demo-heading" id="heading">Usage of fputs() and fgets()</h4>
	</div>
	<div class="col-xs-12 margin-top-25">
		<div id="typingDiv" class="col-xs-6 col-xs-offset-3"></div>
		<div class="col-xs-12 margin-top-25">
			<div class="col-xs-4 padding0 opacity00" id="program">
<pre class="margin-0">
#include&lt;stdio.h&gt;
int main() {
	<span id="fileOperation">FILE *fp;</span>
	<span id="charDec">char str[20], str1[20];</span>
	<span id="openFile1">fp = <span id="wFileOpen">fopen("codetantra.txt", <span id="writeMode">"w"</span>);</span></span>
	<span id="putsPrintf">printf("Enter a String : \n");</span>
	<span id="gets">gets(str);</span>
	<span id="fputsString">fputs(str, fp);</span>
	<span id="closeFile1">fclose(fp);</span>
	
	<span id="openFile2">fp = <span id="rFileOpen">fopen("codetantra.txt", <span id="readMode">"r"</span>);</span></span>
	<span id="getsPrintf">printf("The given String is \n");</span>
	<span id="fgets">fgets(str1, 20, fp);</span>
	<span id="puts">puts(str1);</span>
	<span id="closeFile2">fclose(fp);</span>
}
</pre>			
			</div>
			<div class="col-xs-8">
			<svg class="svg-css"> 
				<marker refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;" id="arrow"> 
					<path d="M0,0 L5,2.5 L0,5 Z" class="arrow" /> 
				</marker> 
 				<line id="arrow1" class="line" x1="55%" y1="69.7%" x2="55%" y2="69.7%" 
 						style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
 				<line id="arrow2" class="line" x1="76.8%" y1="69.7%" x2="76.8%" y2="69.7%" 
 						style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
 				<line id="arrow3" class="line" x1="76.8%" y1="24.7%" x2="76.8%" y2="24.7%" 
 						style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
 			</svg>
				<div class="col-xs-12 padding0">
					<div class="opacity00" id="memory">
						<div class="col-xs-9">
							<table id="charAddress" class="opacity00">
								<tr class="str-address">
									<th class="text-center ct-blue-color">str</th>
								</tr>
								<tr class="user-string">
									<td><div class="td-border opacity00">00</div></td>
								</tr>
							</table>
							<table id="char1Address" class="opacity00">
								<tr class="str1-address">
									<th class="text-center ct-blue-color">str1</th>
								</tr>
								<tr class="str1-string">
									<td><div class="td-border opacity00">00</div></td>
								</tr>
							</table>
						</div>
						<div class="col-xs-1 col-xs-offset-1 panel-primary padding0 opacity00" id="fpAddressStorage">
							<div class="panel-heading">fp</div>
							<div class="panel panel-body">
							<div class="address"></div></div>
							<div class="value text-center">2048</div>
						</div>
					</div>
					<div class="col-xs-12 margin-top-25">
						<div class="col-xs-5 opacity00 padding0" id="console">
							<div class="output-console-title-bar">Console</div>
							<div class="output-console-body margin-0">
								<div id="printStatmnt1" class="opacity00">Enter a String :</div>
								<div id="textEnter"></div>
								<div id="printStatmnt2" class="opacity00">The given String is</div>
								<div id="userText"></div>
							</div>
						</div>
						<div class="col-xs-5 col-xs-offset-1 opacity00 padding0" id="output">
							<div class="file-name">codetantra.txt</div>
							<div class="ct-file">
							<div class="ct-file-text"></div>
							<i class="fa fa-arrow-up opacity00"></i>
							<div class="fp-address opacity00">2048</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-12 text-center margin-top-25">
			<span id="restart" class="opacity00 btn btn-warning">Restart</span>
		</div>
	</div>
	
<script>
var introjs;
var typingInterval = 35;

$(document).ready(function() {
	introGuide();
	$(".line").hide();
	
	$('#restart').click(function() {
		location.reload();
	});
	
	var x = Math.floor((Math.random() * 1024) + 1425);
	$(".value").text(x);
	fpAddress = Math.floor((Math.random() * 1086) + 2050);
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
							element: '#typingDiv',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#program',
							intro: '',
							position: 'right'
						}, {
							element: "#fileOperation",
							intro: ''
						}, {
							element: '#memory',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#charDec',
							intro: ''
						}, {
							element: '#memory',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#openFile1',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#writeMode',
							intro: '',
						}, {
							element: '#wFileOpen',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#putsPrintf',
							intro: ''
						}, {
							element: '#console',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#gets',
							intro: ''
						}, {
							element: '#console',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#charAddress',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#fputsString',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#closeFile1',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#openFile2',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#readMode',
							intro: ''
						}, {
							element: '#rFileOpen',
							intro: ''
						}, {
							element: '#output',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#getsPrintf',
							intro: ''
						}, {
							element: '#console',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#fgets',
							intro: ''
						}, {
							element: '#char1Address',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#output',
							intro: ''
						}, {
							element: '#puts',
							intro: ''
						}, {
							element: '#console',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#closeFile2',
							intro: '',
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
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "typingDiv":
			$('.introjs-nextbutton').hide();
			var text = " <div><b class='ct-pink'>fputs()</b> writes a string specified by str in to the file pointed by fp.</div>"
						+ " syntax for <b>fputs()</b> is <span class='ct-blue-color'>char *fputs(char *str, FILE *fp);</span>"
						+ " <div><b class='ct-pink'>fgets()</b> function reads length number of bytes from the file pointed by fp in to the"
						+ " character array. Both the functions will return NULL on unsuccessful execution.</div>"
						+ " syntax for <b>fgets()</b> is <span class='ct-blue-color'>char *fgets(char *str, int length, FILE *fp);</span>";
			typing('#typingDiv', text, function() {
				$('.introjs-tooltip').removeClass("hide");	
				var text = "The functions <b class='ct-code-b-yellow'>fputs()</b> and <b class='ct-code-b-yellow'>fgets()</b> are used for writing and reading strings <b>from / to</b> disk files.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "program":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#program").removeClass("opacity00");
				var text = "Let us consider a sample code to learn how <span class='ct-code-b-yellow'>fputs()</span> and <span class='ct-code-b-yellow'>fgets()</span> functions will work.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				})
			});
			break;
			
		case "fileOperation":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<div><span class='ct-code-b-yellow'>FILE</span> referred to as Stream. Stream means flow of data. i.e., reading and writing of data.</div>"
							+ "<span class='ct-code-b-yellow'>fp</span> is a file pointer that contains the address of the structure FILE.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "charDec":
			$("#fpAddressStorage, #memory").removeClass("z-index");
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "Here we declared two char arrays with the size 20.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "memory":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				if (introjs._currentStep == 3) {
					$("#memory").removeClass("opacity00");
					$('#fileOperation').effect( "highlight",{color: 'yellow'}, 800);
					$("#fileOperation").effect( "transfer", { to: $("#fpAddressStorage"), className: "ui-effects-transfer" }, 2000 , function() {
						$("#fpAddressStorage").removeClass("opacity00");
						setTimeout(function() {
							introjs.nextStep();
						}, 500);
					});
				} else if (introjs._currentStep == 5) {
					$("#charAddress, #char1Address").removeClass("opacity00");
					for (var i = 0; i < 20; i++) {
						$(".str-address, .str1-address").append('<td class="text-center">' + i + '</td>');
						$(".user-string, .str1-string").append('<td class="td-border"></td>');
					}
					setTime();
				} 
			});
			break;
			
		case "openFile1":
		case "openFile2":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				setTime();
			});
			break;
			
		case "writeMode":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>write</span> mode, a file with specified name is created if the file does not exist;"
							+ " the contents are deleted if the file already exist.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "wFileOpen":
		case "rFileOpen":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				if (introjs._currentStep == 8) {
					var text = "Here we open <span class='ct-code-b-yellow'>codetantra.txt</span> file in <span class='ct-code-b-yellow'>write</span> mode.";
				} else {
					var text = "Here we open <span class='ct-code-b-yellow'>codetantra.txt</span> file in <span class='ct-code-b-yellow'>read</span> mode.";
				} 
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "output":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				if (introjs._currentStep == 9) {
					$("#output").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#output").removeClass("animated zoomIn");
						$(".ct-file-text").append('<input type="text" class="ct-text" />');
						$(".fa").removeClass("opacity00");
						$(".fp-address").text(fpAddress).removeClass("opacity00");
						$('.introjs-tooltip').removeClass("hide");
						var text = "Here the file structure base address is stored in the <span class='ct-code-b-yellow'>file pointer(fp)</span>.";
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-tooltipbuttons').append('<a class="introjs-button introjs-nextbutton" id="svgBtn" onClick="arrowBtn()">Next &#8594;</a>');
						});
					});
				} else if (introjs._currentStep == 16) {
					$(".ct-text").val($("#enteredText").val());
					setTime();
				} else if (introjs._currentStep == 18) {
					$("#output").addClass("opacity00");
					$("#output").addClass("animated zoomOut").addClass("opacity00").one('animationend', function() {
						$("#output").removeClass("animated zoomOut");
						$(".address").addClass("opacity00");
						setTime();
					});
				} else if (introjs._currentStep == 22) {
					$("#output").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#output").removeClass("animated zoomIn");
						$(".fp-address").show();
						$("#fpAddressStorage").addClass("z-index");
						$(".address").removeClass("opacity00");
						setTimeout(function() {
							introjs.nextStep();
						}, 1000);
					});
				} else if (introjs._currentStep == 27) {
					var text = "Get <span class='ct-code-b-yellow'> " + $(".ct-text").val() + " </span> from <span class='ct-code-b-yellow'>fp (i.e., " + $(".fp-address").text() + ")</span>";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});	
				} else {
					$("#output").addClass("animated zoomOut").addClass("opacity00").one('animationend', function() {
						$("#output").removeClass("animated zoomOut");
						$(".address").addClass("opacity00");
						setTime();
					});
				}
			});
			break;
			
		case "putsPrintf":
			$(".line").hide();
			$(".fp-address").hide();
			$("#fpAddressStorage").removeClass("z-index");
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>printf()</span> function is used to"
							+ " <span class='ct-code-b-yellow'>print</span> the <span class='ct-code-b-yellow'>data</span>"
							+ " or user defined <span class='ct-code-b-yellow'>message</span> on <span class='ct-code-b-yellow'>"
							+ " console</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				})
			});
			break;
			
		case "console":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				if (introjs._currentStep == 11) {
					$("#console").removeClass("opacity00");
					$("#printStatmnt1").removeClass("opacity00");
					setTime();
				} else if (introjs._currentStep == 13) {
					$("#textEnter").append('<input type="text" class="input" maxlength="20" id="enteredText" />')
					caretAtEnd(document.getElementById("enteredText"));
					$('.introjs-tooltip').removeClass("hide");
					var text = "Enter string";
					typing('.introjs-tooltiptext', text, function() {
						$("#enteredText").on("keyup", function(e) {
							if ($("#enteredText").val().length < 1	) {
								$('.introjs-nextbutton').hide();
							} else {
								$('.introjs-nextbutton').show();
							}
						});
					});
				} else if (introjs._currentStep == 24){
					$("#printStatmnt2").removeClass("opacity00");
					setTimeout(function() {
						introjs.nextStep();
					}, 1500);
				} else {
					$("#userText").append('<input type="text" class="input" id="givenText" />')
					$("#givenText").val($("#enteredText").val());
					setTime();
				}
			});
			break;
			
		case "charAddress":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$.each($("#enteredText").val().split(""), function(index, value) {
			    	$(".user-string td").eq(index + 1).text(value);
				});
				setTime();
			});
			break;
			
		case "char1Address":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				$.each($("#enteredText").val().split(""), function(index, value) {
			    	$(".str1-string td").eq(index + 1).text(value);
				});
				setTime();
			});
			break;
			
		case "gets":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<div><span class='ct-code-b-yellow'>gets()</span> function reads a line from stdin and <span class='ct-code-b-yellow'>stores</span> it into the string pointed to by str.</div>"
							+ "It <span class='ct-code-b-yellow'>stops</span> when either the newline character is read or when the end-of-file is reached.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				})
			});
			break;
			
		case "fputsString":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>fputs()</span> function writes the given string into a <span class='ct-code-b-yellow'>file</span> pointed by <span class='ct-code-b-yellow'>fp</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				})
			});
			break;
			
		case "closeFile1":
		case "closeFile2":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>flocse(fp)</span> is used to close the file.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "readMode":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>read</span> mode, the file is opened with the current contents safe if the file already exists; otherwise an error occurs.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "getsPrintf":
			$("#fpAddressStorage").removeClass("z-index");
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer ').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>printf()</span> function is used to"
							+ " <span class='ct-code-b-yellow'>print</span> the <span class='ct-code-b-yellow'>data</span>"
							+ " or user defined <span class='ctin-code-b-yellow'>message</span> on <span class='ct-code-b-yellow'>"
							+ " console</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				})
			});
			break;
			
		case "fgets":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>fgets()</span> reads number of bytes from the <span class='ct-code-b-yellow'>file</span> pointed by <span class='ct-code-b-yellow'>fp</span> into the character array str1.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "puts":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				var text = "<span class='ct-code-b-yellow'>puts()</span> function is used to display a string on a standard output device.";
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

function arrowReveal(selector, x2, y2, duration, callbackFunction) {
	$(selector).show();
	TweenMax.to(selector, duration, {attr:{x2: x2, y2: y2}, onComplete: function(){
		if (typeof callbackFunction === "function") {
			callbackFunction();
		}
	}});
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

function setTime() {
	setTimeout(function() {
		introjs.nextStep();
	}, 800);
}

function arrowBtn() {
	$("#svgBtn").remove();
	arrowReveal("#arrow1", "76.8%", "69.7%", 2, function() {
		$("#arrow1").css({'marker-end': ''});
		arrowReveal("#arrow2", "76.8%", "24.7%", 2, function() {
			$("#arrow2").css({'marker-end': ''});
			arrowReveal("#arrow3", "81.7%", "24.7%", 2, function() {
				$(".address").text(fpAddress);
				$('.introjs-nextbutton').show();
			});
		});
	});
}

</script>
</body>
</html>