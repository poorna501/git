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
	<title>Feature of structure</title>
</head>
<style>
#totaldiv {
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

#tableDiv {
	 height: 193px;
	 border: 1px solid black;
	 margin-top: 35px;
	 background-color: #fffff0;
	 border-radius: 10px;
}

.color-rose {
	color:#8B008B;
}
	
.color-green {
	color: green;
}
	
#table {
	border: 1px solid Black;
    width: 200px;
    font-size: 15px;
    text-align: center;
}
    
.memory {
	border: 1px solid Black;
    width: 50px;
    font-size: 15px;
    text-align: center;
    height: 21px;
}  

.array {
	padding: 8px;
}
	 
.address {
	padding: 4px;
	color:  #339;
}

.color-red {
	color: red;
}

.color-brown {
	color: #b85c00;
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
	background-color: white;
}

.color-yellow {
	color: yellow;
}

</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
		<span id='title' class='label ct-demo-heading'>Usage of Assignment Operator on Structures</span>
</div>
<div id='tableDiv' class='col-xs-12 col-xs-offset-3 col-xs-6 visibility-hidden'>
	<div class='col-xs-12'>
		<div  class='col-xs-6' style='margin-top: 12px;'>
			<span id='intVariable' class='opacity00'><span class='color-rose'>int</span> i;</span><br>
			<span id='arrayOfaValues' class='opacity00'><span class='color-rose'>int</span> a[<span class='color-brown'>5</span>] = {<span id='array0'>10</span>, <span id='array1'>20</span>, <span id='array2'>30</span>, <span id='array3'>40</span>, <span id='array4'>50</span>};</span><br>
			<span id='arrayOfbValues' class='opacity00'><span class='color-rose'>int</span> b[<span class='color-brown'>5</span>];</span><br>
			<span id='bEqualsa' class='opacity00'> b = a;</span><br>
			<div style='margin-top: 20px;'><span id='forCondition' class='opacity00'><span class='color-rose'>for</span> ( i = 0;  i < 5;  i++) {<br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b[<span class='color-brown'>i</span>] = a[<span class='color-brown'>i</span>];<br>
									}</span></div>
		</div>
		<div class='col-xs-1'>
			<div id='aValue' style='margin-top: 36px;' class='opacity00'><span class='color-green'><b>a</b></span><span class='color-red'>&rarr;</span></div>
			<div id='bValue' style='margin-top: 68px;' class='opacity00'><span class='color-green'><b>b</b></span><span class='color-red'>&rarr;</span></div>
		</div>
	<div class='col-xs-5'>
		<div id='arrayTable1' class='opacity00'>
			<table  class="" id="arrayTable" style='padding: 10px'>
					<tbody><tr>
				  			<td class="array">a[<span class='color-brown'>0</span>]</td>
				  			<td class="array">a[<span class='color-brown'>1</span>]</td>
				  			<td class="array">a[<span class='color-brown'>2</span>]</td>
				  			<td class="array">a[<span class='color-brown'>3</span>]</td>
				  			<td class="array">a[<span class='color-brown'>4</span>]</td>
	  					</tr>
	        		</tbody>
	        	</table>
		<table style="border: 1px solid black; height: 15px;" class="" id="table">
					<tbody><tr>
				  			<td id='memory0' class="memory opacity00">10</td>
				  			<td id='memory1' class="memory opacity00">20</td>
				  			<td id='memory2' class="memory opacity00">30</td>
				  			<td id='memory3' class="memory opacity00">40</td>
				  			<td id='memory4' class="memory opacity00">50</td>
	  					</tr>
	        		</tbody>
      		</table>
      		<table  class="" id="addressTable" style='padding: 10px'>
					<tbody><tr>
				  			<td class="address">1024</td>
				  			<td class="address">1026</td>
				  			<td class="address">1028</td>
				  			<td class="address">1030</td>
				  			<td class="address">1032</td>
	  					</tr>
	        		</tbody>
	        	</table>
	        </div>	
	        <div id='arrayTable2' class='opacity00'>
			<table  class="" id="arrayTable" style='padding: 10px'>
					<tbody><tr>
				  			<td class="array">b[<span class='color-brown'>0</span>]</td>
				  			<td class="array">b[<span class='color-brown'>1</span>]</td>
				  			<td class="array">b[<span class='color-brown'>2</span>]</td>
				  			<td class="array">b[<span class='color-brown'>3</span>]</td>
				  			<td class="array">b[<span class='color-brown'>4</span>]</td>
	  					</tr>
	        		</tbody>
	        	</table>
		<table style="border: 1px solid black; height: 15px;" class="" id="table">
					<tbody><tr>
				  			<td id='memory5' class="memory opacity00">10</td>
				  			<td id='memory6' class="memory opacity00">20</td>
				  			<td id='memory7' class="memory opacity00">30</td>
				  			<td id='memory8' class="memory opacity00">40</td>
				  			<td id='memory9' class="memory opacity00">50</td>
	  					</tr>
	        		</tbody>
      		</table>
      		<table  class="" id="addressTable" style='padding: 10px'>
					<tbody><tr>
				  			<td class="address">1024</td>
				  			<td class="address">1026</td>
				  			<td class="address">1028</td>
				  			<td class="address">1030</td>
				  			<td class="address">1032</td>
	  					</tr>
	        		</tbody>
	        	</table>
	        </div>
	       </div>
	</div>
</div>
<div class='col-xs-12'>
	<div class='col-xs-12 col-xs-offset-3' style='margin-top: 30px;'>
		<div class='col-xs-4'>
	   <pre id='structureConcept' class='opacity00' style='margin-top: 24px;'> <span id='structBook' class=''><span class='color-rose'>struct</span> book
 <span id='membersOfStructBook'>}
   <span class='color-rose'>char</span> name[20];
   <span class='color-rose'>float</span> price;
   <span class='color-rose'>int</span> page;
 };</span></span>
   <span id='storeBmemory'><span id='bookB1'><span class='color-rose'>struct</span> book b1</span> = <span id='cLanguage'>{"<span id='name'>C LANGUAGE</span>", <span id='price'>125.5</span>, <span id='pages'>315</span>};</span></span>
   <span id='bookB2'>struct book b2;</span>
   <span id='b2equalsB1'> b2 = b1;</span>
   
   </pre>
			</div>
	<div id='memoryStoreB' class='col-xs-3 '>
		<div  class=''>
		<div id='b1Array'  class='opacity00' style="color: green; margin-left: 119px;">b1</div>
			<table  class="opacity00" id="table1" style='border: 1px solid black;'>
					<tbody>
						<tr>
				  			<td class="array">name</td>
				  			<td class="array">price</td>
				  			<td class="array">pages</td>
	  					</tr>
						<tr>
				  			<td id='mem0' class="memory opacity00" style='width: 138px;'>C LANGUAGE</td>
				  			<td id='mem1' class="memory opacity00">125.5</td>
				  			<td id='mem2' class="memory opacity00">315</td>
	  					</tr>
	  					<tr>
				  			<td class="array">2024</td>
				  			<td class="array">2044</td>
				  			<td class="array">2048</td>
	  					</tr>
	        		</tbody>
      		</table>
      		<div id='b2Arayy' class='opacity00' style="color: green; margin-left: 119px;">b2</div>
      		<table  class="opacity00" id="table2" style='margin-top: 10px; border: 1px solid black;'>
					<tbody>
						<tr>
				  			<td class="array">name</td>
				  			<td class="array">price</td>
				  			<td class="array">pages</td>
	  					</tr>
						<tr>
				  			<td id='mem30' class="memory opacity00" style='width: 138px;'>C LANGUAGE</td>
				  			<td id='mem31' class="memory opacity00">125.5</td>
				  			<td id='mem32' class="memory opacity00">315</td>
	  					</tr>
	  					<tr>
				  			<td class="array">2024</td>
				  			<td class="array">2044</td>
				  			<td class="array">2048</td>
	  					</tr>
	        		</tbody>
      		</table>
      	</div>
     </div>
  </div>
</div>
<div class="button col-xs-12 text-center " id="button">
	<button class="btn btn-success glyphicon glyphicon-refresh opacity00" type="button" id='restartBtn' style='margin-top:4px'>Restart</button>
</div>
</body>

<script>
$(document).ready(function() {
	intro = introJs();
	$('#restartBtn').click(function() {
		location.reload();
		});
	$("body").keypress(function(e) {
		 if (e.which === 13) {
			 e.preventDefault();
			}
	});
	intro.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		
		steps :	[{
			element :'#title',
			intro :'',
			position:"bottom"
		},{
			element :'#intVariable',
			intro :'',
			position:"bottom" 
		},{
			element :'#arrayOfaValues',
			intro :'',
			position:"bottom"  
		},{
			element :'#arrayTable1',
			intro :'',
			position:"bottom" 
		},{
			element :'#arrayOfbValues',
			intro :'',
			position:"bottom"
		},{
			element :'#arrayTable2',
			intro :'',
			position:"bottom" 
		},{
			element :'#bEqualsa',
			intro :'',
			position:"bottom" 
		},{
			element :'#forCondition',
			intro :'',
			position:"bottom"
		},{
			element :'#arrayTable2',
			intro :'',
			tooltipClass:'hidden',
			position:"bottom"
		},{
			element :'#structureConcept',
			intro :'',
			position:"bottom"
		},{
			element :'#structBook',
			intro :'',
			position:"bottom"  
		},{
			element :'#storeBmemory',
			intro :'',
			tooltipClass:'hidden',
			position:"bottom" 
		},{
			element :'#bookB1',
			intro :'',
			position:"bottom"
		},{
			element :'#cLanguage',
			intro :'',
			position:"bottom"
		},{
			element :'#table1',
			intro :'',
			tooltipClass:'hidden',
			position:"bottom" 
		},{
			element :'#bookB2',
			intro :'',
			position:"bottom" 
		},{
			element :'#b2equalsB1',
			intro :'',
			position:"bottom"
		},{
			element :'#table2',
			intro :'',
			tooltipClass:'hidden',
			position:"bottom" 
		},{
			element :'#restartBtn',
			intro :'',
			position:"right"
		
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		case "intVariable" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#tableDiv').removeClass('visibility-hidden');
				$('#intVariable').removeClass('opacity00');
	  			typing('.introjs-tooltiptext',"This is declaration of the variable <span class='color-yellow'>i</span>." ,function() { 
					$('.introjs-nextbutton').show();	
			 	 });
			});
		break;
		case "arrayOfaValues" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#arrayOfaValues').removeClass('opacity00');
	  			typing('.introjs-tooltiptext',"Here the array <span class='color-yellow'>a</span> is declared with size <span class='color-yellow'>5</span>." ,function() { 
					$('.introjs-nextbutton').show();	
			  		});
				});
		break;
		case "arrayTable1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#aValue').removeClass('opacity00');
				$('#arrayTable1').removeClass('opacity00');
				$('#array0').addClass('circle-css');
				var l = $("#array0").offset();
				$("#memory0").offset({"top": l.top,"left": l.left});
		        TweenMax.to("#memory0", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		        	$('#array0').removeClass('circle-css');
		        	$('#array1').addClass('circle-css');
		        	var l = $("#array1").offset();
					$("#memory1").offset({"top": l.top,"left": l.left});
			        TweenMax.to("#memory1", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			        	$('#array1').removeClass('circle-css');
			        	$('#array2').addClass('circle-css');
			        	var l = $("#array2").offset();
						$("#memory2").offset({"top": l.top,"left": l.left});
				        TweenMax.to("#memory2", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
				        	$('#array2').removeClass('circle-css');
				        	$('#array3').addClass('circle-css');
				        	var l = $("#array3").offset();
							$("#memory3").offset({"top": l.top,"left": l.left});
					        TweenMax.to("#memory3", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
					        	$('#array3').removeClass('circle-css');
					        	$('#array4').addClass('circle-css');
					        	var l = $("#array4").offset();
								$("#memory4").offset({"top": l.top,"left": l.left});
						        TweenMax.to("#memory4", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
						        	$('#array4').removeClass('circle-css');
	  								typing('.introjs-tooltiptext',"<ul><li>The subscript of the array always start from <span class='color-yellow'>0</span>.</li><li>Each elelment of the array can be accessed by using <span class='color-yellow'>subscript</span> (or) <span class='color-yellow'>index</span>.</li><li>The base address of entire array is <span class='color-yellow'>1024</span> the next address is <span class='color-yellow'>1026</span> because <span class='color-yellow'>int</span> allocates <span class='color-yellow'>2 bytes</span> of memory.</li></ul>" ,function() { 
									$('.introjs-nextbutton').show();	
	  								});
	  								}});  
								}});  
			 				}});  
						}});  
	  				}});  
				});
		break;
		case "arrayOfbValues" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#arrayOfbValues').removeClass('opacity00');
	  			typing('.introjs-tooltiptext',"Here array <span class='color-yellow'>b</span> is declared with size <span class='color-yellow'>5</span>." ,function() { 
					$('.introjs-nextbutton').show();	
			  		});
				});
		break;
		case "arrayTable2" :
			$('.introjs-nextbutton').hide();
			if(intro._currentStep == 5) {
				$(".introjs-helperLayer").one("transitionend", function() {
					$('#bValue').removeClass('opacity00');
					$('#arrayTable2').removeClass('opacity00');
		  			typing('.introjs-tooltiptext',"Memory allocated for array <span class='color-yellow'>b</span> with size <span class='color-yellow'>5</span>." ,function() { 
						$('.introjs-nextbutton').show();	
				 		 });
					});
			} else if(intro._currentStep == 8) {
				$(".introjs-helperLayer").one("transitionend", function() {
					var l = $("#memory0").offset();
					$("#memory5").offset({"top": l.top,"left": l.left});
				    TweenMax.to("#memory5", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
				        var l = $("#memory1").offset();
						$("#memory6").offset({"top": l.top,"left": l.left});
					    TweenMax.to("#memory6", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
					    	var l = $("#memory2").offset();
							$("#memory7").offset({"top": l.top,"left": l.left});
					        TweenMax.to("#memory7", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
					        	var l = $("#memory3").offset();
								$("#memory8").offset({"top": l.top,"left": l.left});
						        TweenMax.to("#memory8", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
						        	var l = $("#memory4").offset();
									$("#memory9").offset({"top": l.top,"left": l.left});
							        TweenMax.to("#memory9", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
							        	intro.nextStep();
						        		}});
						       		}});
					   		 	}});
				        	}});
				    	}});
					});
				}
		break;
		
		case "bEqualsa" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#bEqualsa').removeClass('opacity00');
	  			typing('.introjs-tooltiptext',"<span id='error'><span id='user'>User wants to assign every element of the array <span class='color-yellow'>a</span> to array <span class='color-yellow'>b</span></span></span>" ,function() { 
	  				$("#arrayTable1").effect("highlight", {color: '#76EEC6'}, 2000, function() {
						$("#arrayTable2").effect("highlight",{color: '#76EEC6'}, 2000, function() {
							$('#user').remove();
							typing('#error',"<span id='' class=''>Which is an <span class='color-red'>error</span> because we cannot assign directly one array name to another array name.</span>" ,function() {
	  				      		$('.introjs-nextbutton').show();
							});
	  					});
			  		});
				});
			});
		break;
		case "forCondition" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#forCondition').removeClass('opacity00');
	  			typing('.introjs-tooltiptext',"<ul>Now solution to this problem is.<li>Each and every element of the array is individually copied into another array by using their <span class='color-yellow'>indices</span> (or) <span class='color-yellow'>subscript</span>.</li></ul>" ,function() { 
					$('.introjs-nextbutton').show();	
			 		});
				});
		break;
		
		case "structureConcept" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#structureConcept').removeClass('opacity00');
	  			typing('.introjs-tooltiptext',"Now let us consider structure concept.</li></ul>" ,function() { 
					$('.introjs-nextbutton').show();	
			 		});
				});
		break; 
		case "structBook" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext',"This is a structure declaration which declares a new user defined datatype <span class='color-yellow'>book</span>." ,function() {
					$('.introjs-nextbutton').show();	
			 		});
				});
		break; 
		case "storeBmemory" : 
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				intro.nextStep();	
				});
		break;
		case "bookB1" : 
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext',"This is structure definition which allocates memory to the structure variable <span class='color-yellow'>b1</span>" ,function() {
					$('.introjs-nextbutton').show();	
			 		});
				});
		break;
		case "cLanguage" : 
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext',"Initialization of values to structure variable." ,function() {
					$('.introjs-nextbutton').show();	
			 		});
				});
		break;
		case "table1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#b1Array").removeClass("opacity00");
				$("#table1").removeClass("opacity00");
				intro.refresh();
				$('#name').addClass('circle-css');
				var l = $("#name").offset();
				$("#mem0").offset({"top": l.top,"left": l.left});
		        TweenMax.to("#mem0", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		        	$('#name').removeClass('circle-css');
		        	$('#price').addClass('circle-css');
		        	var l = $("#price").offset();
					$("#mem1").offset({"top": l.top,"left": l.left});
			        TweenMax.to("#mem1", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			        	$('#price').removeClass('circle-css');
			        	$('#pages').addClass('circle-css');
			        	var l = $("#pages").offset();
						$("#mem2").offset({"top": l.top,"left": l.left});
				        TweenMax.to("#mem2", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
							$('#pages').removeClass('circle-css');
			  				typing('.introjs-tooltiptext', "", function() {  
								intro.nextStep();
								});
		       				 }});
		       		 		}});
		        		}});
				});
		break;
		case "bookB2" : 
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext',"This is structure definition which allocates memory to the structure variable <span class='color-yellow'>b2</span>." ,function() {
					$('.introjs-nextbutton').show();	
			 		});
				});
		break;
		case "b2equalsB1" : 
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#b2Arayy").removeClass("opacity00");
				$("#table2").removeClass("opacity00");
				typing('.introjs-tooltiptext',"It is possible to copy an entire structure value in to another structure variable." ,function() {
					$('.introjs-nextbutton').show();	
			 		});
				});
		break;
		case "table2" : 
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var l = $("#mem0").offset();
				$("#mem30").offset({"top": l.top,"left": l.left});
		        TweenMax.to("#mem30", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		        	var l = $("#mem1").offset();
					$("#mem31").offset({"top": l.top,"left": l.left});
			        TweenMax.to("#mem31", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			        	var l = $("#mem2").offset();
						$("#mem32").offset({"top": l.top,"left": l.left});
				        TweenMax.to("#mem32", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			  				typing('.introjs-tooltiptext', "", function() {  
								intro.nextStep();
								});
		       				 }});
		       		 	}});
		        	}});
				});
		break;
		case "restartBtn":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext', "Click to restart.", function() {
					$("#restartBtn").removeClass("opacity00");
					});
				});
		break;
		}
	});
	
	intro.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	typing('.introjs-tooltiptext',"This is one of the feature of structures, let us consider an example how the assignment operator run on arrays and structures.",function() {
		$('.introjs-nextbutton').show();
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
	</script>
</html>