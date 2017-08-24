<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<script src="/js/jquery-latest.js"></script>
	<script src="/js/bootstrap.js"></script>
	<link rel="stylesheet" href="/css/introjs.css">
	<link rel="stylesheet" href="/css/introjs-ct.css">
	<link rel="stylesheet" href="/css/animate.css"/>
	<link rel="stylesheet" href="/css/jquery-ui.css"/>
	<script src="/js/gs/TweenMax.min.js"></script>
	<script src='/js/intro.js'></script>
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<script src="/js/typewriting.min.js"></script>
	<script src="/js/jquery-ui-latest.js"></script>
	<title>explicit type convertion</title>
</head>
<style>

#totaldiv {
	margin-top: 10px;
	margin-top: 25px;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0.0;
	border-radius: 10px;
	font-size: 20px;
	position: relative;
	z-index: 9999999;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
	
}

#informationdiv {
	background-color: rgb(243, 235, 235);
    border-radius: 3px;
    box-shadow: 0 0 0 rgba(0, 0, 0, 0.3);
    height: 45px;
    margin-top: 20px;
    
}

#calculationtable {
	border: 1px solid black;
	background-color: #ffffdc;
	border-radius: 10px;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
}

#calculationtable1 {
	border: 1px solid black;
	background-color: #ffffdc;
	border-radius: 10px;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
}

#intaEdit {
	background-color: ;
	width: 60px !important;
	border: 1px solid black;
	display: inline-block;
	border-radius: 4px;
	text-align: center;
	height: 25px;
}

#intbEdit {
	background-color: ;
	width: 60px !important;
	border: 1px solid black;
	display: inline-block;
	text-align: center;
	border-radius: 4px;
	margin-top: 5px;
	height: 25px;
}

.display-inlineblock {
	 display: inline-block; 
}

.color-darkgreen {
	color: #556b2f;
}

.color-rose {
	color: #8b008b;
}

.color-green {
	color: green;
}

.color-red {
	color: red;
}

.color-yellow {
	color: yellow;
}

.vertical-line {
	border: 1px solid grey;
    height: 338px;
    margin-left: 422px;
    width: 0;
}

.box {
	border: 1px solid black;
	height: 25px;
	width: 50px;
	background-color: white;
	display: inline-block;
}

#resultDiv > .col-sm-3 > table {
    margin: 0 auto !important;
}

.text-center {
    text-align: center;
}

#openParenthesis {
	width: 11px !important;
}
#divide {
	width: 214px !important;

}
#product {
	width: 148px !important;
	
}

#integervalueget {
	width: 148px !important;
}

.color-green {
	color: green;
}
</style>

<script>
$(document).ready(function() {
	t1 = new TimelineLite();
	$('#restartBtn').click(function() {
		location.reload();
		});
	
	intro = introJs();
	$("body").keypress(function(e) {
		 if (e.which === 13) {
			 e.preventDefault();
			}
		});
	
	 $(".element").keyup(function() {
		console.log("keypressed.....");
		if(($('#intaEdit').val().length <= 0) || ($('#intbEdit').val().length <= 0)) {
			$(".introjs-nextbutton").hide();
		} else {
			console.log("Iam in if  else ....");
		  $(".introjs-nextbutton").show()
			}
	}); 
	
	
	intro.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		
		steps :	[{
					element :'#informationdiv',
					intro :'',
					position:"bottom"
				},{
					element :'#enterAandBvalues',
					intro :'',
					position:"right"
				},{
					element :'#xstoresinFloat',
					intro :'',
					position:"right"  
				},{
					element :'#fliptoValues',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#divisionscalculate',
					intro :'',
					position:"bottom" 
				},{
					element :'#quotientResult',
					intro :'',
					position:"bottom"  
				},{
					element :'#quotientResult1',
					intro :'',
					position:"bottom" 
				},{
					element :'#text',
					intro :'',
					position:"bottom" 
				},{
					element :'#xstoresinFloat1',
					intro :'',
					position:"right"  
				},{
					element :'#fliptoValues1',
					intro :'',
					tooltipClass: "hide",
					position:"bottom"
				},{
					element :'#quotientResult2',
					intro :'',
					position:"bottom"
				},{
					element :'#quotientResult2',
					intro :'',
					position:"bottom"
				},{
					element :'#resultdiv1',
					intro :'',
					position:"bottom"
				},{
					element :'#quotientResult3',
					intro :'',
					position:"bottom"  
				},{
					element :'#restartBtn',
					intro :'',
					position:"bottom"
				}]
			});
	
	intro.onafterchange(function(targetElement) { 
	var elementId = targetElement.id;
	switch (elementId) {
	case "enterAandBvalues":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			$("#calculationtable").removeClass("visibility-hidden");
			typing('.introjs-tooltiptext', "Enter any integer values.<br>"+
					"<span class='color-yellow'>Note:</span>Enter a value of maximum length 3.", function() {
				$("#enterAandBvalues").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				});
			});
		});
	break;
	case "xstoresinFloat":
		var divide = $("#intaEdit").val();
		var floatofint = $("#intbEdit").val();
		var output =  (divide/floatofint).toString();
		var result1 = Math.floor(output);
		$("#quotient").append(result1);
		$("#a-append").append($("#intaEdit").val());
		$("#b-append").append($("#intbEdit").val());
		$("#integervalueget").append($("#intaEdit").val());
		$("#floatget").append($("#intbEdit").val());
		$('#firstValue').append($("#floatget").text());
		$('#secondValue').append($("#quotient").text());
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			typing('.introjs-tooltiptext', "consider an expression.", function() {
				$("#xstoresinFloat").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
					$('.introjs-nextbutton').show();
					});
				});
			});
	break;
	case "fliptoValues":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			$("#fliptoValues").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				t1.to("#valueaFlip", 1, {opacity:1, rotationX: -90, onComplete: function() {
		    		$("#valueaFlip").text($("#intaEdit").val());
		    		intro.refresh();
					}});
					t1.to("#valueaFlip", 1, {opacity:1, rotationX: 0, onComplete: function() {
						}});
						$("#intaEdit").effect('highlight',  {color: "#C8FE2E"}, 3000);
						t1.to("#valuebFlip", 1, {opacity:1, rotationX: -90, onComplete: function() {
							$("#valuebFlip").text($("#intbEdit").val());
							intro.refresh();
							}}); 
							$("#intbEdit").effect('highlight',  {color: "#C8FE2E"}, 3000);
							t1.to("#valuebFlip", 1, {opacity:1, rotationX: 0, onComplete: function() {
								intro.nextStep();
					}});
				});
			});
	break;
	case "divisionscalculate":
		var b = $("#intbEdit").val();
		var quotient = $("#quotient").text();
		var multiplyresult = b*quotient; 
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			$("#diviser").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
				$("#openParenthesis").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
					$("#integervalueget").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						$("#closeParenthesis").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
							$("#quotient").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						 		var l = $("#floatget").offset();
			 					$("#firstValue").offset({"top": l.top,"left": l.left});
			 					TweenMax.to("#firstValue", 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
								$("#firstValue").removeClass("opacity00");
								TweenMax.to("#mulOperator", 1 , {opacity:1, onComplete: function() {
									$("#mulOperator").removeClass("opacity00");
										var l = $("#quotient").offset();
										$("#secondValue").offset({"top": l.top,"left": l.left});
										TweenMax.to("#secondValue", 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
											$("#secondValue").removeClass("opacity00");
											t1.to("#multiple", 0.8, {opacity:1, rotationX: -90, onComplete: function() {
												$("#multiple").text(multiplyresult);
												t1.to("#multiple", 0.5, {opacity:1, rotationX: 0, onComplete: function() {
													}}); 
													}});
													$("#remainderval").removeClass("visibility-hidden");
													var integerget = $("#integervalueget").text();
										 			var multiply   = $("#multiple").text();
										 			var remainder  = integerget - multiplyresult;
													t1.to("#remainderval", 1, {opacity:1, rotationX: -90, onComplete: function() {
														$("#remainderval").text(remainder);
														t1.to("#remainderval", 1.3, {opacity:1, rotationX: 0, onComplete: function() {
															$('.introjs-nextbutton').show();
															}}); 
															}});  
															typing('.introjs-tooltiptext', "Evaluation process.", function() {
															});		
														}});
													}});
		 			                     	 	}});		
											});
										});
									});
								});
							});
						});
	break;
	case "quotientResult":
		var divide = $("#intaEdit").val();
 		var floatofint = $("#intbEdit").val();
		var output =  (divide/floatofint).toString();
		var result1 = Math.floor(output);
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			$("#resultquotient").removeClass("opacity00")
			$("#fliptoValues").effect('highlight',  {color: "#C8FE2E"}, 3000);
			$("#result").text(result1);
			var l = $("#quotient").offset();
			$("#result").offset({"top": l.top,"left": l.left});
			intro.refresh();
			TweenMax.to("#result", 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
				$("#result").removeClass("opacity00");
				typing('.introjs-tooltiptext', "<ul><li>Any operation on two integers always returns integer.</li><li>Now int value cannot be assigned to float variable so convert int into float.</li></ul>", function() {
					$("#result1").append(result1);
					$('.introjs-nextbutton').show();
					});
    		 	}});
			});
	break;
	case "quotientResult1":
		var divide = $("#intaEdit").val();
 		var floatofint = $("#intbEdit").val();
		var output =  (divide/floatofint).toString();
		var result1 = Math.floor(output);
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			t1.to("#result1", 1, {opacity:1, rotationX: -90, onComplete: function() {
			    $("#result1").append(".000000");
				intro.refresh();
				}}); 
				t1.to("#result1", 1, {opacity:1, rotationX: 0, onComplete: function() {
					}});
					$("#quotientResult1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
						typing('.introjs-tooltiptext', "which is not an exact result so we need to type cast.", function() {
						$('.introjs-nextbutton').show();
					});
				});
			});
	break;
	case "text":
		$("#integervalueget1").append($("#intaEdit").val()).append(".0");
		$("#floatget1").append($("#intbEdit").val()).append(".0");
		var divide = $("#floatget1").text();
		var floatofint = $("#integervalueget1").text();
		var result =  (floatofint/divide).toString().substring(0, 8);
		$('#quotient1').append(result);
		$('#firstValue1').append($("#floatget1").text());
		$('#secondValue1').append($("#quotient1").text());
		$('#remainderval1').append('0');
		$("#valuebFlip2").append($("#intbEdit").val());
		$("#valueaFlip2").append($("#intaEdit").val());
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			typing('.introjs-tooltiptext', " type casting.", function() {
				$("#text").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
					$('.introjs-nextbutton').show();
					});
				});
			});
   break;
   case "xstoresinFloat1":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			typing('.introjs-tooltiptext', "this is type cast operator.", function() {
				$("#xstoresinFloat").effect('highlight',  {color: "#C8FE2E"}, 3000);
				var l = $("#xstoresinFloat").offset();
				$("#xstoresinFloat1").offset({"top": l.top,"left": l.left});
				TweenMax.to("#xstoresinFloat1", 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
					$("#xstoresinFloat1").removeClass("opacity00");
					$('.introjs-nextbutton').show();
					$("#floatOf").removeClass("opacity00");	
				 	}});
				});
			});
	break;
	case "fliptoValues1":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			typing('.introjs-tooltiptext', "", function() {
				$("#fliptoValues1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
					t1.to("#valueaFlip1", 1, {opacity:1, rotationX: -90, onComplete: function() {
		    			$("#valueaFlip1").text($("#intaEdit").val());
						intro.refresh();
						}}); 
						t1.to("#valueaFlip1", 1, {opacity:1, rotationX: 0, onComplete: function() {
							}});
				 			$("#intaEdit").effect('highlight',  {color: "#C8FE2E"}, 3000);
				 			t1.to("#valuebFlip1", 1, {opacity:1, rotationX: -90, onComplete: function() {
						    	$("#valuebFlip1").text($("#intbEdit").val());
								intro.refresh();
								}}); 
								t1.to("#valuebFlip1", 1, {opacity:1, rotationX: 0, onComplete: function() {
									intro.nextStep();
									}});
								});
							});
						});
					break;
					case "resultdiv1":
						$('.introjs-nextbutton').hide();
						$(".introjs-helperLayer").one("transitionend", function() {
							$("#diviser1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
								$("#openParenthesis1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
									$("#integervalueget1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
										$("#closeParenthesis1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
											$("#quotient1").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
													var l = $("#floatget1").offset();
													$("#firstValue1").offset({"top": l.top,"left": l.left});
													TweenMax.to("#firstValue1", 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
														$("#firstValue1").removeClass("opacity00");
														TweenMax.to("#mulOperator1", 1 , {opacity:1, onComplete: function() {
															$("#mulOperator1").removeClass("opacity00");	
															var l = $("#quotient1").offset();
															$("#secondValue1").offset({"top": l.top,"left": l.left});
															TweenMax.to("#secondValue1", 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
																$("#secondValue1").removeClass("opacity00");
																t1.to("#multiple1", 1, {opacity:1, rotationX: -90, onComplete: function() {
																	$("#multiple1").text($('#integervalueget1').text());
																	t1.to("#multiple1", 0.8, {opacity:1, rotationX: 0, onComplete: function() {
																		$("#remainderval1").removeClass("visibility-hidden").addClass("animated zoomIn").one('animationend', function() {
																			typing('.introjs-tooltiptext', "Evaluation process.", function() {
																				$('.introjs-nextbutton').show();
																				});
																			});
																		}}); 
																	}});
																}});  
															}});
														}});
													});
												});
											});
										});
									});
								});
					break;
					case "quotientResult2":
						$('.introjs-nextbutton').hide();
							if (intro._currentStep == 11) {
								intro.refresh();
								t1.to("#valueaFlip2", 1, {opacity:1, rotationX: -90, onComplete: function() {
									$("#floatequalconvert").removeClass("opacity00");
					    			$("#valueaFlip2").append(".0");
									intro.refresh();
									}}); 
									t1.to("#valueaFlip2", 1, {opacity:1, rotationX: 0, onComplete: function() {
										$('.introjs-nextbutton').show();	
									}});
							} else if(intro._currentStep == 12) {
							 		$("#valuebFlip2").removeClass("opacity00");
									typing('.introjs-tooltiptext', "division not applicable for different data type values so convert the integer values into float values.", function() {
							 		t1.to("#valuebFlip2", 1, {opacity:1, rotationX: -90, onComplete: function() {
									    $("#valuebFlip2").append(".0");
										intro.refresh();
										}}); 
										t1.to("#valuebFlip2", 1, {opacity:1, rotationX: 0, onComplete: function() {
											$('.introjs-nextbutton').show();	
											}});
										});
									}
					break;
					case "quotientResult3":
						var divide = $("#intaEdit").val();
		    			var floatofint = $("#intbEdit").val();
			 			var output =  (divide/floatofint).toString().substring(0, 8);
			 			$('#result3').append(output);
						$('.introjs-nextbutton').hide();
						$(".introjs-helperLayer").one("transitionend", function() {
						typing('.introjs-tooltiptext', "This is an exact result.", function() {
							$("#quotient1").effect('highlight',  {color: "#C8FE2E"}, 3000);
							$("#quotientResult3").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
								var l = $("#quotient1").offset();
								$("#result3").offset({"top": l.top,"left": l.left});
								TweenMax.to("#result3", 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
									$("#result3").removeClass("opacity00");
								if ($("#result3").text().indexOf(".") !== -1) {
						    		$("#result3").text();
									intro.refresh();
									$('.introjs-nextbutton').show();
								} else {
									t1.to("#result3", 1, {opacity:1, rotationX: -90, onComplete: function() {
						    			$("#result3").append(".000000");
										t1.to("#result3", 1, {opacity:1, rotationX: 0, onComplete: function() {
											$("#valuesenterdiv").removeClass("visibility-hidden");
											intro.refresh();
											$('.introjs-nextbutton').show();
											}}); 
										}});
									}
								}});
							});
						});
					});
					break; 
					case "restartBtn":
						$('.introjs-nextbutton').hide();
						$(".introjs-helperLayer").one("transitionend", function() {
						typing('.introjs-tooltiptext', "Click to restart.", function() {
							$("#restartBtn").removeClass("opacity00");
							$('#intaEdit').val("");
					  		$('#intbEdit').val("");
							});
							});
					break;
					}
			});
	intro.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	typing('#informationdiv',"<ul><li>Type casting is used to convert one data type constant value into another data type constant value.</li>"+
  			"<li>Type casting is explicitly done by <span class='color-green' >user</span>.</li></ul>" ,function() {
  		typing('.introjs-tooltiptext', "Consider the example for type casting.", function() {  
			$('.introjs-nextbutton').show();
  			});
		});	
	});
function typing(selector, text, callBackFunction) {
	var typingSpeed = 20;
	$(selector).typewriting( text , {
		"typing_interval": typingSpeed,
		"cursor_color": 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		$(".introjs-nextbutton").removeClass("opacity00");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	})
}
function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57) ) 
        return false;
    return true;
}    
</script>

<body>
<div id ='totaldiv' class='totaldivclass'>
	<div id='title' class='label ct-demo-heading col-xs-offset-4'>
		<span class=''>Explicit Type Conversion (or) Type Casting</span>
	</div>
</div>
	
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-7 col-xs-offset-2'>
</div>
</div>
<div class='col-xs-12'>
		<div id='calculationtable' class='col-xs-8 col-xs-offset-2 visibility-hidden' style='margin-top: 15px; height: 340px;'>
			<div class='col-xs-12'>
				<div class='col-xs-6'>
						<div  class='' style='margin-top: 10px;'>
							<span id='enterAandBvalues' class='opacity00'>
								<span id='inta' class='' style='margin-top: 10px'><span class='color-darkgreen'><b>Int</b></span> &nbsp;a &nbsp;= &nbsp;<input id='intaEdit' class='display-inlineblock element	' type="text" placeholder="int val" Maxlength='3'  onkeypress="return isNumberKey(event)"></span>
								<span id='intb' class='' style='margin-top: 10px; margin-left: inherit;'><span class='color-darkgreen'><b>Int</b></span> &nbsp;b &nbsp;= &nbsp;<input id='intbEdit' class='display-inlineblock element' type="text" placeholder="int val" Maxlength='3' contenteditable='true'  onkeypress="return isNumberKey(event)"></span>			
							</span>
						</div>
						<div id='valuestoreDiv' class='' style='margin-top: 20px;'>
							<span id='xstoresinFloat' class='opacity00' ><span id='float' class='color-green'>float&nbsp;</span><b>x&nbsp;</b> = &nbsp;<span id='valueA' class='color-darkgreen'>a</span><b>&nbsp;<b class='color-red'>/</b>&nbsp;</b><span id='valueB' class='color-darkgreen'>b</span></span>
						</div>
						<div class='' style='margin-top: 10px'>
							<span id='fliptoValues' class='opacity00'><span id='float' class='color-green'>float&nbsp;</span><b>x&nbsp;</b><span id='equal'> =&nbsp; </span><span id='valueaFlip' class='display-inlineblock' class='color-darkgreen'>a</span><b>&nbsp;<b class='color-red'>/</b>&nbsp;</b><span id='valuebFlip' class='display-inlineblock' class='color-darkgreen'> b </span></span>
						</div>
						<div class='' style='margin-top: 10px'>
							<span id='quotientResult'><span id='resultquotient' class='opacity00'><span class='color-green'>float</span><b> x </b><span>&nbsp;= &nbsp;</span></span><span class='opacity00' id='result'></span></span>
						</div>
						<div class='' style='margin-top: 10px'>
							<span id='quotientResult1' class='opacity00'><span class='color-green'>float</span><b> x </b><span>&nbsp;= &nbsp;</span><span class='display-inlineblock position-relative' id='result1'></span></span>
						</div>
						<div style='margin-top: 10px'>
							<span id='text' class='opacity00' style='' >For obtaining exact result type cast the expression :</span>
						</div>
						<div id='valuestoreDiv1' class='' style='margin-top: 10px'>
							<span id='xstoresinFloat1' class='opacity00'><span id='float' class='color-green'>float&nbsp;</span><b>x&nbsp;</b> = &nbsp;<span id='floatOf' class='color-rose opacity00'>(float)&nbsp;</span><span id='valueA' class='color-darkgreen'>a</span><b>&nbsp;<b class='color-red'>/</b>&nbsp;</b><span id='valueB' class='color-darkgreen'>b </span></span>
						</div>
						<div class='' style='margin-top: 10px'>
							<span id='fliptoValues1' class='opacity00'><span id='float' class='color-green'>float&nbsp;</span><b>x&nbsp;</b><span id='equal'> =&nbsp; </span><span id='floatOf1' class='color-rose '>(float)&nbsp;</span><span id='valueaFlip1' class='display-inlineblock' class='color-darkgreen'>a</span><b>&nbsp;<b class='color-red'>/</b>&nbsp;</b><span id='valuebFlip1' class='display-inlineblock' class='color-darkgreen'> b </span></span>
						</div>
						<div class='' style='margin-top: 10px'>
							<span id='quotientResult2' class=''><span id='floatequalconvert' class='opacity00'><span class='color-green'>float</span><b> x </b><span>&nbsp;= &nbsp;</span><span id='result2'></span><span id='valueaFlip2' class='display-inlineblock'></span><b>&nbsp;<b class='color-red'>/</b>&nbsp;</b></span><span id='valuebFlip2' class='display-inlineblock opacity00'></span></span>
						</div>
						<div class='' style='margin-top: 10px'>
							<span id='quotientResult3' class='opacity00'><span class='color-green'>float</span><b> x </b><span>&nbsp;= &nbsp;</span><span class='opacity00' id='result3'></span></span>
						</div>
				</div>
				<!-- <div class='vertical-line'></div> -->
					<div  class='col-xs-6'>
						<!-- <div class='col-xs-12'> -->
						<div id='divisionscalculate' class='col-xs-offset-3' style='margin-top: 20px; margin-left: 143px;'>
								<!-- <span id='apeend-a-and-b' class='opacity00'>
									<span class=''><b>Int</b> a = <span id='a-append' class='box text-center'></span></span>
									<span class=''><b>Int</b> b = <span id='b-append' class='box text-center'></span></span>
								</span> -->
							<div id="resultdiv" class="">
								<div class=''  style='margin-top: 2%' > 
									<table class='font-size-16 text-center '>
										<tr>
											<td style='padding-top: 7px;' id='diviser' class=' position-relative opacity00'>
												<span id='floatget' class='  position-relative ct-demo-rose'><b></b></span></td>
											<td style='padding-top: 0px;' id='open' class=' position-relative'>
												<span id='openParenthesis' style='font-size:35px;' class='opacity00'>) </span></td>
											<td style='padding-top: 13px;' id='dividend' class=' position-relative'>
												<span id='integervalueget' class='opacity00 display-inlineblock ct-demo-rose'></span></td>
											<td style='padding-top: 0px;' class=' position-relative'><span style='font-size:35px' class='opacity00' id='closeParenthesis'> (</span><span id='quotient' class='opacity00 ct-demo-rose  position-relative'><b></b></span></td>
										</tr>
										<tr>
											<td style='padding-top: 13px;'  class=' position-relative'></td>
											<td style='padding-top: 13px;' class=' position-relative'></td>
											<td id='product' class=' position-relative text-center'>
												<span id='multiple'  class=' position-relative display-inlineblock'>
												<span id='firstValue' class='opacity00 ct-demo-rose position-relative '></span><span id='mulOperator' class='opacity00 display-inlineblock ' style='color:red'> x </span><span id='secondValue' class=' position-relative display-inlineblock ct-demo-rose opacity00'><b></b></span>
												</span></td>
											<td></td>
										</tr>
										<tr>
											<td style='padding-top: 13px;'  class=' position-relative'></td>
											<td style='padding-top: 13px;  ' class=' position-relative'></td>
											<td class='text-center visibility-hidden' style='padding-top:3px; border-top: 2px solid black' id='remainderval'>
										  		<span class='position-relative  ' style=''><span id='remaind' class='ct-demo-green'></span></span></td>
											<td></td>
										</tr>
										<tr>
											<td style='padding-top: 13px;'  class=' position-relative'></td>
											<td style='padding-top: 13px;' class=' position-relative'></td>
											<td class='text-center' style='padding-top:3px;'id='remainder'>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td style='padding-top: 13px;'  class=' position-relative'></td>
											<td style='padding-top: 13px;' class=' position-relative'></td>
											<td class='text-center  display-inlineblock position-relative' style='padding-top:3px;'id='quotientresult'>
												<!-- <span id='valuestore' ><b>x</b> = </span><span id='quotientresultvalue' class='ct-demo-rose display-inlineblock'><b></b></span> -->
											<td></td>
										</tr>
										</table> 
									</div>
								</div>
							</div>
							<div id="resultdiv1" class='col-xs-offset-3 ' style='margin-top: 20px; margin-left: 143px;'>
								<div class=''  style='margin-top: 2%' > 
									<table class='font-size-16 text-center '>
										<tr>
											<td style='padding-top: 9px;' id='diviser1' class=' position-relative opacity00'>
												<span id='floatget1' class=' position-relative ct-demo-rose'><b></b></span></td>
											<td style='padding-top: 0px;' id='open' class=' position-relative'>
												<span id='openParenthesis1' style='font-size:35px;' class='opacity00'>) </span></td>
											<td style='padding-top: 13px;' id='dividend' class=' position-relative'>
												<span id='integervalueget1' class='opacity00 position-relative ct-demo-rose'></span></td>
											<td><span style='font-size:35px' class='opacity00' id='closeParenthesis1'> (</span><span id='quotient1' class='opacity00 ct-demo-rose  position-relative'><b></b></span></td>
										</tr>
										<tr>
											<td style='padding-top: 13px;'  class=' position-relative'></td>
											<td style='padding-top: 13px;' class=' position-relative'></td>
											<td id='product' class=' position-relative text-center'>
												<span id='multiple1'  class=' position-relative display-inlineblock'>
												<span id='firstValue1' class='ct-demo-rose position-relative opacity00'></span><span id='mulOperator1' class=' position-relative opacity00' style='color:red'>x</span><span id='secondValue1' class='opacity00 position-relative  ct-demo-rose'><b></b></span>
												</span></td>
											<td></td>
										</tr>
										<tr>
											<td style='padding-top: 13px;'  class=' position-relative'></td>
											<td style='padding-top: 13px;  ' class=' position-relative'></td>
											<td class='text-center visibility-hidden' style='padding-top:3px; border-top: 2px solid black' id='remainderval1'>
										  		<span class='position-relative  ' style=''><span id='remaind1' class='ct-demo-green'></span></span></td>
											<td></td>
										</tr>
										<tr>
											<td style='padding-top: 13px;'  class=' position-relative'></td>
											<td style='padding-top: 13px;' class=' position-relative'></td>
											<td class='text-center' style='padding-top:3px;'id='remainder1'>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td style='padding-top: 13px;'  class=' position-relative'></td>
											<td style='padding-top: 13px;' class=' position-relative'></td>
											<td class='text-center  display-inlineblock position-relative' style='padding-top:3px;'id='quotientresult'>
												<!-- <span id='valuestore' ><b>x</b> = </span><span id='quotientresultvalue' class='ct-demo-rose display-inlineblock'><b></b></span> -->
											<td></td>
										</tr>
										</table> 
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="button col-xs-12 text-center " id="button">
					<button class="btn btn-success glyphicon glyphicon-refresh opacity00" type="button" id='restartBtn' style='margin-top:4px'>Restart</button>
				</div>
				
</body>
