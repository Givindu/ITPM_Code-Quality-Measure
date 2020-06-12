<%@page import="tool.service.*"%>
<%@page import="tool.model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Measuring Tool</title>
	<link rel="stylesheet" href="../ComplexityMTool/assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"> 
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 
	 
	
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
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
	
	
	
	
<style>
table, td, th {
	border: 1px solid black;
}
table {
	border-collapse: collapse;
	width: 100%;
}
th {
	height: 50px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #2c2e2d;
	font-size: 25px;
}
li {
	float: left;
}
li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}
li
a:hover:not (.active ) {
	background-color: #f2f5f4;
}
</style>

	
	
	 
</head>
<body>

	<ul>
		<li><a href="test_code.jsp">Home</a></li>
	</ul>
  		



	

 
  	

		  			<% if(session.getAttribute("type").toString().equals("size")){ %>
		  			<div id="sizeFactor">
		  			<br>
		  					
		  			<br>
		  		<h1 class="display-1"	style="text-align: center; margin-left: 100px; font-family: century gothic; font-size: 50px; margin-top: 10px">
				<font color="#00376c">Complexity of Size</font>
				</h1>
					<br><br>
		  				<table style="width: 78%; margin-left: 160px; background-color: #fff; " class="table table-bordered">
  							
			  					<tr>
			  						<th>Line no</th>
			  						<th>Program statements</th>
			  						<th>Nkw</th>
			  						<th>Nid</th>
			  						<th>Nop</th>
			  						<th>Nnv</th>
			  						<th>Nsl</th>
			  						<th>Cs</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<%
			  						codeSizeService test = new codeSizeService();
									ArrayList<size> arrayList = test.test(session.getAttribute("test_code").toString());
									
									for (size sizes : arrayList) {
										
										int Nkw = sizes.getKeyword()*Integer.parseInt(session.getAttribute("sizeKeyword").toString());
										int Nid = sizes.getIdentifier()*Integer.parseInt(session.getAttribute("sizeIdentifier").toString());
										int Nop = sizes.getOperator()*Integer.parseInt(session.getAttribute("sizeOperator").toString());
										int Nnv = sizes.getNumerical()*Integer.parseInt(session.getAttribute("sizeNumerical").toString());
										int Nsl = sizes.getStringCount()*Integer.parseInt(session.getAttribute("sizeString").toString());
										int total =Nkw+Nid+Nop+Nnv+Nsl;
								%>
			  					<tr>
			  						<td><%=sizes.getLineNumber() %></td>
			  						<td><%=sizes.getLine() %></td>
			  						<td><%=sizes.getKeyword() %></td>
			  						<td><%=sizes.getIdentifier() %></td>
			  						<td><%=sizes.getOperator() %></td>
			  						<td><%=sizes.getNumerical() %></td>
			  						<td><%=sizes.getStringCount() %></td>
			  						<td><%=total %></td>
			  					</tr>
			  					<% 
									}	
								%>
			  				</tbody>
		  				</table>
		  			</div>
		  			<%}
		  			if(session.getAttribute("type").toString().equals("variable")){ %>
		  			<div id="variableFactor">
		  			<br>
		  					
		  			<br>
		  		<h1 class="display-1"	style="text-align: center; margin-left: 100px; font-family: century gothic; font-size: 50px; margin-top: 10px">
				<font color="#00376c">Complexity of Variables</font>
				</h1>
					<br><br>
		  				<table style="width: 78%; margin-left: 160px; background-color: #fff; " class="table table-bordered">
  							
			  					<tr>
			  						<th>Line no</th>
			  						<th>Program statements</th>
			  						<th>Wvs</th>
			  						<th>Npdtv</th>
			  						<th>Ncdtv</th>
			  						<th>Cv</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<%
			  						VariableService test1 = new VariableService();
									ArrayList<Variables> arrayList1 = test1.test(session.getAttribute("test_code").toString());
									
									for (Variables variables : arrayList1) {
										
										int Wvs =(variables.getGlobal()*Integer.parseInt(session.getAttribute("variableGlobal").toString()))+(variables.getLocal())*Integer.parseInt(session.getAttribute("variableLocal").toString());
							            
							            int Npdtv = variables.getGlobal()+variables.getLocal();
							            
							            int Cv = Wvs*((Npdtv*Integer.parseInt(session.getAttribute("variablePrimitive").toString()))+(variables.getComposite()*Integer.parseInt(session.getAttribute("variableComposite").toString())));
										
								%>
			  					<tr>
			  						<td><%=variables.getLineNumber() %></td>
			  						<td><%=variables.getLine() %></td>
			  						<td><%=Wvs %></td>
			  						<td><%=Npdtv %></td>
			  						<td><%=variables.getComposite() %></td>
			  						<td><%=Cv %></td>
			  					</tr>
			  					<% 
									}	
								%>
			  				</tbody>
		  				</table>
		  			</div>
		  			<%}else if(session.getAttribute("type").toString().equals("method")){ %>
		  			<div id="methodFactor">
		  			<br>
		  					
		  			<br>
		  		<h1 class="display-1"	style="text-align: center; margin-left: 100px; font-family: century gothic; font-size: 50px; margin-top: 10px">
				<font color="#00376c">Complexity of Methods</font>
				</h1>
					<br><br>
		  				<table style="width: 78%; margin-left: 160px; background-color: #fff; " class="table table-bordered">
  							
			  					<tr>
			  						<th>Line no</th>
			  						<th>Program statements</th>
			  						<th>Wmrt</th>
			  						<th>Npdtp</th>
			  						<th>Ncdtp</th>
			  						<th>Cm</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<%
			  						methodService test2 = new methodService();
									ArrayList<Methods> arrayList2 = test2.test(session.getAttribute("test_code").toString());
									
									for (Methods methods : arrayList2) {
										
										int Wmrt =(methods.getComposite_method()*Integer.parseInt(session.getAttribute("methodComposite").toString()))+(methods.getPrimitive_method()*Integer.parseInt(session.getAttribute("methodPrimitive").toString()));
							            
							            int Cm = Wmrt+((methods.getPrimitive_parameters()*Integer.parseInt(session.getAttribute("methodPrimitiveData").toString()))+(methods.getComposite_parameters()*Integer.parseInt(session.getAttribute("methodCompositeData").toString())));
										
										
								%>
			  					<tr>
			  						<td><%=methods.getLineNumber() %></td>
			  						<td><%=methods.getLine() %></td>
			  						<td><%=Wmrt %></td>
			  						<td><%=methods.getPrimitive_parameters() %></td>
			  						<td><%=methods.getComposite_parameters() %></td>
			  						<td><%=Cm %></td>
			  					</tr>
			  					<% 
									}	
								%>
			  				</tbody>
		  				</table>
		  			</div>
		  			
		  			
		  			
		  			<%}else if(session.getAttribute("type").toString().equals("controlStructure")){ %>
		  			<div id="structureFactor">
		  			
		  			<br>
		  		<h1 class="display-1"	style="text-align: center; margin-left: 100px; font-family: century gothic; font-size: 50px; margin-top: 10px">
				<font color="#00376c">Complexity of Control Structure</font>
				</h1>
					<br><br>
					
		  				<table style="width: 78%; margin-left: 160px; background-color: #fff; " class="table table-bordered">
  							
			  					<tr>
			  						<th>Line no</th>
			  						<th>Program statements</th>
			  						<th>Wtcs</th>
			  						<th>NC</th>
			  						<th>Ccspps</th>
			  						<th>Ccs</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<%
			  						controlStructureService test3 = new controlStructureService();
			  					int condition= Integer.parseInt(session.getAttribute("condition").toString());
			  					int loop = Integer.parseInt(session.getAttribute("loop").toString());
			  					int switchCase= Integer.parseInt(session.getAttribute("switchCase").toString());
			  					int caseOnly=Integer.parseInt(session.getAttribute("caseOnly").toString());
									ArrayList<Control> arrayList3 = test3.test(session.getAttribute("test_code").toString(),condition,loop,switchCase,caseOnly);
									
									for (Control control : arrayList3) {
										int total = (control.getLine_weight()*control.getNo_of_control())+control.getCspps();
								%>
			  					<tr>
			  						<td><%=control.getLineNumber() %></td>
			  						<td><%=control.getLine() %></td>
			  						<td><%=control.getLine_weight() %></td>
			  						<td><%=control.getNo_of_control() %></td>
			  						<td><%=control.getCspps() %></td>
			  						<td><%=total %></td>
			  					</tr>
			  					<% 
									}	
								%>
			  				</tbody>
		  				</table>
		  			</div>
		  			<%}else if(session.getAttribute("type").toString().equals("inheritance")){ %>
		  			<div id="inheritanceFactor">
		  			<br>
		  					
		  			<br>
		  		<h1 class="display-1"	style="text-align: center; margin-left: 100px; font-family: century gothic; font-size: 50px; margin-top: 10px">
				<font color="#00376c">Complexity of Inheritance</font>
				</h1>
					<br><br>
		  				<table style="width: 78%; margin-left: 160px; background-color: #fff; " class="table table-bordered">
  							
			  					<tr>
			  						<th>Count</th>
			  						<th>Class Name</th>
			  						<th>No of direct inheritances</th>
			  						<th>No of indirect inheritances</th>
			  						<th>Total inheritances</th>
			  						<th>Ci</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<%
			  						InheritanceService test4 = new InheritanceService();
									ArrayList<Inheritance> arrayList4 = test4.test(session.getAttribute("test_code").toString());
									
									for (Inheritance inheritance : arrayList4) {
										int total = inheritance.getDirect()+inheritance.getIndirect();
										
										int Ci=total;
										if(Ci==0){
											Ci=Integer.parseInt(session.getAttribute("Inheritance").toString());
										}else if(Ci==1){
							                Ci=Integer.parseInt(session.getAttribute("Inheritance1").toString());
							            }else if(Ci==2){
							                Ci=Integer.parseInt(session.getAttribute("Inheritance2").toString());
							            }else if(Ci==3){
							                Ci=Integer.parseInt(session.getAttribute("Inheritance3").toString());
							            }else if(Ci>4){
							                Ci=Integer.parseInt(session.getAttribute("Inheritance4").toString());
							            }
								%>
			  					<tr>
			  						<td><%=inheritance.getLineNumber() %></td>
			  						<td><%=inheritance.getClassName() %></td>
			  						<td><%=inheritance.getDirect() %></td>
			  						<td><%=inheritance.getIndirect() %></td>
			  						<td><%=total %></td>
			  						<td><%=total %></td>
			  					</tr>
			  					<% 
									}	
								%>
			  				</tbody>
		  				</table>
		  			</div>
		  			<%}else if(session.getAttribute("type").toString().equals("coupling")){ %>
		  			<div id="couplingFactor">
		  			<br>
		  					
		  			<br>
		  		<h1 class="display-1"	style="text-align: center;s margin-left: 100px; font-family: century gothic; font-size: 50px; margin-top: 10px">
				<font color="#00376c">Complexity of Coupling</font>
				</h1>
					<br><br>
		  				<table style="width: 78%; margin-left: 30px; background-color: #fff; " class="table table-bordered">
  							
			  					<tr>
			  						<th>Line no</th>
			  						<th>Program statements</th>
			  						<th>Nr</th>
			  						<th>Nmcms</th>
			  						<th>Nmcmd</th>
			  						<th>Nmcrms</th>
			  						<th>Nmcrmd</th>
			  						<th>Nrmcrms</th>
			  						<th>Nrmcrmd</th>
			  						<th>Nrmcms</th>
			  						<th>Nrmcmd</th>
			  						<th>Nmrgvs</th>
			  						<th>Nmrgvd</th>
			  						<th>Nrmrgvs</th>
			  						<th>Nrmrgvd</th>
			  						<th>Ccp</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<%
			  						CouplingService test5 = new CouplingService();
									ArrayList<Coupling> arrayList5 = test5.test(session.getAttribute("test_code").toString());
									
									for (Coupling coupling : arrayList5) {
										
										int Nr=coupling.getRecursive()*Integer.parseInt(session.getAttribute("recursive").toString());
										
										int Nmcms=coupling.getRegular_regular()*Integer.parseInt(session.getAttribute("regularRegular").toString());
										
										int Nmcrms=coupling.getRegular_recursive()*Integer.parseInt(session.getAttribute("regularRecursive").toString());
										
										int Nrmcrms=coupling.getRecursive_recursive()*Integer.parseInt(session.getAttribute("recursiveRecursive").toString());
										
										int Nrmcms=coupling.getRecursive_regular()*Integer.parseInt(session.getAttribute("recursiveRegular").toString());
										
										int total =Nr+Nmcms+Nmcrms+Nrmcrms+Nrmcms+(coupling.getRegular_global()*Integer.parseInt(session.getAttribute("regularGlobal").toString()))+(coupling.getRegular_regular()*Integer.parseInt(session.getAttribute("recursiveGlobal").toString()));
							            
										
								%>
			  					<tr>
			  						<td><%=coupling.getLineNumber() %></td>
			  						<td><%=coupling.getLine() %></td>
			  						<td><%=coupling.getRecursive() %></td>
			  						<td><%=coupling.getRegular_regular() %></td>
			  						<td>0</td>
			  						<td><%=coupling.getRegular_recursive() %></td>
			  						<td>0</td>
			  						<td><%=coupling.getRecursive_recursive() %></td>
			  						<td>0</td>
			  						<td><%=coupling.getRecursive_regular() %></td>
			  						<td>0</td>
			  						<td><%=coupling.getRegular_global() %></td>
			  						<td>0</td>
			  						<td><%=coupling.getRegular_regular() %></td>
			  						<td>0</td>
			  						<td><%=total %></td>
			  					</tr>
			  					<% 
									}	
								%>
			  				</tbody>
		  				</table>
		  			</div>
		  			<%}%>
		  		</div>
	  	
	  		<br>
  			
	  	</div>
	  </div>
  	</div>


<br>



</body>
</html>