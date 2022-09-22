<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Note</title>
<%@include file="allCssJs.jsp"%>
</head>
<body>

	<div class="container-fluid p-0 m-0"><%@include file="navbar.jsp"%>
		<br>
		<h2>Please enter note here</h2>
		<br>
		<div class="container">
			<form action="SaveServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input name="title"
					type="text" class="form-control" required id="title"
					 placeholder="Enter your title">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea name="content" class="form-control" required placeholder="Enter your content"
				style="min-height:200px"
				 ></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
			
		</form>
		</div>
		
	</div>

</body>
</html>