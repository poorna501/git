
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Copy data from one file to another</title>

<style>

.introjs-tooltip {
	min-width: 250px;
}

.box-main {
	margin: 10px;
	padding: 10px;
}

.padding0 {
	padding: 0px;
}

.file-top {
    margin-top: 52px;
}

.margin-top {
    margin-top: 25px;
}

.position {
	display: inline-block;
	position: relative;	
}

.ct-demo-heading {
	background: highlight none repeat scroll 0 0;
    border-radius: 10px;
    font-size: 18px;
    position: relative;
    z-index: 1000000;
}

.buttons-div {
	margin-top: 20px;
	text-align: center;
}

.box-border {
	border: 1px solid grey;
	border-radius: 8px;
	padding: 10px;
}

.creamPreTab4 {
	-moz-tab-size: 6;
    background-color: #fffae6;
    border-radius: 8px;
    font-size: 11px;
    margin: 5px;
    padding: 10px;
    white-space: pre;
}

table {
	margin-top: 30px;
	text-align: center;
}
td {
    padding: 10px;
    width: 25%;
}

.td-border {
	border: 2px solid;
}

ol, ul {
	margin-bottom: 0;
    margin-left: -15px;
}

.center {
	display: block;
    margin-left: auto;
    margin-right: auto;
}

.output-console {
	width: 300px;
}

.position-absolute {
	position: absolute;
}

.position-relative {
	position: relative;
}

.img-responsive {
	display: inline-block;
	max-height: 75px;
}

.arrow1 {
	margin-top: 100px;
	color : green;
}

.ui-effects-transfer {
    border: 1px solid #003399;
    position: relative;
    z-index: 9999999;
}

.height-width {
	height: 44px;
	width: 290px;
}

.args-circle {
	border: 1px solid;
    border-radius: 50%;
    padding: 2px;
    position: relative;
    z-index: 9999999;
}

.introjs-duplicate-nextbutton {
	background-color: green;
}

.faa-passing {
    position: relative;
    animation-name: example;
    animation-duration: 2s;
    animation-iteration-count: infinite;
}

/* Standard syntax */
@keyframes example {
      0%   { left:0px; top:0px;}
    100%  {top:0px; left:20px;}
}

.loading:after {
    overflow: hidden;
    display: inline-block;
    vertical-align: bottom;
    -moz-animation: ellipsis 2s infinite;
    content: "\2026"; /* ascii code for the ellipsis character */
}
@-moz-keyframes ellipsis {
    from {
        width: 0px;
    }
    to {
        width: 12px;
    }
}

.pulse {
	animation: pulse 1s linear 2;
}

@-moz-keyframes pulse {
 0% {
   -moz-transform: scale(0.6);
   transform: scale(0.8);
 }

 100% {
   -moz-transform: scale(1);
   transform: scale(1);
   font-weight: bold;
 }
}

.output-console-body {
    white-space: normal;
    height: 100px;
    font-size: 11px;
}

.panel-heading {
    padding: 2px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
}

.number-div > .number-body {
	color: #e60073;
	font-width: bold;
	min-height: 31px;
	background-color: white;
	border-color: lightgray;
	margin-bottom: 5px;
	padding: 4px;
}

.ct-code-b-green {
	font-weight: bold;
	font-family: monospace;
	color: #1aff1a;
}

.top-padding {
	position: absolute;
	margin-left: -6px;
}

.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 1000000 !important;
}

.z-index10000000 {
	background-color: white;
	z-index: 10000000 !important;
}


</style>

<script>
	
var typingInterval = 10;
var intro;
var filePointerCount = 1;

$(document).ready(function() {

	intro = introJs();
	
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [{
			element : "#program",
			intro	: "",
		},{
			element : "#savingFileStep",
			intro:'Saving to <span class="ct-code-b-yellow">example.c</span> file.',
		},{
			element : "#outputDiv",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "editGangaFile"
		},{
			element : "#gangaFile",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "OpenGangaFileIngedit"
		},{
			element : "#outputDiv",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "compilation"
		},{
			element : "#mainMethod",
			intro	: '',
			tooltipClass : "hide"
		},{
			element : "#fileDeclaraion",
			intro	: '',
			tooltipClass : "hide"
		},{
			element : "#filePointerMenory",
			intro	: '',
			tooltipClass : "hide"
		},{
			element : "#characterDeclarion",
			intro	: '',
			tooltipClass : "hide" 
		},{
			element : "#characterAddress",
			tooltipClass : "hide",
			animateStep: "characterAddress"
		},{
			element : "#filePointer1",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "fpReadDeclaration"
		},{
			element : "#fileOpen1",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "readMode"
		},{
			element : "#gangaFile",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "OpenGangaFileInReadMode"
		},{
			element : "#filePointer1",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "ganga"
		},{
			element : "#fpAddress1",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "gangaAddress"
		},{
			element : "#filePointer2",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "fpReadDeclaration"
		},{
			element : "#fileOpen2",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "writeMode"
		},{
			element : "#yamunaFile",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "OpenGangaFileInWriteMode"
		},{
			element : "#filePointer2",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "yamuna"
		},{
			element : "#fpAddress2",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "yamunaAddress"
		},{
			element : "#condition",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "gotonextStep"
		},{
			element : "#storeCharacter",
			intro	: '',
			tooltipClass : "hide",
		},{
			element : "#characterAddress",
			tooltipClass : "hide",
			intro	: '',
			animateStep: "characterStore"
		},{
			element : "#fpAddress1",
			tooltipClass : "hide",
			intro	: '',
			animateStep: "incrementFpRead"
		},{
			element : "#gangaFile",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "incrementFpRead"
		},{
			element : "#condition",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "conditionCheck"
		},{
			element : "#fputc",
			intro	: '',
			tooltipClass : "hide",
		},{
			element : "#yamunaFile",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "writeCharacter"
		},{
			element : "#fpAddress2",
			tooltipClass : "hide",
			intro	: '',
			animateStep: "incrementFpWrite"
		},{
			element : "#yamunaFile",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "incrementFpWrite"
		},{
			element : "#whileCondition", 
			tooltipClass : "hide",
			intro	: '',
		},{
			element : "#copyFile",  
			tooltipClass : "hide",
			intro	: '',
		},{
			element : "#printLine",  
			tooltipClass : "hide",
			intro	: '',
		},{
			element : "#outputDiv",
			intro	: '',
			tooltipClass : "hide",
			animateStep: "printCopyText"
		},{
			element : "#fclose1",
			intro	: '',
			tooltipClass : "hide",
		},{
			element : "#gangaFile",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "ganagaFileClose"
		},{
			element : "#fclose2",
			intro	: '',
			tooltipClass : "hide",
		},{
			element : "#yamunaFile",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
			animateStep: "yamunaFileClose"
		},{
			element : "#mainMethodCloseBrace",
			intro	: '',
			position : "right",
			tooltipClass : "hide",
		},{
			element : "#restartBtn",
			intro : "Click to Restart",
			tooltipClass: "introjs-tooltip-min-width-custom",
			position : "right"
		}]
	});
	intro.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
			case "program" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-tooltip').removeClass('hide');
				text = 'Here we will learn how the <span class="ct-code-b-yellow">data copy from one file to another file</span>.';
				typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});	
			break;
			
			case "savingFileStep" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					setTimeout(function() {
						saveFile();
					},200);
				});
			break; 
			
			case"outputDiv" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "editGangaFile" :
							$("#geditGanga").removeClass("opacity00");
							text = $("#geditGanga").html();
							typing('#geditGanga', text, typingInterval, 'white', function() {
								$('.introjs-tooltip').removeClass('hide');
								text = "The <span class='ct-code-b-yellow'>gedit</span> is "+
										"a simple text editor used to create and edit text files.";
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
									$('.introjs-nextbutton').show();
								});
							});
						break;
						case "compilation" :
							$("#gangaFile").addClass("opacity00");
							$("#compilation").removeClass("opacity00");
							text = $("#compilation").html();
							typing('#compilation', text, typingInterval, 'white', function() {
								$('.introjs-tooltip').removeClass('hide');
								text = "<ul><li><span class='ct-code-b-yellow'>gcc</span> is a compiler used to"+
										" compile the given program.</li><li><span class='ct-code-b-yellow'>example</span> is an "+
										"executable file which is created only when <span class='ct-code-b-yellow'>example.c</span>"+
										" is successfully compiled.</li><li><span class='ct-code-b-yellow'>example.c</span>"+
										" is our file name.</li>";
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
									$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
									"onclick=commandLineValues()>Next &#8594;</a>");
								});
							});
						break;
						case "printCopyText" :
							zoomInEffect("#copieText", function() {
								introNextStep();
							});
						break;
					}
				});
			break;
			
			case "gangaFile" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "OpenGangaFileIngedit" :
							zoomInEffect("#gangaFile", function() {
								$('.introjs-tooltip').removeClass('hide');
								text = "The <span class='ct-code-b-yellow'>ganga.txt</span> file contains some data.";
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
									$('.introjs-nextbutton').show();
								});
							});
						break;
						case "OpenGangaFileInReadMode" :
							zoomInEffect("#gangaFile", function() {
								$('#ganagaFileAddress').fadeTo(3000,1,function() {
									introNextStep();
								});
							});
						break;
						case "ganagaFileClose" :
							zoomOutEffect("#gangaFile", function() {
								$("#gangaFile").addClass("opacity00");
								filePointerCount++;
								introNextStep();
							});
						break;
						case "incrementFpRead" :
								$("#arrow-up").addClass("z-index10000000");
								var l1 = $("#fileFirstCharacter3").offset();
								$("#arrow-up").offset({left:l1.left});
								var l2 = $("#fileFirstCharacter1").offset();
								var topLength = l2.top-l1.top;
								var leftLength = l2.left-l1.left+10;
								TweenMax.from("#arrow-up", 1, {top: topLength, left: leftLength, onComplete: function() {
									$("#arrow-up").removeClass("z-index10000000");
									introNextStep();
								}});
						break;
					}
				});
			break;
			
			case "mainMethod" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = "This is the main method whose receives the command line arguments.<ul><li>"+
							"The <span class='ct-code-b-yellow'>argc</span> is the argument count which store the"+
							" total number of arguments passed to the main method.</li>"+
							"<li><span class='ct-code-b-yellow'>argv</span> is a vector which contain all the "+
							"commad line arguments.</li></ul>";
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "fileDeclaraion" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-tooltip').removeClass('hide');
					text = 'The <span class="ct-code-b-yellow">FILE</span> referred to as Stream. Stream means reading and writing of data.'+
							'<br> Here we take two file pointer : <ul><li><span class="ct-code-b-yellow">fpRead</span> for '+
							'ganga.txt</li><li><span class="ct-code-b-yellow">fpWrite</span> for'+
							' yamuna.txt.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "filePointerMenory" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$("#fpAddress1").removeClass("opacity00").addClass("animated zoomIn")
					$("#fpAddress2").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#fpAddress1, #fpAddress2").removeClass("animated zoomIn");
						$(".address").removeClass("animated zoomIn");
						introNextStep();
					});
				});
			break; 
			
			case "characterDeclarion" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = 'The <span class="ct-code-b-yellow">char</span> data type is used to store only one'+
							' <span class="ct-code-b-yellow">character</span> at a time.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "characterAddress" :
				$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "characterAddress" :
						$("#characterAddress").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
							$("#characterAddress").removeClass("animated zoomIn");
							introNextStep();
						});
						break;
						case "characterStore" :
							filePointerCount = 1;
							$('#fileFirstCharacter'+filePointerCount).addClass("z-index1000000").effect( "highlight",{color: 'yellow'}, 800, function() {
								$("#addressValue3").text($("#fileFirstCharacter"+filePointerCount).text());
								fromEffectWithTweenMax("#fileFirstCharacter" + filePointerCount, "#addressValue3", function() {
									$('#fileFirstCharacter'+filePointerCount).removeClass("z-index1000000");
									introNextStep();
								});
							});
						break;
					}
				});
			break;
			
			case "fileOpen" + filePointerCount :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "readMode" :				
							 text = 'The <span class="ct-code-b-yellow">fopen()</span> is used to open a file with '+
									'<span class="ct-code-b-yellow">r</span>(read).'+
									' mode. The file <span class="ct-code-b-yellow">ganga.txt</span> '+
									' can open only read mode but can not write.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
								$('.introjs-nextbutton').show();
							});
						break;
						case "writeMode" :					
							text = 'The <span class="ct-code-b-yellow">fopen()</span> is used to open a file.<br> Here its '+
								'open <span class="ct-code-b-yellow">yamuna.txt</span>  in <span class="ct-code-b-yellow">w</span> (write)'+
								' mode. if the file does not exist then a new file <span class="ct-code-b-yellow">yamuna.txt</span> '+
								'is created, otherwise its delete the content of the file.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
								$('.introjs-nextbutton').show();
							});
						break;
					}
				});
			break;
			
			case "filePointer" + filePointerCount:
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "fpReadDeclaration" :
							introNextStep();
						break;
						case "ganga" :
							$('.introjs-tooltip').removeClass('hide');
							 text  = 'The <span class="ct-code-b-yellow">ganga.txt</span> file first character'+
								' address will be stored in <span class="ct-code-b-yellow">fpRead</span>.'; 
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
								$('.introjs-nextbutton').show();
							});
						break;
						case "yamuna" :
							$('.introjs-tooltip').removeClass('hide');
							text  = 'The <span class="ct-code-b-yellow">yamuna.txt</span> file first character'+
								' address will be stored in <span class="ct-code-b-yellow">fpWrite</span>.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
								$('.introjs-nextbutton').show();
							});
						break;
					}
				});
			break;
			
			 case "fpAddress" + filePointerCount :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "gangaAddress" :
							fpAddressStore();
						break;
						case "yamunaAddress" :
							fpAddressStore();
						break;
						case "incrementFpRead" :
							filePointerCount = 1;
							flipEffectWithTweenMax("#addressValue" + filePointerCount,parseInt($('#addressValue' + filePointerCount).text()) + 1, function() {
								introNextStep();
							});
						break;
						case "incrementFpWrite" :
							flipEffectWithTweenMax("#addressValue" + filePointerCount,parseInt($('#addressValue' + filePointerCount).text()) + 1, function() {
								introNextStep();
							});
						break;
					}
				});
			break;
			
			case "yamunaFile" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "OpenGangaFileInWriteMode" :
							zoomInEffect("#yamunaFile", function() {
								$('#yamunaFileAddress').fadeTo(3000,1,function() {
									introNextStep();
								});
							});
						break;
						case "writeCharacter" :
							filePointerCount++;
							zoomInEffect("#fileFirstCharacter2", function() {
								introNextStep();
							});
						break;
						case "yamunaFileClose" :
							zoomOutEffect("#yamunaFile", function() {
								$("#yamunaFile").addClass("opacity00");
								introNextStep();
							});
						break;
						case "incrementFpWrite" :
								$("#arrow-down").addClass("z-index10000000");
								var l1 = $("#fileFirstCharacter4").offset();
								$("#arrow-down").offset({left:l1.left});
								var l2 = $("#fileFirstCharacter2").offset();
								var topLength = l2.top-l1.top;
								var leftLength = l2.left-l1.left+10;
								TweenMax.from("#arrow-down", 1, {top: topLength, left: leftLength, onComplete: function() {
									$("#arrow-down").removeClass("z-index10000000");
									introNextStep();

									
								}});
						break;
					}
				});
			break;
			
			case "condition" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "gotonextStep" :
							introNextStep();	
						break;
						case "conditionCheck" :
							$('.introjs-tooltip').removeClass('hide');
							text = ' <span class="ct-code-b-yellow">'+ $("#addressValue3").text() +
									'</span> !=  <span class="ct-code-b-yellow">'+
									'EOF(ctrl + d)</span> condition evaluated to  <span class="ct-code-b-yellow">true</span><br>'+
									' Here <span class="ct-code-b-yellow">EOF</span> means '+
									' End of file.';
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
								$('.introjs-nextbutton').show();
						});
						break;
					}
				});
			break;
			
			case "storeCharacter" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = 'The <span class="ct-code-b-yellow">fgetc()</span> function used to '+
						'gets the character from the specified stream and the position indicator increment by one position.<br> <br>'+
						'When ever get the character from the file. The <span class="ct-code-b-yellow">fpRead</span> will '+
						'automatically <span class="ct-code-b-yellow">increment</span>.<br><br>'+
						'The character <span class="ct-code-b-yellow">'+ $("#fileFirstCharacter").text()+'</span> stored in a variable '+
						'<span class="ct-code-b-yellow">ch</span>.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "fputc" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = 'The <span class="ct-code-b-yellow">fputc()</span> function used to write'+
							' a character  specified by the argument char to the specified stream and '+
							'the position indicator automatically increment.<br><br> The <span class="ct-code-b-yellow">fpWrite</span> will '+
							'automatically <span class="ct-code-b-yellow">increment</span>.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "whileCondition" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = 'Like all tha characters store from ganga.txt to yamuna.txt';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "copyFile" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					setTimeout(function() {
						$("#fileTextGanga").effect( "transfer", { to: $("#fileTextYamuna"), className: "ui-effects-transfer" }, 1500 , function() {
							$("#addressValue3, #empty, #emptySpan").text("EOF").css({"color": "red"});
							$("#fileFirstCharacter4").removeClass("opacity00");
							TweenMax.to('#fileTextYamuna', 1, {opacity: 1, onComplete: function() {
								var l1 = $("#emptySpan").offset()
								$("#arrow-up").offset({top:(l1.top-10), left:l1.left});
								var l1 = $("#empty").offset()
								$("#arrow-down").offset({top:(l1.top-10), left:l1.left});
								$("#addressValue1").text(parseInt($("#addressValue1").text()) + 106);
								$("#addressValue2").text(parseInt($("#addressValue2").text()) + 106);
								
								introNextStep();
							}});
						});
					},500);
				});
			break;
			
			case "printLine" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					filePointerCount = 1;
					$('.introjs-tooltip').removeClass('hide');
					text = '<span class="ct-code-b-yellow">printf()</span> function is used to'+
							' <span class="ct-code-b-yellow">print</span> the <span class="ct-code-b-yellow">data</span> '+
							'or user defined <span class="ct-code-b-yellow">message</span> on <span class="ct-code-b-yellow">'+
							'console</span>.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "fclose" + filePointerCount :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = 'The <span class="ct-code-b-yellow">fclose()</span> function '+
							' is used to close the file.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			
			case "mainMethodCloseBrace" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = 'Close the method.';
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
				
			case "restartBtn":
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function () {
					$("#restartBtn").removeClass('visibility-hidden');
					$('#restartBtn').click(function() {
						location.reload();
					});
				});
			break;
		}
	});
	intro.start();
	$('.introjs-nextbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();

	$('body').keypress(function(e) {
		if (e.which == 13) {
			e.preventDefault();
		}
	});
	
	$('#restartBtn').click(function() {
		location.reload();
	});
});
	
	function introNextStep() {
		setTimeout(function() {
			intro.nextStep();
		},800);
	}
	
	function fpAddressStore() {
		$('.introjs-tooltip').addClass('hide');
		$(".introjs-duplicate-nextbutton").remove();
		$("#address"+filePointerCount).addClass("z-index1000000");
		setTimeout(function() {
			$('#address' + filePointerCount).effect( "highlight",{color: 'yellow'}, 500);
			$("#addressValue" + filePointerCount).text($("#address" + filePointerCount).text());
			fromEffectWithTweenMax("#address" + filePointerCount, "#addressValue" + filePointerCount, function() {
				$("#address"+filePointerCount).removeClass("z-index1000000");
				$("#address" + filePointerCount).remove();
				filePointerCount++;
				introNextStep();
			});
		},800);
	}
	
	function commandLineValues() {
		$(".introjs-duplicate-nextbutton").remove();
		$('.introjs-tooltip').addClass('hide');
		$("#commandLineValues").removeClass("opacity00");
		text = $("#commandLineValues").html();
		typing('#commandLineValues', text, typingInterval, 'white', function() {
			$('.introjs-tooltip').removeClass('hide');
			text = "After successfull compilation,<ul><li><span class='ct-code-b-yellow'>./example</span> is an executable file "+
					"which contains <span class='ct-code-b-yellow'>c</span> program."+
					"</li><li>Each argument must be separated by a space.</li>"+
					"<li>Here the <span class='ct-code-b-yellow'>ganga.txt</span> file is a source file and"+
					" <span class='ct-code-b-yellow'>yamuna.txt</span> is a destination file.</li>"+
					"<li>In c <span class='ct-code-b-yellow'>./example</span>"+
					" is also take it as one argument.</li>"+
					"</ul><br>We have <span class='ct-code-b-yellow'>3</span>"+
					" arguments in this line.";
			typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
				$('.introjs-nextbutton').show();
			});
		});
	}
	
	function flipEffectWithTweenMax(selector, val, callBackFunction) {
		TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
			$(selector).text(val);
			TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
				if (typeof callBackFunction === "function") {
					callBackFunction();
				}
			}});
		}});
	}
	
	function fromEffectWithTweenMax(selector1, selector2, callBackFunction) {
		var l1 = $(selector1).offset();
		var l2 = $(selector2).offset();
		var topLength = l1.top - l2.top;
		var leftLength = l1.left - l2.left;
		TweenMax.from($(selector2), 1, {top: topLength, left: leftLength, onComplete: function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}
	
	//save file animation
	function saveFile() {
		$('.arrow1').append('<i class="fa fa-arrow-right faa-passing animated"></i>');
		$('#dotJavaFileAboveText').show(1000).text('Saving').addClass('loading');
		$('.dotJavaFile').fadeTo(3000,1,function() {
			$('.arrow1 i').removeClass('faa-passing')
			$('#dotJavaFileAboveText').text('Saved').removeClass('loading');
			$("#className").text('example'),$("#extention").text('.c'),
			$('#dotJavaFileBelowText').addClass('pulse').on('animationend',function() {
				$('.introjs-nextbutton').show();
			});
		});
	}
	//zooming effect function
	function zoomInEffect(selector1, callBackFunction) {
		$(selector1).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
			$(selector1).removeClass("animated zoomIn")
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
	
	function zoomOutEffect(selector1, callBackFunction) {
		$(selector1).removeClass("opacity00").addClass("animated zoomOut").one('animationend', function() {
			$(selector1).removeClass("animated zoomOut")
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
	
	//typing function
	function typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction) {
		$(typingId).typewriting(typingContent, {
			"typing_interval" : typingInterval,
			"cursor_color" : cursorColor
		}, function() {
			$(typingId).removeClass("typingCursor");
			typingCallbackFunction();
			$('.introjs-tooltip').show();
		});
	}

</script>

</head>
<body>

<div class='box-main'>
	<div class='text-center'>
		<h1 class='label ct-demo-heading'>Copy data from one file to another file</h1>
	</div>
	<div class='buttons-div'>
		<button type="button" class="btn btn-warning visibility-hidden" id="restartBtn">Restart</button>
	</div>
	<div>
		<div class='row margin-top'>
		<div class = "col-xs-5 col-xs-offset-1">
		<div class='col-sm-12 box-border' id = "savingFileStep">
			<div class= 'col-xs-9 padding0'>
<pre class='creamPreTab4' id = "program">
#include &lt;stdio.h&gt;
<span id = "mainMethod">int main(<span id = "argcCount" >int argc</span>, <span id='argsLine'>char *argv[]</span>)</span> {
	<span id= "fileDeclaraion">FILE *fpRead, *fpWrite;</span>
	<span id= "characterDeclarion">char ch;</span>
	<span id = "filePointer1">fpRead = <span id = "fileOpen1">fopen(argv[1],"r")</span>;</span>
	<span id = "filePointer2">fpWrite = <span id = "fileOpen2">fopen(argv[2],"w")</span>;</span> 
	<span id ="whileCondition"><span id = "condition">while(<span id = "storeCharacter">(ch = fgetc(fpRead))</span> != EOF)</span> {
		<span id = "fputc">fputc(ch, fpWrite);</span>
	}</span>
	<span id = "printLine">printf("Content copies to %s \n", argv[2]);</span>
	<span id = "fclose1">fclose(fpRead);</span>
	<span id = "fclose2">fclose(fpWrite);</span>
<span id='mainMethodCloseBrace'>}</span>
</pre></div>
	<div class="col-xs-1 arrow1">
	</div>
			<div class="col-xs-2 text-center file-top">
				<div>
					<span id="dotJavaFileAboveText"></span>
				</div>
				<div>
					<i class="img-responsive dotJavaFile fa fa-file-text-o fa-4x opacity00"></i>
				</div>
				<div>
					<span id="dotJavaFileBelowText"><span id = "className"></span><span id ="extention"></span></span>
				</div>
			</div>
		</div>
		<div class = "col-xs-12 box-border margin-top" id = "memoryAllocatin">
		<div class = "col-xs-8" id = "filePointerMenory">
			<div class = "col-xs-5 address opacity00" id = "fpAddress1">
				<div class="panel-primary number-div" id = "addressDiv1">
		    		<div class="panel-heading text-center number-div">fpRead</div>
		    		<div class="panel panel-body number-body text-center">
		    			<span class="text-center position" id="addressValue1"></span>
		    		</div>
		    		<div class="address-text text-center">1024</div>
				</div>
			</div>
			<div class = "col-xs-5 address col-xs-offset-2 opacity00" id = "fpAddress2">
				<div class="panel-primary number-div" id = "addressDiv2">
			    	<div class="panel-heading text-center number-div">fpWrite</div>
			    	<div class="panel panel-body number-body text-center">
			    		<span class="text-center position" id="addressValue2"></span>
			    	</div>
					<div class="address-text text-center">1024</div>
				</div>
			</div>
		</div>
			<div class = "col-xs-3 address1 col-xs-offset-1 opacity00" id = "characterAddress">
				<div class="panel-primary number-div" id = "addressDiv3">
			    	<div class="panel-heading text-center number-div">ch</div>
			    	<div class="panel panel-body number-body text-center">
			    		<span class="text-center position" id="addressValue3"></span>
			    	</div>
					<div class="address-text text-center">1024</div>
				</div>
			</div>
		</div>
	</div>
		<div class = "col-xs-5">
			<div class='col-sm-12 box-border' id='animationBox'>
				<div class="output-console center" id = "outputDiv">
					<div class="output-console-title-bar">
						<span>Output</span>
					</div>
	        		<div class="output-console-body">
	        		<div>
						<span id='geditGanga' class = "opacity00">&gt;&gt; gedit <span class = "ct-code-b-green">ganga.txt</span></span>
					</div>
	        		<div>
						<span id='compilation' class = "opacity00">&gt;&gt;  gcc -o example example.c</span>
					</div>	
					<div>
						<span id='commandLineValues' class = "opacity00">&gt;&gt; ./example <span class = "ct-code-b-yellow" id='file1'>ganga.txt</span> <span class = "ct-code-b-green" id='file2'>yamuna.txt</span></span>
					</div>
					<div>
						<span id='copieText' class = "opacity00"><b>Content copies to yamuna.txt</b></span>
					</div>
					<div>
						<span id='geditYamuna' class = "opacity00">&gt;&gt; <b>gedit yamuna.txt</b></span>
					</div>
		        		</div>
					</div>
					<div class = "col-xs-12" id = "copyFile">
						<div class = "col-xs-6 margin-top opacity00" id = "gangaFile">
							<div class = "col-xs-12 text-center" id ="gangaTxt">ganga.txt</div>
							<div class="col-xs-12 top-padding opacity00" id = "ganagaFileAddress">
								<span id="address1" class="address-text text-center">2025</span><br>
								<i class="fa fa-arrow-down" id = "arrow-up"></i>
							</div>
							<div class = "col-xs-12 box-border" id ="ganga-txt">
								<span id = "fileFirstCharacter1">C</span><span id = "fileFirstCharacter3">o</span><span id = "fileTextGanga">deTantra
								 was founded by Ramana TSV. Ramana loves coding and sharing what he knows about coding.</span><span id = "emptySpan"></span><br><br><br><br>
							</div>
						</div>
						<div class = "col-xs-6 margin-top opacity00" id = "yamunaFile">
							<div class = "col-xs-12 text-center" id ="yamunaTxt">yamuna.txt</div>
							<div class="col-xs-12 top-padding opacity00" id = "yamunaFileAddress">
								<span id="address2" class="address-text text-center">5052</span><br>
								<i class="fa fa-arrow-down" id = "arrow-down"></i>
							</div>
							<div class = "col-xs-12 box-border" id ="yamuna-txt">
								<span class = "opacity00" id = "fileFirstCharacter2">C</span><span class = "opacity00" id = "fileFirstCharacter4">o</span><span class = "opacity00" id = "fileTextYamuna">deTantra 
								was founded by Ramana TSV. Ramana loves coding and sharing what he knows about coding.</span><span id = "empty"></span><br><br><br><br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>