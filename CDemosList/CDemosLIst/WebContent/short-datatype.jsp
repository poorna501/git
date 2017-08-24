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
<title>short datatype</title>
<style>
.box-border {
	border: 1px solid grey;
	border-radius: 8px;
	margin-top : 5px;	
}
#typingbox {
	height : 40px;
	border: 1px solid black;
	font-size : 12px !important;
}
.headings {
	text-align : center;
}
.signedint-div {
	height : 260px;
}

.unsignedint-div {
	height : 235px;
}

.tableData ,.untableData {
	margin-top: 8px;
	table-layout: fixed;
	position: relative;
}
.td-border {
    border: 2px solid;
}
td {
	text-align: center;
	width: 50px !important;
	height: 20px !important;
}
.color-red {
	background-color : red;
}
.textcolor-red {
	color : red;
}
.color-black {
	background-color : black;
}
.color-yellow {
	background-color : #ffffcc; 
}
#signcell11,#signcell12,#negative {
	font-size : 15px;
	position : relative;
}
#negative, #positive {
	color: red;
}
.upindex {
	font-size : 8px !important;
}
.sint2-div {
	margin-top : 8px;
}
#arrayDiv , #unarrayDiv {
	margin-top : 3px;
}
#typing4 {
	margin-top : 1px;
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
			element : '#signedintDiv',
			intro : '',
			position : 'right',
			tooltipClass : "hide"
		},
		{
			element : '#unsignedintDiv',
			intro : '',
			position : 'right',
			tooltipClass : "hide"
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
			typingContent = '<b>short int</b> occupies 2 bytes(16 bits) of memory to the integer variable but 1 byte(8 bits) is not used and the remaining 1 byte(8 bits) are used.'
			+'<br>The qualifiers are signed short int and unsigned short int.'
			typing('#typingbox', typingContent,function() {
				$('.signedint-div').css({'opacity' : '1'});
				$(".introjs-tooltip").removeClass("hide");
				typingContent = 'Now, let us learn signed short int and unsigned short int.'; 
				typing('.introjs-tooltiptext', typingContent,function() {
					$('.introjs-nextbutton').show();
				});
			});
		break;
		case "signedintDiv":
		$('.introjs-helperLayer').one('transitionend', function() {
			$('#signedintDiv').addClass('box-border');
			$('.introjs-nextbutton').hide();
			$('.sint').css({'opacity' : '1'});
			typingContent = '<b>signed short int</b> occupies 2 bytes(16 bits) of memory to the integer variable but only 1 byte is used.';
			typing('.sint-div', typingContent,function() {
				for (i = 7; i >= 0; i--) {
					$('#tableindex').append('<td id ="index' + i + '"><span id="indexSpan' + i + '"><b>'+ i + '</b></span></td>');
				} 
				for (i = 14; i >= 1; i--) {
					$('#tableupindex').append('<td id ="upindex' + i + '" class = "upindex' + i + '"><span id="upindexSpan' + i + '" class = "opacity00"><b>'+ (i+1) + '</b></span></td>');
				}
				$('#arrayDiv').fadeTo('1000',1,function() {
					$('.cross-cell').addClass('fa fa-times').addClass('textcolor-red');
					typingContent = 'One bit is allocated for the <b>sign</b> representation, either positive(+) or negative(-).<span id = "typing3"></span>';
					typing('.sint2-div', typingContent,function() {
						$('#cell7').addClass('color-red');
						$('#signcell1').fadeTo('1000',1,function() {
							typingContent = '<br>Remaining <b>7 bits</b> are used to store binary digits of a given value.<br><span id = "typing4"></span>';
							typing('#typing3', typingContent,function() {
								setTimeout (function() {
									$('.rowcell').addClass('color-yellow');
									$('.signcell').css({'opacity' : '1'}); 
								},500);
								typingContent = 'The range of <b>short int</b> Data type is <span id = "negative" class = "opacity00"><b>-</b></span><span id = "twoDiv" class = "opacity00"><b>2</b></span><span id = "supDiv" class = "opacity00"><sup><b>7</b></sup></span><span id = "toDiv" class = "opacity00"> to </span><span id = "positive" class = "opacity00"><b>+</b></span><span id = "twodiv" class = "opacity00"><b>2</b></span><span id = "supdiv" class = "opacity00"><sup><b>7</b></sup></span><span id = "minusdiv" class = "opacity00"> <b>- 1 </b></span><span id = "typing5"></span>';
								typing('#typing4', typingContent,function() {
									var sign12offset = $('#signcell12').offset();
									$("#negative").offset({
										"top": sign12offset.top,
										"left": sign12offset.left
									});
									$('#negative').css({'opacity':'1'});
									TweenMax.to("#negative",1.5,{opacity:1, top :0, left : 0, onComplete:function() {
										$("#zerodiv").effect( "highlight",{color: 'green'}, 1000,function() {
											$("#signcell22").effect( "highlight",{color: 'green'}, 1000,function() {
												$('#twoDiv').css({'opacity':'1'});
											});
										});
										setTimeout (function() {
											res(0);
										},3000);
									}});
								});
							});
						});
			 		});		
				});
			});
		});
		break;
		case "unsignedintDiv":
		$('.introjs-helperLayer').one('transitionend', function() {
			$('#unsignedintDiv').addClass('box-border');
			$('.introjs-nextbutton').hide();
			for (i = 7; i >= 0; i--) {
				$('#tableunindex').append('<td id ="unindex' + i + '"><span id="unindexSpan ' + i + '"><b>' + i + '</b></span></td>');
			}
			for (i = 14; i >= 1; i--) {
				$('#tableunupindex').append('<td id ="upindex' + i + '" class = "upindex' + i + '"><span id="unupindexSpan' + i + '" class = "opacity00"><b>'+ (i+1) + '</b></span></td>');
			}
			$('.unsint').css({'opacity' : '1'});
			typingContent = '<b>unsigned short</b> allocates 2 bytes(8 bits) of memory to the integer variable but it uses only one byte(8 bit).';
			typing('.unsint-div', typingContent,function() {
				$('#unarrayDiv').fadeTo('1000',1,function() {
					$('.unblackcell').addClass('fa fa-times').addClass('textcolor-red');
					typingContent = 'In unsigned short, all the 8 bits are used to store the binary digits of a given value.<span id = "typing6"></span>';
					typing('.unsint2-div', typingContent,function() {
						$('.unrowcell').addClass('color-yellow');
						$('.unsigncell').css({'opacity':'1'}); 
						typingContent = '<br>The range of <b>unsigned short</b> Data type is <b>0</b> to <span id = "untwoDiv" class = "opacity00"><b>2</span><span id = "unsupDiv" class = "opacity00"><sup>8</sup></span><span id = "unminusDiv" class = "opacity00">- 1</b></span><span id = "typing7"></span>';
						typing('#typing6', typingContent,function() {
							$("#unzerodiv").effect( "highlight",{color: 'green'}, 1000,function() {
								$("#unsigncell22").effect( "highlight",{color: 'green'}, 1000,function() {
									$('#untwoDiv').css({'opacity':'1'});
								});
							});
							setTimeout (function() {
								rec(0);
							},3000);
						});
					});
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
$(document).ready(function() {
	introGuide();
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
function res(count) {
	if (count < 7) {
		$('#upindexSpan'+count).css({'opacity' : '1'});
		$('#upindexSpan'+(count-1)).css({'opacity' : '0'});
		$("#index"+count).effect( "highlight",{color: 'green'}, 500,function() {
			count++;
			res(count);
		});
	} else {
		nextfunction();
	}
}
function nextfunction() {
	var sign12offset = $('#upindexSpan6').offset();
	$("#supDiv").offset({
		"top": sign12offset.top,
		"left": sign12offset.left
	});
	$('#supDiv').css({'opacity':'1'});
	$('#upindexSpan6').css({'opacity' : '0'});
	 TweenMax.to("#supDiv",1.5,{opacity:1, top :0, left : 0, onComplete:function() {
		$('#toDiv').fadeTo(1500, 1, function() {
			var sign11offset = $('#signcell11').offset();
			$("#positive").offset({
				"top": sign11offset.top,
				"left": sign11offset.left
			});
			$('#positive').css({'opacity':'1'});
			TweenMax.to("#positive",1.5,{opacity:1, top :0, left : 0, onComplete:function() {
				$('#twodiv').css({'opacity':'1'});
				$("#supdiv").fadeTo(1000,1,function() {
					$("#minusdiv").fadeTo(1000,1,function() {
						typingContent = 'i.e.<b>- 128</b> to <b>+ 127</b>';
						typing('#typing5', typingContent,function() {
							$('.unsignedint-div').fadeTo('1000',1,function() {
								$(".introjs-tooltip").removeClass("hide");
								typingContent = 'Click on next button to see about unsigned short int.';
								typing('.introjs-tooltiptext', typingContent,function() {
									$('.introjs-nextbutton').show();
								});
							});
						});
					});
				});
			}});	
		});
	}});
}
function rec(count1) {
	if (count1 < 8) {
		$('#unupindexSpan'+count1).css({'opacity' : '1'});
		$('#unupindexSpan'+(count1-1)).css({'opacity' : '0'});
		$("#unindex"+count1).effect( "highlight",{color: 'green'}, 500,function() {
			count1++;
			rec(count1);
		});
	} else {
		nextfunction1();
	}
}
function nextfunction1() {
	var sign1offset = $('#unupindexSpan7').offset();
	$("#unsupDiv").offset({
		"top": sign1offset.top,
		"left": sign1offset.left
	});
	$('#unsupDiv').css({'opacity':'1'});
	$('#unupindexSpan7').css({'opacity' : '0'});
	TweenMax.to("#unsupDiv",1.5,{opacity:1, top :0, left : 0, onComplete:function() {
		$("#unminusDiv").fadeTo(1000,1,function() {
			typingContent = ' i.e.<b>0</b> to <b>255</b>';
			typing('#typing7', typingContent,function() {
				$('#unminusDiv').fadeTo('1000',1,function() {
					$(".introjs-tooltip").removeClass("hide");
					typingContent = 'Click on next button to restart.';
					typing('.introjs-tooltiptext', typingContent,function() {
						$('.introjs-nextbutton').show();
					});
				});
			});
		});
	}});
}

</script>
<div class='ct-box-main'>
	<div class='text-center'>
		<h1 class='label ct-demo-heading'>short Data type</h1>
	</div>
	<div class = 'buttons-div'>
		<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
	</div> 
	<div class = 'col-xs-offset-2 col-xs-8' id = 'typingbox'></div>
	<div class = "col-xs-offset-2 col-xs-8 signedint-div opacity00" id = 'signedintDiv'>
		<h4 class="opacity00 headings sint">
			<span class="label label-default">1. signed short int</span>
		</h4>
		<span class="sint-div"></span>
		<div id="arrayDiv" class='array-div-css opacity00'>
			<table id='tableDiv' class="tableData" align="center">
				<tr id = 'tableupindex'>
					<td id ="upindex16" class = 'upindex'><span id ="upindexSpan16"></span></td>
					<td id ="upindex15" class = 'upindex'><span id="upindexSpan15" class = "opacity00"><b>16</b></span></td>
				</tr>
				<tr id = 'tableindex'>
					<td id ="index16"><span id="indexSpan16"><b>Bits</b></span></td>
					<td id ="index15" colspan = '8'><span id="indexSpan15"><b>     8 to 15 bits   </b></span></td>
				</tr>
				<tr id = 'tablecell'>
					<td id="cell16">16</td>
					<td class="td-border" id="cell15" colspan = '8'><span class  = "cross-cell"></span></td>
					<td class="td-border" id="cell7"></td> 
					<td class="td-border rowcell" id="cell6"></td>
					<td class="td-border rowcell" id="cell5"></td>
					<td class="td-border rowcell" id="cell4"></td>
					<td class="td-border rowcell" id="cell3"></td>
					<td class="td-border rowcell" id="cell2"></td>
					<td class="td-border rowcell" id="cell1"></td>
					<td class="td-border rowcell" id="cell0"></td>
				</tr>
				<tr>
					<td class = "opacity00 " id ="signcell0"><br><span id="signcell01"></span>  <span id="signcell02">  </b></span></td>
					<td class = "opacity00" id ="signcell9"><br><span id="signcell91" ></span><br><span id="signcell92"></span></td>
					<td class = "opacity00" id ="signcell10"><br><span id="signcell101" ></span>   <br><span id="signcell102"></span></td>
					<td class = "opacity00" id ="signedcell11"><br><span id="signcell111" ></span>  <br><span id="signcell112"></span></td>
					<td class = "opacity00" id ="signedcell12"><br><span id="signcell121" ></span>  <br><span id="signcell122"></span></td>
					<td class = "opacity00" id ="signcell13"><br><span id="signcell131" ></span>  <br><span id="signcell132"></span></td>
					<td class = "opacity00" id ="signcell14"><br><span id="signcell141" ></span> <br><span id="signcell142"></span></td>
					<td class = "opacity00" id ="signcell15"><br><span id="signcell151" ></span>  <br><span id="signcell152"></span></td>
					<td class = "opacity00" id ="signcell16"><br><span id="signcell161" ></span>  <br><span id="signcell162"></span></td>
					<td class = "opacity00" id ="signcell1">Signed bit<br><span id="signcell11"><b>+</b></span>  or  <span id="signcell12"><b>-</b></b></span></td>
					<td class = "opacity00 signcell" id ="signcell2"><span id = "zerodiv">0</span><br><span id="signcell21" ></span>  or  <br><span id="signcell22">1</span></td>
					<td class = "opacity00 signcell" id ="signcell3">0<br><span id="signcell31" ></span>  or  <br><span id="signcell32">1</span></td>
					<td class = "opacity00 signcell" id ="signcell4">0<br><span id="signcell41" ></span>  or  <br><span id="signcell42">1</span></td>
					<td class = "opacity00 signcell" id ="signcell5">0<br><span id="signcell51" ></span>  or  <br><span id="signcell52">1</span></td>
					<td class = "opacity00 signcell" id ="signcell6">0<br><span id="signcell61" ></span>  or  <br><span id="signcell62">1</span></td>
					<td class = "opacity00 signcell" id ="signcell7">0<br><span id="signcell71" ></span>  or  <br><span id="signcell72">1</span></td>
					<td class = "opacity00 signcell" id ="signcell8">0<br><span id="signcell81" ></span>  or  <br><span id="signcell82">1</span></td>
					
					
				</tr>
			</table>
		</div>
		<div class="sint2-div"></div>
	</div>
	<div class = "col-xs-offset-2 col-xs-8 unsignedint-div opacity00" id = 'unsignedintDiv'>
		<h4 class="opacity00 headings unsint">
			<span class="label label-default">2. unsigned short int</span>
		</h4>
		<span class="unsint-div"></span>
		<div id="unarrayDiv" class='array-div-css opacity00'>
			<table id='untableDiv' class="tableData" align="center">
				<tr id = 'tableunupindex'>
					<td id ="upindex16"><span id ="upindexSpan16"></span></td>
					<td id ="upindex15" class = 'upindex'><span id="unupindexSpan15" class = "opacity00"><b>16</b></span></td>
				</tr>
				<tr id = 'tableunindex'>
					<td id ="unindex16"><span id="unindexSpan16"><b>Bits</b></span></td>
					<td id ="unindex15" colspan = '8'><span id="unindexSpan15"><b>    8 to 15 bits      </b></span></td>
				</tr>
				<tr>
					<td id="cell16">16</td>
					<td class="td-border" id="uncell15" colspan = '8'><span class  = "unblackcell"></span></td>
					<td class="td-border unrowcell" id="uncell7"></td>
					<td class="td-border unrowcell" id="uncell6"></td>
					<td class="td-border unrowcell" id="uncell5"></td>
					<td class="td-border unrowcell" id="uncell4"></td>
					<td class="td-border unrowcell" id="uncell3"></td>
					<td class="td-border unrowcell" id="uncell2"></td>
					<td class="td-border unrowcell" id="uncell1"></td>
					<td class="td-border unrowcell" id="uncell0"></td>
				</tr>
				<tr>
					<td class = "opacity00 " id ="unsigncell0"><br><span id="unsigncell01"></span>  <span id="unsigncell02">  </b></span></td>
					<td class = "opacity00 " id ="unsigncell9"><br><span id="unsigncell91" ></span>  <br><span id="unsigncell92"></span></td>
					<td class = "opacity00 " id ="unsigncell10"><br><span id="unsigncell101" ></span>  <br><span id="unsigncell102"></span></td>
					<td class = "opacity00 " id ="unsignedcell11"><br><span id="unsigncell111" ></span>  <br><span id="unsigncell112"></span></td>
					<td class = "opacity00 " id ="unsignedcell12"><br><span id="unsigncell121" ></span>  <br><span id="unsigncell122"></span></td>
					<td class = "opacity00 " id ="unsigncell13"><br><span id="unsigncell131" ></span>    <br><span id="unsigncell132"></span></td>
					<td class = "opacity00 " id ="unsigncell14"><br><span id="unsigncell141" ></span>    <br><span id="unsigncell142"></span></td>
					<td class = "opacity00 " id ="unsigncell15"><br><span id="unsigncell151" ></span>   <br><span id="unsigncell152"></span></td>
					<td class = "opacity00 " id ="unsigncell16"><br><span id="unsigncell161" ></span>   <br><span id="unsigncell162"></span></td>
					<td class = "opacity00 unsigncell" id ="unsigncell1">0<br><span id="unsigncell11" ></span>  or  <br><span id="unsigncell12">1</span></td>
					<td class = "opacity00 unsigncell" id ="unsigncell2"><span id = "unzerodiv">0</span><br><span id="unsigncell21" ></span>  or  <br><span id="unsigncell22">1</span></td>
					<td class = "opacity00 unsigncell" id ="unsigncell3">0<br><span id="unsigncell31" ></span>  or  <br><span id="unsigncell32">1</span></td>
					<td class = "opacity00 unsigncell" id ="unsigncell4">0<br><span id="unsigncell41" ></span>  or  <br><span id="unsigncell42">1</span></td>
					<td class = "opacity00 unsigncell" id ="unsigncell5">0<br><span id="unsigncell51" ></span>  or  <br><span id="unsigncell52">1</span></td>
					<td class = "opacity00 unsigncell" id ="unsigncell6">0<br><span id="unsigncell61" ></span>  or  <br><span id="unsigncell62">1</span></td>
					<td class = "opacity00 unsigncell" id ="unsigncell7">0<br><span id="unsigncell71" ></span>  or  <br><span id="unsigncell72">1</span></td>
					<td class = "opacity00 unsigncell" id ="unsigncell8">0<br><span id="unsigncell81" ></span> or <br><span id="unsigncell82">1</span></td>
				</tr>
			</table>
		</div>
		<div class="unsint2-div"></div>
	</div>
</div>
</body>
</html>