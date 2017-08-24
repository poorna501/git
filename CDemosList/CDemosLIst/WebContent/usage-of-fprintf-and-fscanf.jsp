<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>fprintf.jsp</title>
<style type="text/css">
.introjs-tooltiptext br {
	margin: 15px;
}

.introjs-tooltip {
	min-width: 300px;
}

.introjs-tooltip-min-width-custom {
	min-width: -moz-max-content;
}

.introjs-duplicate-nextbutton {
	background-color: green;
}

.box-border {
	border-radius: 12px;
	border: 2px solid gray;
}

.margin-top {
    margin-top: 12px;
}

.margin-bottom {
    margin-top: -10px;
}

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}

div,span {
	position: relative;
}

.ui-effects-transfer {
    border: 1px solid blue;
    z-index: 99999999 !important;
 }
 
.padding00 {
	padding: 0px;
}

#fileText {
	height: 108px;	
}

.creamPreTab4 {
	tab-size: 2;
    margin: 8px;
    padding: 10px;
    font-size: 13px;
    white-space: pre;
	-moz-tab-size: 3;
    border-radius: 8px;
    background-color: #fffae6;
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

.output-console {  
	border-radius: 10px;
	margin: 135px 0 0 0 ;
}

.output-console-title-bar {
	background-image: -moz-linear-gradient(center top, #e8e8e8, #bcbbbc);
	font-size: 0.75em;
	padding: 2px 0;
	text-align: center;
}

.output-console-body {
	background-color: black;
	padding: 10px;
	color: #f0f0f0	;
	font-size: 10px;
	height: 200px;
	white-space: inherit;
}

[contenteditable="true"] {
	font-weight: normal;
	outline: medium none;
}

.input-box {
	background-color: black;
    border: medium none;
}


#codetantraFile {
    margin-top: 8px;
}

#textFile {
	height: 140px;
}

#svgDiv1 {
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    z-index: 10000000 !important;
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
}

.output-value-circle {
	background: white;
	color: black;
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

.ct-code-b-blue, .ct-code-b-green, .ct-code-b-red {
	color: blue;
	font-weight: bold;
	font-family: monospace;
}

.ct-code-b-red {
	color: red;
}

.ct-code-b-green {
	color: green;
}

.ct-code-b-blue {
	font-weight: bold;
	font-family: monospace;
	color: blue;
}

.ct-code-b-red {
	font-weight: bold;
	font-family: monospace;
	color: red;
}

</style>
</head>
<body>
	<div class="col-xs-12">
		<div class="ct-box-main">
			<div class="text-center">
				<h1 class="label ct-demo-heading text-center">Usage of fprintf() and fscanf()</h1>
			</div> 
			<div class='buttons-div'>
				<button type="button" class="btn btn-warning visibility-hidden" id="restartBtn">Restart</button>
			</div> 
			<div class="col-xs-12">
				<div class="col-xs-8 col-xs-offset-2 box-border margin-top" id="fileText">
					<ul><li id="text1" class="opacity00">The <span class="ct-code-b-green">fprintf()</span> function is used to write a data into a file.<br/>
							Syntax:  <span class="ct-code-b-green">fprintf(FILE * fp, char * controlstring, variables);</span></li>
							<li id="text2" class="opacity00">The <span class="ct-code-b-green">fscanf</span> function is used to read data from file.<br/>
							Syntax:  <span class="ct-code-b-green">fscanf(FILE * fp, char * controlstring, &variables);</span>
							 <a class="introjs-button introjs-duplicate-nextbutton opacity00">Next &#8594;</a></li></ul>
				</div>
			</div>
			<div class = "col-xs-12 margin-top opacity00" id = "mainDiv">
				<div class = "col-xs-6">
					<div id = "codeDiv"  class = "box-border margin-top">
						<pre class = 'creamPreTab4' id = "code">
#include &lt;stdio.h&gt;
int main() {
	<span id = "filePointer">FILE *fptr;</span>
	<span id = "idDeclaration">int id;</span>
	<span id = "nameDeclaration">char name[10];</span>
	<span id = "salaryDeclaration">float salary;</span>
	<span id = "fileOpen"><span id = "filePointer1">fptr</span> = <span id ="fileOPenMethod">fopen(<span id = "fileName">"codetantra.txt"</span>, <span id = "writeMode">"w"</span>);</span></span>
	<span id = "printLine1">printf("Enter employee id name and salary\n");</span>
	<span id = "scanfLine1">scanf("%d %s %f", &id, name, &salary);</span>
	<span id = "fprintf">fprintf(fptr, <span id = "idStore">"Id = %d\n"</span> <span id = "nameStore">"Name = %s\n"</span> <span id = "salaryStore">"Salary = %f\n"</span>,
						 id, name , salary);</span>
	<span id = "closeFile1">fclose(fptr);</span>
	<span id = "fileOpen1"><span id = "filePointer1">fptr</span> = <span id ="fileOPenMethod1">fopen(<span id = "fileName1">"codetantra.txt"</span> , <span id = "readMode">"r"</span>);</span></span>
	<span id = "printLine2">printf ("Print id name and salary\n ");</span>
	<span id = "fscanf">fscanf(fptr,"%d %s %f", &id, name, &salary);</span>
	<span id = "printLine3">printf("<span id = "idprint">Id = %d\n</span>" "<span id = "nameprint">Name = %s\n</span>" "<span id = "salaryprint">Salary = %f</span>", id, name, salary);</span>
	<span id = "closeFile2">fclose(fptr);</span>
}
						</pre>
					</div>
				</div>
				<div class = "col-xs-6">
				<div class = "col-xs-7">
				<svg id = "svgDiv1" class = "svgDiv">
						<marker id="arrow1" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
	             	  		<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>
	           			</marker>
	           			<marker id="arrow11" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
	             	  		<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>
	           			</marker>
	           			<marker id="arrow111" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
	             	  		<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>
	           			</marker>
						<line id="line2" class = "opacity00" x2="5.8%" y2="63.6%" y1="75.6%" x1="5.8%" style="marker-end: url(#arrow11); stroke: gray; stroke-width: 2"/>
						<line id="line1" class = "opacity00" x1 = "12.8%" y1="75.8%" y2="75.8%" x2="8.6%" style="marker-end: url(#arrow111); stroke: gray; stroke-width: 2"/>
						<line id="line3" class = "opacity00" x1="5.6%" y1="39.8%" y2="39.8%" x2="5.1%" style="marker-end: url(#arrow1); stroke: gray; stroke-width: 2" />
						
						<line id="line12" class = "opacity00" x2="8.3%" y2="60.6%" y1="61.9%" x1="8.3%" style="marker-end: url(#arrow11); stroke: gray; stroke-width: 2"/>
						<line id="line11" class = "opacity00" x1="8.6%" y1="39.8%" y2="39.8%" x2="11.4%" style="marker-end: url(#arrow1); stroke: gray; stroke-width: 2"/>
						<line id="line13" class = "opacity00" x1="10.6%" y1="61.8%" y2="61.8%" x2="8.1%" style="marker-end: url(#arrow111); stroke: gray; stroke-width: 2" />				
  					</svg>
					<div class = "col-xs-12 box-border margin-top">
						<div class = "col-xs-12">
							<div class = "col-xs-6 address margin-top" id = "characterAddress">
								<div class="panel-primary number-div opacity00" id = "addressDiv2">
			    					<div class="panel-heading text-center number-div">id</div>
			    						<div class="panel panel-body number-body text-center">
			    							<span class="text-center" id="addressValue2"></span>
			    						</div>
			    						<div id="address1" class="address-text text-center margin-bottom">1024</div>
							    	</div>
								</div>
								<div class = "col-xs-6 address margin-top" id = "filePointerAddress">
									<div class="panel-primary number-div opacity00" id = "addressDiv3">
				    				<div class="panel-heading text-center number-div">name</div>
				    					<div class="panel panel-body number-body text-center">
				    						<span class="text-center" id="addressValue3"></span>
				    					</div>
								    	<div id="address2" class="address-text text-center margin-bottom">1024</div>
							    	</div>
								</div>
							</div>
							<div class = "col-xs-12">
							<div class = "col-xs-6 address margin-top" id = "characterAddress">
								<div class="panel-primary number-div opacity00" id = "addressDiv1">
			    					<div class="panel-heading text-center number-div">fptr</div>
			    						<div class="panel panel-body number-body text-center">
			    							<span class="text-center position" id="addressValue1"></span>
			    						</div>
			    						<div id="address3" class="address-text text-center margin-bottom">1024</div>
							    	</div>
								</div>
								<div class = "col-xs-6 address margin-top" id = "filePointerAddress">
									<div class="panel-primary number-div opacity00" id = "addressDiv4">
				    				<div class="panel-heading text-center number-div">salary</div>
				    					<div class="panel panel-body number-body text-center">
				    						<span class="text-center position" id="addressValue4"></span>
				    					</div>
								    	<div id="address4" class="address-text text-center margin-bottom">1024</div>
							    	</div>
								</div>
							</div>
						</div>
						<div class = "col-xs-12 opacity00" id = "codetantraFile">
							<div class = "col-xs-12 margin-top text-center opacity00" id = "text"><b>codetantra.txt</b></div>
							<div class = "col-xs-12 box-border margin-top opacity00" id = "textFile">
							<div class = "col-xs-12 padding00" id = "fileSpan"></div>
							</div>
						</div>
					</div>
					<div class="col-xs-5 padding00 margin-top">
						<div class="output-console center" id="outputDiv">
								<div class="output-console-title-bar">
									<span>Output</span>
								</div>
	        					<div class="output-console-body" id="outputConsoleBody">
	        						<span id="outputText" class = "opacity00">Enter employee id name and salary</span><br>
	        						<!-- <div class='output-scanf-line' id='outputScanfLine' contenteditable="true"></div><br> -->
	        						<div id = "enterValuesOfEmployee" class = "opacity00">
	        							<input type="text" class = "input-box" maxlength="2" size="3" id="employeeId"/>
	        							<input type="text" class = "input-box" maxlength="8" size="10" id="employeeName"/>
	        							<input type="text" class = "input-box" maxlength="5" size="10" id="employeeSalary"/>
	        						</div>
	        						<span id="outputText1" class = "opacity00">Print id name and salary</span><br>
	        						<span id = "printId"><span id="idText"></span><span id="idvalue" class = "ct-code-b-yellow"></span></span><br>
	        						<span id = "printName"><span id="nameText"></span><span id="namevalue" class = "ct-code-b-yellow"></span></span><br>
	        						<span id = "printSalary"><span id="salaryText"></span><span id="salaryvalue" class = "ct-code-b-yellow"></span></span><br>
	        					</div>
							</div>
						</div>
				</div>
			</div>
		</div>
		</div>
<script type="text/javascript">
var introcode;
var typingInterval = 10;
var fpAddress;
var enterText;
var addressCount = 1;
var characterCount = 1;
var  ctrlText;
var arr = [];


	$(document).ready(function(){
		introGuide();
		
		$('.output-scanf-line').on("keydown", function(e) {
			if (arr.length == 5) {
				if (e.keyCode == 32) {
					e.preventDefault();
				}
			}
			if ($.inArray(e.keyCode, [46, 8, 9, 27, 32, 35, 36, 37, 39]) !== -1) {
				return;
			}
			if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
				e.preventDefault();
			}
		});
		
		$('.output-scanf-line').on("keyup", function(e) {
			$('.length-error-text').remove();
			if ($(this).text() == "") {
				$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
													"Please enter id name and salary each with separate by space.</span>");
			}
			var givenText = $(this).text();
			var splittedText = givenText.split(" ");
			arr = [];
			
			$.each(splittedText, function(idx, val) {
				console.log(splittedText);
				console.log(val);
				console.log(val != '')
				if (val != '') {
					arr.push(val);
				}
			});
			
			if (arr.length < 3) {
				$(".introjs-nextbutton").hide();
			} else if (arr.length == 3) {
				$(".introjs-nextbutton").show();
			}
			
			$.each(arr, function(idx, val) {
				if (idx == 0) {
					if (val.length > 3) {
						$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
																"Please limit the id length to 3.</span>");
						$(".introjs-nextbutton").hide();
					}
				} else if (idx == 1) {
					if (val.length > 10) {
						$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
																"Please limit the name length to 10.</span>");
						$(".introjs-nextbutton").hide();
					}
				} else if (idx == 2) {
					if (val.length > 5) {
						$('.introjs-tooltiptext').append("<span class='ct-code-b-red length-error-text'><br/>" + 
																"Please limit the salary length to 5.</span>");
						$(".introjs-nextbutton").hide();
					}
				}
			});
		});
		
		var x = Math.floor((Math.random() * 1104) + 5125);
		$("#address1").text(x);
		var y = Math.floor((Math.random() * 1054) + 2550);
		$("#address2").text(y);
		var z = Math.floor((Math.random() * 1354) + 1950);
		$("#address3").text(z);
		var a = Math.floor((Math.random() * 1254) + 1150);
		$("#address4").text(a);
		fpAddress = Math.floor((Math.random() * 1086) + 1850);
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
					animateStep: "fptrlocation"
				},{
					element :'#idDeclaration',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#addressDiv2',
					intro :'',
					tooltipClass : "hide",
					animateStep: "idlocation"
				},{
					element :'#nameDeclaration',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#addressDiv3',
					intro :'',
					tooltipClass : "hide",
					animateStep: "namelocation"
				},{
					element :'#salaryDeclaration',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#addressDiv4',
					intro :'',
					tooltipClass : "hide",
					animateStep: "salarylocation"
				},{
					element :'#fileOpen',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#codetantraFile',
					intro :'',
					tooltipClass : "hide",
					animateStep: "location"
				},{
					element :'#printLine1',
					intro :'',
					tooltipClass : "hide",
					animateStep: "printflocation"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide",
					animateStep: "readvaluesfromkeyboard"
				},{
					element :'#scanfLine1',
					intro :'',
					tooltipClass : "hide",
					animateStep: "scanflocation"
				},{
					element :'#addressDiv2',
					intro :'',
					tooltipClass : "hide",
					animateStep: "idValue"
				},{
					element :'#addressDiv3',
					intro :'',
					tooltipClass : "hide",
					animateStep: "nameValue"
				},{
					element :'#addressDiv4',
					intro :'',
					tooltipClass : "hide",
					animateStep: "salaryValue"
				},{
					element :'#fprintf',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#codetantraFile',
					intro :'',
					tooltipClass : "hide",
					animateStep: "readValues"
				},{
					element :'#closeFile1',
					intro :'',
					tooltipClass : "hide",
					animateStep: "readValues"
				},{
					element :'#codetantraFile',
					intro :'',
					tooltipClass : "hide",
					animateStep: "closeFile"
				},{
					element :'#fileOpen1',
					intro :'',
					tooltipClass : "hide",
					animateStep: "closeFile"
				},{
					element :'#codetantraFile',
					intro :'',
					tooltipClass : "hide",
					animateStep: "openFileWithReadMode"
				},{
					element :'#printLine2',
					intro :'',
					tooltipClass : "hide",
					animateStep: "printflocation"
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide",
					animateStep: "printText"
				},{
					element :'#fscanf',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#addressDiv2',
					intro :'',
					tooltipClass : "hide",
					animateStep: "idValueStore"
				},{
					element :'#addressDiv3',
					intro :'',
					tooltipClass : "hide",
					animateStep: "nameValueStore"
				},{
					element :'#addressDiv4',
					intro :'',
					tooltipClass : "hide",
					animateStep: "salaryValueStore"
				},{
					element :'#printLine3',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#outputDiv',
					intro :'',
					tooltipClass : "hide",
					animateStep: "printTextValue"
				},{
					element :'#closeFile2',
					intro :'',
					tooltipClass : "hide",
				},{
					element :'#codetantraFile',
					intro :'',
					tooltipClass : "hide",
					animateStep: "fileClose"
				},{
					element : "#restartBtn",
					intro : "Click to Restart",
					tooltipClass: "introjs-tooltip-min-width-custom",
					position : "right"
				}]
		});
		introcode.onafterchange(function(targetElement){
			var elementId = targetElement.id;
			switch (elementId) {
				case "fileText" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					TweenMax.to('#text1', 0.5, {opacity: 1, onComplete: function() {
						TweenMax.to('#text2', 0.5, {opacity: 1, onComplete: function() {
							$('.introjs-duplicate-nextbutton').removeClass('opacity00').addClass("animated zoomIn").one('animationend', function() {
								$('.introjs-duplicate-nextbutton').click(function() {
									$('#mainDiv').removeClass('opacity00');
									$(".introjs-duplicate-nextbutton").remove();
									introcode.nextStep();
								});
							});
						}});
					}});
				break;
				case "code":
					$("#fileText").addClass("z-index1000000");
						$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here we will learn how the <span class="ct-code-b-yellow">fprintf()</span> '+
								' and <span class="ct-code-b-yellow">fscanf()</span> methods work in file.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "filePointer" :
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
						$('.introjs-tooltip').removeClass('hide');
						text = 'Here <span class="ct-code-b-yellow">FILE</span> referred to as Stream. Stream means flow of a data that can be '+
								'<span class="ct-code-b-yellow">read</span> or <span class="ct-code-b-yellow">write</span>.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function(){
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "addressDiv1" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
						 case "fptrlocation" :
							 zoomInEffect("#addressDiv1",function() {
								 setTimeoutToIntroGoNextStep();
							 });
						break;
						}
					});
				break;
				case "idDeclaration" :
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
						$('.introjs-tooltip').removeClass('hide');
						text = 'The <span class="ct-code-b-yellow">int</span> data type is used to store the employee ids.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "addressDiv2" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
						 case "idlocation" :
							 zoomInEffect("#addressDiv2",function() {
								 setTimeoutToIntroGoNextStep();
							 });
						break;
						 case "idValue" :
							 $('.scanfValue0').addClass('output-value-circle circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
								 $("#addressValue2").text($(".scanfValue0").text());
								 fromEffectWithTweenMax(".scanfValue0", "#addressValue2", function() {
									 $('.scanfValue0').removeClass('output-value-circle circle-css')
										setTimeoutToIntroGoNextStep();
									});
							 });
						break;
						 case "idValueStore" :
							 $(".arrow-up").removeClass("z-index1000000");
							 $("#id").addClass("z-index1000000").effect("highlight", {color: 'green'}, 1000, function() {
							 	$("#addressValue2").text($("#id").text());
							 	$("#addressValue2").removeClass("opacity00");
								fromEffectWithTweenMax("#id", "#addressValue2", function(){
								 	 $("#id").removeClass("z-index1000000")
									$(".arrow-up").addClass("z-index1000000");
									rotationFunction(function() {
										var l1 = $("#appendSpan2").offset();
										var l2 = $(".arrow-up").offset({top:l1.top - 10, left:l1.left});
										setTimeoutToIntroGoNextStep();
									});
								});
							 });
						break;
						}
					});
				break;
				case "nameDeclaration" :
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
						$('.introjs-tooltip').removeClass('hide');
						text = 'The <span class="ct-code-b-yellow">char</span> data type is used to store the employee names.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "addressDiv3" :
					$(".arrow-up").removeClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
						 case "namelocation" :
							 zoomInEffect("#addressDiv3",function() {
								 setTimeoutToIntroGoNextStep();
							 });
						break;
						 case "nameValue" :
							 $('.scanfValue1').addClass('output-value-circle circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
								 $("#addressValue3").text($(".scanfValue1").text());
								 fromEffectWithTweenMax(".scanfValue1", "#addressValue3", function() {
									 $('.scanfValue1').removeClass('output-value-circle circle-css')
										setTimeoutToIntroGoNextStep();
									});
							 });
						break;
						 case "nameValueStore" :
							 $("#name").addClass("z-index1000000").effect("highlight", {color: 'green'}, 1000, function() {
								 $("#addressValue3").text($("#name").text()).removeClass("opacity00");
								 fromEffectWithTweenMax("#name", "#addressValue3", function(){
									 $("#name").removeClass("z-index1000000");
									 $(".arrow-up").addClass("z-index1000000");
										rotationFunction(function() {
											var l1 = $("#appendSpan3").offset();
											var l2 = $(".arrow-up").offset({top:l1.top - 10, left:l1.left});
											setTimeoutToIntroGoNextStep();
										});
								 });
							 });
						break;
							 
						}
					});
				break;
				case "salaryDeclaration" :
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
						$('.introjs-tooltip').removeClass('hide');
						text = 'The <span class="ct-code-b-yellow">float</span> data type is used to store the employee salary.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "addressDiv4" :
					$(".arrow-up").removeClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
						 case "salarylocation" :
							 zoomInEffect("#addressDiv4",function() {
								 setTimeoutToIntroGoNextStep()	
							 });
						break;
						 case "salaryValue" :
							 $('.scanfValue2').addClass('output-value-circle circle-css').effect("highlight", {color: '#FFFFFF'}, 1000, function() {
								 $("#addressValue4").text($(".scanfValue2").text());
								 fromEffectWithTweenMax(".scanfValue2", "#addressValue4", function() {
									 printDecimalValue
									 $('.scanfValue2').removeClass('output-value-circle circle-css')
										setTimeoutToIntroGoNextStep();
									});
							 });
						break;
						 case "salaryValueStore" :
							 $("#salary").addClass("z-index1000000").effect("highlight", {color: 'green'}, 1000, function() {
								 $("#addressValue4").text($("#salary").text()).removeClass("opacity00");
								 fromEffectWithTweenMax("#salary", "#addressValue4", function() {
									 $(".arrow-up").addClass("z-index1000000");
									 $("#salary").removeClass("z-index1000000");
										rotationFunction(function() {
											var l1 = $("#appendSpan4").offset();
											var l2 = $(".arrow-up").offset({top:l1.top - 10, left:l1.left});
											setTimeoutToIntroGoNextStep();
										});
								 });
							 });
						break;
						}
					});
				break;
				case "fileOpen" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The <span class="ct-code-b-yellow">fopen()</span> is used to open a file with '+
								'<span class="ct-code-b-yellow">w</span>(writing)'+
								' mode. <span class="ct-code-b-yellow">codetantra.txt</span> '+
								'is created if the file does not exist, the contents are deleted if the file already exists.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "codetantraFile" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "location" :
								$("#codetantraFile").removeClass("opacity00");
								$("#textFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
									$("#textFile").removeClass("animated zoomIn");
									$("#text").removeClass("opacity00");
									$("#fileSpan").append('<span id ="appendSpan'+ characterCount+'"><span id="putcharacter'+ characterCount+'" class = "opacity00"></span> <span id = "id"></span></span>');
									$('#textFile').append('<br><i class="fa fa-arrow-up arrow-up"><div id="address5" class="address-text text-center"></div></i>');
									$("#address5").text(fpAddress);
									$('.introjs-tooltip').removeClass('hide');
									text  = 'The <span class="ct-code-b-yellow">codetantra.txt</span> file first character'+
											' address will be stored in <span class="ct-code-b-yellow">fp</span>.';
									typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
										$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' " +
										"onclick=svgRevilLine()>Next &#8594;</a>");
									});
								});
							break;
							case "readValues" :
								printValue("#putcharacter" +characterCount , "#idStore", "#id", "#addressValue2", "id", "readValue",function() {
									$("#fileSpan").append('<br><span id ="appendSpan'+ characterCount +'"><span id="putcharacter'+ characterCount+'" class = "opacity00"></span> <span id = "name"></span></span>');
									printValue("#putcharacter" + characterCount, "#nameStore", "#name", "#addressValue3", "name","readValue", function() {
										$("#fileSpan").append('<br><span id ="appendSpan'+ characterCount +'"><span id="putcharacter'+ characterCount+'" class = "opacity00"></span> <span id = "salary"></span></span>');	
										printValue("#putcharacter" + characterCount, "#salaryStore", "#salary", "#addressValue4", "salary","readValue", function() {
											$("#fileSpan").append('<br><span id ="appendSpan'+ characterCount +'"><span id="putcharacter'+ characterCount+'" class = "opacity00"></span>');
											setTimeoutToIntroGoNextStep();
										});
									});
								});
							break;
							case "closeFile" :
								$('.introjs-tooltip').removeClass('hide');
								text = 'Before closing a file the file pointer put a <span class="ct-code-b-yellow">EOF</span> '+
										'at the fp(<span class="ct-code-b-yellow">'+ $("#addressValue1").text() +'</span>) of the file.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
									$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton'>Next &#8594;</a>");
									$(".introjs-duplicate-nextbutton").click(function() {
										$(".introjs-duplicate-nextbutton").remove();
										$('.introjs-tooltip').addClass('hide');
										$("#putcharacter" + characterCount).text("EOF").removeClass("opacity00").addClass("ct-code-b-red");
										setTimeout(function() {
											$("#addressValue1, #addressValue2, #addressValue3, #addressValue4").addClass("opacity00");
											$("#codetantraFile").removeClass("opacity00").addClass("animated zoomOut").one('animationend', function() {
												$(".fa-arrow-up").addClass("opacity00");
												$("#codetantraFile").removeClass("animated zoomOut").addClass("opacity00");
												setTimeout(function() {
													introcode.nextStep();
												},800);
											});								
										},800);
									});
								});
							break;
							case "openFileWithReadMode" :
								$(".introjs-duplicate-nextbutton").remove();
								$('.introjs-tooltip').addClass('hide');
								$("#codetantraFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
									$("#codetantraFile").removeClass("animated zoomIn opacity00");
									$(".arrow-up").remove("fa-arrow-up").addClass("fa-arrow-down").removeClass("opacity00");
									var l1 = $("#appendSpan1").offset();
									var l2 = $(".arrow-up").offset({top:l1.top-10, left:l1.left});
									$(".arrow-up").append('<span id = "addressText" class = "position">'+fpAddress +'</span>');
									$("#addressText").css({top:-16, left: -21})
									setTimeout(function(){
										svgArrowRevil();
									},500);
								});	
							break;
							case "fileClose":
								$("#addressValue1, #addressValue2, #addressValue3, #addressValue4").addClass("opacity00");
								$("#codetantraFile").removeClass("opacity00").addClass("animated zoomOut").one('animationend', function() {
									$(".fa-arrow-up").addClass("opacity00");
									$("#codetantraFile").removeClass("animated zoomOut").addClass("opacity00");
									setTimeout(function() {
										introcode.nextStep();
									},800);
								});
								break;
						}
					});
				break;
				case "printLine1" :
					$("#line1, #line2, #line3").css({opacity: 0});
					$("#addressDiv1").removeClass("z-index1000000");
					$("#address5").remove();
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "printflocation" :
								$('.introjs-tooltip').removeClass('hide');
								text = 'The <span class="ct-code-b-yellow">printf()</span> function is used to'+
										' <span class="ct-code-b-yellow">print</span> the <span class="ct-code-b-yellow">data</span> '+
										'or user defined <span class="ct-code-b-yellow">message</span> on <span class="ct-code-b-yellow">'+
										'console</span>.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
									$('.introjs-nextbutton').show();
								});
							break;
						}
					});
				break;
				case "outputDiv" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "readvaluesfromkeyboard" :
								$("#outputText, #enterValuesOfEmployee").removeClass("opacity00");
								$('.introjs-tooltip').removeClass('hide');
								text = 'Here enter employee <span class="ct-code-b-yellow">Id</span> '+
										'<span class="ct-code-b-yellow">Name</span> and <span class="ct-code-b-yellow">Salary</span>.<br>'+
										' press space bar to enter name and salary.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
									$('.input-box').attr({contenteditable: 'true'});
									$("#employeeId").focus();
								});
							break;
							case "printText":
								$("#outputText1").removeClass("opacity00");
								setTimeoutToIntroGoNextStep();
							break;
							case "printTextValue" :
								printValue("#idText" , "#idprint", "#idvalue", "#addressValue2", "id", "printValue",function() {
									printValue("#nameText", "#nameprint", "#namevalue", "#addressValue3", "name","printValue", function() {
										printValue("#salaryText", "#salaryprint", "#salaryvalue", "#addressValue4", "salary","printValue", function() {
											setTimeoutToIntroGoNextStep();
										});
									});
								});
								break;
						}
					});
					break;
				case "scanfLine1" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "scanflocation" :
								$('#outputScanfLine').removeAttr('contenteditable placeholder');
								var splittedText = $('#outputScanfLine').text().split(" ");
								$('#outputScanfLine').html('');
								$.each(splittedText, function(idx, val) {
									if (val != '') {
										$('#outputScanfLine').append('<span class="scanfValue'+ idx +'">' + val + '</span> ');
										$('#outputPrintfLine').append('<span class="printfValue visibility-hidden">' + val + '</span> ');
									} else {
										$('#outputScanfLine').append(' ');
									}
								});
								$('.introjs-tooltip').removeClass('hide');
								text = 'The <span class="ct-code-b-yellow">scanf()</span> function is used to'+
										' <span class="ct-code-b-yellow">read</span> the <span class="ct-code-b-yellow">data</span> '+
										'from <span class="ct-code-b-yellow">console</span>. ';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
									$('.introjs-nextbutton').show();
								});
							break;
						}
					});
					break;
				case "fprintf" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The <span class="ct-code-b-yellow">fprintf()</span> function is used to'+
								' <span class="ct-code-b-yellow">write</span> the <span class="ct-code-b-yellow">data</span> '+
								'into a <span class="ct-code-b-yellow">file</span>.<br>'+
								'The <span class="ct-code-b-yellow">fptr</span> will automatically incremented.<br>'+
								'Note: <span class="ct-code-b-yellow">\/n</span> is used for '+
								'cursor goes to next line.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "closeFile1" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The function <span class="ct-code-b-yellow">fclose(FILE *fp)</span> '+
								' is used to close the file.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "fileOpen1" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The <span class="ct-code-b-yellow">fopen()</span> is used to open a file with '+
								'<span class="ct-code-b-yellow">r</span>(read) '+
								' mode. The file <span class="ct-code-b-yellow">codetantra.txt</span> '+
								' can open only read mode but can not write.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "printLine2" :
					$("#svgDiv1").remove();
					$("#addressDiv1").removeClass("z-index1000000");
					$("#addressText").remove();
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						var animateStep = introcode._introItems[introcode._currentStep].animateStep;
						switch(animateStep) {
							case "printflocation" :
								$('.introjs-tooltip').removeClass('hide');
								text = 'The <span class="ct-code-b-yellow">printf()</span> function is used to'+
										' <span class="ct-code-b-yellow">print</span> the <span class="ct-code-b-yellow">data</span> '+
										'or user defined <span class="ct-code-b-yellow">message</span> on <span class="ct-code-b-yellow">'+
										'console</span>.';
								typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
									$('.introjs-nextbutton').show();
								});
							break;
						}
					});
				break;
				case "fscanf" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$('.introjs-tooltip').removeClass('hide');
						text = 'The <span class="ct-code-b-yellow">fscanf()</span> function is used to'+
								' <span class="ct-code-b-yellow">read</span> the <span class="ct-code-b-yellow">data</span> '+
								'from <span class="ct-code-b-yellow">file</span>.<br>'+
								'The <span class="ct-code-b-yellow">fptr</span> will automatically incremented.';
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				break;
				case "printLine3" :
					$(".arrow-up").removeClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						setTimeoutToIntroGoNextStep();
				});
				break;
				case "closeFile2" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						setTimeoutToIntroGoNextStep();		
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
	
	function pressSpacebarToNextLine(selector1, selector2) {
		$(selector1).on("keydown", function(e) {
			if (e.keyCode == 32) {
				$(selector2).focus();
				e.preventDefault();
			}
		});	
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
	
	function rotationFunction(callBackFunction) {
		$('#addressValue1').addClass("z-index1000000").effect( "highlight",{color: 'yellow'}, 800, function() {
			TweenMax.to("#addressValue1", 1, {rotationX: 90, onComplete:function() {
				$("#addressValue1").text(parseInt($("#addressValue1").text()) + 1);
				TweenMax.to("#addressValue1", 1, {rotationX: 0, onComplete:function() {
		     		$('#addressValue1').removeClass("z-index1000000");
		           	if (typeof callBackFunction === "function") {
						callBackFunction();
					}
		        }});
		      }});
		    });
	}
	
	function svgArrowRevil() {
		$(".introjs-duplicate-nextbutton").remove();
  		$("#addressValue1").text(fpAddress).addClass("opacity00");
  		 $("#arrow111").css({"opacity": "1"});
  		TweenMax.to("#line13", 1, {attr:{x2: "8.1%", y2: "61.8%" }, opacity: 1, onComplete:function() {
			$("#arrow111").css({"opacity": "0"});
			$("#arrow11").css({"opacity": "1"});
			TweenMax.to("#line12", 1, {attr:{x2: "8.3%", y2: "39.6%" }, opacity: 1, onComplete:function() {
				$("#arrow11").css({"opacity": "0"});
				$("#arrow1").css({"opacity": "1"});
				TweenMax.to("#line11", 1, {attr:{x2: "17.4%", y2: "39.8%" }, opacity: 1, onComplete:function() {
					$("#addressDiv1").addClass("z-index1000000");
					setTimeout(function() {
						$("#addressValue1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				  			$("#addressValue1").removeClass("animated zoomIn");
				  			setTimeoutToIntroGoNextStep();
				  		});
					},500);
				}});
			}});
		}});
	}
	
	function svgRevilLine() {
		$(".introjs-duplicate-nextbutton").remove();
  		$("#addressValue1").text(fpAddress).addClass("opacity00");
		TweenMax.to("#line1", 1, {attr:{x2: "5.6%", y2: "75.8%" }, opacity: 1, onComplete:function() {
			$("#arrow111").css({"opacity": "0"});
			TweenMax.to("#line2", 1, {attr:{x2: "5.8%", y2: "39.6%" }, opacity: 1, onComplete:function() {
				$("#arrow11").css({"opacity": "0"});
				TweenMax.to("#line3", 1, {attr:{x2: "17.1%", y2: "39.8%" }, opacity: 1, onComplete:function() {
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
	
	function setTimeoutToIntroGoNextStep() {
		setTimeout(function(){
			introcode.nextStep();
		},800);
	}

	function zoomInEffect(selector1, callBackFunction) {
		$(selector1).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
			$(selector1).removeClass("animated zoomIn")
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
	
	function printValue(selector1, selector2, selector3, selector4, text, value, callBackFunction) {
		if (text == "id") {
			$(selector1).text("Id = ").addClass("opacity00");
		} else if (text == "name") {
			$(selector1).text("Name = ").addClass("opacity00")
		} else {
			$(selector1).text("Salary = ").addClass("opacity00");
		}
		$(selector2).addClass("z-index1000000").effect( "highlight",{color: '#ffff33'}, 500);
		$(selector2).effect( "transfer", { to: $(selector1), className: "ui-effects-transfer" }, 1000 , function() {
			$(selector1).removeClass("opacity00");
		  	$(selector4).addClass("z-index1000000").effect( "highlight",{color: '#ffff33'}, 500);
		  	$(selector2).removeClass("z-index1000000");
		  	$(selector3).addClass("z-index1000000");
		  	setTimeout(function() {
				$(selector3).text($(selector4).text());
				fromEffectWithTweenMax(selector4, selector3,function() {
					$(selector4, selector3).removeClass("z-index1000000");
					if (value == "readValue") {
						$(".arrow-up").before("<br>");
					    $('#addressValue1').addClass("z-index1000000").effect( "highlight",{color: 'yellow'}, 800, function() {
					    	TweenMax.to("#addressValue1", 1, {rotationX: 90, onComplete:function() {
					        	$("#addressValue1").text(parseInt($("#addressValue1").text()) + 1);
								TweenMax.to("#addressValue1", 1, {rotationX: 0, onComplete:function() {
					          		$('#addressValue1').removeClass("z-index1000000");
					          		characterCount++;
					           		if (typeof callBackFunction === "function") {
										callBackFunction();
									}
					        	}});
					      	}});
					    });
				  	} else {
				  		if (typeof callBackFunction === "function") {
							callBackFunction();
						}
				  	}
			  	});
		  },800);
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
	
	//cursor position at end
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

	function printDecimalValue() {
		if ($("#employeeSalary").val().indexOf('.') != -1) {
			if ($("#employeeSalary").val().startsWith('.')) {
				floatValue = 0 + $("#employeeSalary").val();
				appendZeros("startsWithdot");
			}  else if ($("#employeeSalary").val().endsWith('.')) {
				 floatValue = $("#employeeSalary").text() + '000000';
				 $("#addressValue4").text(floatValue);
			}  else {
				appendZeros("abcd");
			 } 
		} else {
			floatValue = $("#employeeSalary").val() + '.000000';
			$("#addressValue4").text(floatValue);
		} 
	}
	
	function appendZeros(text) {
		floatValue = $("#employeeSalary").val().substr($("#employeeSalary").val().indexOf('.') + 1, $("#employeeSalary").val().length);
		if (floatValue.length < 5) {
			var str = '';
			for (var i = floatValue.length; i < 5; i++) {
				str = str + '0';
			}
			if (text == "startsWithdot") {
				floatValue =  0 + $("#employeeSalary").val() + str;
				$("#addressValue4").text(floatValue);
				valueAnimation();
			} else {
				floatValue =  $("#employeeSalary").val() + str;
				$("#addressValue4").text(floatValue);
			}
		 } else {
			floatValue =  $("#employeeSalary").val();
			$("#addressValue4").text(floatValue);
		 }
	}
	
</script>
</body> 
</html>