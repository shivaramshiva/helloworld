<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
  <li><a href="<c:url value='/underconstruction' />">About</a></li>
 <li> <a href="<c:url value='/underconstruction' />">UserManagement</a></li>
  
  <li><a href="<c:url value='/projectshome' />">Projects</a></li>
  <li><a href="<c:url value='/underconstruction' />">Roles</a></li>
    <li><a href="<c:url value='/underconstruction' />">Logout</a></li>
</ul>
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

</body>
</html>