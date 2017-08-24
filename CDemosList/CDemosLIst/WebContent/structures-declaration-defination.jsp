<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery-latest.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="css/introjs.css">
	<link rel="stylesheet" href="css/introjs-ct.css">
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/jquery-ui.css"/>
	<script src="js/gs/TweenMax.min.js"></script>
	<script src='js/intro.js'></script>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<script src="js/typewriting.min.js"></script>
	<script src="js/jquery-ui-latest.js"></script>
	<title>structures</title>
</head>

<style>
#totaldiv {
	margin-top: 20px;
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
    border-radius: 2px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 190px;
    margin-top: 20px;
    color: green;
    padding: 10px;
	}
	
.color-rose {
	color:#8B008B;
	}
	
.color-yellow {
 	color: yellow;
 	}
 	
.introjs-tooltip {
    min-width: 241px;
    }
    
#table {
	border: 1px solid Black;
    width: 100px;
    font-size: 15px;
    text-align: center;
	}
    
.memory {
	border: 1px solid Black;
    width: 50px;
    font-size: 15px;
    text-align: center;
	}   
	 
.color-green {
	color: green;
	}

#declarationDefination {
	position: relative;
	z-index: 9999999;
	font-size: 18px;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
	text-align: center;
	color: #CD5B45;
	}
</style>

<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
		<span id='title' class='label ct-demo-heading'>Structures</span>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-6 col-xs-offset-3 visibility-hidden'>
		<ul id='defination'></ul>
	</div>
</div>
<div class='col-xs-12'>
	<div class='col-xs-offset-4 col-xs-4 opacity00' style='margin-top: 10px' id='declarationDefination'> Structure Declaration and Definition</div>
</div>
<div class='col-xs-12 col-xs-offset-3 '>
	<div class='col-xs-4' style='margin-top: 10px;'>
		<pre id='exampleOfStudent' style='height: 210px;' class='opacity00'>   
    <span id='studentStruct'>struct <span class='color-rose'>student</span></span>
   <span id='members'>{
          <span id='int'><span class='color-rose'>int</span> a;</span>
          <span id='float'><span class='color-rose'>float</span> b;</span>
          <span id='char'><span class='color-rose'>char</span> c;</span>
   }</span>;
     <span id='studentVariables'>struct student s1, s2, s3;</span></pre>
	</div>
<div id='tables' class='col-xs-2' style='margin-top: 20px;'>
<div id='storeS1' class="col-xs-12 opacity00">
    <div  class="col-xs-4">
     	<div style="margin-left: 35px;"><b class="color-green">s1</b></div>
     		<div><span style='margin-left: 12px;'>a</span><span style='margin-left: 25px;'>b</span><span style='margin-left: 25px;'>c</span></div>
			<table style="border: 1px solid black; height: 15px;" class="" id="table">
				<tbody><tr>
			  			<td class="memory"></td>
			  			<td class="memory"></td>
			  			<td class="memory"></td>
  					</tr>
        	</tbody>
      </table>
  </div>
   <!-- <div class="col-xs-4"><i class="fa fa-arrow-right" aria-hidden="true" style="margin-top: 23px; margin-left:56px; color: orangered;"></i></div>
    	<div class="col-xs-4">
      		<div style="border: 1px solid black; padding: 2px; width: 34px; border-radius: 4px; margin-left: 22px; margin-top: -2px;">
				<div><span class="color-green">s1</span>.a</div>
				<div><span class="color-green">s1</span>.b</div>
				<div><span class="color-green">s1</span>.c</div>
		</div>
  	 </div> -->
</div>
<div  id='storeS2' class="col-xs-12 opacity00">
<div  class="col-xs-4">
   <div style="margin-left: 35px; margin-top: 13px;"><b class="color-green">s2</b></div>
		<div><span style='margin-left: 12px;'>a</span><span style='margin-left: 25px;'>b</span><span style='margin-left: 25px;'>c</span></div>
			<table style="border: 1px solid black; height: 15px;" class="" id="table">
		<tbody><tr>
	  			<td class="memory"></td>
	  			<td class="memory"></td>
	  			<td class="memory"></td>
  			</tr>
  		</tbody></table>
  	</div>
  	<!-- <div class="col-xs-4"><i style="margin-top: 35px; margin-left:56px; margin-left: 56px; color: orangered;" aria-hidden="true" class="fa fa-arrow-right"></i></div>
    <div class="col-xs-4">
		<div style="border: 1px solid black; padding: 2px; width: 34px; border-radius:4px; margin-left: 22px; margin-top: 5px;">
			<div><span class="color-green">s2</span>.a</div>
			<div><span class="color-green">s2</span>.b</div>
			<div><span class="color-green">s2</span>.c</div>
		</div>
	</div> -->
</div>
<div   id='storeS3' class="col-xs-12 opacity00">	
<div class="col-xs-4">	
  		<div style="margin-top: 8px; margin-left: 35px;"><b class="color-green">s3</b></div>
  		<div><span style='margin-left: 12px;'>a</span><span style='margin-left: 25px;'>b</span><span style='margin-left: 25px;'>c</span></div>
			<table style="border: 1px solid black; height: 15px;" class="" id="table">
			<tbody  style='border: 1px solid black'><tr>
	  			<td class="memory"></td>
	  			<td class="memory"></td>
	  			<td class="memory"></td>
  			</tr>
  		</tbody></table>
	</div>
	<!-- <div class="col-xs-4"><i style="margin-top: 30px;  margin-left: 56px; color: orangered;" aria-hidden="true" class="fa fa-arrow-right"></i></div>
    <div class="col-xs-4">
	<div style="border: 1px solid black; padding: 2px; width: 34px; border-radius: 4px; margin-left: 22px; margin-top: 5px;">
			<div><span class="color-green">s3</span>.a</div>
			<div><span class="color-green">s3</span>.b</div>
			<div><span class="color-green">s3</span>.c</div>
		</div>
    </div> -->
    </div>
    </div>
</div>
<div class='col-xs-12 col-xs-offset-3'>
<div id='structureDeclaration'class='col-xs-3 opacity00' style='margin-top: 0px;'>
		<pre id='declarationSyntax' class=''>     <span id='keyWord'>struct</span> <span id='structureName' class='color-rose'>structure_name</span> 
     <span id='enclosedBraces'>{
	    Data_type1 var1;
	    Data_type2 var2;
            ....
            ....
            Data_typen varn;
     }</span><span id='semicolon'>;</span></pre>
	</div>
	<div  class='col-xs-3' style='margin-top: 0px;'>
	<pre id='exampleStructureDeclaration' class='opacity00'>    <span id='structutreIdentifier'>struct <span class='color-rose'>employee</span></span>
    {
           <span id='name'><span class='color-rose'>char</span> name[20];</span>
           <span id='id'><span class='color-rose'>int</span> id;</span>
           <span id='long'><span class='color-rose'>long</span> class;</span>
     };
     
     </pre></div>
</div>
<div class='col-xs-12 col-xs-offset-4'>
<div id='structureDefination' class='col-xs-4'>
		<pre id='definitionSyntax' class='opacity00'>  <span id='keyWord1'>struct</span><span id='structureName1' class='color-rose'> structure_name</span> <span id='structureVariables'>svar1, svar2, ...., svarn;</span></pre>
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
			element :'#informationdiv',
			intro :'',
			position:"bottom" 
		},{
			element :'#declarationDefination', 
			intro :'',
			position:"bottom"
		},{
			element :'#exampleOfStudent', 
			intro :'',
			position:"bottom"
		},{
			element :'#members', 
			intro :'',
			position:"bottom"
		},{
			element :'#studentStruct', 
			intro :'',
			position:"bottom"
		},{
			element :'#studentVariables', 
			intro :'',
			position:"bottom"
		},{
			element :'#storeS1', 
			intro :'',
			position:"bottom"
		},{
			element :'#storeS2', 
			intro :'',
			position:"bottom"
		},{
			element :'#storeS3', 
			intro :'',
			position:"bottom" 
		},{
			element :'#tables', 
			intro :'',
			position:"bottom"
		},{
			element :'#structureDeclaration', 
			intro :'',
			position:"bottom"
		},{
			element :'#keyWord',
			intro :'',
			position:"bottom"
		},{
			element :'#structureName',
			intro :'',
			position:"bottom"
		},{
			element :'#enclosedBraces',
			intro :'',
			position:"bottom"
		},{
			element :'#semicolon',
			intro :'',
			position:"bottom"
		},{
			element :'#exampleStructureDeclaration',
			intro :'',
			position:"bottom"
		},{
			element :'#structutreIdentifier',
			intro :'',
			position:"bottom"
		},{
			element :'#name',
			intro :'',
			position:"bottom"
		},{
			element :'#id',
			intro :'',
			position:"bottom"
		},{
			element :'#long',
			intro :'',
			position:"bottom"
		},{
			element :'#definitionSyntax',
			intro :'',
			position:"right"
		},{
			element :'#keyWord1',
			intro :'',
			position:"right"
		},{
			element :'#structureName1',
			intro :'',
			position:"right"
		},{
			element :'#structureVariables',
			intro :'',
			position:"right"
		},{
			element :'#restartBtn',
			intro :'',
			position:"right"
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "informationdiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#informationdiv").removeClass("visibility-hidden");
		  	 typing('#defination', "<ul><li>A <b>Structure</b> is a derived data type to organize a group of related data items of different data types referring to a single entity.</li>"+
		  			"<li>keyword <b>struct</b> is used for creating a structure.</li><li>each data item in a structure is called a <b>member</b>.Sometimes these members are also called fields.</li>"+
		  			"<li>the advantage of using a structure is that the accessibility of members becomes easier since all the members of a specific structure gets allocation of continuous memory and therefore minimizing the memory access time.</li></ul>", function() {  
		  		typing('.introjs-tooltiptext',"introduction of structures." ,function() { 
				$('.introjs-nextbutton').show();	
				  });
				});
			});
		break;
		case "declarationDefination" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#declarationDefination").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"let us consider example of structure declaration and defination." ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "exampleOfStudent" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#exampleOfStudent").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"let us consider example of structure defination." ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "members" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#informationdiv").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"<ul><li>these fields are called structure <span class='color-yellow'>elements</span> (or) <span class='color-yellow'>members</span>.</li>"+
		  				"<li>each memeber can have different data types, a is of <span class='color-yellow'>int</span> type, b is of <span class='color-yellow'>float</span> type and c is of <span class='color-yellow'>char</span> type.</li></ul>" ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "studentStruct" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#informationdiv").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"<ul><li><span class='color-yellow'>struct</span> keyword is used to define a structure.</li><li><span class='color-yellow'>struct</span> define a new data type which is a collection of different type of data.</li><li>here <span class='color-yellow'>struct student</span> declares as structure to hold the details of student.</li></ul>" ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "studentVariables" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#informationdiv").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"<ul><li>declaring structure variables of a student.</li><li>here <span class='color-yellow'>s1</span>, <span class='color-yellow'>s2</span> and <span class='color-yellow'>s3</span> are variables of structure Student.</li></ul>" ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "storeS1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#storeS1").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"<span class='color-yellow'>s1</span> is a variable of student.<ul><li>in order to assign a value to a structure member, the member name must be linked with the structure variable using <span class='color-yellow'>dot</span>(.) operator also called <span class='color-yellow'>period</span> or <span class='color-yellow'>member access</sapn> operator.</li>"+
		  				"<li>a, b, c access for a variable s1.</li><li><span class='color-yellow'>s1</span>.a</li><li><span class='color-yellow'>s1</span>.b</li><li><span class='color-yellow'>s1</span>.c</li></ul>" ,function() {
		  		$('.introjs-nextbutton').show();
				});
			});
		break;
		case "storeS2" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#storeS2").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"<span class='color-yellow'>s2</span> is a variable of student.<ul><li>a, b, c access for a variable s2.</li><li><span class='color-yellow'>s2</span>.a</li><li><span class='color-yellow'>s2</span>.b</li><li><span class='color-yellow'>s2</span>.c</li></ul>" ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "storeS3" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#storeS3").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"<span class='color-yellow'>s3</span> is a variable of student.<ul><li>a, b, c access for a variable s3.</li><li><span class='color-yellow'>s3</span>.a</li><li><span class='color-yellow'>s3</span>.b</li><li><span class='color-yellow'>s3</span>.c</li></ul>" ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "tables" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#informationdiv").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"here s1.a <span class='color-yellow'>&#8800;</span> s2.a <span class='color-yellow'>&#8800;</span> s3.a.<br> s1.b <span class='color-yellow'>&#8800;</span> s2.b <span class='color-yellow'>&#8800;</span> s3.b.<br> s1.c <span class='color-yellow'>&#8800;</span> s2.c <span class='color-yellow'>&#8800;</span> s3.c." ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "structureDeclaration" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#structureDeclaration").removeClass("opacity00");
		  		typing('.introjs-tooltiptext',"let us consider general declaration of structure." ,function() {
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "keyWord" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"the declaration begins with the keyword <span class='color-yellow'>struct</span>." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "structureName" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"<ul><li>the <span class='color-yellow'>structure_name</span> is identifier and it is optional.</li>"+
		  		"<li><span class='color-yellow'>structure_name</span> declared by user.</li><li>the declaration of a structure does not reserve any <span class='color-yellow'>storage space</span>.</li></ul>" ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "enclosedBraces" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"the list of declaration of its members must be enclosed in braces." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "semicolon" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"structure declaration ended with <span class='color-yellow'>semicolon(;).</span>" ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "exampleStructureDeclaration" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#exampleStructureDeclaration').removeClass('opacity00');
		  		typing('.introjs-tooltiptext',"let us consider the example of structure declaration." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "structutreIdentifier" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"<ul><li>the declaration begins with the keyword <span class='color-yellow'>struct</span>.</li><li>the identifier <span class='color-yellow'>employee</span> is the structure identifier.</li></ul>" ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "name" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"The name member is a 20-element array with <span class='color-yellow'>char</span> type." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "id" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"id is simple memeber with <span class='color-yellow'>int</span> type." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "long" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"class is simple member with <span class='color-yellow'>long</span> type." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "definitionSyntax" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#definitionSyntax').removeClass('opacity00');
		  		typing('.introjs-tooltiptext',"let us consider general definition of structure." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "keyWord1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"the definition begins with the keyword <span class='color-yellow'>struct</span>." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "structureName1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"<span class='color-yellow'>structure_name</span> is identifier and it is optional." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
			});
		break;
		case "structureVariables" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext',"defination of structure creates structure variables." ,function() {
		  		$('.introjs-nextbutton').show();
		  		});
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
	typing('.introjs-tooltiptext',"structures.",function() {
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