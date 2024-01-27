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
				String i = request.getParameter("id");
			String ufname = request.getParameter("fname");
			String ulname = request.getParameter("lname");
			String uemail = request.getParameter("email");
			String upassword = request.getParameter("password");
			String uphn = request.getParameter("phone");
			
			
			
			int uPhone = Integer.parseInt(uphn);
			int uid = Integer.parseInt(i);
			
			
			%>
			
			<center>
			<script>
			
					document.write("<h2>" + "<%= uemail%>" + "</h2>"  + "<h1>|Edit Profile </h1>");
			
			
			</script>
			
			
			</center>
			
			




		<form action = "update" method ="post">
			
			
			<label>Customer ID</label>
			<input type ="text" name="ucustid" value="<%= uid%>" readonly><br><br>
			
			<label>First Name</label>
			 <input type="text" name="ufiname" value="<%=ufname %>"><br><br>
			 
			 <label>Last name</label> 
			 <input type="text" name="ulaname" value="<%=ulname %>"><br><br>
			 
			 <label>Email </label>
			 <input type="text" name="ueml" value="<%=uemail %>" readonly><br><br>
			 
			 <label>Password </label>
			 <input type="text" name="upaswd" value="<%=upassword %>"><br><br>
			 
			 <label>Phone number </label>
			 <input type="number" name="upnum" value="<%=uPhone %>"><br><br>
			 
			 
			 <input type="submit" name="submit" value="Update"> <br><br> 
			 
			
			
		
		
		
		
		
		
		</form>






	
</body>
</html>