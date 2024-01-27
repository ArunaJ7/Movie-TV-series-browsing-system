<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>








	<%
				
			String commentemail = request.getParameter("cemail");
			String  header= request.getParameter("cheader");
			String comment    =  request.getParameter("comments");
			
			%>



	<form action = "updateComment" method="post">
	
	
	
	
	
		<label>Email(Logged email)</label>
				<input type = "text" name="ucomEmail" id="comEmail" value="<%=commentemail %>" readonly>
				
				<br>
				<br>
				
				<label>header</label>
				<input type = "text" name="ucomheader" value="<%=header %>"readonly>
				
				<br>
				<br>
				
				
				
				<label>Comment</label>
			<textarea id="cmmntmsg" name="ucommentmsg" rows="4" cols="50"><%=comment %></textarea>
		
				
				<br>
				<br>
		
		
		<button type="Submit" name="coment" id="comment">send</button>
	
	
	
	
	
	
	
	
	
	</form>











</body>
</html>