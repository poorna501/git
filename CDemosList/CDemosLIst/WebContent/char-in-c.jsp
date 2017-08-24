<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>char datatype</title>
<style>
.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: rgb(252, 66, 66);
}

#typingbox {
	padding-top : 5px!important;
	height : 200px;
}
#animationDiv {
	height : 300px;
}
#firstNum {
 outline : medium none;
 padding : 3px;
}

#mainDiv {
	height : 510px;
}
.margin-top20 {
	margin-top: 20px;
}
.margin-top60 {
	margin-top: 60px;
}
#asciiarrayDiv {
	margin-top : 10px;
}
#asciivalue {
	color : black;
}
.td-border {
    border: 2px solid black !important;
}
.goBtn {
  height : 6px !important;
}
tdd {
	position:relative;
	text-align: center;
	width: 65px !important;
	height: 35px !important;
}
td {
	position:relative;
	text-align: center;
	width: 50px !important;
	height: 20px !important;
	color: blue;
}
#char1,#value1 {
	color : black;
}

.svg-css {
	top: 0;
	left: 0;
	position: relative;
	height: 32px !important;
	width: 100%;
}
#td0,#td1,#td2,#td3,#td4,#td5,#td6,#td7 {
	position:relative;
}

#binaryValueDiv {
	height : 30px;
}
#arrayDiv {
	height : 80px;
}
#heading {
	color : grey;
}
#commaDiv {
	height : 25px !important;
	width : 30px !important;
	text-align : center;
	background-color : pink;
	border : 1px solid black;
	font-family : monospace;
}
#codeDiv ,#binaryNum {
	height : 25px;
	width : 40px;
	background-color: #D9FFCC;
	color:blue;
}
#asciiname,#binaryname {
	color : red;
	margin-left:20px !important;
}
#inputDiv {
	font-size : 16px !important;
}

.arrow-name {
	color : blue;
}
.box-border {
	border : 1px solid;
}

.line {
    marker-end: url("#arrow");
    stroke: gray;
    stroke-width: 2;
}

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}
.padding0 {
	padding : 0;
}
</style>
</head>
<body>
<script>
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
			element : '#inputmainDiv',
			intro : '',
			position : 'right',
			tooltipClass : "hide"
		},
		{
			element : '#asciiDiv',
			intro :'',
			position : 'right',
			
		},
		{
			element : '#binaryValueDiv',
			intro : '',
			position : 'right'
		},
		{
			element : '#arrayDiv',
			intro : '',
			position : 'right'
		},
		{
			element : "#restartBtn",
			intro : "Click to Restart",
			tooltipClass: "introjs-tooltip-min-width-custom",
			position : "right"
		}
		]
	});
	introcode.onbeforechange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) 
		{
		case "typingbox":
			$('.introjs-nextbutton').hide();
			typingContent = '<ul><li><b>char data type</b> is used to store a single character at a time.</li><li>It allocates only <b>1 byte(8 bits)</b> of memory to the character variable.</li></ul><span id = "typing6"></span>'; 
			typing('#typing5', typingContent,function() { 
				typingContent = '<ul><li>Each character in the system has its own <b>ASCII</b> value.</li><li>Total 256 characters are there in the system.</li><li>The ASCII values are in the range from <b>0</b> to <b>255</b>.</li><li>Some of the ASCII values for the character are </li></ul>'; 
				typing('#typing6', typingContent,function() { 
					$('#asciiarrayDiv').fadeTo(1000, 1, function() {
						setTimeout (function() {
							$('.introjs-tooltip').removeClass("hide");
							typingContent = 'Now, let us see an example of a char data type.'; 
							typing('.introjs-tooltiptext', typingContent,function() {
								$('.introjs-nextbutton').show();
							});
						},1000);
					});
			 	}); 
			});
		break;
		case "inputmainDiv":
			$('.introjs-nextbutton').hide(); 
			$('.introjs-helperLayer').one('transitionend', function() {
				$('#inputDiv').fadeTo(1000, 1, function() {
					$('#arrow1').css({'opacity':'1'});
					TweenMax.to("#arrow1", 1, {attr:{y2 :'96%', x2:'11%'},onComplete:function() {
						$('#arrowname1').fadeTo(1000, 1, function() {
							$('#arrow2').css({'opacity':'1'});
							TweenMax.to("#arrow2", 1, {attr:{y2 :'96%', x2:'38%'},onComplete:function() {
								$('#arrowname2').fadeTo(1000, 1, function() {
									$('#arrow3').css({'opacity':'1'});
									TweenMax.to("#arrow3", 1, {attr:{y2 :'96%', x2:'70%'},onComplete:function() {
										$('#arrowname3').fadeTo(1000, 1, function() {
											$('.introjs-tooltip').removeClass("hide");
											typingContent = 'Enter a char(which takes only one character at a time) to know its <b>ACSII</b> value and click on <b>go</b> button.'; 
											typing('.introjs-tooltiptext', typingContent,function() {
												$("#firstNum").attr("contenteditable", true);
												charAtEnd(document.getElementById("firstNum"));
											});
										});
									}});
								});
							}});
						});
					}});	
				});
			});
		break;
		case "asciiDiv":
			$('.introjs-helperLayer').one('transitionend', function() {
				$("#firstNum").attr("contenteditable", false);
			    $('#goBtn').addClass('disabled');
			    var value = $('#firstNum').text();
			    var codeA = value.charCodeAt();
				$('#asciiDiv').fadeTo(1000, 1, function() {
			    	typingContent = '<b>ACSII</b><span id = "asciivalue"> value for <b></span>' +$('#firstNum').text()+ '<span id = "asciivalue"></b> = </span><span id = "codeDiv">'+codeA + '</span>' 
					typing('#asciiname', typingContent,function() {
						$('.introjs-tooltip').removeClass("hide");
					    typingContent = 'The ASCII value for the entered character is given.' 
						typing('.introjs-tooltiptext', typingContent,function() {
							$('.introjs-nextbutton').show();	
						});
					});
				});
			});
			break;
		case "binaryValueDiv" :
			$('.introjs-nextbutton').hide();
		 	setTimeout(function() {
		   		typingContent = '<b>Binary</b> value for the ASCII code.'; 
				typing('.introjs-tooltiptext', typingContent,function() {
					numberlength(); 
					var p = (num1.length)-1;
					for(var i=0; i < num1.length; i++) {
						$('#binaryNum').append("<span id = binaryvalue"+ p+">"+num1[i]+"</span>");
						p--;
					}
					$('#binaryValueDiv').css({'opacity':'1'});
					$('.introjs-nextbutton').show();	
		    	});
		},1000);
		break;
		case "arrayDiv":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
				typingContent = 'Binary value is stored at the memory allocated for the variable ch.'; 
				typing('.introjs-tooltiptext', typingContent,function() {
					var q = (num1.length)-1;
					for(var i=0; i < num1.length ; i++) {
						$('#td'+q).append(num1[i]);
						q--;
					}
					$('#arrayDiv').css({'opacity':'1'});
					setTimeout (function() {
						for(var i=0; i < num1.length ; i++) {
							var tdoffset = $('#binaryvalue'+i).offset();
							$("#td"+i).offset ({
								"top": tdoffset.top,
								"left": tdoffset.left
							}); 
							$('#td'+i).css({'opacity':'1'});
							TweenMax.to("#td"+i,1.5,{opacity:1, top :0, left : 0, onComplete:function() {
								$(".introjs-tooltip").removeClass("hide");
								typingContent = 'Click on next button to restart.';
								typing('.introjs-tooltiptext', typingContent,function() {
									$('.introjs-nextbutton').show();
								});
							}});
						}
					},1000);
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
$(document).ready(function() {
	var num1;
	introGuide();
	$('#firstNum').val(""); 
	$(".entered-element").keydown(function(e) { 
		var max = $(this).attr("maxlength");
		if ($(this).text().length > max - 1) {
			if(e.which == 8 || e.which == 46){
	   			return true;	
			}
			e.preventDefault();
	 	}
	});
	$("#firstNum").keyup(function() {
  		introcode.refresh();
  	    $(".tooltip-text-edit").text($("#firstNum").text());
  	    if($("#firstNum").text().length == 0) {
	       	$("#goBtn").addClass("disabled");
	       	$(".introjs-nextbutton").hide();
	       	$('.error-text').empty();
	       	$('.length-error-text').empty();
	       	$(".introjs-tooltiptext").append("<span class='error-text ct-code-b-red'><br/>Please enter a character.</span>")
  	    } else if($("#firstNum").text().length < 1 && ($("#firstNum").text().length > 0) ) {
  	    	console.log('entered first number');
        	$("#goBtn").removeClass("disabled");
        	$('.error-text').empty();
        	$('.length-error-text').empty();
  	    } else {
        	$("#goBtn").removeClass("disabled");
        	$('.error-text').empty();
        	$('.length-error-text').empty();
  	    }
    });
	$("#goBtn").click(function() {
	    if ($(this).hasClass("disabled")) {
			return;
		}
	    else {
	    	introcode.nextStep(); 
	    }
	});
});
function typing(typingId, typingContent, callbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval":10,
		"cursor_color": "blue"
	}, function() {
		$(typingId).removeClass('typingCursor');
		callbackFunction();
	});
}
function charAtEnd(element) {
	element.focus();
	if (typeof window.getSelection != "undefined"&& typeof document.createRange != "undefined") {
	    var range = document.createRange();
	    range.selectNodeContents(element);
	    range.collapse(false);
	    var sel = window.getSelection();
	    sel.removeAllRanges();
	    sel.addRange(range);
	}    	   
}
function numberlength() {
	var value = $('#firstNum').text();
    var codeA = value.charCodeAt();
	num1=parseInt(codeA, 10).toString(2);
	for(var i=num1.length; i < 8; i++) {
		num1 = 0 + num1;
	}
}

</script>
<div class='ct-box-main'>
	<div class='text-center'>
		<h1 class='label ct-demo-heading'>char data type</h1>
	</div>
	<div class = 'buttons-div'>
		<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
	</div> 
	<div class = "main-div col-xs-offset-1 col-xs-10 " id = 'mainDiv' >
		<div class = 'typing-box col-xs-offset-3 col-xs-6 ' id = 'typingbox'>
			<span id = 'typing5' class = 'col-xs-12'></span>
			
			<div id="asciiarrayDiv" class="col-xs-offset-1 col-xs-12 ascii-array-div opacity00">
					<table>
						<tr>
							<td class="td-border tdd " id="char1"><b>character</b></td>
							<td class="td-border tdd " id="char2">Null</td>
							<td class="td-border tdd " id="char3">space</td>
							<td class="td-border tdd " id="char4">'0' to '9'</td>
							<td class="td-border tdd " id="char5">'A' to 'Z'</td>
							<td class="td-border tdd " id="char6">'a' to 'z'</td>
						</tr>
						<tr>
							<td class="td-border tdd " id="value1"><b>ASCII value</b></td>
							<td class="td-border tdd " id="value2">0</td>
							<td class="td-border tdd " id="value3">32</td>
							<td class="td-border tdd " id="value4">48-57</td>
							<td class="td-border tdd " id="value5">65-90</td>
							<td class="td-border tdd " id="value6">97-122</td>
						</tr>
					</table>
				</div>
		</div>
		<div class = 'animation-div col-xs-offset-3 col-xs-6 ' id = 'animationDiv'>
			<div class="input-main-div col-xs-12 introjs-showElement padding0" id="inputmainDiv">
				<div class="col-xs-offset-2 col-xs-6 padding0">
					<div id="inputDiv" class="col-xs-12 opacity00 padding0 text-center">
						<span class="col-xs-3 padding0">char</span>
						<span class="col-xs-3 padding0">ch</span>
						<span class="col-xs-1 padding0"> =</span>
						<span class="col-xs-3 padding0"> 
						 <span id="commaDiv">'<span spellcheck="false" id="firstNum" class="inputbox first-Num entered-element" maxlength="1"
								contenteditable="true"></span>'</span>
						</span>
						<button type="button" class="btn btn-success btn-sm go-button col-xs-2 padding0" id="goBtn">Go</button>
					</div>
					
					<svg id="arrowsvg" class='col-xs-12 svg-css padding0'>
						<marker id="arrow" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;"> 
						<path class="arrow"	d="M0,0 L5,2.5 L0,5 Z"> </path></marker> 
						<line id="arrow1" class="line opacity00" x1="11%" y1="1%" x2="11%" y2="1%"></line> 
						<line id="arrow2" class="line opacity00" x1="38%" y1="1%" x2="38%" y2="1%"></line>
						<line id="arrow3" class="line opacity00" x2="70%" y2="1%" x1="70%" y1="3%"></line>
					</svg>
					
					<div id="arrowname"	class="col-xs-12 padding0 arrow-name text-center">
						<span id="arrowname1" class="opacity00 col-xs-3 padding0">data type</span> 
						<span id="arrowname2" class="opacity00 col-xs-3 padding0">variable</span>
						<span id="arrowname3" class="opacity00 col-xs-offset-1 col-xs-3 padding0">value</span>
					</div>
				</div>
			</div>
			<div class="col-xs-offset-2 col-xs-7 ascii-div margin-top20 opacity00" id="asciiDiv">
					<span id = 'asciiname'></span>
			</div>	

			<div class="col-xs-offset-2 col-xs-6 binary-value-div margin-top20 opacity00" id="binaryValueDiv">
					<span id = 'binaryname'><b>Binary</b></span> value =  <span id="binaryNum" class="binary-num"></span>
			</div>

			<div class= 'row'>
				<div id="arrayDiv" class="col-xs-offset-2 col-xs-8  array-div opacity00">
					<table>
						<tr>
							<td id="cell9"> </td>
							<td id="cell8">7</td>
							<td id="cell7">6</td>
							<td id="cell6">5</td>
							<td id="cell5">4</td>
							<td id="cell4">3</td>
							<td id="cell3">2</td>
							<td id="cell2">1</td>
							<td id="cell1">0</td>
						</tr>
						<tr id = 'tableindex'>
							<td id="td9">ch<span class="fa fa-arrow-right" aria-hidden="true"></td>
							<td class="td-border opacity00" id="td7"></td>
							<td class="td-border opacity00" id="td6"></td>
							<td class="td-border opacity00" id="td5"></td>
							<td class="td-border opacity00" id="td4"></td>
							<td class="td-border opacity00" id="td3"></td>
							<td class="td-border opacity00" id="td2"></td>
							<td class="td-border opacity00" id="td1"></td>
							<td class="td-border opacity00" id="td0"></td>
						</tr>
					</table>
				</div>
			</div>
		</div> 
	</div>	
</div>
</body>
</html>