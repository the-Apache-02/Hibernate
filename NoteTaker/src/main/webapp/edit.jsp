<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.helper.*, org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Notes</title>
<%@include file="allCssJs.jsp"%>
</head>
<body>
	 <div class="container-fluid p-0 m-0">
    	<%@include file="navbar.jsp" %>
    	<h2 class="text-center">Edit your Note</h2>
   	</div>
    	<%
    	int noteId=Integer.parseInt(request.getParameter("note_id").trim());
    	Session s=FactoryProvider.getFactory().openSession();
		Note n=(Note)s.get(Note.class, noteId);
    	%>
    	<br>
		<div class="container">
			<form action="UpdateServlet" method="post">
			<div class="form-group">
			<input value="<%=n.getId()%>" name="noteId" hidden>
				<label for="title">Note Title</label> <input name="title"
					type="text" class="form-control" required id="title"
					 placeholder="Enter your title" value="<%=n.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea name="content" class="form-control" required placeholder="Enter your content"
				style="min-height:200px"> <%=n.getContent()%>
				 </textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your Note</button>
			</div>
			
		</form>
		</div>
    
</body>
</html>