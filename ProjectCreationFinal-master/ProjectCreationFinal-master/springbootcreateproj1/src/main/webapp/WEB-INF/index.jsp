<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--  <html>
<body>
<h2>Hello World!</h2>
<a href="<c:url value='/getAllProjects' />">PROJECTS</a>

</body>
</html> 
<!DOCTYPE html> -->
<html>
<head>
<style>
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

</body>
</html>
