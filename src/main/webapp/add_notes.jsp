<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@ include file="all_css_js.jsp"%>
</head>
<body>

	<%@ include file="navbar.jsp"%>

	<br>

	<div class="container">

		<h1>Please fill your not details..</h1>
		
		<br>

		<!-- this is form..  -->

		<form action="SaveFromServlet" method="post">
			<div class="mb-3"></div>
				<label for="title" class="form-label">Notes title</label>
				 <input type="text" name="title" class="form-control"
					id="title" required="required" placeholder="Enter hear">
				
			<div class="mb-3">
				<label for="content" class="form-label">Notes content</label>
				<textarea name="content" class="form-control" required="required" rows="5" cols="" id="content" placeholder="Enter your content hear"></textarea>
			</div>
			
			<div class="conteiner text-center">
				<button type="submit" class="btn btn-primary ">Add</button>
			</div>
		</form>

	</div>

</body>
</html>