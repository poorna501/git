<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Execution of a c program</title>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/introjs.css" >
<link rel="stylesheet" href="/css/introjs-ct.css" >
<link rel="stylesheet" href="/css/animate.css">

<script src="/js/jquery-latest.js"></script>
<script src="/js/intro.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/gs/TweenMax.min.js"></script>
	
<style>
.demo-heading {
	margin-top: 25px;
}

.label {
	left: 17px;
}
body {
	font-size: 13px;
}

.elipse {
	border: 1px solid #333;
	padding: 8px 0;
	border-radius: 17px;
}
.oval {
	border: 1px solid #333;
	border-radius: 50%;
	height: 20px;
	position: relative;
	top: 9px;
}

.rectangle, .bottom-div {
	border: 1px solid #333;
	padding: 8px 0;
}

.oval-shape {
	border-color: white #333 #333;
	border-style: none solid solid;
	border-width: medium 1px 1px;
	border-bottom-left-radius: 14px;
	border-bottom-right-radius: 14px;
	height: 50px;
    padding: 16px 0 0;
    text-align: center;
}

.diamond {
	border: 1px solid #333;
	height: 62px;
	padding: 17px 0;
	position: relative;
	transform: rotate(45deg);
	width: 62px;
	right: 11px;
}

.diamond-inner {
	transform: rotate(-45deg);
}

.padding0 {
	padding: 0;
} 

.svg-css {
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
	position: absolute;
}

.margin-top-30 {
	margin-top: 30px;
}

.margin-top-25 {
	margin-top: 25px;
}

.margin-top-40 {
	margin-top: 40px;
}

.margin-top-0 {
	margin-top: 0px;
}

.index {
	background-color: white;
	border: 1px solid rgba(0, 0, 0, 0.5);
	border-radius: 4px;
	position: relative;
	z-index: 9999999 !important;
}
  
.ct-code-b-red {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

.demo-code {
	z-index: 9999999 !important;
	background-color: white;
	position: relative;
} 

.introjs-tooltip {
	min-width: 245px;
	z-index: 1;
}

.usr {
	top: 43px;
	text-align: left;
}

.usr-obj {
	text-align: left;
	margin-top: 8px;
}

</style>
<script>
var introcode;
var typingInterval = 10;
$(document).ready(function() {
	introGuide();
	$(".line").hide();
	$(".usr").tooltip({
		position: 'right'
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
				steps : [{
				        	 element: '#demo-code',
				        	 intro: '',
				        	 position: 'left'
				         }]
				})
	
introcode.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
				
		case "demo-code":
			$('.introjs-nextbutton').hide();
			var text = "Let us learn how the C program will execute.";
			typing('.introjs-tooltiptext', text, function() {
				$("#writeCode").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
					$("#writeCode").removeClass("animated zoomIn");
					$('.introjs-tooltiptext').append('<div class="source-text"></div>')
					var text = "<li>Source code was written by the user</li>";
					typing(".source-text", text, function() {
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='button1' onClick='saveFileButton();'>Next &#8594;</a>");
					});
				});
			});
			break;

		}
	});
	
	introcode.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
}

function arrowReveal(selector, x2, y2, duration, callbackFunction) {
	$(selector).show();
	TweenMax.to(selector, duration, {attr:{x2: x2, y2: y2}, onComplete: function(){
		if (typeof callbackFunction === "function") {
			callbackFunction();
		}
	}});
}

function saveFileButton() {
	$("#button1").remove();
	arrowReveal("#arrow1", "23.8%", "15.5%", 2, function() {
		$("#arrow1").css({'marker-end':''})
		arrowReveal("#arrow1a", "60.4%", "15.5%", 3, function() {
			$("#saveFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#saveFile").removeClass("animated zoomIn");
				$('.introjs-tooltiptext').append('<div class="saveFile-text"></div>');
				var text = "<li>Every <span class='ct-code-b-yellow'>C program</span> must be saved with .c extension.</li>";
				typing(".saveFile-text", text, function() {
			 		$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='button2' onClick='compilationButton();'>Next &#8594;</a>");
				});
			});
		});
	});
}

function compilationButton() {
	$("#button2").remove();
	arrowReveal("#arrow2", "23.8%", "15.5%", 3, function() {
		$("#arrow2").css({'marker-end':''})
		arrowReveal("#arrow2a", "23.8%", "21%", 2, function() {
			$("#compilation").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#compilation").removeClass("animated zoomIn");
				$('.introjs-nextbutton').hide();
				$('<div class="introjs-tooltip usr"><div class="introjs-tooltiptext usr-text"><div class="usr-tooltip"></div><div class="introjs-arrow top"></div><div class="introjs-tooltipbuttons usr-btn"></div></div></div>').appendTo("#compilation");
				var text = "<div class='line-one'>Generally computer programs are written in <span class='ct-code-b-yellow'>high level language.</span></div>"+
				"By using <span class='ct-code-b-yellow'>compiler</span> we can convert source code into machine code";
				typing(".usr-tooltip", text, function() {
			        $('.usr-btn').append("<a class='introjs-button introjs-nextbutton' id='buttonCompiler' onClick='compilerButton();'>Next &#8594;</a>");
	    	     });
			}); 
		});
	});
}

function compilerButton() {
	$("#buttonCompiler").remove();
	$(".usr").remove();
	$('.introjs-tooltiptext').append('<div class="compilation-text"></div>');
	var text = "<li><span class='ct-code-b-yellow'>Compiler</span> will checks for <span class='ct-code-b-red'>syntax errors</span></li>";
	typing(".compilation-text", text, function() {
	 	arrowReveal("#arrow3", "23.8%", "31%", 2, function() {
	 		$("#syntaxErrors").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#syntaxErrors").removeClass("animated zoomIn");	
				arrowReveal("#arrow4","3.7%", "37.7%", 2, function() {
					$("#arrow4").css({'marker-end':''})
					$("#arrow4Yes").css({'opacity':'1'});
					arrowReveal("#arrow4a", "3.7%", "15.1%", 3, function() {
						$("#arrow4a").css({'marker-end':''});
						arrowReveal("#arrow4b", "15.1%", "15.1%", 2, function() {
							$("#arrow4b").css({'marker-end':''});
							arrowReveal("#arrow4c", "15.1%", "10.6%", 2, function() {
							$('.introjs-tooltiptext').append('<div class="no-syntaxErrors"></div>');
								var text ="<div><li>If any <span class='ct-code-b-red'>syntax errors</span> occured, <span class='ct-code-b-yellow'>edit</span> the program as error free, <span class='ct-code-b-yellow'>make changes</span> and then <span class='ct-code-b-yellow'>save</span>.</div>" +
								"<span class='ct-code-b-yellow'>Compiler</span> again checks for errors.</li>"; 
								typing(".no-syntaxErrors", text, function() {
								 	$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='button5' onClick='objButton();'>Next &#8594;</a>");
								});
							});
						});
					});
				});	
			});
		});
	});
}

function objButton() {
	$("#button5").remove();
	arrowReveal("#arrow5", "23.8%", "48.5%", 2, function() {
		$("#arrow5").css({'marker-end':''})
		$("#arrow5No").css({'opacity':'1'});
		arrowReveal("#arrow5a", "60.4%", "48.5%", 3, function() {
			$("#objFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#objFile").removeClass("animated zoomIn");	
				$('.introjs-nextbutton').hide();
				$('<div class="introjs-tooltip usr-obj"><div class="introjs-tooltiptext"><div class="popover-obj-text"></div><div class="introjs-arrow usr top"></div><div class="introjs-tooltipbuttons usr-obj-btn"></div></div></div>').appendTo("#objFile");
				var text = "If the code is <span class='ct-code-b-yellow'>error free </span>then the compiler creates .obj file, which contanis binary data of the source code.";
				typing(".popover-obj-text", text, function() {
			        $('.usr-obj-btn').append("<a class='introjs-button introjs-nextbutton' id='button6' onClick='libraryLinkButton();'>Next &#8594;</a>");
				});
			});
		});	
	});
}

function libraryLinkButton() {
	$("#button6").remove();
	$(".usr-obj").remove();
	arrowReveal("#arrow6", "23.8%", "48.5%", 3, function() {
		$("#arrow6").css({'marker-end':''})
		arrowReveal("#arrow6a", "23.8%", "53.1%", 2, function() {
			$("#libraryLink").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#libraryLink").removeClass("animated zoomIn");
				$('.introjs-tooltiptext').append('<div class="libraryLink"></div>');
				var text = "<li>Program will links with <span class='ct-code-b-yellow'>header files</span></li>";
				typing(".libraryLink", text, function() {
				 	$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='button7' onClick='exeButton();'>Next &#8594;</a>");
				});
			});
		});
	});
}

function exeButton() {
	$("#button7").remove();
	arrowReveal("#arrow7", "23.8%", "64.5%", 2, function() {
		$("#arrow7").css({'marker-end':''})
		arrowReveal("#arrow7a", "60.4%", "64.5%", 3, function () {
			$("#exeFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#exeFile").removeClass("animated zoomIn");
				$('.introjs-tooltiptext').append('<div class="exeFile"></div>');
				var text = "<li>After linking is completed, the executable file is ready with <span class='ct-code-b-yellow'>.exe</span> extension.</li>";
				typing(".exeFile", text, function() {
				 	$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='button8' onClick='runtimeButton();'>Next &#8594;</a>");
				});
			});
		});
	});
}

function runtimeButton() {
	$("#button8").remove();
	arrowReveal("#arrow8", "23.8%", "64.5%", 3, function() {
		$("#arrow8").css({'marker-end':''})
		arrowReveal("#arrow8a", "23.8%", "69.8%", 2, function() {
			$("#runProgram").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#runProgram").removeClass("animated zoomIn");
				$(".introjs-tooltiptext").append('<div class="running"></div>');
				var text = "<li>If program is successfully compiled without any errors then we can <span class='ct-code-b-yellow'>execute</span> the program.</li>";
				typing(".running", text, function() {
				 	$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='button9' onClick='runtimeErrorButton();'>Next &#8594;</a>");
				});
			});
		});
	});
}

function runtimeErrorButton() {
	$("#button9").remove();
	arrowReveal("#arrow9", "23.8%", "78.2%", 2, function() {
		$("#runtimeErrors").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
			$("#runtimeErrors").removeClass("animated zoomIn");
				arrowReveal("#arrow10", "1%", "84.8%", 2, function(){
				$("#arrow10").css({'marker-end':''});
				$("#arrow10Yes").css({'opacity':'1'});
				arrowReveal("#arrow10a", "1%", "6.4%", 3, function() {
					$("#arrow10a").css({'marker-end':''})
					arrowReveal("#arrow10b", "5%", "6.4%", 2, function() {
						$('.introjs-tooltiptext').append('<div class="no-runtimeErrors"></div>');
						var text = "<div class='a'><li>If any <span class='ct-code-b-red'>runtime error</span> occurs <span class='ct-code-b-yellow'>edit</span> the program and make changes and then <span class='ct-code-b-yellow'>save</span>.</div> "+
						"All the above steps are repeated upto <span class='ct-code-b-yellow'>runtime</span></li>";
						typing(".no-runtimeErrors", text, function() {
			 				$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='button11' onClick='outputButton();'>Next &#8594;</a>");
						});
					});
				});
			});
		});
	});
}

function outputButton() {
	$("#button11").remove();
	$("#arrow11No").css({'opacity':'1'});
	arrowReveal("#arrow11", "23.8%", "94.1%", 1);
	$("#output").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
		$("#output").removeClass("animated zoomIn");
		$('.introjs-tooltiptext').append('<div class="output"></div>');
		var text = "<li>If there is <span class='ct-code-b-yellow'>no runtime error</span> it will give <span class='ct-code-b-yellow'>output</span></li>";
		typing(".output", text, function() {
		});
	});
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

</script>
</head>
<body>
	<div class="demo-heading text-center">
		<h4 class="label ct-demo-heading" id="heading">C program life cycle</h4>
	</div>	
	<div class="col-xs-12">																		
		<div class="col-xs-offset-1 col-xs-10 padding0 text-center margin-top-25" id="code">
			<div class="col-xs-12">
				<div class="col-xs-offset-3 col-xs-9 text-center" id="demo-code">
					<div class="col-xs-12">
						<div class="col-xs-offset-2 col-xs-9">
						<svg class="svg-css"> 
					<marker refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;" id="arrow"> 
						<path d="M0,0 L5,2.5 L0,5 Z" class="arrow" /> 
					</marker> 
 				 	<line id="arrow1" class="line" x1="23.8%" y1="10.1%" x2="23.8%" y2="9.7%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow1a" class="line" x1="23.8%" y1="15.5%" x2="23.8%" y2="15.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow2" class="line" x1="60.4%" y1="15.5%" x2="60.4%" y2="15.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow2a" class="line" x1="23.8%" y1="15.5%" x2="23.8%" y2="15.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow3" class="line" x1="23.8%" y1="26.5%" x2="23.8%" y2="26.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow4" class="line" x1="16.3%" y1="37.7%" x2="16.3%" y2="37.7%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow4a" class="line" x1="3.7%" y1="37.7%" x2="3.7%" y2="37.7%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow4b" class="line" x1="3.7%" y1="15.1%" x2="3.7%" y2="15.1%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow4c" class="line" x1="15.1%" y1="15.1%" x2="15.1%" y2="15.1%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<text id="arrow4Yes" class="opacity00" x="9%" y="37%" style="; font-size: 13px;">Yes</text>
					<line id="arrow5" class="line" x1="23.8%" y1="44.2%" x2="23.8%" y2="44.2%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow5a" class="line" x1="23.8%" y1="48.5%" x2="23.8%" y2="48.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<text id="arrow5No" class="opacity00" x="46%" y="48%" style="font-size: 13px;">No</text>
					<line id="arrow6" class="line" x1="60.4%" y1="48.5%" x2="60.4%" y2="48.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow6a" class="line" x1="23.8%" y1="48.5%" x2="23.8%" y2="48.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow7" class="line" x1="23.8%" y1="59%" x2="23.8%" y2="59%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow7a" class="line" x1="23.8%" y1="64.5%" x2="23.8%" y2="64.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow8" class="line" x1="60.4%" y1="64.5%" x2="60.4%" y2="64.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow8a" class="line" x1="23.8%" y1="64.5%" x2="23.8%" y2="64.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow9" class="line" x1="23.8%" y1="75.5%" x2="23.8%" y2="75.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow10" class="line" x1="16.4%" y1="84.8%" x2="16.4%" y2="84.8%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<line id="arrow10a" class="line" x1="1%" y1="84.8%" x2="1%" y2="84.8%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
					<text id="arrow10Yes" class="opacity00" x="8%" y="84%" style="writing-mode:font-size: 13px">Yes</text>
					<line id="arrow10b" class="line" x1="1%" y1="6.4%" x2="1%" y2="6.4%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
		 			<line id="arrow11" class="line" x1="23.8%" y1="91.5%" x2="23.8%" y2="91.5%" style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"/>
		 			<text id="arrow11No" class="opacity00" x="19%" y="93.5%" style="font-size: 13px">No</text>
				</svg>
						<div class="col-xs-12 margin-top-30">
							<div class="rectangle col-xs-5 opacity00" id="writeCode">Source code</div>
						</div>
				    	<div class="col-xs-offset-7 col-xs-5 opacity00" id="saveFile">
					   		<div class="oval"></div>
							<div class="oval-shape">Save file with .c as an extension</div>
						</div>
						<div class="col-xs-12">
							<div class="col-xs-5 bottom-div opacity00" id="compilation">Compiler</div>
						</div>
						<div class="col-xs-12 margin-top-40">
							<div class="col-xs-3 col-xs-offset-2 diamond opacity00" id="syntaxErrors">
								<div class="diamond-inner">Errors</div>
							</div>
						</div>
						<div class="both col-xs-offset-7 col-xs-5 opacity00" id="objFile">
			       			<div class="oval"></div>
							<div class="oval-shape">.obj file</div>
						</div>
						<div class="col-xs-12">
							<div class="col-xs-5 margin-top-0 bottom-div opacity00" id="libraryLink">Linker</div>
						</div>
						<div class="col-xs-offset-7 col-xs-5 opacity00" id="exeFile">
							<div class="oval"></div>
							<div class="oval-shape">.exe file</div>
						</div>
						<div class="col-xs-12">
							<div class="col-xs-5 bottom-div opacity00" id="runProgram">Runtime</div>
						</div>
						<div class="col-xs-12 margin-top-30">
							<div class="col-xs-3 col-xs-offset-2 diamond opacity00" id="runtimeErrors">
								<div class="diamond-inner">Errors</div>
							</div>
						</div>
						<div class="col-xs-12 margin-top-30">
							<div class="col-xs-5 elipse opacity00" id="output">Output</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>