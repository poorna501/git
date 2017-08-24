<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<title>statements-in-c</title>
<style>
.margin5 {
	margin-top : 5px;
}
.margin20 {
	margin-top : 20px;
}
.margin30 {
	margin-top : 30px;
}

.marginleft5 {
	margin-left : 5px;
}
.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: rgb(252, 66, 66);
}

.box-border {
	border : 1px solid;
}

#simpleDiv, #compoundDiv, #controlDiv {
    text-shadow: 2px 2px 4px #000000;
    display: none;
    box-shadow: 10px 10px 5px grey;
}

#mainDiv {
	height : 420px;
}

#typingbox {
	padding-top : 5px!important;
	height : 80px;
}

#stateDiv {
	padding-top : 5px!important;
	height : 80px;
}

#statetypeDiv {
	padding-top : 5px!important;
	height :250px;
}

#simpletextDiv {
	padding-top : 5px!important;
	height : 250px;
}

#simDiv {
	padding-top : 5px!important;
	height : 140px;
}

#textDiv {
	padding-top : 5px!important;
	height : 100px;
}

#expDiv {
	height : 20px;
}

#simheading {
	color: red;
	height : 20px;
	font-size : 15px;
}

</style>
</head>
<body>
<script>
var simple;
function introGuide() {
	introcode = introJs();
	introcode.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		steps : [ 
		{
			element : '#typingbox',
			intro : '',
			position : 'right',
			tooltipClass : "hide"
		},
		{
			element : '#statetypeDiv',
			intro : '',
			position : 'right',
			tooltipClass : "hide"
		}
		]
	});
	introcode.onbeforechange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) 
		{
		case "typingbox":
		$('.introjs-nextbutton').hide();
		typingContent = '<span class = "margin10">A <b>Statement</b> is an <b>instruction</b> that commands the computer to perform a <b>specified action.</b></span><span id = "typing6" class = "margin5"></span>'; 
		typing('#typingbox', typingContent,function() { 
			typingContent = '<br><br>A <b>Statement</b> is a collection of variables, operators and datatypes ended with a semicolon.';
			typing('#typing6', typingContent,function() { 
				setTimeout (function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = 'Let us see the types of Statements.'; 
					typing('.introjs-tooltiptext', typingContent,function() {
						$('.introjs-nextbutton').show();
						$('#statetypeDiv').removeClass('visibility-hidden');
					});
				},1000);
		 	}); 
		});
		break;
		case "statetypeDiv":
		$('.introjs-helperLayer').one('transitionend', function() {
			$('#statetypeDiv').css('border' , '1px solid black');
			if(introcode._currentStep == 1) {
				$('.type-name').fadeTo(1000,1,function() {
					$('#simpleDiv').slideDown('slow',function() {
						$('#compoundDiv').slideDown('slow',function() {
							$('#controlDiv').slideDown('slow');
						});
					});
				});
			} else {
				$('#simDiv').empty();
				$('#textDiv').empty();
			}
			$('.introjs-nextbutton').hide();
			setTimeout(function() {
				$('.introjs-tooltip').removeClass("hide");
				typingContent = 'Click on any type of Statement.'; 
				typing('.introjs-tooltiptext', typingContent,function() {
				});
			},2000);
		});
		break;
		case "simDiv":
			$('.introjs-helperLayer').one('transitionend', function() {
				$('#simDiv').addClass('introjs-showElement');  
				var action =  introcode._introItems[introcode._currentStep].action;
					if (action == 'simple') {
						typingContent = '<div class = "col-xs-offset-4 col-xs-4" id = "simheading">Simple Statement</div>'
						typing('#simDiv', typingContent,function() {
							$('#simDiv').append('<div id = "exampleDiv" class = "col-xs-12 margin10"></div>');
							typingContent = '<span class = "margin30">Example <br><span id = "expSimple1" class = "margin20 col-xs-offset-1" > a = b  <span class = "opacity00 ct-code-b-red" id = "simcommaDiv">;</span><span class = "opacity00 ct-code-b-red" id = "expSimple2"> /* This is an expression. */</span></span></span>'
							typing('#exampleDiv', typingContent,function() {
								$('#expSimple2').fadeTo(2000,1,function() {
									setTimeout(function() {
										$('.introjs-tooltip').removeClass("hide");
										typingContent = 'When we place a semicolon(;) at the end of an expression, it is known as Simple Statement.'; 
										typing('.introjs-tooltiptext', typingContent,function() {
										$('#expSimple2').remove();
											$('#simcommaDiv').fadeTo(2000,1,function() {
											$('#simDiv').append('<div id = "example2Div" class = "col-xs-12"></div>');
												typingContent = '<br><span id = "expSimple3" class = "margin20 col-xs-offset-1" > x = 5<span class = "ct-code-b-red" id = "simcomma2Div">;</span></span>'
												typing('#example2Div', typingContent,function() {
													$('#simDiv').append('<div id = "example3Div" class = "col-xs-12"></div>');
													typingContent = '<br><span id = "expSimple4" class = "margin20 col-xs-offset-1" > a = b + 10 <span class = "ct-code-b-red" id = "simcomma3Div">;</span></span>'
													typing('#example3Div', typingContent,function() {
														$('.introjs-nextbutton').show();
													});
												});
											});
										});
									},2000);
								});
							});
						});
					} else if (action == 'compound') {
						typingContent = 'Here, we will know about Compound Statement.'; 
						typing('.introjs-tooltiptext', typingContent,function() {
							typingContent = '<div class = "col-xs-offset-4 col-xs-6" id = "simheading">Compound Statement</div>'
							typing('#simDiv', typingContent,function() {
							$('#simDiv').append('<div id = "exampleDiv" class = "col-xs-12 margin10"></div>');
								typingContent = 'Consider an example <br><span id = "comstate"><span id = "openbrace" class = "col-xs-offset-1 opacity00">{</span><br><span id = "firstexp" class = "opacity00 col-xs-offset-2">'
								+'c = a + b;</span><span id = "firststate" class = "opacity00"><span class = "fa fa-0x fa-arrow-left opacity00 marginleft5" id = "firstarrow"></span> '
								+'/* This is a Simple Statement */</span><br><span id = "secondexp" class = "opacity00 col-xs-offset-2">x = 10;</span><span id = "secondstate" class = "opacity00">'
								+'<span class = "fa fa-0x fa-arrow-left opacity00 marginleft5" id = "secondarrow"></span> /* This is also a Simple Statement */</span><br>'
								+'<span id = "closebrace" class = "col-xs-offset-1 opacity00">}</span></span><span id = "thirdstate" class = "opacity00 marginleft5">/* Compound Statement */</span>'
							typing('#exampleDiv', typingContent,function() {
								$('#firstexp').fadeTo(20,1,function() {
									$('#firststate').fadeTo(1000,1,function() {
										$('#firstarrow').css({'opacity' : '1'});
										$('#firstarrow').effect( "highlight", {color:"red"}, 3000);
										setTimeout(function() {
											$('#secondexp').fadeTo(1000,1,function() {
												$('#secondstate').fadeTo(1000,1,function() {
													$('#secondarrow').css({'opacity' : '1'});
													$('#secondarrow').effect( "highlight", {color:"red"}, 3000);
													setTimeout(function() { 
														$('#openbrace').fadeTo(1000,1,function() {
															$('#closebrace').fadeTo(1000,1,function() {
																$('#comstate').effect( "highlight", {color:"pink"}, 3000);
																$('#thirdstate').fadeTo(1000,1,function() {
																	$('.introjs-tooltip').removeClass('hide');
																	typingContent = 'One or more <span class = "ct-code-bold-yellow">Simple Statements</span> enclosed  with in braces is known as <b>Compound statement</b> or <b>Block</b>.'; 
																	typing('.introjs-tooltiptext', typingContent,function() {
																		$('.introjs-nextbutton').show();
																	});
																});
															});
														});
													},3000);
												});
											});
										},2000);
									});
								});
							});
						});
					});
				} else if (action == 'control') {
					typingContent = '<div class = "col-xs-offset-4 col-xs-4" id = "simheading">Control Statement</div>'
					typing('#simDiv', typingContent,function() {
						$('#simDiv').append('<div id = "exampleDiv" class = "col-xs-12 margin10"></div>');
						typingContent = 'Consider an example <br><span id = "conexpstate" class  = "opacity00 col-xs-offset-1">int i = 4; /* This is a Simple Statement */</span><br><span id = "comstate"><span id = constateDiv class = "opacity00 col-xs-offset-1">if (i < 4)</span><span id = "openbrace" class = "opacity00 marginleft5">{</span><br><span id = "firstexp" class = "opacity00 col-xs-offset-2">'
							+'c = i + 5;</span><span id = "firststate" class = "opacity00"><span class = "fa fa-0x fa-arrow-left opacity00 marginleft5" id = "firstarrow"></span> '
							+'/* This is a simple statement */</span><br>'
							+'<span id = "closebrace" class = "col-xs-offset-2 opacity00">}</span></span><span id = "thirdstate" class = "opacity00 col-xs-offset-1">/*This is a Control Statement */</span>'
						typing('#exampleDiv', typingContent,function() {
							$('#conexpstate').fadeTo(500,1,function() {
								$('#firstexp').fadeTo(500,1,function() {
									$('#firststate').fadeTo(1000,1,function() {
										$('#firstarrow').css({'opacity' : '1'});
										$('#firstarrow').effect( "highlight", {color:"red"}, 3000);
										setTimeout(function() { 
											$('#openbrace').fadeTo(1000,1,function() {
												$('#closebrace').fadeTo(1000,1,function() {
													$('#constateDiv').fadeTo(1000,1,function() {
													$('#comstate').effect( "highlight", {color:"pink"}, 3000); 
														$('#thirdstate').fadeTo(1000,1,function() {
															$('.introjs-tooltip').removeClass('hide');
															typingContent = 'The statements enclosed within braces are executed only on condition.'; 
															typing('.introjs-tooltiptext', typingContent,function() {
																$('.introjs-nextbutton').show();
															});
														});
													});
												});
											});
										},2000);
									});
						 		});
							});
						});
					});
				}
			});
		break;
		case "textDiv":
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			$('#textDiv').addClass('introjs-showElement');  
			var action =  introcode._introItems[introcode._currentStep].action;
			if (action == 'simple') {
				typingContent = '<ul><li>A Simple Statement consists of an expression followed by a semicolon.</li><br>'
				+'<li>The execution of such a statement causes the associated expression to be evaluated.</li>' 
				typing('#textDiv', typingContent,function() {
					setTimeout(function() {
						introcode.nextStep();
					},2000);
				}); 
			} else if (action == 'compound') {
				$('#textDiv').append('<span id = defDiv class = "margin20"></span>');
				typingContent = '<ul><li>A Compound Statement consists of several individual statements enclosed with a	pair of braces { }</li><br>'
				+'<li>The individual statements can be expression Statements, Compound Statements, or Control Statements.</li>'
				typing('#defDiv', typingContent,function() {
					setTimeout(function() {
						introcode.nextStep();
					},2000);
				});
			} else if (action == 'control') {
				$('#textDiv').append('<span id = defDiv class = "margin20"></span>');
				typingContent = '<ul><li>Control Statements are used to create special program features such as logical tests, loops and branches.</li><br>'
				typing('#defDiv', typingContent,function() {
					setTimeout(function() {
						introcode.nextStep();
					},2000);
				});
			}
		});
		break;
		case "simpletextDiv":
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			var action =  introcode._introItems[introcode._currentStep].action;
			$('#simpletextDiv').addClass('introjs-showElement');  
			if (action == 'simple') {
				$('.introjs-tooltip').removeClass("hide");
				typingContent = 'This is about Simple Statement.'; 
				typing('.introjs-tooltiptext', typingContent,function() {
					$('.introjs-nextbutton').show();
				});
			} else if (action == 'compound') {
				$('.introjs-tooltip').removeClass("hide");
				typingContent = 'This is about Compound Statement.'; 
				typing('.introjs-tooltiptext', typingContent,function() {
					$('.introjs-nextbutton').show();
				});
			} else if (action == 'control') {
				$('.introjs-tooltip').removeClass("hide");
				typingContent = 'This is about Control Statement. '; 
				typing('.introjs-tooltiptext', typingContent,function() {
					$('.introjs-nextbutton').show();
				});
			}
		});
		break;
		}
	});		
	introcode.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
}
$(document).ready(function() {
	introGuide();
	$('#simpleDiv').click(function() {
		action = "simple";
		$('#simpletextDiv').removeClass('visibility-hidden');
		dynamicSteps("simple");
		introcode.nextStep();
	});
	$('#compoundDiv').click(function() {
		action = "compound";
		$('#simpletextDiv').removeClass('visibility-hidden');
		dynamicSteps("compound");
		introcode.nextStep();
	});
	$('#controlDiv').click(function() {
		action = "control";
		$('#simpletextDiv').removeClass('visibility-hidden');
		dynamicSteps("control");
		introcode.nextStep();
		});
});

function dynamicSteps(action) {
	var dynamicStep = {
	    "element" : '#simDiv',
	    "position" : "right",
	    "intro" : "",
	    "tooltipClass" : "hide",
	    action :action,
	}
	introcode.insertOption(introcode._currentStep + 1, dynamicStep);
	        
	var dynamicStep = {
		"element" : "#textDiv",
	    "position" : "right",
	    "intro" : "",
	    "tooltipClass" : "hide",
	    action :action,
	}
	introcode.insertOption(introcode._currentStep + 2, dynamicStep);
	
	var dynamicStep = {
			"element" : "#simpletextDiv",
		    "position" : "right",
		    "intro" : "",
		    action :action,
		}
		introcode.insertOption(introcode._currentStep + 3, dynamicStep);
		
	var dynamicStep = {
	    "element" : "#statetypeDiv",
	    "position" : "right",
	    "tooltipClass" : "hide",
	}
    $('.introjs-nextbutton').hide();
    introcode.insertOption(introcode._currentStep + 4, dynamicStep);
}

function typing(typingId, typingContent, callbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval":10,
		"cursor_color": "blue"
	}, function() {
		$(typingId).removeClass('typingCursor');
		callbackFunction();
	});
}
</script>
<div class='ct-box-main'>
	<div class='text-center'>
		<h1 class='label ct-demo-heading'>Statements in C</h1>
	</div>
<br>
	<div class = "main-div col-xs-offset-2 col-xs-8" id = 'mainDiv' >
		<div class = 'row'>
			<div class = "typing-box col-xs-offset-2 col-xs-8 box-border" id = "typingbox">
			</div>
		</div>
		<div class = 'row margin5'>
			<div class = "state-div col-xs-4 " id = 'statetypeDiv'>
				<div class='text-center margin30'>
					<h4 class='label ct-demo-heading  type-name opacity00'>Types of statements</h4>
				</div>
				<div class = 'text-center'>
					<button type="button" class="btn btn-warning margin20" id="simpleDiv">Simple Statement</button>
					<button type="button" class="btn btn-warning margin20" id="compoundDiv">Compound Statement</button>
					<button type="button" class="btn btn-warning margin20" id="controlDiv">Control Statement</button>
				</div>
			</div>
			<div class = 'col-xs-8  visibility-hidden margin10' id = 'simpletextDiv'>
				 <div class = 'col-xs-12' id = 'simDiv'>
				</div>
				<div class = 'col-xs-12' id = 'textDiv'>
				</div>
		</div>
		</div>
	</div>	
</div>
</body>
</html>