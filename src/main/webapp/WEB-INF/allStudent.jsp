<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/semantic-ui-2.2/semantic.css" />

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/style.css" />

</head>
<body>

	<div style="height: 50px"></div>

	<div
		style="margin: 0 auto; width: 900px; background: #FFFFFF; padding: 50px 30px; border: 2px solid #DEDEDF; border-radius: 5px;">
		<a href="<%=request.getContextPath()%>/student/add"
			title="Add Student" class="teal ui button">Add Student</a>
		<table class="ui celled table">
			<thead>
				<tr>
					<th>Registration No.</th>
					<th>Full Name</th>
					<th>Address</th>
					<th>Email</th>
					<th>Mobile No.</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="student">
					<tr>
						<td>${student.registrationNo}</td>
						<td>${student.fullName}</td>
						<td>${student.address}</td>
						<td>${student.email}</td>
						<td>${student.mobileNo}</td>
						<td><a
							href="<%=request.getContextPath()%>/student/${student.id}"
							class="target tiny primary ui button">View</a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div style="height: 50px"></div>
</body>
</html>