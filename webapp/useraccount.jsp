<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE-edge">
  <meta name="viewport" content="width=device-width, intial-scale=1.0">
  <link rel="stylesheet" href="./assets/css/style.css">
  <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">
  <title>Filmspiedia</title>

	</head>
		<!--navigation-------------->
<body>
    <nav>
      <!--menu-------------->
      <ul class="menu">
          <li><a href="#">Home</a></li>
          <li><a href="#">Movies</a></li>
          <li><a href="#">TV Shows</a></li>
          <li><a href="#">Web Series</a></li>
          <li><a href="#">Pricing</a></li>
      </ul>
      <!--search------------->
      <div class="search">
          <input type="text" placeholder="Find Your Favourtie Movies"/>
          <!--search-icon----------->
          <i class="fas fa-search"></i>
      </div>
      <div class="showcase-top">
          <a href="#" class="btn btn-rounded">Sign In</a>
      </div>
      
     
    </nav>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
<div class ="login">

<style> .login
{
	background-color: lightgray;
	border:  15px solid rgb(0,7,44);
}    
 </style>


	<c:forEach var="cus" items="${cdetail}">
	
	
	<c:set var="id"  value="${cus.id}"/>
	<c:set var="fname"  value="${cus.fname}"/>
	<c:set var="lname"  value="${cus.lname}"/>
	<c:set var="email"  value="${cus.email}"/>
	<c:set var="password"  value="${cus.password}"/>
	<c:set var="phone"  value="${cus.phone}"/>
	
	
	
	
	
	
	<center>
	<fieldset>
	
	<legend>User details</legend>
	<h2> Login details </h2>
		<legend>User details</legend>
		<h3>ID: ${cus.id}</h3>
		<h3>First name: ${cus.fname}</h3>
		<h3>Last Name : ${cus.lname}</h3>
		<h3>Email: ${cus.email}</h3>
		<h3>Password: ${cus.password}</h3>
		<h3> phonenumber:  ${cus.phone}</h3>
		</fieldset>
	</center>
	
	</c:forEach>
		
		
		<c:url value="updateRegmem.jsp" var="regupdate">
			<c:param name="id" value="${id}"/>
			<c:param name="fname" value="${fname}"/>
			<c:param name="lname" value="${lname}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="password" value="${password}"/>
			<c:param name="phone" value="${phone}"/>
			
		</c:url>
		
		<br>
		<br>
					
		
		<center>
		<a href="movie.jsp">
		<button><h1>Watch now</h1></button>
		</a>
		</center>
		<br>
		
		<a href ="${regupdate}">
		<input type="button" name="update" value="updatemydata" >
		</a>
		
		
		
		
		
		
		
		
		
		<c:url value="deleteregmember.jsp" var="regdelete">
		<c:param name="id" value="${id}"/>
			<c:param name="fname" value="${fname}"/>
			<c:param name="lname" value="${lname}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="password" value="${password}"/>
			<c:param name="phone" value="${phone}"/>
		
		</c:url>
		<a href="${regdelete}">
		<input type="button" name="delete" value="delete account" >
		</a>
		
		
		<br>
		<br>
		
	
		<a href="payment.jsp">
		<input type="button" name="delete" value="payment" >
		</a>
	
			<a href="comment.jsp">
		<input type="button" name="delete" value="comment" >
		</a>
	
		</div>
<div class="btns">
    <a href="#">Previous</a>
    <a href="#">Next</a>
</div>

<footer class="footer">
    
    <p>Questions? Filmspiedia</p>
    <div class="footer-cols">
        <ul>
            <li><a href="#">FAQ</a></li>
            <li><a href="#">Investor Relations</a></li>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Speed Test</a></li>
        </ul>
        <ul>
            <li><a href="#">Help Centre</a></li>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Cookie Preferences</a></li>
            <li><a href="#">Watch for Free</a></li>
        </ul>
        <ul>
            <li><a href="#">Account</a></li>
            <li><a href="#">Ways to Watch</a></li>
            <li><a href="#">Corporate Information</a></li>
            <li><a href="#">Legal Notices</a></li>
        </ul>
        <ul>
            <li><a href="#">Media Centre</a></li>
            <li><a href="#">Terms of Use</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="#">Filmspiedia Originals</a></li>
        </ul>
    </div>
</footer>

</body>
</html>


