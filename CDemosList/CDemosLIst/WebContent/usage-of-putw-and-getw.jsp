
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css" >
<link rel="stylesheet" href="/css/introjs-ct.css" >
<link rel="stylesheet" href="/css/animate.css">

<script src="/js/jquery-latest.js"></script>
<script src="/js/intro.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<title>putw() and getw()</title>

<style type="text/css">
.introjs-tooltiptext br {
	margin: 15px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
}

.introjs-duplicate-nextbutton {
	background-color: green;
}

.box-border {
	border-radius: 12px;
	border: 1px solid gray;
}

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}

div,span, .fa {
	position: relative;
}

#fileText {
    height: 99px;
    letter-spacing: 1px;
    padding-top: 7px;
}

.pre-tab {
    margin: 8px;
    padding: 10px;
    font-size: 13px;
    white-space: pre;
	-moz-tab-size: 6;
    border-radius: 8px;
    background-color: lavander;
}

.input-box {
	background-color: black;
    border: medium none;
    /* margin: -2px; */
    
}

.margin-top {
    margin-top: 12px;
}

.ui-effects-transfer {
    border: 1px solid blue;
    z-index: 99999999 !important;
 }
 
 #textFile {
	height: 230px;
}
 
 .panel-heading {
    padding: 2px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
}

.panel-body {
    min-height: 90px;
    padding: 4px 0 0;
}

.panel {
 	border-radius: 0px;
    background-color: #000;
    border: 1px solid transparent;
    border-bottom-left-radius: 6px;
    border-bottom-right-radius: 6px;
}

.number-div > .number-div {
	color: white;
	font-width: bold;
	background-color: #337ab7;
}

.number-div > .number-body {
	color: #e60073;
	font-width: bold;
	min-height: 31px;
	background-color: white;
	border-color: lightgray;
}

.output-console-title-bar {
	font-size: 15px;
	padding: 4px 0;
}

.output-console-body {
	padding: 10px;
	height: 200px;
}

.address-text {
    margin-top: -18px;
}

.filepadding {
    padding: 2px;
}

.address {
    margin-bottom: 12px;
    margin-top: 12px;
}

#numbersFile {
    margin-top: 35px;
}

#addressValue1 {
	display: inline-block;
}

#svgDiv1 {
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    z-index: 10000000 !important;
}

.padding00 {
	padding: 0px;
}

.position {
	position: relative;
	display: inline-block;
}

.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 1000000 !important;
}

.ct-code-b-red {
	font-weight: bold;
	font-family: monospace;
	color: red;
}

.ct-code-b-blue {
	font-weight: bold;
	font-family: monospace;
	color: blue;
}

.ct-code-b-pink {
	font-weight: bold;
	font-family: monospace;
	color: fuchsia;
}
</style>
</head>


<body>
	<div class="col-xs-12">
		<div class="ct-box-main">
			<div class="text-center">
				<h1 class="label ct-demo-heading text-center">Usage of putw() and getw()</h1>
			</div> 
			<div class="col-xs-12 margin-top">
				<div class="col-xs-8 col-xs-offset-2 box-border margin-top" id="fileText">
				</div>
			</div>
			<div class="col-xs-12 margin-top">
				<svg id="svgDiv1" class="svgDiv">
						<marker id="arrow1" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
	             	  		<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>
	           			</marker>
	           			<marker id="arrow11" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
	             	  		<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>
	           			</marker>
	           			<marker id="arrow111" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
	             	  		<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>
	           			</marker>
						<line id="line2" class="opacity00" x2="66.8%" y2="33.6%" y1="32.8%" x1="66.8%" style="marker-end: url(#arrow11); stroke: gray; stroke-width: 2"/>
						<line id="line1" class="opacity00" x1="66.8%" y1="15.8%" y2="15.8%" x2="65.4%" style="marker-end: url(#arrow1); stroke: gray; stroke-width: 2"/>
						<line id="line3" class="opacity00" x1="68.6%" y1="32.8%" y2="32.8%" x2="68.1%" style="marker-end: url(#arrow111); stroke: gray; stroke-width: 2" />
						<line id="line12" class="opacity00" x2="66.8%" y2="33.6%" y1="32.9%" x1="66.8%" style="marker-end: url(#arrow11); stroke: gray; stroke-width: 2"/>
						<line id="line11" class="opacity00" x1="66.8%" y1="15.8%" y2="15.8%" x2="65.4%" style="marker-end: url(#arrow1); stroke: gray; stroke-width: 2"/>
						<line id="line13" class="opacity00" x1="68.6%" y1="32.8%" y2="32.8%" x2="68.1%" style="marker-end: url(#arrow111); stroke: gray; stroke-width: 2" />				
  					</svg>
				<div class="col-xs-4">
					<div id="codeDiv"  class="margin-top">
						<pre class='pre-tab opacity00' id="code">
#include &lt;stdio.h&gt;
int main() {
  <span id="filePointer">FILE *fp;</span>
  <span id="characterPointer">int a;</span>
  <span id="fileOpen"><span id="filePointer1">fp</span> = <span id ="fileOPenMethod">fopen(<span id="fileName">"numbers.txt"</span> , <span id="writeMode">"w"</span>);</span></span>
  <span id="sopLine1">printf("Enter number\n");</span>
  <span id="characterStore" >scanf("%d", &a)</span>
  <span id="whileCondition1">while(a != 0)</span> {
	<span id="fputCharacter">putw(a, fp);</span>
  }
  <span id="closeFile1">fclose(fp);</span>
  <span id="fileOpen1"><span id="filePointer1">fp</span> = <span id ="fileOPenMethod1">fopen(<span id="fileName1">"numbers.txt"</span> , <span id="readMode">"r"</span>);</span></span>
  <span id="sopLine2">printf ("The given numbers are\n ");</span>
  <span id="whileCondition2">while(<span id="fgetcharacter" >(ch = getw(fp)</span>) != EOF)</span> {
    <span id="putChar">printf("%d", a);</span>
  }
  <span id="closeFile2">fclose(fp);</span>
}
						</pre>
					</div>
				</div>
				<div class="col-xs-4">
					<div class="col-xs-12 box-border margin-top opacity00" id="addressDivs">
						<div class="col-xs-5 address" id="characterAddress">
							<div class="panel-primary number-div opacity00" id="addressDiv2">
		    					<div class="panel-heading text-center number-div">a</div>
		    						<div class="panel panel-body number-body text-center">
		    							<span class="text-center" id="addressValue2"></span>
		    						</div>
		    						<div id="address2" class="address-text text-center">1024</div>
						    	</div>
							</div>
							<div class="col-xs-5 address col-xs-offset-1" id="filePointerAddress">
								<div class="panel-primary number-div opacity00" id="addressDiv1">
			    				<div class="panel-heading text-center number-div">fp</div>
			    					<div class="panel panel-body number-body text-center">
			    						<span class="text-center" id="addressValue1"></span>
			    					</div>
							    	<div id="address1" class="address-text text-center">1024</div>
						    	</div>
							</div>
						</div>
						<div class="col-xs-12 padding00">
							<div class="output-console center opacity00" id="outputDiv">
								<div class="output-console-title-bar">
									<span>Output</span>
								</div>
	        					<div class="output-console-body" id="outputConsoleBody"><span id="outputRandom"></span></div>
							</div>
						</div>
					</div>
						<div class="col-xs-3 opacity00" id="numbersFile">
							<div class="col-xs-12 margin-top text-center opacity00" id="text"><b>numbers.txt</b></div>
							<div class="col-xs-12 box-border margin-top opacity00" id="textFile">
							<div class="col-xs-12 padding00" id="fileSpan"></div>
							</div>
						</div>
				</div>
			</div>
			<div class="col-xs-12 text-center margin-top-20">
				<span id="restartBtn" class="visibility-hidden btn btn-warning">Restart</span>
			</div>
		</div>
		
<script type="text/javascript">
var introcode;
var typingInterval = 3 5;
var fpAddress;
var enterText;
var characterCount = 1;
var printCharacterCount = 1;
var  ctrlText;


	$(document).ready(function(){
		introGuide();
		
		var x = Math.floor((Math.random() * 1024) + 5125);
		$("#address1").text(x);
		var y = Math.floor((Math.random() * 1054) + 1850);
		$("#address2").text(y);
		fpAddress = Math.floor((Math.random() * 1086) + 1850);
		
		$("#svgDiv1").click(function() {
			  $("#character" + characterCount).focus();
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
					element :'#fileText',
					intro :'',
					tooltipClass : "hide"
				},{
					element :'#code',
					intro :'',
					tooltipClass : "hide",
					position: "right"
				},{
					element :'#filePointer',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#addressDiv1',
					intro :'',
					tooltipClass : "hide",
					animateStep: "addresslocation"
				},{
					element :'#characterPointer',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#addressDiv2',
					intro :'',
					tooltipClass : "hide",
					animateStep: "addressDiv2location"
				},{
					element: '#fileName',
					intro: ''
				},{
					element: '#writeMode',
					intro: ''
				}, {
					element :'#fileOpen',
					intro :'',
					tooltipClass : "hide",
				}, {
					element :'#numbersFile',
					intro :'',
					tooltipClass : "hide",
					animateStep: "location"
				},{
					element :'#sopLine1',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide",
					animateStep: "printText"
				},{
					element :'#closeFile1',
					intro :'',
					tooltipClass : "hide",
					animateStep: "printText"
				}]
		});
		introcode.onafterchange(function(targetElement){
			var elementId = targetElement.id;
			switch (elementId) {
				case "fileText" :
					$('.introjs-nextbutton').hide();
					text = "<div>The function <span class='ct-code-b-blue'>putw()</span> is used to <b>write</b> an <b>integer</b> value to the file pointed by the file pointer.</div>"
						+ "syntax for putw() is <span class='ct-code-b-pink'>putw(fp);</span>"
						+ "<div>The function <span class='ct-code-b-blue'>getw()</span> is used to <b>returns</b> the <b>integer</b> value from a file and increases the file pointer.</div>"
						+ "syntax for getw() is <span class='ct-code-b-pink'>getw(fp);</span>";
					typing('#fileText', text, function(){
						$('.introjs-tooltip').removeClass('hide');
						text = 'In <b>putw()</b> & <b>getw()</b> functions we can <b>write</b> / <b>read</b> only <span class="ct-code-b-yellow">integers</span>.';
						typing('.introjs-tooltiptext', text, function(){
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "code":
					$("#code").removeClass("opacity00");
					$("#fileText").addClass("z-index1000000");
						$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-nextbutton').hide();
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here we will learn how the <span class="ct-code-b-yellow">putw()</span>, '+
								'<span class="ct-code-b-yellow">getw()</span> methods works on a file.';
						typing('.introjs-tooltiptext', text, function(){
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "filePointer" :
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-nextbutton').hide();
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here <span class="ct-code-b-yellow">FILE</span> referred to as Stream. Stream means reading and writing of data.';
						typing('.introjs-tooltiptext', text, function(){
							$("#addressDivs").removeClass("opacity00");
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "addressDiv1" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
						 case "addresslocation" :
							$("#filePointer").effect( "highlight",{color: '#ffff33'}, 500);
							$("#filePointer").effect( "transfer", { to: $("#addressDiv1"), className: "ui-effects-transfer" }, 1000 , function() {
								TweenMax.to('#addressDiv1', 1, {opacity: 1, onComplete: function() {
									setTimeout(function(){
										introcode.nextStep();
									},800);
	          					}});
	        				});
						break;
						}
					});
				break;
				case "characterPointer" :
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-nextbutton').hide();
						$('.introjs-tooltip').removeClass('hide');
						text = '<div>In <b>putw()</b> & <b>getw()</b> functions we will write / read only integers thats why we declare a variable <span class="ct-code-b-yellow">int</span>.</div>'
						'It is used to store integer.';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "addressDiv2" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = introcode._introItems[introcode._currentStep].animateStep;
					switch(animateStep) {
						case "addressDiv2location" :
							$("#characterPointer").effect( "highlight",{color: '#ffff33'}, 500);
							$("#characterPointer").effect("transfer", { to: $("#addressDiv2"), className: "ui-effects-transfer" }, 1000 , function() {
								TweenMax.to('#addressDiv2', 1, {opacity: 1, onComplete: function() {
									setTimeout(function(){
										introcode.nextStep();
									},800);
		          				}});
		        			});
							break;
							case "addressDiv2storeValue" :
									$("#addressValue2").text($("#character" + characterCount).val());
								setTimeout(function() {
									introcode.nextStep();
								},500);
								
							break;
							case "printaddressDiv2" :
								if ($("#putcharacter" + printCharacterCount).text() == "EOF") {
									$("#addressValue2").text($("#putcharacter" + printCharacterCount).text());
									setTimeout(function() {
										introcode.nextStep();
									},800);
								} else {
									$("#addressValue2").text($("#putcharacter" + printCharacterCount).text());
									$('#addressValue1').addClass("z-index1000000").effect( "highlight",{color: 'yellow'}, 800, function() {
										TweenMax.to("#addressValue1", 1, {rotationX: 90, onComplete:function() {
											$("#addressValue1").text(parseInt($("#addressValue1").text()) + 2);
										    TweenMax.to("#addressValue1", 1, {rotationX: 0, onComplete:function() {
										    	$('#addressValue1').removeClass("z-index1000000");
												var l1 = $("#putcharacter" + (printCharacterCount +1)).offset();
												var l2 = $(".fa-arrow-up").offset({top: l1.top, left: l1.left});
												var l3 = $("#putcharacter" + (printCharacterCount )).offset();
												var leftLength = l3.left-l1.left;
												$(".fa-arrow-up").css({top:-0});  
												TweenMax.from(".fa.arrow-up", 1, {top: 0, left: leftLength, onComplete: function() {
													setTimeout(function() {
														introcode.nextStep();
													},800);
												}});
											}});
									  	}});
									});
								}
							break;
						}
					});
				break;
				case "fileName":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer").one('transitionend', function() {
						text = "This is a file.";
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "writeMode":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer").one('transitionend', function() {
						text = "<div>This is write mode.</div>In<span class='ct-code-b-yellow'>write</span> mode, a file with a specified name is created if the file does not "
									+ "exist; the contents are deleted if the file already exists.";
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
					break;
				case "fileOpen" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here we open <span class="ct-code-b-yellow">numbers.txt</span> file in <b>write</b> mode';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "readMode":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer").one('transitionend', function() {
						var text = "<div>This is read mode.</div>In read mode, the file is opened with the current contents safe if the file"
									+ "already exists; otherwise an error occurs."
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();		
						});
					});
					break;
				case "fileOpen1" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here we open <span class="ct-code-b-yellow">numbers.txt</span> file in <b>read</b> mode';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "numbersFile" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "location" :
								$("#numbersFile").removeClass("opacity00");
								$("#textFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
									$("#textFile").removeClass("animated zoomIn");
									$("#text").removeClass("opacity00");
									$("#fileSpan").append('<span id="putcharacter'+ characterCount+'" class="opacity00"></span>');
									$('#textFile').append('<br><i class="fa fa-arrow-up arrow-up"><br><br><br><div id="address3" class="address-text text-center"></div></i>');
									$("#address3").text(fpAddress);
									$('.introjs-tooltip').removeClass('hide');
									text  = 'Here the file structure base address is stored in file pointer(fp).';
									typing('.introjs-tooltiptext', text, function() {
										$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
										"onclick=svgArrowRevil()>Next &#8594;</a>");
									});
								});
								break;
							case "storeValue" :
								$('.introjs-tooltip').removeClass('hide');
								text = 'Write the <span class="ct-code-b-yellow">' + $("#character" + characterCount).val() + '</span>'+
										' at <span class="ct-code-b-yellow">fp</span> (i.e. <span class="ct-code-b-yellow">'+
										$("#addressValue1").text() +'</span>) then pointer will automatically incremented'+
										' by <span class="ct-code-b-yellow">2</span> position.';
								typing('.introjs-tooltiptext', text, function() {
									$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
									$(".introjs-duplicate-nextbutton").click(function() {
										$(".introjs-duplicate-nextbutton").remove();
										$('.introjs-tooltip').addClass('hide');
									$("#putcharacter" + characterCount).text($("#character" + characterCount).val()).removeClass("opacity00");
									characterCount++;
									$("#fileSpan").append('<br><span id="putcharacter'+ characterCount+'" class="opacity00"></span>');
	
									$('#addressValue1').addClass("z-index1000000").effect( "highlight",{color: 'yellow'}, 800, function() {
										  TweenMax.to("#addressValue1", 1, {rotationX: 90, onComplete:function() {
										    $("#addressValue1").text(parseInt($("#addressValue1").text()) + 2);
										     TweenMax.to("#addressValue1", 1, {rotationX: 0, onComplete:function() {
										    	$('#addressValue1').removeClass("z-index1000000");
												var l1 = $("#putcharacter" + characterCount).offset();
												var l2 = $(".fa-arrow-up").offset({top: l1.top, left: l1.left});
												var l3 = $("#putcharacter" + (characterCount -1)).offset();
												var leftLength = l1.left-l3.left;
												TweenMax.from(".fa.arrow-up", 1, {top: 0, left: leftLength, onComplete: function() {
													setTimeout(function() {
														introcode.nextStep();
													},500);
												}});
											  }});
										  }});
										  
										});
									});
								});
							break;
							case "fileClose" :
								$('.introjs-tooltip').removeClass('hide');
								text = 'Before closing a file the file pointer put <span class="ct-code-b-yellow">EOF</span> '+
										'at the fp (<span class="ct-code-b-yellow">'+ $("#addressValue1").text() +'</span>) of the file.';
								typing('.introjs-tooltiptext', text, function() {
									$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
									$(".introjs-duplicate-nextbutton").click(function() {
										$(".introjs-duplicate-nextbutton").remove();
										$('.introjs-tooltip').addClass('hide');
										$("#putcharacter" + characterCount).text("EOF").removeClass("opacity00").addClass("ct-code-b-red");
										setTimeout(function() {
											$("#addressValue1").addClass("opacity00");
											$("#numbersFile").removeClass("opacity00").addClass("animated zoomOut").one('animationend', function() {
												$(".fa-arrow-up").addClass("opacity00");
												$("#numbersFile").removeClass("animated zoomOut").addClass("opacity00");
												setTimeout(function() {
													introcode.nextStep();
												},800);
											});								
										},800);
									});
								});
							break;
							case "fileOpen" :
								$(".introjs-duplicate-nextbutton").remove();
								$('.introjs-tooltip').addClass('hide');
								$("#numbersFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
									$("#numbersFile").removeClass("animated zoomIn opacity00");
									$(".fa-arrow-up").css({top: 0, left: 0}).removeClass("opacity00");
									$("#address3").removeClass("opacity00");
									setTimeout(function(){
										svgArrowRevilLine();
									},500);
								});								
							break;
							case "fileRead" :
								$('.introjs-tooltip').removeClass('hide');
								text = 'Get the <span class="ct-code-b-yellow">' + $("#putcharacter" + printCharacterCount).text() + '</span> from '+
										' fp (i.e. <span class="ct-code-b-yellow">'+ $("#addressValue1").text() +'</span>).';
								typing('.introjs-tooltiptext', text, function() {
									if ($("#putcharacter" + printCharacterCount).text() == "EOF") {
										$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
										$(".introjs-duplicate-nextbutton").click(function() {
											$(".introjs-duplicate-nextbutton").remove();
											$('.introjs-nextbutton').show();	
										});
									} else {
										$('.introjs-nextbutton').show();	
									}
								});	
							break;
							case "fileClose1" :
								$("#addressValue1, #addressValue2").addClass("opacity00");
									$("#numbersFile").removeClass("opacity00").addClass("animated zoomOut").one('animationend', function() {
									$(".fa-arrow-up").addClass("opacity00");
									$("#numbersFile").removeClass("animated zoomOut").addClass("opacity00");
									var options = {
											element : "#restartBtn",
											intro : "Click to Restart",
											tooltipClass: "introjs-tooltip-min-width-custom",
											position : "right"
									}
									introcode.insertOption(introcode._currentStep + 1, options);
									setTimeout(function() {
										introcode.nextStep();
									},800);
								});								
									break;
								
						}
					});
				break;
				case "sopLine1" :
					$('.introjs-nextbutton').hide();
					$("#addressDiv1").removeClass("z-index1000000");
					$("#line1, #line2, #line3").css({opacity: 0})
		  			$("#address3").addClass("opacity00");
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = '<span class="ct-code-b-yellow">printf()</span> function is used to'+
								' <span class="ct-code-b-yellow">print</span> the <span class="ct-code-b-yellow">data</span> '+
								'or user defined <span class="ct-code-b-yellow">message</span> on <span class="ct-code-b-yellow">'+
								'console</span>.';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "sopLine2" :
					$('.introjs-nextbutton').hide();
					$("#addressDiv1").removeClass("z-index1000000");
					$("#svgDiv1, #address3").remove();
					ctrlText = "";
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = '<span class="ct-code-b-yellow">printf()</span> function is used to'+
								' <span class="ct-code-b-yellow">print</span> the <span class="ct-code-b-yellow">data</span> '+
								'or user defined <span class="ct-code-b-yellow">message</span> on <span class="ct-code-b-yellow">'+
								'console</span>.';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "outputDiv" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$("#outputDiv").removeClass("opacity00");
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "printText" :
								$("#outputConsoleBody").append('<div id="printOutput">Enter number</div>');
								$("#outputConsoleBody").append('<div id="appendDiv"></div>');
								$("#appendDiv").append('<input type="text" class="input-box" maxlength="4" size="4" id="character'+characterCount+'"><br>');
								$('.introjs-tooltip').removeClass('hide');
								text = 'Here we are restricted to allow only numbers. To see how the number '+
										'will store in the file.';
								typing('.introjs-tooltiptext', text, function() {
									caretAtEnd(document.getElementById('character' + characterCount));
									changeValue("#character" + characterCount);
									dynamicSteps("location");
						});
							break;
							case "enterText" :
								$("#outputConsoleBody").append('<div id="appendDiv"></div>');
								$("#appendDiv").append('<input type="text" class="input-box" maxlength="4" size="4" id="character'+characterCount+'"></br>');
								$('.introjs-tooltip').removeClass('hide');
								text = 'Here we are restricted to allow only numbers. To see how the number '+
										'will store in the file. and <span class="ct-code-b-yellow">fp</span> will automatically incremented '+
										'by <span class="ct-code-b-yellow">2</span>.<br>'+
										'Enter <span class="ct-code-b-yellow">0</span> to exit.';
								typing('.introjs-tooltiptext', text, function() {
								caretAtEnd(document.getElementById('character' + characterCount));
								changeValue("#character" + characterCount);
								dynamicSteps("location");
							});
							break;
							case "printtext" :
								$("#outputConsoleBody").append('<div id="	Output'+ characterCount +'">The given numbers are</div>');
								$("#outputConsoleBody").append('<div id="appendDiv1"></div>');
								$("#appendDiv1").append('<span id="textCharacter'+ printCharacterCount+'" class="filepadding"></span>');
								fileReadSteps();
								setTimeout(function() {
									introcode.nextStep();
								},800);
							break;
							case "printEnterText":
								$("#textCharacter" + printCharacterCount).text($("#addressValue2").text());
								printCharacterCount++;
								$("#appendDiv1").append('<br><span id="textCharacter'+ printCharacterCount+'"></span>');
								fileReadSteps();
								setTimeout(function() {
									introcode.nextStep();
								},800);
								break;
						}
					});
				break;
				case "whileCondition1" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "location" :
								setTimeout(function() {
									introcode.nextStep();
								},500);
							break;
							case "condition" :
								if ($("#character" + characterCount).val() == '0') {
									$('.introjs-tooltip').removeClass('hide');
									text = ' <span class="ct-code-b-yellow">'+ ctrlText +
											'</span> !=  <span class="ct-code-b-yellow">'+
											'0</span> condition evaluated to  <span class="ct-code-b-yellow">false</span><br>';
									typing('.introjs-tooltiptext', text, function() {
										fileCloseAndOpenSteps();
										$('.introjs-nextbutton').show();
									});
								} else {
									$('.introjs-tooltip').removeClass('hide');
									text = ' <span class="ct-code-b-yellow">'+ $("#character" + characterCount).val()  +
											'</span> !=  <span class="ct-code-b-yellow">'+
											'0</span> condition evaluated to  <span class="ct-code-b-yellow">true</span><br>';
									typing('.introjs-tooltiptext', text, function() {
										$('.introjs-nextbutton').show();
									});
								}
							break;
						}
					});
				break;
				case "whileCondition2" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "condition1" :
								setTimeout(function() {
									introcode.nextStep();
								},500);
							break;
							case "condition2" :
								if ($("#putcharacter" + printCharacterCount).text() == 'EOF') {
									$('.introjs-tooltip').removeClass('hide');
									text = ' <span class="ct-code-b-yellow">'+ $("#putcharacter" + printCharacterCount).text() +
											'</span> !=  <span class="ct-code-b-yellow">'+
											'EOF</span> condition evaluated to  <span class="ct-code-b-yellow">false</span>';
									typing('.introjs-tooltiptext', text, function() {
										var options = {
												element :'#closeFile2',
												intro :'',
												tooltipClass : "hide",
											}
											introcode.insertOption(introcode._currentStep + 1, options);
										$('.introjs-nextbutton').show();
									});
								} else {
									$('.introjs-tooltip').removeClass('hide');
									text = ' <span class="ct-code-b-yellow">'+ $("#putcharacter" + printCharacterCount).text() +
											'</span> !=  <span class="ct-code-b-yellow">'+
											'EOF</span> condition evaluated to  <span class="ct-code-b-yellow">true</span>';
									typing('.introjs-tooltiptext', text, function() {
										$('.introjs-nextbutton').show();
									});
								}
							break;
						}
					});
				break;
				case "putChar" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'printf() is used to print the data.';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "characterStore" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						$("#addressValue2").removeClass("opacity00");
						text = '<b>scanf()</b> is used to read the value.<br>'+
								' <span class="ct-code-b-yellow">'+ $("#character" + characterCount).val() +
								'</span> is stored in variable '+
								'  <span class="ct-code-b-yellow">a</span>.';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "fputCharacter" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here <b>putw()</b> is used to <b>write</b> data in to  <span class="ct-code-b-yellow">numbers.txt</span> file.';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "fgetcharacter" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The function <span class="ct-code-b-yellow">getw(fp)</span> '+
								'is used to read the integer from a file and the file pointer is increased automatically.';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "closeFile1" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The function <span class="ct-code-b-yellow">fclose(fp)</span> '+
								' is used to close the file.';
						typing('.introjs-tooltiptext', text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "closeFile2" :
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The function <span class="ct-code-b-yellow">fclose(fp)</span> '+
								' is used to close the file.';
						typing('.introjs-tooltiptext', text, function() {
							var options = {
									element :'#numbersFile',
									intro :'',
									tooltipClass : "hide",
									animateStep: "fileClose1"
							}
							introcode.insertOption(introcode._currentStep + 1, options);
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "restartBtn":
					$('.introjs-helperLayer').one('transitionend', function () {
						$("#restartBtn").removeClass('visibility-hidden');
						$('#restartBtn').click(function() {
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

	function dynamicSteps(action) {
		var options = {
			element :'#characterStore',
			intro :'',
			tooltipClass : "hide",
		}
		introcode.insertOption(introcode._currentStep + 1, options);
		var options = {
			element :'#addressDiv2',
			intro :'',
			tooltipClass : "hide",
			animateStep: "addressDiv2storeValue"
		}
		introcode.insertOption(introcode._currentStep + 2, options);
		var options = {
			element :'#whileCondition1',
			intro :'',
			tooltipClass : "hide",
			animateStep: "condition"
		}
		introcode.insertOption(introcode._currentStep + 3, options);
		var options = {
			element :'#fputCharacter',
			intro :'',
			tooltipClass : "hide",
		}
		introcode.insertOption(introcode._currentStep + 4, options);
		var options = {
			element :'#numbersFile',
			intro :'',
			tooltipClass : "hide",
			animateStep: "storeValue"
		}
		introcode.insertOption(introcode._currentStep + 5, options);
		var options = {
			element :'#outputDiv',
			intro :'',
			tooltipClass : "hide",
			animateStep: "enterText"
		}
		introcode.insertOption(introcode._currentStep + 6, options);
	}
	
	function fileCloseAndOpenSteps() {
		var options = {
				element :'#closeFile1',
				intro :'',
				tooltipClass : "hide",
				animateStep: "location"
		}
		introcode.insertOption(introcode._currentStep + 1, options);
		var options = {
				element :'#numbersFile',
				intro :'',
				tooltipClass : "hide",
				animateStep: "fileClose"
		}
		introcode.insertOption(introcode._currentStep + 2, options);
		var options = {
				element :'#fileOpen1',
				intro :'',
				tooltipClass : "hide",
				animateStep: "location"
		}
		introcode.insertOption(introcode._currentStep + 3, options);
		var options = {
				element :'#numbersFile',
				intro :'',
				tooltipClass : "hide",
				animateStep: "fileOpen"
		}
		introcode.insertOption(introcode._currentStep + 4, options);
		var options = {
				element :'#sopLine2',
				intro :'',
				tooltipClass : "hide",
				animateStep: "location"
		}
		introcode.insertOption(introcode._currentStep + 5, options);
		var options = {
				element :'#outputDiv',
				intro :'',
				tooltipClass : "hide",
				animateStep: "printtext"
		}
		introcode.insertOption(introcode._currentStep + 6, options);
	}
	
	
	function fileReadSteps() {
		var options = {
				element :'#numbersFile',
				intro :'',
				tooltipClass : "hide",
				animateStep: "fileRead"
		}
		introcode.insertOption(introcode._currentStep + 1, options);
		var options = {
				element :'#whileCondition2',
				intro :'',
				tooltipClass : "hide",
				animateStep: "condition1"
			}
			introcode.insertOption(introcode._currentStep + 2, options);
			var options = {
				element :'#fgetcharacter',
				intro :'',
				tooltipClass : "hide",
			}
			introcode.insertOption(introcode._currentStep + 3, options);
			var options = {
				element :'#addressDiv2',
				intro :'',
				tooltipClass : "hide",
				animateStep: "printaddressDiv2"
			}
			introcode.insertOption(introcode._currentStep + 4, options);
			var options = {
				element :'#whileCondition2',
				intro :'',
				tooltipClass : "hide",
				animateStep: "condition2"
			}
			introcode.insertOption(introcode._currentStep + 5, options);
			var options = {
				element :'#putChar',
				intro :'',
				tooltipClass : "hide",
			}
			introcode.insertOption(introcode._currentStep + 6, options);
			var options = {
				element :'#outputDiv',
				intro :'',
				tooltipClass : "hide",
				animateStep: "printEnterText"
			}
			introcode.insertOption(introcode._currentStep + 7, options);
	}
	
	function svgArrowRevil() {
		$(".introjs-duplicate-nextbutton").remove();
  		$("#addressValue1").text(fpAddress).addClass("opacity00");
		TweenMax.to("#line3", 1, {attr:{x2: "66.8%", y2: "32.8%" }, opacity: 1, onComplete:function(){
			$("#arrow111").css({"opacity": "0"});
			TweenMax.to("#line2", 1, {attr:{x2: "66.8%", y2: "15.6%" }, opacity: 1, onComplete:function(){
				$("#arrow11").css({"opacity": "0"});
			  	TweenMax.to("#line1", 1, {attr:{x2: "60.4%", y2: "15.8%" }, opacity: 1, onComplete:function(){
					$("#addressDiv1").addClass("z-index1000000");
					setTimeout(function() {
						$("#addressValue1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				  			$("#addressValue1").removeClass("animated zoomIn");
				  			$('.introjs-nextbutton').show();
				  		});
					},500);
				}});
			}});
		}});
	}
	
	function svgArrowRevilLine() {
		$(".introjs-duplicate-nextbutton").remove();
  		$("#addressValue1").text(fpAddress).addClass("opacity00");
  		$("#arrow111").css({"opacity": "1"});
		TweenMax.to("#line13", 1, {attr:{x2: "66.8%", y2: "32.8%" }, opacity: 1, onComplete:function(){
			$("#arrow111").css({"opacity": "0"});
			$("#arrow11").css({"opacity": "1"});
			TweenMax.to("#line12", 1, {attr:{x2: "66.8%", y2: "15.6%" }, opacity: 1, onComplete:function(){
				$("#arrow11").css({"opacity": "0"});
			  	TweenMax.to("#line11", 1, {attr:{x2: "60.4%", y2: "15.8%" }, opacity: 1, onComplete:function(){
					$("#addressDiv1").addClass("z-index1000000");
					setTimeout(function() {
						$("#addressValue1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				  			$("#addressValue1").removeClass("animated zoomIn");
				  			setTimeout(function() {
				  				introcode.nextStep();
				  			},800);
				  		});
					},500);
				}});
			}});
		}});
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

	function changeValue(id1) {
		$(id1).on("keydown", function(e) {
			$(".keyValue").text($(id1).val());
			$('.error-text').remove();
			var max = $(this).attr("maxlength");
			if ($.inArray(e.keyCode, [46, 8, 9, 27, 37, 39]) !== -1) {
				return;
			}
			
			if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
				e.preventDefault();
			}
			
			if (e.keyCode == 48 || e.keyCode == 96) {
	            ctrlText = "0";
	           
	        }
			
			if ($(this).val().length > max-1) {
					$('.introjs-tooltiptext').append("<span class='ct-code-b-red error-text'><br/>String length to 1.</span>");
					e.preventDefault();
			}
		});
		$(id1).on("keyup", function(e) {
			$(".keyValue").text($(id1).val());
			$('.error-text').remove();
			if ($(this).val() == "") {
				$('.introjs-tooltiptext').append("<span class='ct-code-b-red error-text'><br/>Please enter number.</span>");
				$(this).addClass("empty");
			} else {
				$(this).removeClass("empty");
			}
			introcode.refresh();
			if ($(".empty").length > 0 ) {
				$(".introjs-nextbutton").hide();
			} else {
				$(".introjs-nextbutton").show();
			}
		});
	}
</script>
</body>
</html>