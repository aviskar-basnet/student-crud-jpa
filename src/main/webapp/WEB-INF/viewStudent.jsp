<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Detail</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/semantic-ui-2.2/semantic.css" />

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/style.css" />

</head>
<body>

	<div style="height: 100px"></div>

	<div
		style="margin: 0 auto; width: 900px; background: #FFFFFF; padding: 50px 30px; border: 2px solid #DEDEDF; border-radius: 5px;">
		<h5>Registration No. : ${student.registrationNo}</h5>
		<h5>Full Name : ${student.fullName}</h5>
		<h5>Address : ${student.address}</h5>
		<h5>Email : ${student.email}</h5>
		<h5>Mobile No. : ${student.mobileNo}</h5>

		<a href="<%=request.getContextPath()%>/student" title="Back"
			class="teal ui button">Back</a>
	</div>

</body>
</html>