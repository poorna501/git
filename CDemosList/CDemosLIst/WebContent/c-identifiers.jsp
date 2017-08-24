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
<title>Insert title here</title>
</head>
<style>
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

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0 0;
    border-radius: 10px;
    font-size: 18px;
    position: relative;
    z-index: 9999999;
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

.ct-code-b-yellow {
	font-family: monospace;
	font-weight: bold;
	color: yellow;
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

.row {
	margin-right : 0px !important;
}

#informationDiv {
	background-color: rgb(243, 235, 235);
    border-radius: 10px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 150px;
    margin-top: 5%;
    width: 900px;
}

.char-set {
	height: 390px;
	border: 2px solid gray;
	border-radius: 4px;
	margin-top: 15px;
	position: absolute; 
}

.charset-orderlist {
	margin-top: 10px;
}

.zIndex {
	z-index: 1000012;
}

.reveal-left {
	position: relative;
	overflow: hidden;
	-moz-animation: reveal-down 1s ease;
	-moz-animation-fill-mode: downwards;
}

@-moz-keyframes reveal-down {
	0% {height: 0%;}
	100%   {height: 100%;}
}
</style>
<body>
<div class="col-xs-12">
	<div class="margin-padding-css text-center" >
		<div class="col-sm-1"></div>
		<div class="col-sm-offset-3 col-sm-3">
			<h3><span class="ct-demo-heading label label-default" id="titleName">Basics of C Language</span></h3>
		</div>
	</div>
	
	<div class=" row col-sm-offset-2 font-size-12" id="informationDiv" >
		<span id="infoDiv" >		
 			<ul class="text" id='text'></ul>
		</span>
		<span class="intro-side-heading"></span>
		<div>
			<ol class="side-heading"></ol>
		</div>
	</div>
	<div class="col-sm-12">
		<div class="col-sm-6 col-sm-offset-3 char-set visibility-hidden" id="charSetDiv">
		<div id="charSetDef">
			<span><h4>1.&nbsp;<span class="ct-code-b-brown">CHARACTER SET OF </span><sup>'</sup><span class="ct-code-b-brown">C</span><sup>'</sup> :</h4></span>
			<span><ul><li>The set of characters used in a language is known as its Character Set.</li>
				<li><span class="ct-code-b-green"><sup>'</sup>C<sup>'</sup></span> has got its own character set.</li><li>The character set for ANSI Standard C (ANSI C) is given below.</li></ul></span>
		</div>
			<div class="charset-orderlist">
				<ol class="charset-ol-list">
					<li><b>Upper-case alphabets:&nbsp;&nbsp;  <span class="ct-code-b-green">A</span> to <span class="ct-code-b-green">Z</span></b>.</li>
					</br>
					<li><b>Lower-case alphabets:&nbsp;&nbsp;  <span class="ct-code-b-green">a</span> to <span class="ct-code-b-green">z</span></b>.</li>
					</br>
					<li><b>Decimal digits :&nbsp;&nbsp;  <span class="ct-code-b-green">0</span> to <span class="ct-code-b-green">9</span></b>.</li>
					</br>
					<li><b>Special Characters:&nbsp;&nbsp;  <span class="ct-code-b-green">+ - * / % = &lt;&gt;blank : ; , .’ “ ?! # \ ( ) { } _ [ ] &amp; | ^ ~</span></span></b></li> 
				</ol>
			</div>
		</div>
		
		<div class="col-sm-6 col-sm-offset-3 char-set visibility-hidden" id="identifierDiv">
			<span><h4>2.&nbsp;<span class="ct-code-b-brown">IDENTIFIERS </span>:</h4></span>
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Identifiers are words or symbolic names used to refer to entities such as data types, constants,
variables, functions, arrays etc in a program.</span>
	<div class="ct-code-b-brown">Rules :</div>
		<ol class="identifierRules">
			
		</ol>
	<div class="valid-invalid"></div>
		
 <div id="inputDiv" class="input-div visibility-hidden" style="margin-top: 10px;" >
		<span class='font-size-16'>Enter the valid Identifier :</span>&nbsp;&nbsp;&nbsp;<input
					class="index-textbox-size" type="text" 
					id="inputId" placeholder="Identifier" Maxlength='8'  >&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success opacity40" id="identifierBtn">
					<i class="fa fa-arrow-right"></i> Submit </button>
			</div> 
	<div><button type="button" class="col-sm-2 col-sm-offset-5 btn btn-warning opacity00" id="restartBtn" style="margin-top: 30px;">Restart </button></div>
	</div>
</div>
</div>
<script>

$(document).ready(function() {
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
						element :'#informationDiv',
						intro :'',
						position:"bottom"
					},{
						element :'#informationDiv',
						intro :'',
						position:"bottom"
					},{
						element :'#charSetDiv',
						intro :'',
						position:"left"
					},{
						element :'#identifierDiv',
						intro :'',
						position:"left"
					},{
						element :'#identifierDiv',
						intro :'',
						position:"left"
					},{
						element :'#identifierDiv',
						intro :'',
						position:"left"
					},{
						element :'#inputDiv',
						intro :'',
						position:"left"
					},{
						element :'#restartBtn',
						intro :'',
						position:"left"
					}]
	});
	intro.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "informationDiv" :
			$('.introjs-nextbutton').hide();
			if(intro._currentStep == 1) {
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing(".text", "<li><span class='ct-code-b-red'>Language</span> means communication between user and any human being.</li>" +
							"<li><span class='ct-code-b-red'>C</span> language provides communication between user and system through different programs.</li>" +
							"<li><span class='ct-code-b-red'>C</span> was developed by <span class='ct-code-b-green'>Dennis Ritchie</span> at AT & T(American Telephonic and Telegraphic) at bell laboratories in the year 1972.</li>" +
							"<li><span class='ct-code-b-red'>C</span> has got its own character set for ANSI Standard C (ANSI C).</li>", 10, "",function() {
							typing(".introjs-tooltiptext", "Now, we will learn about the Character Set of C and Identifiers.", 10, "",function() {
								$('.introjs-nextbutton').show();
							});
						});
					});
				
			} else if(intro._currentStep == 2) {
				typing(".intro-side-heading", "For writing any C program first we need to learn the alphabets available in the language, and after that learn words.", 10, "", function() {
					typing(".side-heading", "<li class='ct-code-b-brown'>CHARACTER SET OF C.</li>" +
							"<li class='ct-code-b-brown'>IDENTIFIERS.</li>", 10, "", function() {
								typing(".introjs-tooltiptext", "Now, first we will learn about the character set of C.", 10, "",function() {
									$('.introjs-nextbutton').show();
								});
					})
				})
			}
			break;
		
			case "charSetDiv" :
				$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						$("#charSetDiv").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
								typing(".introjs-tooltiptext", "After studying the alphabets, digits and special characters in C. Now, we will turn to words.", 10, "",function() {
									$('.introjs-nextbutton').show();
								});
						});
					});
				break;
				
			case "identifierDiv" :
				$('.introjs-nextbutton').hide();
				if(intro._currentStep == 4) {
					$("#charSetDiv").addClass("visibility-hidden");
					$("#identifierDiv").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
						typing(".introjs-tooltiptext", "Now, turn to Identifiers, there are some of rules to be followed. Click next to continue.", 10, "",function() {
							$('.introjs-nextbutton').show();
						});
					});
				} else if(intro._currentStep == 5) {
					typing(".identifierRules", "<li>Identifiers are formed by using alphabets, digits and an underscore ( _ ).</li>" +
							"<li>The first character must always be an alphabet or an only special symbol underscore. and remaining characters may be one or more alphabets, digits and underscore.</li>" +
							"<li>Special characters except the underscore are not allowed in an identifier.</li>" +
							"<li>The upper case and lower case of an alphabet are treated distinctly by C.</li>", 10, "", function() {
							typing(".introjs-tooltiptext", "After learning about the rules, there some examples for valid and inavalid identifiers.", 10, "", function() {
								$('.introjs-nextbutton').show();
							});
					})
				} else if(intro._currentStep == 6) {
					typing(".valid-invalid", "<span><h5><b>Valid Identifiers :</b></h5></span>" +
							"<span><span class='ct-code-b-green'>_BUFFER</span>, <span class='ct-code-b-green'>X </span>,<span class='ct-code-b-green'>A</span>, <span class='ct-code-b-green'>Sum</span>, <span class='ct-code-b-green'>Area</span>," +
							"<span class='ct-code-b-green'>Pay</span>, <span class='ct-code-b-green'>net_pay_record_2</span> are valid Identifiers.</span>" +
						
							"<span><h5><b>Invalid Identifiers</b></h5></span>" +
							"<ol><li><span class='ct-code-b-red'>3A</span> -- The first character must be a letter.</li>" +
							"<li><span class='ct-code-b-red'><sup>'</sup>a<sup>'</sup></span> -- Special character “ is not allowed.</li></ol>", 10, "", function() {
							
								$("#inputDiv").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
									intro.nextStep();
								});
					});
				}
				break;
				
			case "inputDiv" :
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
					typing(".introjs-tooltiptext", "Enter the correct Identifier and click on Submit to verify.", 10, "",function() {
						$("#inputId").focus();
					});
				});
				break;
				
			case "restartBtn" :
				$('.introjs-nextbutton').hide();
				$('.introjs-helperLayer ').one('transitionend', function() {
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
	
	typing(".introjs-tooltiptext", "Here, we are going to learn about basics of C language.", 10, "",function() {
		$('.introjs-nextbutton').show();
	});
	
	
	$("#identifierBtn").click(function() {
		$("#restartBtn").removeClass("opacity00");
		$("#errorTextId").remove();
		$("#errorTextId1").remove();
		$("#errorTextId2").remove();
		$("#errorTextId3").remove();
		$(".introjs-tooltiptext").append("<div id='errorTextId'></div>");
		console.log("input text is = " + $("#inputId").val().length);
		var no_spl_char = /^[A-Za-z0-9_]{1,8}$/;
		var inputVal = $("#inputId").val();
		console.log($("#inputId").val());
		if(!isNaN(inputVal.substring(0,1)) || !no_spl_char.test(inputVal)) {
			var text = "<span id='errorTextId1' class='ct-code-b-red'> " +  inputVal + "  </span>  is a Invalid Identifier."
			typing(".introjs-tooltiptext div:last-child", text, 10, "",function() {
				$("#inputId").val('');
				$("#inputId").focus();
				$("#restartBtn").removeClass("opacity00");
				$("#restartBtn").addClass("zIndex");
				$('.introjs-nextbutton').hide();
			});
			console.log("InValid Identifier");
		} else if (inputVal.substring(0,1) == '_') {
			var text = "<span id='errorTextId2' class='ct-code-b-green'> " +  inputVal + "  </span>  is a Valid Identifier.</br>" + 
			"<span class='ct-code-b-yellow'>_ </span>is used for <span class='ct-code-b-yellow'>system variables</span>.";
			typing(".introjs-tooltiptext div:last-child", text, 10, "",function() {
				$("#inputId").val('');
				$("#inputId").focus();
				$("#restartBtn").removeClass("opacity00");
				$("#restartBtn").addClass("zIndex");
			});
		} else {
			var text = "<span id='errorTextId3' class='ct-code-b-green'> " +  inputVal + "  </span>  is a Valid Identifier."
			typing(".introjs-tooltiptext div:last-child", text, 10, "",function() {
				$("#inputId").val('');
				$("#inputId").focus();
				$("#restartBtn").removeClass("opacity00");
				$("#restartBtn").addClass("zIndex");
			});
		}
	});

	$("#restartBtn").click(function() {
		location.reload();
	})
	
});	// end of document.ready function


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
