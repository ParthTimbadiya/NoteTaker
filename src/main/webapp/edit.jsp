<%@page import="com.entities.Note"%>
<%@page import="com.helper.FectroryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit data</title>

<%@ include file="all_css_js.jsp"%>
</head>
<body>

	<%@ include file="navbar.jsp"%>
	
	<br>

	<div class="container">

		<h1>Edit your note...</h1>

		<br>


		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session session2 = FectroryProvider.grtFactory().openSession();

		Note note = (Note) session2.get(Note.class, noteId);
		%>



		<form action="UpdateServlet" method="post">
			<div class="mb-3"></div>
			
			<input type="hidden" value="<%= note.getId() %>" name="noteId"/>
			<label for="title" class="form-label">Notes title</label> <input
				type="text" name="title" class="form-control" id="title"
				required="required" placeholder="Enter hear" value="<%= note.getTitleString() %>">

			<div class="mb-3">
				<label for="content" class="form-label">Notes content</label>
				<textarea name="content" class="form-control" required="required"
					rows="5" cols="" id="content" placeholder="Enter your content hear"><%= note.getContentString() %></textarea>
			</div>

			<div class="conteiner text-center">
				<button type="submit" class="btn btn-success ">Save your note</button>
			</div>
	</div>

</body>
</html>