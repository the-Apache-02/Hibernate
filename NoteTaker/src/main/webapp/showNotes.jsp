<%@page import="java.util.Locale"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show All Notes:Note Taker</title>
<%@include file="allCssJs.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%></div>
		<div class="container">
		<br>
		<h1 class="text-uppercase">All Notes</h1>

		<div class="row">
			<div class="col-12">
				<%
				Locale loc = new Locale("en", "US");
				DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.DEFAULT, loc);
				
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
					String date=dateFormat.format(note.getAddedDate());
				%>
				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto" src="img/note.png" style="max-width:100px" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						
						<p class="card-text"><%=note.getContent()%></p>
						<div class="container text-center">
							<a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
						</div>
						<div class="d-flex justify-content-end"><%=date%></div>
					</div>
				</div>

				<%
				}
				s.close();
				%>
			</div>
		</div>


	</div>
</body>
</html>