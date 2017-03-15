<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/semantic-ui-2.2/semantic.css" />

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/style.css" />

</head>
<body>

	<div style="height: 50px"></div>

	<div
		style="margin: 0 auto; width: 700px; background: #FFFFFF; padding: 50px 30px; border: 2px solid #DEDEDF; border-radius: 5px;">
		<form:form method="POST" modelAttribute="student" action=""
			class="ui form error">

			<div class="field">
				<label>Registration No.</label>
				<form:input path="registrationNo" />
			</div>
			<form:errors path="registrationNo" element="p"
				cssClass="ui error message" />

			<div class="field">
				<label>Full Name</label>
				<form:input path="fullName" />
			</div>
			<form:errors path="fullName" element="p" cssClass="ui error message" />

			<div class="field">
				<label>Address</label>
				<form:input path="address" />
			</div>
			<form:errors path="address" element="p" cssClass="ui error message" />

			<div class="field">
				<label>Email</label>
				<form:input path="email" />
			</div>
			<form:errors path="email" element="p" cssClass="ui error message" />

			<div class="field">
				<label>Mobile No.</label>
				<form:input path="mobileNo" />
			</div>
			<form:errors path="mobileNo" element="p" cssClass="ui error message" />

			<button class="teal ui button" type="submit">Submit</button>

			<a href="<%=request.getContextPath()%>/student" title="Cancel"
				class="negative ui button">Cancel</a>
		</form:form>
	</div>

	<div style="height: 50px"></div>

</body>
</html>