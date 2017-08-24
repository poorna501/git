<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<title>data type</title>
<style>
.box-border {
	border: 1px solid grey;
	border-radius: 8px;
	margin-top : 5px;	
}
.svg-css {
	top: 0;
	left: 0;
	position: absolute;
	height: 100%;
	width: 100%;
}
#typingbox {
	height : 150px;
}
#animationDiv {
	height : 400px;
}
#datatypeDiv {
	height : 20px;
	font-size : 14px;
	text-align : center;
	margin-top : 50px;
}
.sub-div {
	margin-top : 80px;
	color:blue;
}
.subsub {
	margin-left : 40px;
	color:green;
}
.line {
	 stroke:black; 
	 stroke-width: 2;
}

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}
</style>
</head>
<body>
<script>
function introGuide() {
	introcode = introJs();
	introcode.setOptions({
	showStepNumbers : false,
	showBullets : false,
	exitOnOverlayClick : false,
	exitOnEsc : false,
	keyboardNavigation : false,
	steps : [{
	        	 element : '#typingbox',
	        	 intro : '',
	        	 tooltipClass : 'hide'
	         },
	         {
	        	 element : '#animationDiv',
	        	 intro : '',
	        	 tooltipClass : 'hide',
	        	 position : 'right'
	         },
	         {
	 			element : "#restartBtn",
	 			intro : "Click to Restart",
	 			tooltipClass: "introjs-tooltip-min-width-custom",
	 			position : "right"
	 		}]
	});
	introcode.onbeforechange(function(targetElement) {
		var elementId = targetElement.id;
		switch(elementId) {
		case "typingbox":
			 typingContent = '<br><ul><li><b>Data types</b> allocates memory to a variable.</li><span id = "typing1"></span>' 
			 typing('#typingbox',typingContent,function(){
				 typingContent = '<li>In "C" language, we have <b>four</b> different data types which are further classified.</li><li>They are <ul><li>Primary or scalar data types <b>:</b> which are predefined in the system.</li><span id = "typing2"></span>' 
				 typing('#typing1',typingContent,function(){
					 typingContent = ' <li>Secondary or Derived data types <b>:</b> these are derived from primitive data types.<span id = "typing3"></span></li>' 
					 typing('#typing2',typingContent,function(){
						 typingContent = ' <li>User defined data types <b>:</b> these data types are derived by the user from primitive data types.</li><span id = "typing4"></span>' 
						 typing('#typing3',typingContent,function() {
							 typingContent = ' <li>Empty data type <b>:</b> It specifies nothing to return.</li>' 
							 typing('#typing4',typingContent,function() { 
								 setTimeout(function() {
									$('#animationDiv').css({'opacity' : '1'});
									introcode.nextStep();					
								 },1000);
				 			});
						 });
					 });
				 });
			 });
		break;
		case "animationDiv":
			$('.introjs-helperLayer').one('transitionend', function() {
				$('.introjs-nextbutton').hide();
				$(".introjs-tooltip").removeClass("hide");
				typingContent = 'Here, we will know about different data types.'; 
				typing('.introjs-tooltiptext', typingContent,function() {
					$('#datatypeDiv').fadeTo('1000',1,function() {
						$('#arrow1').css({'opacity':'1'});
						TweenMax.to("#arrow1", 1, {attr:{y2 :'25.4%', x2:'41%'},onComplete:function() {
							$('#arrow2').css({'opacity':'1'});
							TweenMax.to("#arrow2", 1, {attr:{y2 :'25.5%', x2:'2%'},onComplete:function() {
								$('#arrow3').css({'opacity':'1'});
								TweenMax.to("#arrow3", 1, {attr:{y2 :'33.5%', x2:'2%'},onComplete:function() { 
									$('#scalarDiv').fadeTo('1000',1,function() {
										$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn1'  onclick='nextBtn1()'>Next &#8594;</a>");
									});
								}});
							}});
						}});
					});
				});
			});
		break;
		case "restartBtn":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function () {
				$("#restartBtn").removeClass('visibility-hidden');
				$("#restartBtn").click(function() {
					location.reload();
				});
			});
		break;
		}
	});
	introcode.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	}
$(document).ready(function(){
	introGuide();
});

function typing(typingId,typingContent,callbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval":10,
		"cursor_color" : "blue"
	}, function() {
		$(typingId).removeClass('typingCursor');
		callbackFunction();
	});
}

function nextBtn1() { 
	$('.animation-nextbtn1').remove(); 
	$('#arrow4').css({'opacity':'1'});
	TweenMax.to("#arrow4", 1, {attr:{y2 :'33.5%', x2:'28.5%'},onComplete:function() {
		$('#derivedDiv').fadeTo('1000',1,function() {
			$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn1' onclick='nextBtn2()'>Next &#8594;</a>");
		});
	}});
}
function nextBtn2() { 
	$('.animation-nextbtn1').remove(); 
	$('#arrow5').css({'opacity':'1'});
	TweenMax.to("#arrow5", 1, {attr:{y2 :'25.5%', x2:'54.5%'},onComplete:function() { 
		$('#arrow6').css({'opacity':'1'});
		TweenMax.to("#arrow6", 1, {attr:{y2 :'33.5%', x2:'54.5%'},onComplete:function() { 
			$('#userDiv').fadeTo('1000',1,function() {
				$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn1' onclick='nextBtn3()'>Next &#8594;</a>");
			});
		}});
	}});
}
function nextBtn3() { 
	$('.animation-nextbtn1').remove(); 
	$('#arrow7').css({'opacity':'1'});
	TweenMax.to("#arrow7", 1, {attr:{y2 :'25.5%', x2:'79.5%'},onComplete:function() { 
		$('#arrow8').css({'opacity':'1'});
		TweenMax.to("#arrow8", 1, {attr:{y2 :'33.5%', x2:'79.5%'},onComplete:function() { 
			$('#emptyDiv').fadeTo('1000',1,function() {
				$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn1' onclick='nextBtn4()'>Next &#8594;</a>");
			});
		}});
	}});
}
function nextBtn4() { 
	$('.animation-nextbtn1').remove(); 
	$('#arrow9').css({'opacity':'1'});
	TweenMax.to("#arrow9", 1, {attr:{y2 :'42%', x2:'2%'},onComplete:function() { 
		$('#arrow10').css({'opacity':'1'});
		TweenMax.to("#arrow10", 1, {attr:{y2 :'42%', x2:'3%'},onComplete:function() { 
			$('.subscalar1').fadeTo('1000',1,function() {
				TweenMax.to("#arrow9", 1, {attr:{y2 :'48.5%', x2:'2%'},onComplete:function() { 
					$('#arrow12').css({'opacity':'1'});
					TweenMax.to("#arrow12", 1, {attr:{y2 :'48.5%', x2:'3%'},onComplete:function() { 
						$('.subscalar2').fadeTo('1000',1,function() {
							TweenMax.to("#arrow9", 0.5, {attr:{y2 :'56%', x2:'2%'},onComplete:function() { 
								$('#arrow14').css({'opacity':'1'});
								TweenMax.to("#arrow14", 0.5, {attr:{y2 :'56%', x2:'3%'},onComplete:function() { 
									$('.subscalar3').fadeTo('100/0',1,function() {
										TweenMax.to("#arrow9", 0.5, {attr:{y2 :'62.5%', x2:'2%'},onComplete:function() { 
											$('#arrow16').css({'opacity':'1'});
											TweenMax.to("#arrow16", 0.5, {attr:{y2 :'62.5%', x2:'3%'},onComplete:function() { 
												$('.subscalar4').fadeTo('1000',1,function() {
													$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn1' onclick='nextBtn8()'>Next &#8594;</a>");
												});
											}});
										}});
									});
								}});
							}});
						});
					}});
				}});
			});
		}});
	}});
}

function nextBtn8() { 
	$('.animation-nextbtn1').remove(); 
	$('#arrow15').css({'opacity':'1'});
	TweenMax.to("#arrow15", .5, {attr:{y2 :'42%', x2:'28.5%'},onComplete:function() { 
		$('#arrow17').css({'opacity':'1'});
		TweenMax.to("#arrow17", .5, {attr:{y2 :'42%', x2:'29.5%'},onComplete:function() { 
			$('.subderived1').fadeTo('1000',1,function() {
				TweenMax.to("#arrow15", .5, {attr:{y2 :'48.5%', x2:'28.5%'},onComplete:function() { 
					$('#arrow18').css({'opacity':'1'});
					TweenMax.to("#arrow18", .5, {attr:{y2 :'48.5%', x2:'29.5%'},onComplete:function() { 
						$('.subderived2').fadeTo('1000',1,function() {
							TweenMax.to("#arrow15", .5, {attr:{y2 :'56%', x2:'28.5%'},onComplete:function() { 
								$('#arrow19').css({'opacity':'1'});
								TweenMax.to("#arrow19", .5, {attr:{y2 :'56%', x2:'29.5%'},onComplete:function() { 
									$('.subderived3').fadeTo('1000',1,function() {
										TweenMax.to("#arrow15", .5, {attr:{y2 :'62.5%', x2:'28.5%'},onComplete:function() { 
											$('#arrow20').css({'opacity':'1'});
											TweenMax.to("#arrow20", .5, {attr:{y2 :'62.5%', x2:'29.5%'},onComplete:function() { 
												$('.subderived4').fadeTo('1000',1,function() {
													$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn1' onclick='nextBtn12()'>Next &#8594;</a>");
												});
											}});
										}});
									});
								}});
							}});
						});
					}});
				}});
			});
		}});
	}});
}

function nextBtn12() { 
	$('.animation-nextbtn1').remove(); 
	$('#arrow21').css({'opacity':'1'});
	TweenMax.to("#arrow21", .5, {attr:{y2 :'42%', x2:'54.5%'},onComplete:function() { 
		$('#arrow22').css({'opacity':'1'});
		TweenMax.to("#arrow22", .5, {attr:{y2 :'42%', x2:'55.5%'},onComplete:function() { 
		$('.subuser1').fadeTo('1000',1,function() {
			TweenMax.to("#arrow21", .5, {attr:{y2 :'48.5%', x2:'54.5%'},onComplete:function() { 
				$('#arrow23').css({'opacity':'1'});
				TweenMax.to("#arrow23", .5, {attr:{y2 :'48.5%', x2:'55.5%'},onComplete:function() { 
				$('.subuser2').fadeTo('1000',1,function() {
					$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn1' onclick='nextBtn14()'>Next &#8594;</a>");
				});
				}});
			}});
		});
		}});
	}});
}

function nextBtn14() { 
	$('.animation-nextbtn1').remove(); 
	$(".introjs-tooltip").addClass("hide");
	$('#arrow24').css({'opacity':'1'});
	TweenMax.to("#arrow24", 1, {attr:{y2 :'42.5%', x2:'79.5%'},onComplete:function() {  
		$('#arrow25').css({'opacity':'1'});
		TweenMax.to("#arrow25", 1, {attr:{y2 :'42.5%', x2:'81%'},onComplete:function() { 
			$('.subempty1').fadeTo('1000',1,function() {
				$(".introjs-tooltip").removeClass("hide");
				typingContent = 'Click on next button to restart.';
				typing('.introjs-tooltiptext', typingContent,function() {
					$('.introjs-nextbutton').show();
				});
			});
		}});
	}});
}
</script>
<div class='ct-box-main'>
	<div class='text-center'>
		<h1 class='label ct-demo-heading'>Data types</h1>
	</div>
	<div class = 'buttons-div'>
		<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
	</div> 
	<div class = 'typing-box col-xs-offset-2 col-xs-8 box-border' id = 'typingbox'>
	</div>
		
	<div class = 'box-border col-xs-offset-2 col-xs-8 animation-div opacity00' id = 'animationDiv'>
		<div class = 'svg-div col-xs-offset-1 col-xs-9 svg-css' id = 'svgDiv'>
		<svg id="arrowsvg" width="100%" height="500px">
			<marker id="arrow" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: black;">
				<path class="arrow" d="M0,0 L5,2.5 L0,5 Z">
			</marker>
			<line id="arrow1" class="line opacity00" style="marker-end: url(#arrow)" x1="41%" y1="15%" x2="41%" y2="15%"/>
			<line id="arrow2" class="line opacity00" y2="25.5%" x2="41%" x1="41%" y1="25.5%"/>
			<line id="arrow3" class="line opacity00" style = "marker-end:url(#arrow);" x2="2%" y2="25.5%" x1="2%" y1="25.5%"/>
			<line id="arrow4" class="line opacity00" style="marker-end: url(#arrow);"  x1="28.5%" y1="25.5%" y2="25.5%" x2="28.5%"/> 
			<line id="arrow5" class="line opacity00" y2="25.5%" x2="41%" y1="25.5%" x1="41%"/>
			<line id="arrow6" class="line opacity00" style="marker-end: url(#arrow);" y1="25.5%" x1="54.5%" x2="54.5%" y2="25.5%"/>
			<line id="arrow7" class="line opacity00" y2 = '25.5%', x2 = '54.5%' y1="25.5%" x1="54.5%"/>
			<line id="arrow8" class="line opacity00" style = "marker-end:url(#arrow);" y1="25.5%" x1="79.5%" y2 ='25.5%', x2='79.5%'/>
			<line id="arrow9" class="line opacity00" x1="2%" y1="37.5%" x2="2%" y2="37.5%"/> 
			<line id="arrow10" class="line opacity00" y1="42%" x1="2%" y2 ='42%', x2='2%'/>
			<line id="arrow12" class="line opacity00" y1="48.5%" x1="2%" y2 ='48.5%', x2='2%'/>
			<line id="arrow14" class="line opacity00" y1="56%" x1="2%" y2 ='56%', x2='2%'/>
			<line id="arrow16" class="line opacity00" y1="62.5%" x1="2%" y2 ='62.5%', x2='2%'/>
			<line id="arrow15" class="line opacity00" x1="28.5%" y1="37.5%" x2="28.5%" y2="37.5%"/> 
			<line id="arrow17" class="line opacity00" y1="42%" x1="28.5%" y2 ='42%', x2='28.5%'/>
			<line id="arrow18" class="line opacity00" y1="48.5%" x1="28.5%" y2 ='48.5%', x2='28.5%'/>
			<line id="arrow19" class="line opacity00" y1="56%" x1="28.5%" y2 ='56%', x2='28.5%'/>
			<line id="arrow20" class="line opacity00" y1="62.5%" x1="28.5%" y2 ='62.5%', x2='28.5%'/>
			<line id="arrow21" class="line opacity00" x1="54.5%" y1="37.5%" x2="54.5%" y2="37.5%"/> 
			<line id="arrow22" class="line opacity00" y1="42%" x1="54.5%" y2 ='42%', x2='54.5%'/>
			<line id="arrow23" class="line opacity00" y1="48.5%" x1="54.5%" y2 ='48.5%', x2='54.5%'/>
			<line id="arrow24" class="line opacity00" y1="37.5%" x1="79.5%" y2 ='37.5%', x2='79.5%'/>
			<line id="arrow25" class="line opacity00" y1="42.5%" x1="79.5%" y2 ='42.5%', x2='79.5%'/> 
		</svg>
	</div>
		<div class = 'row'>
			<div class = 'col-xs-offset-5 col-xs-2 opacity00' id = 'datatypeDiv'><b>Data types</b></div>
		</div>
		<br>
		<div class = 'row sub-div'>
			<div class = 'col-xs-offset-1 col-xs-2 scalar-div opacity00' id = 'scalarDiv'>Scalar</div>
			<div class = 'col-xs-offset-1 col-xs-2 derived-div opacity00' id = 'derivedDiv'>Derived</div>
			<div class = 'col-xs-offset-1 col-xs-2 user-div opacity00' id = 'userDiv'>User Defined</div>
			<div class = 'col-xs-offset-1 col-xs-2 empty-div opacity00' id = 'emptyDiv'>Empty</div>
		</div>
		<div class = 'row subsub-div'>
			<div class = 'col-xs-offset-1 col-xs-2 subscalar-div ' id = 'subscalarDiv'>
				<br>
				&nbsp;<span class = 'subsub subscalar1 opacity00'>char</span>
				<br><br>
				&nbsp;<span class = 'subsub subscalar2 opacity00'>int</span>
				<br><br>
				&nbsp;<span class = 'subsub subscalar3 opacity00'>float</span>
				<br><br>
				&nbsp;<span class = 'subsub subscalar4 opacity00'>double</span>
			</div>
			<div class = 'col-xs-offset-1 col-xs-2 subderived-div ' id = 'subderivedDiv'>
				<br>
				&nbsp;<span class = 'subsub subderived1 opacity00'>arrays</span>
				<br><br>
				&nbsp;<span class = 'subsub subderived2 opacity00'>functions</span>
				<br><br>
				&nbsp;<span class = 'subsub subderived3 opacity00'>structures</span>
				<br><br>
				&nbsp;<span class = 'subsub subderived4 opacity00'>pointers</span>
			</div>
			<div class = 'col-xs-offset-1 col-xs-2 subuser-div' id = 'subuserDiv'>
				<br>
				&nbsp;<span class = 'subsub subuser1 opacity00'>typedef</span>
				<br><br>
				&nbsp;<span class = 'subsub subuser2 opacity00'>enum</span>
			</div>
			<div class = 'col-xs-offset-1 col-xs-2 subempty-div' id = 'subemptyDiv'>
				<br>
				&nbsp;<span class = 'subsub subempty1 opacity00'>void</span>
				<br>
			</div>
		</div>
	</div>
	</div>
</div>
</body>
</html>