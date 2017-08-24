<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>printf</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/animate.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js" type="text/javascript"></script>
<style>

.color-green {
	color: #90EE90;
}

.color-black {
	color: black;
}

.margin-top20 {
	margin-top: 20px;
}

.consol-width {
	width: 50%;
}

#typingDiv {
	height: 130px;
}

.back-color {
	background-color: #D6C2E7;
}

.text-color-green {
	color: green;
}

.left-padding-120 {
	padding-left: 120px;
}

.left-padding-80 {
	padding-left: 80px;
}
.output-console-body {
	background-color: black;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-size: 14px;
	margin-bottom: 14px;
	height: 100px;
	overflow:unset;
	padding: 10px;
	white-space: pre-line;
}

.padding-col0 {
	padding: 0;
}


.border-height-css {
	border: 1px solid;
	height: 22px;
}

.Vertical-text-center  {
	height: 62px;
	line-height: 62px;
	text-align: right; 
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
	background-color: white;
}


.circle-css1 {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
	background-color: blue;
}

.display-inline-block {
	display: inline-block;
}

.height-124 {
    height: 124px;
}

.zIndex {
	position: relative;
	z-index: 10000001 !important;
}

.int {
	outline: none;
}

.user-btn {
	background-color: green;
}

</style>
</head>
<body>
	<script>
	var typingSpeed = 5;
	var intro;
	$(document).ready(function() {
		$("#restart").click(function() {
			location.reload();
		});
		$("#inputChar").val(null);
		$("#inputChar").on("click keydown keyup", function(e) {
			$(".error-msg").remove();
			if ($('#inputChar').val() == "") {
				$('.introjs-nextbutton').hide();
			} else {
				$('.introjs-nextbutton').show();
			}
		});
		
		var typingId;
		var typingContent;
		var typingInterval;
		var cursorColor;
		var typingCallbackFunction;
		intro = introJs();
		intro.setOptions({
			showStepNumbers: false,
			exitOnOverlayClick: false,
			showBullets: false,
			exitOnEsc: false,
			keyboardNavigation: false,
			steps : [{
				element : "#typingDiv",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#typingDiv",
				intro : "",
				position : "bottom"
			}, {
				element : "#codeOne",
				intro : "",
				position : "bottom"
			}, {
				element : "#outputDiv",
				intro : "",
				position : "right"
			}, {
				element : "#codeTwo",
				intro : "",
				position : "bottom"
			},{
				element : "#memoryDiv1",
				intro : "",
				position : "bottom"
			},{
				element : "#outputDiv1",
				intro : "",
				tooltipClass : "hide" 
			}, {
				element : "#outputDiv1",
				intro : "",
				position : "top"
			}, {
				element : "#restart",
				intro : "",
				position : "left"
			}]});
		intro.onbeforechange(function(targetElement) {
			var elementId = targetElement.id;
			switch (elementId) {
				case "typingDiv":
				$('.introjs-nextbutton').hide();
				if (intro._currentStep == 1) {
					$('.introjs-nextbutton').show();
				};
				break;
				case "codeOne":
					$('.introjs-nextbutton').hide();
					$('#exampleDiv').removeClass('opacity00');
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "Let us consider a sample code how <b class='ct-code-b-yellow'>printf()</b> is used to display the string with in double quotes.";
				 		typing(".introjs-tooltiptext", text, function() {
				 			$('.introjs-nextbutton').show();
				 		});
					});
					break;
				case "codeTwo":
					$('.introjs-nextbutton').hide();
					$('#exampleDiv1').removeClass('opacity00');
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "Let us consider a sample code how <b class='ct-code-b-yellow'>printf()</b> is used to display multiple data values onto the console.";
				 		typing(".introjs-tooltiptext", text, function() {
				 			$('.introjs-nextbutton').show();
				 		});
					});
					break;
					
					
				case "restart":
					$('.introjs-nextbutton').hide();
					$('#restart').removeClass('opacity00');
					$('.introjs-helperLayer ').one('transitionend', function() {
						var text = "Click to restart.";
				 		typing(".introjs-tooltiptext", text, function() {
				 		});
					});
				break;
					
					
				case "memoryDiv1":
					$('.introjs-nextbutton').hide();
					$(".introjs-tooltip").css("min-width", "400px");
					$('#memoryDiv1').removeClass('opacity00');
					$('.introjs-helperLayer ').one('transitionend', function() {
						$(".introjs-tooltip").css("min-width", "400px");
						$('#exampleDiv1').removeClass('introjs-showElement');
						$('#memoryDiv1').removeClass('opacity00');
						$('.introjs-nextbutton').hide();
						$('.introjs-helperLayer ').one('transitionend', function() {
							$("#intA").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
								$('#charBox1').removeClass('opacity00');
								$('#charBox1').toggleClass('animated zoomIn').one('animationend', function() {
									$('.introjs-tooltiptext').append("<ul><li></li></ul>");
									var text = "<b class ='ct-code-b-yellow'>Two</b> bytes of memory is allocated to <b class ='ct-code-b-yellow'>int</b> "
										+"data type variable <b class='ct-code-b-yellow'>a</b>.The value <b class='ct-code-b-yellow'>10</b> is assigned to <b class='ct-code-b-yellow'>a</b>.";
									typing(".introjs-tooltiptext ul li:last-child", text, function() {
										$('#xValue1').removeClass('opacity00');
										$('#xValue1').addClass('circle-css');
										var v = $('#intTen').offset();
										$('#xValue1').offset({"top":v.top,"left":v.left});
										TweenMax.to("#xValue1", 2, {top : 0, left : 0,onComplete : function() {
											$('#xValue1').removeClass('circle-css');
											$("#intB").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
												$('#intBox').removeClass('opacity00');
												$('#intBox').toggleClass('animated zoomIn').one('animationend', function() {
													$('.introjs-tooltiptext ul').append("<li></li>");
													var text = "The value <b class ='ct-code-b-yellow'>20</b> is asigned to <b class ='ct-code-b-yellow'>int</b> "
														+"data type variable <b class='ct-code-b-yellow'>b</b>.";
													typing(".introjs-tooltiptext ul li:last-child", text, function() {
														$('#xValue2').removeClass('opacity00');
														$('#xValue2').addClass('circle-css');
														var v = $('#intTwenty').offset();
														$('#xValue2').offset({"top":v.top,"left":v.left});
														TweenMax.to("#xValue2", 2, {top : 0, left : 0,onComplete : function() {
															$('#xValue2').removeClass('circle-css');
															$("#intSum").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
																$('#floatBox').removeClass('opacity00');
																$('#floatBox').toggleClass('animated zoomIn').one('animationend', function() {
																	$('.introjs-tooltiptext ul').append("<li></li>");
																	var text = "<b class='ct-code-b-yellow'>int</b> data type variable <b class='ct-code-b-yellow'>sum</b>  declared to store the total value of a,b.";
																	typing(".introjs-tooltiptext ul li:last-child", text, function() {
																		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" onclick="sumAnimation()">Next →</a>');
																	}); 
																});
															});
														}});
													});
												}); 
											});
										}}); 
									});
								});
							});
						});
					});
					break;
					
				case "outputDiv":
					$('.introjs-nextbutton').hide();
					$('#outputDiv').removeClass('opacity00');
					$('.introjs-tooltip').addClass('tip');
					$('.tip').hide();
					$('.introjs-helperLayer ').one('transitionend', function() {
						prinfAnimation(function() {
							console.log('typing start');
							$('.introjs-tooltip').show();
							$('.tip').show();
							var text = "<b class='ct-code-b-yellow'>'\\n' </b>can be use for move control to the next line.<br>Likewise want to print"
								+ " double quotes place escape character before on it. i:e, <b class='ct-code-b-yellow'>\\</b>";
									typing(".introjs-tooltiptext", text, function() {
									$('.introjs-nextbutton').show();
							});
						});
					});
					break;
					
				case "outputDiv1":
					
					$(".introjs-tooltip").css("min-width", "200px");
					$('.introjs-nextbutton').hide();
					$('#outputDiv1').removeClass('opacity00');
					if (intro._currentStep == 6) {
						 $('.introjs-helperLayer ').one('transitionend', function() {
								typingId = '#consoleBodyDiv2';
								typingContent = 'The value of a = <span id="outputTen" class="opacity00">10</span><span id="outputB"></<span>';
								typing(typingId, typingContent, function() {
									$('#outputTen').removeClass('opacity00');
									var pos = $('#xValue1').offset();
									$('#outputTen').addClass('circle-css1');
									$('#outputTen').offset({'top':pos.top,'left':pos.left});
									TweenMax.to("#outputTen", 2, {top : 0, left : 0,onComplete : function() {
										$('#outputTen').removeClass('circle-css1');
										typingId = '#outputB';
										typingContent = ' and b = <span id="outputTwenty" class="opacity00">20</span><div id="outputLineTwo"></div>';
										typing(typingId, typingContent, function() {
											$('#outputTwenty').removeClass('opacity00');
											var pos1 = $('#xValue2').offset();
											$('#outputTwenty').addClass('circle-css1');
											$('#outputTwenty').offset({'top':pos1.top,'left':pos1.left});
											TweenMax.to("#outputTwenty", 2, {top : 0, left : 0,onComplete : function() {
												$('#outputTwenty').removeClass('circle-css1');
												typingId = '#outputLineTwo';
												typingContent = 'sum of two variables = <span id="outputSum" class="opacity00">30</span>';
												typing(typingId, typingContent, function() {
													$('#outputSum').removeClass('opacity00');
													var pos2 = $('#xValue3').offset();
													$('#outputSum').addClass('circle-css1');
													$('#outputSum').offset({'top':pos2.top,'left':pos2.left});
													TweenMax.to("#outputSum", 2, {top : 0, left : 0,onComplete : function() {
														$('#outputSum').removeClass('circle-css1');
														intro.nextStep();
													}});
												}); 
											}});
										});
									}});
								});
							});
					} else {
						$('.introjs-nextbutton').show();
					}
					break;
			}
		});
			intro.start();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$('.introjs-skipbutton').hide();
			$('.introjs-bullets').hide();
			typingId = '#typingDiv';
			typingContent = '<ul><li>Data can be written on to a standard output device using the library function'
							+ '<b class="ct-blue-color"> printf().</b></li>'
							+ '<li>This function can be used to print data with any combination of  numerical values, single characters and strings.</li>'
							+ '<li><b class="ct-blue-color">printf()</b> function moves data from the computer’s memory to the standard output device.</li>'
							+ '<li>The formats of <b class="ct-blue-color">printf()</b> statement is <ol><li><b class="back-color">printf("any string");'
							+ '</b> <span class="color-green">//It is used to display the string with in double quotes.</span></li>'
							+ '<li><b class="back-color">printf (“control_string”, argument_list);</b> <span class="color-green">//It is used to display multiple data values onto the console.</span>'
							+ '</ol></li></ul>';
			typing(typingId, typingContent, function() {	
				$(typingId).removeClass('typingCursor'); 
				intro.nextStep(); 
				
			});
		});

	function prinfAnimation(callbackFunction) {
		$('.introjs-tooltip').hide();
		$("#codeTantra").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
			  $('#lineOne').append("codeTantra.");
			   setTimeout(function() {
				   $("#nextLineOne").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
					   $('#lineTwo').append('<div id="cursorId" class="int" contenteditable="true" ></div>');
					     charAtEnd('cursorId');
					     setTimeout(function(){
					    	 $('#cursorId').remove();
					    	  $("#india").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
					    		  $('#lineTwo').append('I am form India.');
					    		  setTimeout(function(){
					    			  $("#nextLineTwo").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
					    				  $('#lineThree').append('<div id="cursorId" class="int" contenteditable="true" ></div>');
					    				  charAtEnd('cursorId');
					    				  setTimeout(function(){
					    					  $('#cursorId').remove();
					    					  $("#generation").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
					    						  $('#lineThree').append('New generation tool.');
					    						  if (typeof callbackFunction === "function") {
					    								callbackFunction();
					    							}
					    					  });
					    				  }, 2000);
					    			  }); 
					    		  },1000);
					    	  });
					     }, 2000);
			    	 });
			   }, 1000);
			});
	}
	
	function sumAnimation() {
		$(".user-btn").remove();
		$("#intAB").addClass("zIndex").effect("highlight", {color: 'white'}, 2000, function() {
			$('#xValue3').removeClass('opacity00');
			var p = $('#xValue1').offset();
			$('#addTen').removeClass('opacity00').addClass('circle-css').offset({"top":p.top,"left":p.left});
			TweenMax.to("#addTen", 2, {top : 0, left : 0,onComplete : function() {
				$('#addTen').removeClass('circle-css');
			}});
			$('#xValue3').removeClass('opacity00');
			var p1 = $('#xValue2').offset();
			$('#addTwenty').removeClass('opacity00').addClass('circle-css').offset({"top":p1.top,"left":p1.left});
			TweenMax.to("#addTwenty", 2, {top : 0, left : 0,onComplete : function() {
				$('#addTwenty').removeClass('circle-css');
				$('#add').removeClass('opacity00');
				$('#mainExampleDiv').removeClass('introjs-showElement');
				flipEffect('#xValue3', 30, function() {
					$('.introjs-nextbutton').show();
				  });
			}});
		});
		
	}

	function typing(selector, text, callBackFunction) {
		$(selector).typewriting(text, {
			"typing_interval" : typingSpeed,
			"cursor_color" : 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			if (typeof callBackFunction === "function") { 
				callBackFunction();
			}
		});
	}
	function charAtEnd(elementId) {
		var element = document.getElementById(elementId);
		element.focus();
		var range = document.createRange();
		range.selectNodeContents(element);
		range.collapse(false);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
		
	}
	
	function flipEffect(selector, val, callBackFunction) {
		TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
			$(selector).text(val);
			TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
				if (typeof callBackFunction === "function") {
					callBackFunction();
				}
			}});
		}});
	}
		
	</script>
	<div class="ct-box-main">
		<div class='text-center'>
			<h1 class='label ct-demo-heading' id="heading">Usage of printf(
				)</h1>
		</div>
		
		<div class='col-xs-12 text-center'>
			<span id='restart'
				class='btn btn-warning btn-sm opacity00 margin-top20'>Restart
				&nbsp;<i class='fa fa-refresh'></i>
			</span>
		</div>

		<div id="typingDiv"
			class='margin-top20 col-xs-offset-3 col-xs-7 col-xs-offset-2'>
		</div>

		<div id='TypesOfFormate' class='text-center margin-top20 col-xs-12'>
		</div>
		<div class='col-xs-12 margin-top20'>
			<div id='mainExampleDiv' class='col-xs-4'>
				<div id='exampleDiv' class='opacity00 height-124'>
					<span id='codeOne'><span>&nbsp;&nbsp;</span><span>printf("<span id='codeTantra'>codeTantra.</span><span id='nextLineOne'>\n</span>");</span><br>
					<span>&nbsp;&nbsp;</span><span>printf("<span id='india'>I am from \"India\".</span><span id='nextLineTwo'>\n</span>");</span><br>
					<span>&nbsp;&nbsp;</span><span>printf("<span id='generation'>New generation tool.</span>");</span></span>
				</div>
				<div id='outputDiv' class='margin-top20 opacity00'>
					<div id="consoleId1" class="center">
						<div class="output-console-title-bar">
							<span class="title"><b>Console</b></span>
						</div>
						<div class="output-console-body" id="consoleBodyDiv1">
							<div id="lineOne"></div>
							<div id='lineTwo'><span id='line-two-cursor'></span></div>
							<div id='lineThree'></div>
						</div>
					</div>
				</div>
			</div>
			<div class='col-xs-8'>
			<div class='col-xs-12 padding-col0'>
			<div id='mainExampleDiv1' class='col-xs-6'>
			<div id='exampleDiv1' class='opacity00 height-124'>
					<span id='codeTwo'><span>&nbsp;&nbsp;</span><span><span id='intA'>int a = <span id='intTen'>10</span></span>, <span id='intB'>b = 
					<span id='intTwenty'>20</span></span>, <span id='intSum'>sum;</span></span><br>
					<span>&nbsp;&nbsp;</span><span><span id='intAB'>sum = a + b;</span></span><br>
					<span>&nbsp;&nbsp;</span><span>printf("The values of a = %d and b = %d\n", a, b);</span><br>
					<span>&nbsp;&nbsp;</span><span>printf("sum of two variables = %d\n", sum);</span></span>
			</div>
			</div>
			<div id='mainMemoryDiv' class='col-xs-6'>
			<div id='memoryDiv1'
					class='back-color col-xs-12 opacity00'>
					<div class='text-color-green text-center' class='col-xs-4'>Memory</div>
					<div id='charBox1' class='col-xs-4 padding-col0 opacity00'>

						<div class="col-xs-2 Vertical-text-center padding-col0">a</div>
						<div class="col-xs-10 text-center ">
							<div>
								<span class="color-gray">2 bytes</span>
							</div>
							<div class="border-height-css">
								<span id="xValue1" class='opacity00'>10</span>
							</div>
							<div>
								<span id="xAddress">1200</span>
							</div>
						</div>
					</div>
					<div id='intBox' class='col-xs-4 padding-col0 opacity00'>

						<div class="col-xs-2 Vertical-text-center padding-col0">b</div>
						<div class="col-xs-10 text-center">
							<div>
								<span class="color-gray">2 bytes</span>
							</div>
							<div class="border-height-css">
								<span id="xValue2" class='opacity00'>20</span>
							</div>
							<div>
								<span id="xAddress">1300</span>
							</div>
						</div>
					</div>
					<div id='floatBox' class='col-xs-4 padding-col0 opacity00'>

						<div class="col-xs-2 Vertical-text-center padding-col0">sum</div>
						<div class="col-xs-10 text-center ">
							<div>
								<span class="color-gray">2 bytes</span>
							</div>
							<div class="border-height-css">
								<span id="xValue3" class='opacity00 display-inline-block'><span id='addTen' class='opacity00'>10</span>
									<span id='add' class='opacity00'>+</span> <span id='addTwenty' class='opacity00'>20</span></span>
							</div>
							<div>
								<span id="xAddress">1400</span>
							</div>
						</div>
					</div>
				</div></div></div>
				<div class='col-xs-12'>
				<div id='outputDiv1' class='margin-top20 center consol-width opacity00'>
					<div id="consoleId2" class="center">
						<div class="output-console-title-bar">
							<span class="title"><b>Console</b></span>
						</div>
						<div class="output-console-body" id="consoleBodyDiv2">
						
						</div>
					</div>
				</div>
				</div>
				</div>
		</div>
	</div>
</body>
</html>