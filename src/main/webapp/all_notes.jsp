
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FectroryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes : Note Taker</title>

<%@ include file="all_css_js.jsp"%>


</head>
<body>

	<%@ include file="navbar.jsp"%>

	<br>

	<div class="container">
		<h1 class="text-uppercase">all notes :</h1>


		<div class="row">

			<div class="col-12">


				<%
				Session session2 = FectroryProvider.grtFactory().openSession();

				Query query = session2.createQuery("from Note");
				List<Note> list = query.list();

				for (Note note : list) {
				%>

				<div class="card mt-3">

					<img src="img/post-it.png" style="max-width: 80px;"
						class=" m-4 m-auto img-fluid card-img-top" alt="...">

					<div class="card-body mx-4">
						<h5 class="card-title fw-bold"><%=note.getTitleString()%></h5>
						<p class="card-text"><%=note.getContentString()%></p>
						
						<p class="fw-bold text-primary"><%= note.getAddeDate() %></p>

						<div class="container text-center mt-3">

							<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a> 
							<a href="DeletServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delet</a>

						</div>
					</div>
				</div>



				<%
				}

				session2.close();
				%>

			</div>

		</div>





	</div>

</body>
</html>