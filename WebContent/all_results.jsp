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

  	

		  		
		  			<div id="sizeFactor">
		  			<br>
		  				<h1 class="display-1"	style="padding-left: 178px; margin-left: 100px; font-family: century gothic; font-size: 50px; margin-top: 10px">
				<font color="#00376c">Complexity of All Factors</font>
				</h1>
				<br>
		  				<table style="width: 78%; margin-left: 160px; background-color: #fff; " class="table table-bordered">
  							
			  					<tr>
			  						<th>Line no</th>
			  						<th>Program statements</th>
			  						<th>Cs</th>
			  						<th>Cv</th>
			  						<th>Cm</th>
			  						<th>Ci</th>
			  						<th>Ccp</th>
			  						<th>Ccs</th>
			  						<th>TCps</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<%
			  						codeSizeService test = new codeSizeService();
									ArrayList<size> arrayList = test.test(session.getAttribute("test_code").toString());
									
									VariableService test1 = new VariableService();
									ArrayList<Variables> arrayList1 = test1.test(session.getAttribute("test_code").toString());
									
									methodService test2 = new methodService();
									ArrayList<Methods> arrayList2 = test2.test(session.getAttribute("test_code").toString());
									
									CouplingService test5 = new CouplingService();
									ArrayList<Coupling> arrayList5 = test5.test(session.getAttribute("test_code").toString());
									
									controlStructureService test3 = new controlStructureService();
				  					int condition= 2;
				  					int loop = 3;
				  					int switchCase= 2;
				  					int caseOnly=1;
									ArrayList<Control> arrayList3 = test3.test(session.getAttribute("test_code").toString(),condition,loop,switchCase,caseOnly);
									
									int totalCs=0;
									int totalCv=0;
									int totalCm=0;
									int totalCcs=0;
									int totalCi=0;
									int totalCcp=0;
									
									InheritanceService test4 = new InheritanceService();
									ArrayList<Inheritance> arrayList4 = test4.test(session.getAttribute("test_code").toString());
									
									for (int i = 0; i <arrayList4.size();i++) {
										int Ci=arrayList4.get(i).getDirect()+arrayList4.get(i).getIndirect();;
										if(Ci==0){
											Ci=0;
										}else if(Ci==1){
							                Ci=1;
							            }else if(Ci==2){
							                Ci=2;
							            }else if(Ci==3){
							                Ci=3;
							            }else if(Ci>4){
							                Ci=4;
							            }
										totalCi=totalCi+Ci;
									}
									
									for (int i = 0; i <arrayList.size();i++) {
										
										int Cs =arrayList.get(i).getKeyword()+arrayList.get(i).getIdentifier()+arrayList.get(i).getOperator()+arrayList.get(i).getNumerical()+arrayList.get(i).getStringCount();
										totalCs=totalCs+Cs;
										
										int Wvs =(arrayList1.get(i).getGlobal()*2)+arrayList1.get(i).getLocal();
							            
							            int Npdtv = arrayList1.get(i).getGlobal()+arrayList1.get(i).getLocal();
							            
							            int Cv = Wvs*(Npdtv+arrayList1.get(i).getComposite()*2);
										
							            totalCv=totalCv+Cv;
										
										int Wmrt =(arrayList2.get(i).getComposite_method()*2)+arrayList2.get(i).getPrimitive_method();
							            
							            int Cm = Wmrt+(arrayList2.get(i).getPrimitive_parameters()+(arrayList2.get(i).getComposite_parameters()*2));
										
							            totalCm=totalCm+Cm;
							            
							            int Ccs = (arrayList3.get(i).getLine_weight()*arrayList3.get(i).getNo_of_control())+arrayList3.get(i).getCspps();
										
							            totalCcs=totalCcs+Ccs;
							            
										int Nr=arrayList5.get(i).getRecursive()*2;
										
										int Nmcms=arrayList5.get(i).getRegular_regular()*2;
										
										int Nmcrms=arrayList5.get(i).getRegular_recursive()*3;
										
										int Nrmcrms=arrayList5.get(i).getRecursive_recursive()*4;
										
										int Nrmcms=arrayList5.get(i).getRecursive_regular()*3;
										
										int Ccp =Nr+Nmcms+Nmcrms+Nrmcrms+Nrmcms+arrayList5.get(i).getRegular_global()+arrayList5.get(i).getRegular_regular();
							            
										totalCcp=totalCcp+Ccp;
										
										int rowTotal=Cs+Cv+Cm+Ccp+Ccs;
										
								%>
			  					<tr>
			  						<td><%=arrayList.get(i).getLineNumber() %></td>
			  						<td><%=arrayList.get(i).getLine() %></td>
			  						<td><%=Cs %></td>
			  						<td><%=Cv %></td>
			  						<td><%=Cm %></td>
			  						<td>0</td>
			  						<td><%=Ccp %></td>
			  						<td><%=Ccs %></td>
			  						<td><%=rowTotal %></td>
			  					</tr>
			  					<% 
									}	
									int total=totalCs+totalCv+totalCm+totalCi+totalCcp+totalCcs;
								%>
								<tr>
			  						<td></td>
			  						<td>Total</td>
			  						<td><%=totalCs %></td>
			  						<td><%=totalCv %></td>
			  						<td><%=totalCm %></td>
			  						<td><%=totalCi %></td>
			  						<td><%=totalCcp %></td>
			  						<td><%=totalCcs %></td>
			  						<td><%=total %></td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  		

  	<br>

  	
</body>
</html>