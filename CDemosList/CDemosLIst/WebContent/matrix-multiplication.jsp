<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/animate.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/font-awesome-animation.min.css" rel="stylesheet">
<script src="/js/bootstrap.min.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/alertify.js"></script>
<link rel="stylesheet" href="/css/alertify/alertify.bootstrap.css"/>
<link rel="stylesheet" href="/css/alertify/alertify.core.css"/>
<link rel="stylesheet" href="/css/alertify/alertify.default.css"/>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/gs/TimelineLite.min.js"></script>
<style type="text/css">
.padding0 {
	padding: 0;
}

.main-two-box {
	border: 1px solid gray;
 	height: 510px;
}

.marginTop20 {
	margin-top: 20px;
}

.fa-square-bracket-left:before {
	content: '[';
	font-size: 75px;
}

.fa-square-bracket-right:before {
	content: ']';
	font-size: 75px;
}

.executeAnimationBtn {
	background-color:green !important;
}

.blinking-white {
	animation-name: blink-border-background-white ;
	animation-duration: 1s ;
	animation-iteration-count: infinite;
	animation-direction: alternate ;
	z-index: 10000000;
	position: relative;
}

@keyframes blink-border-background-white { 
	50% {
		border-color: white;
		background: green;
	}
}

th, td {
	height: 24px;
	padding: 0;
	text-align: center;
	width: 19%;
	padding: 2px;
}

.position-relative {
	position: relative;
	display: inline-block; 
}

.background-green {
	background-color: green;
}

.introjs-tooltip {
	min-width: 260px;
}

pre {
	font-size: 10px;
	margin: 0px;
}

.output-console-title-bar {
	border-top-left-radius: 4px;
    border-top-right-radius: 4px;
}

.output-console-body {
	height: 160px;
}

.output-console-body {
    color: #f0f0f0;
    font-family: monospace;
    font-size: 10px;
    white-space: normal;
}

.index-textbox-size {
	background-color: black;
	border-width: 0;
	width: 8%;
}

.zIndex {
	background-color: white;
	position: relative;
	z-index: 9999999;
}
</style>
<script type="text/javascript">
var execute = 0;
var intro;
var i = 0;
var j = 0;
var k = 0;
var Matrice = "";
var forStep = 0;
var rcValues = "";
	$(document).ready(function() {
		
		$("#explanation").append("<div class='col-xs-12 padding0' style='margin-top:50px;' ></div>");
		intro =  introJs();
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [
					{
						element : "#explanation",
						intro : "",
						position : "right",
					} ,
					{
						element : "#restart", // when dynamic steps added it is coming last step after execution of dynamic step not removing.
						intro : "Click to restart.",
						position : "right",
					} 
				]
	})
	intro.onafterchange(function(targetElement) {
		var ElementId = targetElement.id;
		var action = intro._introItems[intro._currentStep].action;
		switch (ElementId) {
		case "explanation":
			//matrixProgram();
		break;
		case "varDec":
			 $(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "It is a declaration of int variables given inside the main() function we call it as a local variables.";
				typing(".introjs-tooltiptext", text, function() {
					preSteps("A");
					$(".introjs-nextbutton").show();
				})
			}); 
			
			
			//mulSteps();
			
		break;
		
		case "row" + Matrice:
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here the variable i is initialized with 0.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				})
			});
		break;
		
		 case "readMatrixA":
			 $(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "This for is to read a[][] matrix.";
				typing(".introjs-tooltiptext", text, function() {
					Matrice = $("#readMatrixA").attr('eval');
					console.log("in the matrixA" + Matrice)
					$(".introjs-nextbutton").show();
				})
			});
		break;
		
		 case "readMatrixB"://readMatrixC
			 $(".introjs-nextbutton").hide();
			 	$("#iRowA").text("i");
				$(".introjs-helperLayer").one("transitionend", function() {
					i = 0;
					j= 0;
					forStep = 0;
					rcValues = "";
					var text = "This for is to read b[][] matrix.";
					typing(".introjs-tooltiptext", text, function() {
						Matrice = $("#readMatrixB").attr('eval');
						$(".introjs-nextbutton").show();
					})
				});
			break;
			
		 case "readMatrixC":
			 	//$("#iRowA").text("i");
			 	$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					i = 0;
					j= 0;
					forStep = 0;
					rcValues = "";
					var text = "This for loops is to multiply the a[][] and b[][] matrix.";
					typing(".introjs-tooltiptext", text, function() {
						Matrice = $("#readMatrixC").attr('eval');
						$("#tableC").removeClass("opacity00");
						$(".introjs-nextbutton").show();
					})
				});
			break;
		
		case "condRow" + Matrice:
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
					if (i == 0) {
						console.log("i == 0")
						for (var row = 0; row < parseInt($("#rows" + Matrice).text()); row++) {
							//loopSteps(row);
							if (Matrice == "A") {
								loopSteps(row, "A", "a", "1");
							} else if (Matrice == "B") {
								loopSteps(row, "B", "b", "2");
							} else if (Matrice == "C") {
								for (var row = 0; row < parseInt($("#rows" + Matrice).text()); row++) {
									mulStepsDynamic(row);
								}
							}
						}
					}
				
				if (i < parseInt($("#rows" + Matrice).text())) {
					j = 0;
					flipEffect("#iRow" + Matrice, i, function() {
						var text = "Here the " + i +" &lt; "+ $("#rows" + Matrice).text() +" condition is "+ (i < parseInt($("#rows" + Matrice).text()));
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						})
					});
				} else {
					flipEffect("#iRow" + Matrice, i, function() {
						console.log(" i < n else statement")
						var text = "Here the " + i +" &lt; "+ $("#rows" + Matrice).text() +" condition is "+ (i < parseInt($("#rows" + Matrice).text()));
						typing(".introjs-tooltiptext", text, function() {
							if (Matrice == "A") {
								preSteps("B");
								$(".removeId").removeAttr("id");
							} else if (Matrice == "B") {
								afterInsertedElementSteps();
							} else if (Matrice == "C") {
								mulMatrixDisplay();
								console.log(" here write the mul printed matrix.. steps.");
							}
							$(".introjs-nextbutton").show();
						})
					})
				}
			});
		break;
		
		case "incRow" + Matrice:
			
			$("#jCol" + Matrice).text("j");
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "The i value is incremented by 1";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
					++i;
				})
			})
		break;
		
		case "col" + Matrice:
			$(".introjs-nextbutton").hide();
			$("#iRow" + Matrice).text("i");
			$(".introjs-helperLayer").one("transitionend", function() {
					var text = "The j is initialized with zero.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					})
			});
		break;
		
		case "condCol" + Matrice:
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (j < parseInt($("#cols" + Matrice).text())) {
				flipEffect("#jCol" + Matrice, j, function() {
					var text = "Here the " + j +" &lt; "+ $("#cols" + Matrice).text() +" condition is "+ (j < parseInt($("#cols" + Matrice).text()));
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					})
				});
				} else {
					flipEffect("#jCol" + Matrice, j, function() {
						var text = "Here the " + j +" &lt; "+ $("#cols" + Matrice).text() +" condition is "+ (j < parseInt($("#cols" + Matrice).text()));
							typing (".introjs-tooltiptext", text, function(){
								$(".introjs-nextbutton").show();
							})
						})
					}
				});
		break;
		
		case "incCol" + Matrice:
			$("#mulCngK").text("k");
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "The j value is incremented by 1";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
						++j;
					})
			})
		break;
		
		case "printf1":
		case "printf2":
		case "printf3":
		case "printf4":
		case "printf5":	
			$("#jCol" + Matrice).text("j");
			$("#iRow" + Matrice).text("i");
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "The printf() function will print the text which it is contains.";
					typing(".introjs-tooltiptext", text, function() {
						if (ElementId == "printf3") {
							rcValues = $("[id ^= matA]").text();
							$("#output").append("<span id='opprintfA'class='opacity00'>The matrix a[][] is :</span><br/>");
							$("#output").append("<span class = 'aVal opacity00'><span>"+rcValues.charAt(0)+"</span>&emsp;&emsp;&emsp;<span>"+rcValues.charAt(1)+"</span>"
									+"&emsp;&emsp;&emsp;<span>"+rcValues.charAt(2)+"</span><br/><span>"+rcValues.charAt(3)+"</span>&emsp;&emsp;&emsp;<span>"+rcValues.charAt(4)+"</span>"
									+"&emsp;&emsp;&emsp;<span>"+rcValues.charAt(5)+"</span></span><br/>");
							$(".introjs-nextbutton").show();
						} else if (ElementId == "printf4") {
							rcValues = $("[id ^= matB]").text();
							$("#output").append("<span id='opprintfB'class='opacity00'>The matrix b[][] is :</span><br/>");
							$("#output").append("<span class = 'bVal opacity00' ><span>"+rcValues.charAt(0)+"</span>&emsp;&emsp;&emsp;<span>"+rcValues.charAt(1)+"</span><br/>"
									+"<span>"+rcValues.charAt(2)+"</span>&emsp;&emsp;&emsp;<span>"+rcValues.charAt(3)+"</span><br/><span>"+rcValues.charAt(4)+"</span>"
									+"&emsp;&emsp;&emsp;<span>"+rcValues.charAt(5)+"</span></span><br/>");
							$(".introjs-nextbutton").show();
						} else if (ElementId == "printf5") {
							$("#output").append("<span id='pmatrix' class='opacity00'>After matrix multiplication is :</span><br/>");
							$("#output").append("<span class = 'cVal opacity00'><span>"+ $("#c00").text() +"</span>&emsp;&emsp;&emsp;<span>"+ $("#c01").text() +"</span><br/>"
									+"<span>"+ $("#c10").text() +"</span>&emsp;&emsp;&emsp;<span>"+ $("#c11").text() +"</span></span><br/>");
						}
						$(".introjs-nextbutton").show();
					})
			});
		break;
		
		case "scanf1":
		case "scanf2":	
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "scanf() function reads the value.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					})
			});
		break;
		
		case "outputDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#outputDiv").removeClass("opacity00");
				scrollAtOutput();
				if (action == "print") {
					$("#nameSpan"+i+""+j).removeClass("opacity00")
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
				} else if (action == "printfA" || action == "printfB" || action == "printfC") {
					if (action !== "printfC") {
						$("#op" + action).removeClass("opacity00");
					} else {
						$("#pmatrix").removeClass("opacity00")
					}
						setTimeout(function() {
							intro.nextStep();
						}, 1000);
					//$(".introjs-nextbutton").show();
				} else if (action == "displayA" || action == "displayB" || action == "displayC") {
					var text = "The matrix values are";
					typing(".introjs-tooltiptext", text, function() {
						if (action == "displayA") {
							$(".aVal").removeClass("opacity00");
							$(".introjs-nextbutton").show();
						} else if (action == "displayB") {
							$(".bVal").removeClass("opacity00");
							mulSteps();
							$(".introjs-nextbutton").show();
						} else {
							$(".cVal").removeClass("opacity00");
							$(".introjs-nextbutton").show();
						}
					})
					
					
				} else {
					var text = "Enter the value...";
						typing(".introjs-tooltiptext", text, function() {
							$("#input"+i+""+j).focus();
							//$(".introjs-nextbutton").show();
						})
				}
			});
		break;
		
		case "matrix" + Matrice:
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (i == 0 && j == 0) {
					//rcValues = $("#input"+i+""+j).val();
					$("#matrix" + Matrice).removeClass("opacity00").addClass("animated zoomIn").on("animationend", function() {
						flipEffect("#mat"+ Matrice +""+ i +""+ j, $("#input"+i+""+j).val(), function() {
							$(".introjs-nextbutton").show();
						})
					})
				} else {
				//	rcValues = rcValues + $("#input"+i+""+j).val();
					flipEffect("#mat"+ Matrice +""+i+""+j, $("#input"+i+""+j).val(), function() {
						$(".introjs-nextbutton").show();
					})
				}
			})
		break;
			
		case "matrixAdis":
		case "matrixBdis":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "The values of Matrix" + Matrice + " will be displayed";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				})
			});
		break;
		
		case "mulKini":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here the k is initialized with zero";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		
		case "mulKcond":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (k < parseInt($("#mul").text())) {
					flipEffect("#mulCngK", k, function() {
						var text = "Here the " + k +" &lt; "+ $("#mul").text() +" condition is "+ (k < parseInt($("#mul").text()));
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						})
					});
					} else {
						flipEffect("#mulCngK", k, function() {
							var text = "Here the " + k +" &lt; "+ $("#mul").text() +" condition is "+ (k < parseInt($("#mul").text()));
								typing (".introjs-tooltiptext", text, function(){
									$(".blinking-white").removeClass("blinking-white");
									k = 0;
									$(".introjs-nextbutton").show();
								})
							})
						}
			});
		break;
		
		case "mulForm":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				//var text = "The matrix at c["+ i +"]["+ j +"] is initialized with 0.";
				var text = "The formulae used to multiply the two matrices.";
				typing(".introjs-tooltiptext", text, function() {
					//$(".introjs-nextbutton").show();
					setTimeout(function() {
						formulaeEvaluation();
					}, 400);
				})
			});
		break;
		
		case "mulKinc":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here the value k is incremented by 1.";
				typing(".introjs-tooltiptext", text, function() {
					++k;
					$(".introjs-nextbutton").show();
				})
			});
		break;
		
		case "mulCini":
			$("#jColC").text("j");
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "The matrix at c["+ i +"]["+ j +"] is initialized with 0.";
				typing(".introjs-tooltiptext", text, function() {
					$("#tableC").addClass("zIndex");
					$("#c"+i+""+j).addClass("blinking-white");
					$("#c"+i+""+j).text("0");
					$(".introjs-nextbutton").show();
				})
			});
		break;
		
		case "animation":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "The value at matrix c["+i+"]["+j+"]";
				typing(".introjs-tooltiptext", text, function() {
					$("#c"+ i + "" + j).text($("#formulae").text());
					setTimeout(function(){
						$("#formulae").empty();
						$("#formulae").append('<span id="cij" class="position-relative">c[<span id="ci" class="position-relative">i</span>]'
								+'[<span id="cj" class="position-relative">j</span>]</span> + <span id="aik" class="position-relative">'
								+'a[<span id="ai" class="position-relative">i</span>][<span id="ak" class="position-relative">k</span>]</span>'
								+' * <span id="bkj" class="position-relative">b[<span id="bk" class="position-relative">k</span>]'
								+'[<span id="bj" class="position-relative">j</span>]</span>');
						$(".introjs-nextbutton").show();
					}, 500);
				})
			})
		break;
			
		case "finalMatrix":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "This for loops is to display the matrix muliplication values.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		
		case "restart":
			$(".introjs-nextbutton").hide();
			$("#restart").removeClass("opacity00");
		break;
		}
		})
		
		
	//})
	intro.start();
	$('.introjs-tooltipbuttons').append("<a class='introjs-button executeAnimationBtn'>Next &#8594;</a>");
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$(".introjs-nextbutton").hide();
	var text = "In this we learn how the two dimensional array will work.<span><ul id='step'></ul></span>";
		typing(".introjs-tooltiptext", text, function() {
			//$(".introjs-nextbutton").show();
			//matrixProgram();
		})
		
		$(".executeAnimationBtn").click(function() {
			conceptExplanation();
		})
		
		$("#restart").click(function() {
			location.reload(true);
		})
	})
	
	function formulaeEvaluation() {
		flipEffect("#ci", i, function() {
			flipEffect("#cj", j, function() {
				flipEffect("#ai", i, function() {
					flipEffect("#ak", k, function() {
						flipEffect("#bk", k, function() {
							flipEffect("#bj", j, function() {
								flipEffect("#cij", $("#c"+i+""+j).text(), function() {
									flipEffect("#aik", $("#matA"+i+""+k).text(), function() {
										flipEffect("#bkj", $("#matB"+k+""+j).text(), function() {
		var val = parseInt($("#aik").text()) * parseInt($("#bkj").text()) + parseInt($("#cij").text())
		flipEffect("#formulae", val, function() {
			   //  $("#c"+i+""+j).text($("#formulae").text())
			$(".introjs-nextbutton").show();
		})
										})
									})
								})
							})
						})
					})
				})
			}) 
		})
	}
	
	
	function afterInsertedElementSteps() {
		var step = 0;
		var nextStep = {
				element : "#printf3",
				intro : "",
				position : "right",
				
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "left",
				tooltipClass: "hide",
				action :"printfA"
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#matrixAdis",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "left",
				action : "displayA"
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#printf4",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "left",
				action :"printfB"
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#matrixBdis",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "left",
				action : "displayB"
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
	}
	
	function loopSteps(i, matrix, name, val) {
		console.log("The matrix is :  " + i +" "+ matrix +" "+ name +" "+ val)
		for(var j = 0; j < parseInt($("#cols" + matrix).text()); j++) {
			if (j == 0) {
				var nextStep = {
						element : "#col" + matrix,
						intro : "",
						position : "right",
					}
					intro.insertOption(intro._currentStep + ++forStep, nextStep);
			}
			
			var nextStep = {
					element : "#condCol" + matrix,
					intro : "",
					position : "right",
				}
				intro.insertOption(intro._currentStep + ++forStep, nextStep);
			
			var nextStep = {
					element : "#printf" + val,
					intro : "",
					position : "right",
				}
				intro.insertOption(intro._currentStep + ++forStep, nextStep);
			
			var nextStep = {
					element : "#outputDiv",
					intro : "",
					position : "left",
					tooltipClass : "hide",
					action : "print"
				}
				intro.insertOption(intro._currentStep + ++forStep, nextStep);
			
			var nextStep = {
					element : "#scanf" + val,
					intro : "",
					position : "right",
				}
				intro.insertOption(intro._currentStep + ++forStep, nextStep);
			
			var nextStep = {
					element : "#outputDiv",
					intro : "",
					position : "left",
					action : "read"
				}
				intro.insertOption(intro._currentStep + ++forStep, nextStep);
			
			var nextStep = {
					element : "#matrix" + matrix,
					intro : "",
					position : "left",
				}
				intro.insertOption(intro._currentStep + ++forStep, nextStep);
			
			var nextStep = {
					element : "#incCol" + matrix,
					intro : "",
					position : "right",
				}
				intro.insertOption(intro._currentStep + ++forStep, nextStep);
			
			$("#output").append("<span class='opacity00 removeId' id='nameSpan"+i+''+j+"'>Enter the value of "+ name + "[" + i + "][" + j + "] :"
					+" <span id='nameEnterspan'><input class='index-textbox-size input removeId' type='text' id='input"+i+""+j+"' Maxlength='1'></span></span><br/>");
		}
		
		var nextStep = {
				element : "#condCol" + matrix,
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++forStep, nextStep);
		
		var nextStep = {
				element : "#incRow" + matrix,
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++forStep, nextStep);
		
		var nextStep = {
				element : "#condRow" + matrix,
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++forStep, nextStep);
			validationInput();
	}
	
	function validationInput() {
		 $('.input').on("keydown", function(e) {
				$(".length-error-text").remove();
				var max = $(this).attr("maxlength"); 
				
				if ($.inArray(e.keyCode, [46, 8, 9, 27, 35, 36, 37, 39]) !== -1) {
					return;
				}
				
				if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
					$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only integer.</div>");
					e.preventDefault();
				}
				
				if ($(this).val().length > max) {
					$(".introjs-tooltiptext").append("<div class='length-error-text'>Max Length 1 digit only</div>");
					e.preventDefault();
				}
				
				if ($(this).val().length < 1) {
					$(".introjs-nextbutton").hide();
				}
			}); 
		  
		   $(".input").on("keyup", function(e) {
				var max = $(this).attr("maxlength");
				if ($(this).val() == "") {
					$(".introjs-nextbutton").hide();
				} else {
					$(".introjs-nextbutton").show();
				}
			});
	}
	
    function conceptExplanation() {
    	if (execute == 0) {
    		$('.executeAnimationBtn').hide();
    		var text = "<span>To know how the two dimensional array works , we take the matrix multiplication as an example.</span><div id='variable'></div>";
    		typing("#explanation div:eq(0)", text, function() {
    			$('.executeAnimationBtn').show();
    			
    		})
    	} else if (execute == 1) {
    		$('.executeAnimationBtn').hide();
    		var text = "<li>we take two variables with a and b.</li><span id='step2'></span>";
    		typing("#step", text, function() {
	    		var text = "<div><span>int a[3][3], b[3][3];</span></div><div id='revealMatrix'></div>";
				typing ("#variable", text, function() {
					$('.executeAnimationBtn').show();
				})
    		})
    	} else if (execute == 2) {
    		$('.executeAnimationBtn').hide();
    		var text = "The matrix a contains m x n rows and columns, matrix b contains <br/> p x q rows and columns. : ";
    		typing ("#revealMatrix", text, function() {
    			$("#explanation div:eq(0)").append("<div id = 'matrices'></div>");
		    		var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
		    		matrixCreation(arr, 'a', 'm', 'n');
					var arr = [11, 12, 13, 14, 15, 16, 17, 8, 9];
					matrixCreation(arr, 'b', 'p', 'q', function() {
						$('.executeAnimationBtn').show();
					});
			})
    	} else if (execute == 3) {
    			$('.executeAnimationBtn').hide();
	    		$("#rowOfMatrix1, #rowOfMatrix2").addClass("blinking-white");
	    		flipEffect("#rowOfMatrix1 > span", 3, function() {
	    			flipEffect("#rowOfMatrix2 > span", 3, function() {
		    				$(".blinking-white").removeClass("blinking-white");
		    				$("#colOfMatrix1, #colOfMatrix2").addClass("blinking-white");
	    				flipEffect("#colOfMatrix1 > span", 3, function() {
	    					flipEffect("#colOfMatrix2 > span", 3, function() {
	    						$(".blinking-white").removeClass("blinking-white");
	    						$("#colOfMatrix1, #rowOfMatrix2").addClass("background-green");
	    						$('.executeAnimationBtn').show();
		    				})
	    				})
		    		})
	    		})
		} else if (execute == 4) {
			$('.executeAnimationBtn').hide();
			var text = "<li>The matrix  <b>a</b> column and matrix <b>b</b> row is equal i.e., 3(n and p) after "
						+"multiplying both matrix we get 3 x 3(m and q).</li>";
			typing("#step2", text, function() {
				$('.executeAnimationBtn').show();
			})
		} else if (execute == 5) {
			$("#rowColumn1, #rowColumn2").addClass("opacity00");
			$('.executeAnimationBtn').hide();
			$(".background-green").removeClass("background-green");
			$("#matrices table:eq(0) tr:eq(1) td:eq(1)").addClass("opacity00");
			$("#matrices table:eq(0) tr:eq(2) td:eq(1)").addClass("opacity00");
			$("#matrices table:eq(0) tr:eq(3) td:eq(1)").addClass("opacity00");
			$("#colOfMatrix1").text("2");
			flipTable("#matrices", function() {
				var text = "<li>In this example the matrix a contains 2 columns and matrix b contains 3 rows both are not equal so, multiplication is not possible.</li>";
				typing("#step2", text, function() {
					$("#rowColumn1, #rowColumn2").removeClass("opacity00");
					setTimeout(function() {
						$("#colOfMatrix1, #rowOfMatrix2").addClass("background-green");
						$('.executeAnimationBtn').show();
					}, 1000);
				})	
			});
		} else if (execute == 6) {
			$('.executeAnimationBtn').hide();
			$("#rowColumn1, #rowColumn2").addClass("opacity00");
			$('.executeAnimationBtn').hide();
			$(".background-green").removeClass("background-green");
			$("#matrices table:eq(0) tr:eq(2)").addClass("opacity00");
			$("#matrices table:eq(1) tr:eq(2)").addClass("opacity00");
			$("#rowOfMatrix2").text("2");
			$("#rowOfMatrix1").text("2");
			flipTable("#matrices", function() {
				var text = "<li>In this example the matrix a contains 2 columns and matrix b contains 2 rows both are equal after multiplying the result of matrix will be 2 x 3.</li>";
				typing("#step2", text, function() {
					$("#rowColumn1, #rowColumn2").removeClass("opacity00");
					setTimeout(function() {
						$("#colOfMatrix1, #rowOfMatrix2").addClass("background-green");
						$('.executeAnimationBtn').show();
					}, 1000);
				})	
			});
		} else if (execute == 7) {
			$('.executeAnimationBtn').hide();
			$("#explanation").removeClass("main-two-box");
			matrixProgram();
			setTimeout(function() {
				var text = "This is the program on matrix multiplication on two dimensional array.";
				typing(".introjs-tooltiptext", text, function() {
					console.log("pre steps .. is started..");
				//	preSteps();
					$(".introjs-nextbutton").show();
				})
			}, 1000);
		}
    	++execute;	
    }
    
    var count = 1;
    function matrixCreation(val, head, row, col, callBackFunction) {
    	$("#matrices").append("<div style='display:inline-block;'>"+
    					"<table>"+
    						"<tbody>"+
    							"<tr>"+
	    							"<th rowspan='5'><span class='fa fa-square-bracket-left'></span></th>"+
	    							"<th></th>"+
	    							"<th>"+ head +"</th>"+
	    							"<th></th>"+
	    							"<th rowspan='5'><span class='fa fa-square-bracket-right'></span></th>"+
	    							"<th></th>"+
    							"</tr>"+
    							 "<tr>"+
    							 	"<td>"+ val[0] +"</td>"+
    							 	"<td>"+ val[1] +"</td>"+
    							 	"<td>"+ val[2] +"</td>"+
    							 	"<td></td>"+
    							"</tr>"+
    							"<tr>"+
	 							 	"<td>"+ val[3] +"</td>"+
	 							 	"<td>"+ val[4] +"</td>"+
	 							 	"<td>"+ val[5] +"</td>"+
	 							 	"<td></td>"+
 								"</tr>"+
	 							"<tr>"+
								 	"<td>"+ val[6] +"</td>"+
								 	"<td>"+ val[7] +"</td>"+
								 	"<td>"+ val[8] +"</td>"+
								 	"<td></td>"+
								"</tr>"+
								"<tr>"+
									"<td></td>"+
									"<td></td>"+
									"<td></td>"+
									"<td><span id='rowColumn"+ count +"'><span id = 'rowOfMatrix" + count +"'><span>"+ row +"</span></span>"+
										"x<span id = 'colOfMatrix" + count +"'><span>"+ col +"</span></span></span></td>"+
								"</tr>"+
    						"</tbody>"+
    					"</table>"+
    				"</div>");
    	++count;
    	if (typeof callBackFunction === "function") {
			callBackFunction();
		}
    }
	function preSteps(matrix) {
		var step = 0;
		var nextStep = {
				element : "#readMatrix" + matrix,
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#row" + matrix,
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#condRow" + matrix,
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
	}
    
	
	function mulSteps() {
		var step = 0;
		var nextStep = {
				element : "#readMatrixC",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#rowC",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#condRowC",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
	}
	
	var mulStep = 0;
	function mulStepsDynamic(row) {
		
			console.log("mul i = " + row);
			for (var col = 0; col < 2; col++) {
				console.log("mul j = " + col);
			if (col == 0) {
				var nextStep = {
						element : "#colC",
						intro : "",
						position : "right",
					}
					intro.insertOption(intro._currentStep + ++mulStep, nextStep);
				
				var nextStep = {
						element : "#condColC",
						intro : "",
						position : "right",
					}
					intro.insertOption(intro._currentStep + ++mulStep, nextStep);
				}
				
				var nextStep = {
						element : "#mulCini",
						intro : "",
						position : "right",
					}
					intro.insertOption(intro._currentStep + ++mulStep, nextStep);
				
				for (var rc = 0; rc < 3; rc++) {
					console.log("mul k = " + rc);
					if (rc == 0) {
						var nextStep = {
								element : "#mulKini",
								intro : "",
								position : "right",
							}
							intro.insertOption(intro._currentStep + ++mulStep, nextStep);
						
						var nextStep = {
								element : "#mulKcond",
								intro : "",
								position : "right",
							}
							intro.insertOption(intro._currentStep + ++mulStep, nextStep);
					}
						
						var nextStep = {
								element : "#mulForm",
								intro : "",
								position : "right",
							}
							intro.insertOption(intro._currentStep + ++mulStep, nextStep);
						
						var nextStep = {
								element : "#animation",
								intro : "",
								position : "left",
							}
							intro.insertOption(intro._currentStep + ++mulStep, nextStep);
						
						var nextStep = {
								element : "#mulKinc",
								intro : "",
								position : "right",
							}
							intro.insertOption(intro._currentStep + ++mulStep, nextStep);
						
						var nextStep = {
								element : "#mulKcond",
								intro : "",
								position : "right",
							}
							intro.insertOption(intro._currentStep + ++mulStep, nextStep);
				}
				
				var nextStep = {
						element : "#incColC",
						intro : "",
						position : "right",
					}
					intro.insertOption(intro._currentStep + ++mulStep, nextStep);
				
				var nextStep = {
						element : "#condColC",
						intro : "",
						position : "right",
					}
					intro.insertOption(intro._currentStep + ++mulStep, nextStep);
			}
			
			var nextStep = {
					element : "#incRowC",
					intro : "",
					position : "right",
				}
				intro.insertOption(intro._currentStep + ++mulStep, nextStep);
			
			var nextStep = {
					element : "#condRowC",
					intro : "",
					position : "right",
				}
				intro.insertOption(intro._currentStep + ++mulStep, nextStep);
	}
	
	function mulMatrixDisplay() {
		var step = 0;
		var nextStep = {
				element : "#printf5",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "right",
				tooltipClass : "hide",
				action: "printfC"
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#finalMatrix",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
		
		var nextStep = {
				element : "#outputDiv",
				intro : "",
				position : "left",
				action : "displayC"
			}
			intro.insertOption(intro._currentStep + ++step, nextStep);
	}
	
    function matrixProgram() {
    	$("#explanation").empty();
    	$("#explanation").append(
'<pre>'+
'#include&lt;stdio.h&gt;\n'+
'<span>main()</span> {\n'+
'<span id="varDec">int a[2][3], b[3][2], c[2][2], i, j, k;</span>\n'+
'<span id="readMatrixA" eval="A"><span id="first">for ( <span id="rowA">i = 0</span>; <span id="condRowA"><span id="iRowA" class="position-relative">i</span> &lt; <span id="rowsA">2</span></span>; <span id="incRowA">i++</span> )</span> {\n'+
' <span id="second">for( <span id="colA">j = 0</span>; <span id="condColA"><span id="jColA" class="position-relative">j</span> &lt; <span id="colsA">3</span></span>; <span id="incColA">j++</span>)</span> {\n'+
'  <span id="printf1">printf("Enter the value of a[%d][%d] : ", i,j);</span>\n'+
'  <span id="scanf1">scanf("%d", &a[i][j]);</span>\n'+
' <span>}</span>\n'+
'<span>}</span></span>\n'+
'<span id="readMatrixB" eval="B"><span>for ( <span  id="rowB">i = 0</span>; <span id="condRowB"><span id="iRowB" class="position-relative">i</span> &lt; <span id="rowsB">3</span></span>; <span id="incRowB">i++</span> )</span> {\n'+
' <span>for( <span id="colB">j = 0</span>; <span id="condColB"><span id="jColB" class="position-relative">j</span> &lt; <span id="colsB">2</span></span>; <span id="incColB">j++</span>)</span> {\n'+
'  <span id="printf2">printf("Enter the value of b[%d][%d] : ", i,j);</span>\n'+
'  <span id="scanf2">scanf("%d", &b[i][j]);</span>\n'+
' <span>}</span>\n'+
'<span>}</span></span>\n'+
'<span id="printf3">printf("The matrix a[][] is : &#92;n ");</span>\n'+
'<span id="matrixAdis"><span>for ( <span>i = 0</span>; <span>i &lt; 2</span>; <span>i++</span> )</span> {\n'+
' <span>for(j = 0; j &lt; 3; j++)</span> {\n'+
'  <span>printf("%d&#92;t", a[i][j]);</span>\n'+
' <span>}</span>\n'+
'  <span>printf("&#92;n");</span>\n'+
'<span>}</span></span>\n'+
'<span id="printf4">printf("The matrix b[][] is : &#92;n ");</span>\n'+
'<span id="matrixBdis"><span>for ( i = 0; i &lt; 3; i++ )</span> {\n'+
' <span>for(j = 0; j &lt; 2; j++)</span> {\n'+
'  <span>printf("%d&#92;t", b[i][j]);</span>\n'+
' <span>}</span>\n'+
' <span>printf("&#92;n");</span>\n'+
'<span>}</span></span>\n'+
'<span id="readMatrixC" eval="C"><span>for ( <span id="rowC">i = 0</span>; <span id="condRowC"><span id="iRowC" class="position-relative">i</span> &lt; <span id="rowsC">2</span></span>; <span id="incRowC">i++</span>)</span> {\n'+
' <span>for ( <span id="colC">j = 0</span>; <span id="condColC"><span id="jColC" class="position-relative">j</span> &lt; <span id="colsC">2</span></span>; <span id="incColC">j++</span>)</span> {\n'+
'  <span id="mulCini">c[<span id="CiIni">i</span>][<span id="CjIni">j</span>] = 0;</span>\n'+
'  <span>for ( <span id="mulKini">k = 0</span>; <span id="mulKcond"><span id="mulCngK" class="position-relative">k</span> &lt; <span id="mul">3</span></span>; <span id="mulKinc">k++</span>)</span> {\n'+
'   <span id="mulForm">c[<span>i</span>][<span>j</span>] = <span id="formulae" class="position-relative"><span id="cij" class="position-relative">c[<span id="ci" class="position-relative">i</span>][<span id="cj" class="position-relative">j</span>]</span> + <span id="aik" class="position-relative">a[<span id="ai" class="position-relative">i</span>][<span id="ak" class="position-relative">k</span>]</span> * <span id="bkj" class="position-relative">b[<span id="bk" class="position-relative">k</span>][<span id="bj" class="position-relative">j</span>]</span></span>;</span>\n'+
'  }\n'+
' }\n'+
'}</span>\n'+
'<span id="printf5">printf("After matrix multiplication is : &#92;n");</span>\n'+
'<span id="finalMatrix"><span>for ( <span>i = 0</span>; <span>i &lt; 2</span>; <span>i++</span>)</span> {\n'+
' <span>for (j = 0; j &lt; 2; j++)</span> {\n'+
'  <span>printf("%d &#92;t", c[<span>i</span>][<span>j</span>]);</span>\n'+
' }\n'+
'  <span>printf("&#92;n");</span>\n'+
' }</span>\n'+
'}\n'+ 
'</pre>');  
    	intro.refresh();
    	setTimeout(function() {
    		console.log("before stepsll")
    		//preSteps();
    		 var nextStep = {
				element : "#varDec",
				intro : "",
				position : "right",
			}
			intro.insertOption(intro._currentStep + 1, nextStep); 
    	}, 1000)
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
    
    function flipTable(selector, callBackFunction) {
    	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
    		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
    			if (typeof callBackFunction === "function") {
    				callBackFunction();
    			}
    		}});
    	}});
    }
    
    
    function scrollAtOutput() {
    	var container = $('.output-console-body');
    	scrollTo = $('.output-console-body').find("span").last();
    	container.animate({
    	   scrollTop: scrollTo.offset().top - container.offset().top  + container.scrollTop()
    	});
    }
    
	function typing(selector, text, callBackFunction) {
		var typingSpeed = 40;
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			//$(".introjs-nextbutton").show();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		})
	}
</script>
</head>


<body>
<div class="col-xs-12 padding0">
	<div class="col-xs-offset-4 col-xs-4">
		<h2 class="text-center">
			<span class="label label-default ct-demo-heading">Sample program on two dimensional array</span>
		</h2>
	</div>
</div>
<div class="col-xs-12 margin-top10 text-center">
		<span class="btn btn-warning opacity00" id="restart">Restart</span>
</div>
<div class="col-xs-12 padding0 marginTop20">
	<div class="col-xs-offset-1 col-xs-4 padding0 main-two-box" id="explanation">
	</div>
		<div class="col-xs-offset-1 col-xs-5 padding0 main-two-box"	id="animation">
			<div class="col-xs-12">
				<div class="col-xs-6" id="matrix1">
					<div id="matrixA" class="opacity00">
						<table>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td><span><b>0</b></span></td>
									<td><span><b>1</b></span></td>
									<td><span><b>2</b></span></td>
									<td></td>
								</tr>
								<tr class="">
									<td><span><b>0</b></span></td>
									<td rowspan="3"><span class="fa fa-square-bracket-left"></span></td>
									<td><span id="matA00" class="position-relative">(0,0)</span></td>
									<td><span id="matA01" class="position-relative">(0,1)</span></td>
									<td><span id="matA02" class="position-relative">(0,2)</span></td>
									<td rowspan="3"><span class="fa fa-square-bracket-right"></span></td>
								</tr>
								<tr>
									<td><span><b></b></span></td>
									<td><span></span></td>
									<td><span></span></td>
									<td><span></span></td>
									<td><span></span></td>
									<td><span></span></td>
								</tr>
								<tr>
									<td><span><b>1</b></span></td>
									<td><span id="matA10"  class="position-relative">(1,0)</span></td>
									<td><span id="matA11" class="position-relative">(1,1)</span></td>
									<td><span id="matA12" class="position-relative">(1,2)</span></td>
									<td><span></span></td>
									<td><span></span></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td><b>a</b></td>
									<td></td>
									<td></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
				<div class="col-xs-6" id="matrix2">
				<div id="matrixB" class="opacity00">
					<table>
						<tbody>
							<tr>
								<td></td>
								<td></td>
								<td><span><b>0</b></span></td>
								<td><span><b></b></span></td>
								<td><span><b>1</b></span></td>
								<td></td>
							</tr>
							<tr class="">
								<td><span><b>0</b></span></td>
								<td rowspan="3"><span class="fa fa-square-bracket-left"></span></td>
								<td><span id="matB00" class="position-relative">(0,0)</span></td>
								<td></td>
								<td><span id="matB01" class="position-relative">(0,1)</span></td>
								<td rowspan="3"><span class="fa fa-square-bracket-right"></span></td>
							</tr>
							<tr>
								<td><span><b>1</b></span></td>
								<td><span id="matB10" class="position-relative">(1,0)</span></td>
								<td><span></span></td>
								<td><span id="matB11" class="position-relative">(1,1)</span></td>
								<td><span id="mat"></span></td>
								<td><span id="mat"></span></td>
							</tr>
							<tr>
								<td><span><b>2</b></span></td>
								<td><span id="matB20" class="position-relative">(2,0)</span></td>
								<td><span></span></td>
								<td><span id="matB21" class="position-relative">(2,1)</span></td>
								<td><span></span></td>
								<td><span></span></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td><b>b</b></td>
								<td></td>
								<td></td>
							</tr>

						</tbody>
					</table>
				</div>
				</div>
			</div>
			<div class="col-xs-offset-3 col-xs-5">
				<div id="tableC" class="opacity00">
						<table>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td><span><b>0</b></span></td>
									<td><span><b></b></span></td>
									<td><span><b>1</b></span></td>
									<td></td>
								</tr>
								<tr class="">
									<td><span><b>0</b></span></td>
									<td rowspan="3"><span class="fa fa-square-bracket-left"></span></td>
									<td><span id="c00" class="position-relative">(0,0)</span></td>
									<td><span id="" class="position-relative"></span></td>
									<td><span id="c01" class="position-relative">(0,1)</span></td>
									<td rowspan="3"><span class="fa fa-square-bracket-right"></span></td>
								</tr>
								<tr>
									<td><span><b></b></span></td>
									<td><span></span></td>
									<td><span></span></td>
									<td><span></span></td>
									<td><span></span></td>
									<td><span></span></td>
								</tr>
								<tr>
									<td><span><b>1</b></span></td>
									<td><span id="c10"  class="position-relative">(1,0)</span></td>
									<td><span id="" class="position-relative"></span></td>
									<td><span id="c11" class="position-relative">(1,1)</span></td>
									<td><span></span></td>
									<td><span></span></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td><b>c</b></td>
									<td></td>
									<td></td>
								</tr>

							</tbody>
						</table>
					</div>
			</div>
			<div class="col-xs-12">
				<div class="col-xs-offset-1 col-xs-9" style="margin-top: 25px">
					<div id="outputDiv" class="opacity00">
						<div class="output-console-title-bar">
							<span class="title">Output</span>
						</div>
						<div class="output-console-body">
							<span class="output" id="output"></span>
						</div>
					</div>
				</div>
			</div>
	</div>
</body>
</html>

<!-- var a = $("[id ^= matA]").text();
var b = $("[id ^= matB]").text()
$("#c00").append("<span id='calc'>"+a[0]+"*"+b[0]+"<span id='add' class='opacity00'>+</span></span>") 

<span id="formulae"><span id="cij">c[<span id="ci">i</span>][<span id="cj">j</span>]</span> + <span id="aik">a[<span id="ai">i</span>][<span id="ak">k</span>]</span> * <span id="bkj">b[<span id="bk">k</span>][<span id="bj">j</span>]</span></span>;

-->
