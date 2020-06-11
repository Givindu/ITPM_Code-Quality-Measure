<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Code Quality Measure</title> 
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"> 
	<link rel="stylesheet" href="../ComplexityMTool/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="CSS/main.css">
<link rel="stylesheet" href="CSS/style.css" />	
 
</head>

<body class="body">
		<!--Header section-->
	<section>
		<div class="header-container justify">
			<header>
				<!--Header image-->
				<img class="header-image" src="Images/header-image-crop.png" alt="">
				<!--Heading-->
				<h1 class="heading" style="text-align: center;">Code Quality
					Measure</h1>
			</header>

		</div>
	</section>
	<h1
			style="color: #FFFAFA; font-size: 64px; text-align: center; margin-top: -41px;">Inheritance</h1>

		<div style="text-align: center;">
			<a class="btn btn-primary" href="test_code.jsp" role="button">Size,Variable,Method</a>
			<a class="btn btn-primary" href="ControlStructure.jsp" role="button">Control
				Structures</a> <a class="btn btn-primary" href="Inheritance.jsp"
				role="button">Inheritance</a> <a class="btn btn-primary"
				href="Coupeling.jsp" role="button">Coupeling</a> <a
				class="btn btn-primary" href="AllFactors.jsp" role="button">All
				Factors</a>
		</div>
	
	
	
	<div class="container">
	<br>
	  
	  
  	<form action="code_tool_servlet" method="post">
  	 		<div style="text-align: center; color: white;">
		<h1>Select Folder:</h1>
		</hr>
		

	
		</hr>
  	
	  	<input id="input-file" type="file" name="file" webkitdirectory directory
				multiple="multiple" size="50" margin-top="2px" margin-left="445px" style="margin-left: 52px;"/> <br /> <br />
				
				<!--Zipped file Unzipper  -->
				<div class="form-group" style="    margin-left: 74px;">
				 <a	href="unzipFiles.jsp"><button class="btn btn-secondary"
						type="button" title="Use this if you have a zipped file">
						Unzip File</button></a>
						<span class="help-block">If your file is zipped, Click here</span>
			</div>
			<div style="margin-left: 69px;">
			<!-- Programming Language Selecter -->
				<div class="form-group"
					style="font-size: 25px; margin-left: 365px; font-weight: normal; width: 81%;">
					<label for="complexity" style="margin-right: 560px; ">Programming Language :</label> <select
						class="custom-select" name="language">

						<option value="1">Java</option>
						<option value="2">C++</option>

					</select>
					<label for="complexity" style="margin-right: 648px;">Complexity Type :</label> 
						
					<div class="form-group">
			  			<select class="form-control col-8 " id="selectDiv" name="selectFactor" onchange="viewDiv()">
			  				<option value="inheritance">Inheritance Factor</option>
			  				<option value="all">All The Factor</option>
			  			</select>
		  			</div>
				</div>
                <!--Uploaded code Editor  -->
				<div class="form-group"
					style="font-size: 25px; margin-left: 256px; width: 81%; font-weight: normal;">
					<label for="code" style="margin-right: 493px;">Enter Code:</label>
					<textarea class="form-control" rows="10" id="code" name="test_code" ></textarea>
				</div>
			</div>

			<div style="margin-left: 88px;">
            <!--Control buttons-->
			<input type="submit" value="Calculate" class="btn calculate-button" style="width: 15%; height: 7%; "/>
			<!--Button: clean-->
				<button class="btn clear-button" type="reset" style="width: 15%; height: 7%;">Clean</button>
			</div>	
			</hr>
	  </div>
	  
	  		
	  	<div class="col" style="margin-left: 291px; color: #FFFAFA;">
	  		<div class="border">
		  		<div class="p-2" style=" height: 375px; max-height:75%; overflow-y: scroll; color: #FFFAFA;">
				
		  			<div  id="sizeFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Size Factor</h5>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Program Component</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td style="color: #FFFAFA;">Keyword</td>
			  						<td>
							  			<select class="form-control" name="sizeKeyword">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Identifier</td>
			  						<td>
							  			<select class="form-control" name="sizeIdentifier">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Operator</td>
			  						<td>
							  			<select class="form-control" name="sizeOperator">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Numerical Value</td>
			  						<td>
							  			<select class="form-control" name="sizeNumerical">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">String Iiteral</td>
			  						<td>
							  			<select class="form-control" name="sizeString">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="d-none" id="variableFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Variable Factor</h5>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Program Component</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td style="color: #FFFAFA;">Global Variable</td>
			  						<td>
							  			<select class="form-control" name="variableGlobal">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Local Variable</td>
			  						<td>
							  			<select class="form-control" name="variableLocal">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Primitive Data Type Variable</td>
			  						<td>
							  			<select class="form-control" name="variablePrimitive">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Composite Data Type Variable</td>
			  						<td>
							  			<select class="form-control"  name="variableComposite">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="d-none" id="methodFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Method Factor</h5>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Program Component</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td style="color: #FFFAFA;">Method with a primitive return type</td>
			  						<td>
							  			<select class="form-control" name="methodPrimitive">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Method with a composite return type</td>
			  						<td>
							  			<select class="form-control" name="methodComposite">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Primitive data type parameter</td>
			  						<td>
							  			<select class="form-control" name="methodPrimitiveData">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Composite data type parameter</td>
			  						<td>
							  			<select class="form-control" name="methodCompositeData">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="d-none" id="structureFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Control Structure Factor</h5>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Control Structure Type</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td style="color: #FFFAFA;">A conditional control structure such as an 'if' or 'else-if' condition</td>
			  						<td>
							  			<select class="form-control" name="condition">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">An iterative control structure such as an 'for' , 'while' , or 'do-while' loop</td>
			  						<td>
							  			<select class="form-control" name="loop">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">The 'switch' statement in a 'switch-case' control structure</td>
			  						<td>
							  			<select class="form-control" name="switchCase">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">Each 'case' statement in a 'switch-case' control structure</td>
			  						<td>
							  			<select class="form-control" name="caseOnly">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="d-none" id="inheritanceFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Inheritance Factor</h5>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Inherited Pattern</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td style="color: #FFFAFA;">A class with no Inheritance(direct or indirect)</td>
			  						<td>
							  			<select class="form-control" name="Inheritance">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A class inheriting(direct or indirect) from one user-defined class</td>
			  						<td>
							  			<select class="form-control" name="Inheritance1">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A class inheriting(direct or indirect) from two user-defined classes</td>
			  						<td>
							  			<select class="form-control" name="Inheritance2">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A class inheriting(direct or indirect) from three user-defined classes</td>
			  						<td>
							  			<select class="form-control" name="Inheritance3">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A class inheriting(direct or indirect) from more than three user-defined classes</td>
			  						<td>
							  			<select class="form-control" name="Inheritance4">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="d-none" id="couplingFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Coupling Factor</h5>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Coupling Type</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td style="color: #FFFAFA;">A recursive call</td>
			  						<td>
							  			<select class="form-control" name="recursive">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A regular method calling another regular method in the same file</td>
			  						<td>
							  			<select class="form-control" name="regularRegular">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A regular method calling another regular method in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A regular method calling a recursive method in the same file</td>
			  						<td>
							  			<select class="form-control" name="regularRecursive">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A regular method calling a recursive method in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A recursive method calling another recursive method in the same file</td>
			  						<td>
							  			<select class="form-control" name="recursiveRecursive">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A recursive method calling another recursive method in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A recursive method calling a regular method in the same file</td>
			  						<td>
							  			<select class="form-control" name="recursiveRegular">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A recursive method calling a regular method in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A regular method referencing a global variable in the same file</td>
			  						<td>
							  			<select class="form-control" name="regularGlobal">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A regular method referencing a global variable in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A recursive method referencing a global variable in the same file</td>
			  						<td>
							  			<select class="form-control" name="recursiveGlobal">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td style="color: #FFFAFA;">A recursive method referencing a global variable in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  		</div>
	  		</div>
	  	</div>
	  </div>
  	</div>
  	</form>
  	
  	<form action="uploadFileServer" id="uploadFileForm" method="post">
  		<input type="text" class="d-none" id="zipPath" name="zipPath">
  		<input type="file" name="file" class="d-none" id="fileUpload" onchange="fileUploadSubmit()" accept=".zip">
  	</form>
<br>


		<!--Results viewer-->
		<br> <br>
	</div>
	<!--Footer-->
	<div>
		<footer class="page-footer">
			<img class="footer-image" src="Images/footer-image-crop.png">
		</footer>
	</div>
	<!-- Javascript -->
	<script type="text/javascript" src="JS/jqueryComp.js"></script>
	<script type="text/javascript"
		src="Plugins/codemirror/lib/codemirror.js"></script>
	<script type="text/javascript" src="JS/default.js"></script>

	<script type="text/javascript" src="JS/behave.js"></script>
	<script type="text/javascript" src="JS/script.js"></script>

	<script data-require="angularjs@1.3.6" data-semver="1.3.6"
		src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.6/angular.min.js"></script>


</body>
</html>
<script>

	function clicks(){
		
		document.getElementById('fileUpload').click();
		
	}
	
	function fileUploadSubmit(){
		
		document.getElementById("zipPath").value =document.getElementById("fileUpload").value;
		
		alert(document.getElementById("fileUpload"));
		
		document.getElementById("uploadFileForm").submit();
		
	}

	function viewDiv(){
		var div = document.getElementById('selectDiv').value;
		
		if(div=="size"){
			hideAll();
			document.getElementById('sizeFactor').classList.add("d-block");
		}else if(div=="variable"){
			hideAll();
			document.getElementById('variableFactor').classList.add("d-block");
		}else if(div=="method"){
			hideAll();
			document.getElementById('methodFactor').classList.add("d-block");
		}else if(div=="controlStructure"){
			hideAll();
			document.getElementById('structureFactor').classList.add("d-block");
		}else if(div=="inheritance"){
			hideAll();
			document.getElementById('inheritanceFactor').classList.add("d-block");
		}else if(div=="coupling"){
			hideAll();
			document.getElementById('couplingFactor').classList.add("d-block");
		}else if(div=="all"){
			hideAll();
		}
	}
	
	function hideAll(){
		
		document.getElementById('sizeFactor').classList.remove("d-block");
		document.getElementById('variableFactor').classList.remove("d-block");
		document.getElementById('methodFactor').classList.remove("d-block");
		document.getElementById('structureFactor').classList.remove("d-block");
		document.getElementById('inheritanceFactor').classList.remove("d-block");
		document.getElementById('couplingFactor').classList.remove("d-block");
		
		document.getElementById('sizeFactor').classList.add("d-none");
		document.getElementById('variableFactor').classList.add("d-none");
		document.getElementById('methodFactor').classList.add("d-none");
		document.getElementById('structureFactor').classList.add("d-none");
		document.getElementById('inheritanceFactor').classList.add("d-none");
		document.getElementById('couplingFactor').classList.add("d-none");
		
	}
	
</script>