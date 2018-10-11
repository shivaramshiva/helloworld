
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>

<style>
.blue-button {
	background: #9e9e9e;
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',
		endColorstr='#188BC0', GradientType=0);
	padding: 3px 5px;
	color: #fff;
	font-family: 'Helvetica Neue', sans-serif;
	font-size: 12px;
	border-radius: 2px;
	-moz-border-radius: 2px;
	-webkit-border-radius: 4px;
	border: 1px solid #1A87B9
}

table {
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	width: 50%;
	margin:0 auto;
	border:0 solid black;
}

th {
	background: #9e9e9e;
	color: white;
}

td, th {
	border: 1px solid black;
	width: 25%;
	text-align: left;
	padding: 5px 10px;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    border: 1px solid #e7e7e7;
    background-color: #f3f3f3;
}

li {
    float: left;
}

li a {
    display: block;
    color: #666;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #ddd;
}

li a.active {
    color: white;
    background-color: #9e9e9e;
}
</style>

</head>
<body>

<ul>
  <li><a class="active" href="<c:url value='/' />"> Home</a></li>
  <li><a href="<c:url value='/userconstruction' />">About</a></li>
 <li> <a href="<c:url value='/userconstruction' />">UserManagement</a></li>
  
  <li><a href="<c:url value='/projectshome' />">Projects</a></li>
  <li><a href="<c:url value='/underconstruction' />">Roles</a></li>
    <li><a href="<c:url value='/underconstruction' />">Logout</a></li>
</ul>
	<form:form method="post" modelAttribute="customer"
		action="${pageContext.request.contextPath}/addCustomer"
		style="display:inline-block">
		<br/> <br/> <br/> <br/> 
		<center><h2>Create Project:  </h2></center>
		<br/>
		<table rules="cols">
			<tr>
				<th colspan="2">Add Project</th>
			</tr>
			<tr>
				<form:hidden path="s_no" />
			<tr>
				<form:hidden path="s_no" />
				<td><form:label path="projectid">Project ID:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" id="userinput" class="test"
						path="projectid" size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="projectname">Project Name:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="projectname" class="test"
						size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="projectmanager">Project Manager:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="projectmanager" class="test"
						size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="deliverydirector">Delivery Director:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="deliverydirector" class="test"
						size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="location">Location:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="location" size="30" class="test"
						maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="projecttype">Project Type:</form:label><b
					style="color: red"> * </b></td>
				<td><select name="projecttype">
						<option value="PSO">PSO</option>
						<option value="NON-PSO">NON-PSO</option></td>
				</select>
				<!--  	<td><form:input required="required" path="projecttype"
						size="30" maxlength="30"></form:input></td>-->
			</tr>
			<tr>
				<td><form:label path="unit">Unit:</form:label><b
					style="color: red"> * </b></td>
				<td><select name="unit">
						<option value="DES">DES</option>
						<option value="CIS">CIS</option>
						<option value="CTAS">CTAS</option></td>
				<!--  <td><form:input required="required" path="unit" size="30"
						maxlength="30"></form:input></td> -->
			</tr>

			<tr> 
				<td colspan="2"><input type="submit" id="submitbutton"
					onclick=" validation()" class="blue-button" /> </td> 
			</tr>
			
		</table>
	</form:form>
	<!-- 
	  <span>
	<select name="project">
					<option value="PROJECTID">PROJECTID</option>
	
	</span> 
	</br>
	<!--  <div style="display:inline;position: absolute;
    top: 20%;
    left: 58%;">
		<h4>Search </h4>
		<form:form method="GET" action="/updateCustomer">
			<select name="s_no">
				<c:forEach items="${listOfCustomers}" var="customer">
					<option value="${customer.s_no}">${customer.projectid}</option>
				</c:forEach>
				<input type="submit" value="Search" class="blue-button" />
			</select>
		</form:form>
	</div>
	  
	<center><h3>Project List</h3></center>
	<c:if test="${!empty listOfCustomers}">
		<table rules="cols" class="tg">
			<tr>

				<th width="120">Project ID</th>
				<th width="120">Project Name</th>
				<th width="120">Project Manager</th>
				<th width="120">Delivery Director</th>
				<th width="60">Location</th>
				<th width="120">Project Type</th>
				<th width="80">Unit</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr> 
			<c:forEach items="${listOfCustomers}" var="customer">
				<tr>

					<td>${customer.projectid}</td>
					<td>${customer.projectname}</td>
					<td>${customer.projectmanager}</td>
					<td>${customer.deliverydirector}</td>
					<td>${customer.location}</td>
					<td>${customer.projecttype}</td>
					<td>${customer.unit}</td>
					<td><a
						href="<c:url value='/updateCustomer/${customer.s_no}' />">Edit</a></td>
					<td><a
						href="<c:url value='/deleteCustomer/${customer.s_no}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<script type="text/javascript">
	function alertName(){
	alert("Form has been submitted");
	} 
	</script>
		<!-- function validation() {
	var count=document.getElementsByClassName("test").value;
	if(typeof(count)=="undefined"){
		alert("You have not submitted your record successfully");

	}
	else 
		{
		alert("You have submitted your record successfully");
		}
		}
	</script> -->
	
</body>
</html>
