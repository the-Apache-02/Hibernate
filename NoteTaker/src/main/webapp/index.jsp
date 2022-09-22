<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@include file="allCssJs.jsp" %>
    <title>Note Taker</title>
  </head>
  <body>
   
    <div class="container-fluid p-0 m-0">
    	<%@include file="navbar.jsp" %>
    	<br>
    	<div class="card container my-3">
    		<img alt="" class="img-fluid mx-auto" style="width:400px" src="img/note.png">
    		<h1 class="text-uppercase text-primary text-center">Start taking your notes</h1>
    		<div class="container  text-center mb-2">
    			<a href="addNote.jsp" class="btn btn-primary">Start here</a>
    		</div>
    	</div>
    </div>
    
  </body>
</html>