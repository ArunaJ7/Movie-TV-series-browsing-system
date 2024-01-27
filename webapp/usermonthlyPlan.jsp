<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<meta charset="ISO-8859-1">
	<meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE-edge">
	  <meta name="viewport" content="width=device-width, intial-scale=1.0">
	  <link rel="stylesheet" href="./assets/css/style.css">
	  <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">
	  <title>Filmspiedia</title>

	  <head>
		<!--navigation-------------->
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
</head>
<body>


<style>
	.content {
	  position: relative;
	  min-height: 100vh;
	  z-index: 0;
	  padding: 40px 40px;
	  
	}
	.user-box {
	  padding: 50px;
	  display: grid;
	  justify-content: center;
	  align-items: center;
	  max-width: 98%;
	  margin: 1rem auto;
	  overflow: auto;
	  background-color: #3439499d;
	  
	}
	
	.input-group{
	  display: flex;
	
	}
	.input-group label{
	  margin: 10px;
	  font-size: 1rem;
	  text-transform: uppercase;
		padding: 0.8rem;
	 
	}
	
	.input-group inputt{
		justify-content: center;
	  align-items: center;
	  width: 130px;
	  height: 40px;
	  border:none;
	  outline: none;
	  color: #ffffff;
	  background-color: #343949;
	  margin: 10px;
	  font-size: 1rem;
	  border-radius: 5px;
	  
	}
	.input-group inputt:hover{
	  background: rgb(231, 235, 2);
	  opacity: 0.7;
	}	
	.submit input{
	  width: 130px;
	  height: 40px;
	  border:none;
	  outline: none;
	  color: #ffffff;
	  background-color: #343949;
	  margin: 10px;
	  font-size: 1rem;
	  border-radius: 5px;
	  border: 3px solid  rgb(251, 255, 4);
	}
	.submit input:hover{
	  background: rgb(231, 235, 2);
	  opacity: 0.7;
	}

</style>
	
	<div class="content"> 
		<div class="user-box">
			<p class="login-text" style="font-size: 2rem; font-weight: 800;"> what you chosen</p>	
	<c:forEach var="prc" items= "${prcDetails}">
	
	<c:set var ="pricing_id" value="${prc.pricing_id}"/>
	<c:set var ="category" value="${prc.category}"/>
	<c:set var ="genres" value="${prc.genres}"/>
	<c:set var ="hdAvailable" value ="${prc.hdAvailable}"/>
	<c:set var ="watchOnur" value="${prc.watchOnur}"/>
	<c:set var ="moviesOrTvshow" value="${prc.moviesOrTvshow}"/>
	<c:set var ="screens" value="${prc.screens}"/>

	
	<div class="input-group">
		<label>User</label>
		<inputt>${prc.pricing_id}</inputt>
	</div>
	<div class="input-group">
		<label>Category</label>
		<inputt>${prc.category}</inputt>
	</div>
	<div class="input-group">
		<label>Year</label>
		<inputt>${prc.genres}</inputt>
	</div>
	<div class="input-group">
		<label>HD Available</label>
		<inputt>${prc.hdAvailable}</inputt>
	</div>
	<div class="input-group">
		<label>Watch on your</label>
		<inputt>${prc.watchOnur}</inputt>
	</div>
	<div class="input-group">
		<label>Unlimited movies or TV showsy</inputt>
		<inputt>${prc.screens}</inputt>
	</div>
	<div class="input-group">
		<label>Screens you want watch on ate the same time</inputt>
		<inputt>${prc.pricing_id}</inputt>
	</div>
	
	</c:forEach>

	<c:url value="updatepricing.jsp" var="prcupdate">
	
		<c:param name="pricing_id" value= "${pricing_id}"/>
		<c:param name="category" value= "${category}"/>
		<c:param name="genres" value= "${genres}"/>
		<c:param name="hdAvailable" value= "${hdAvailable}"/>
		<c:param name="watchOnur" value= "${watchOnur}"/>
		<c:param name="moviesOrTvshow" value= "${moviesOrTvshow}"/>
		<c:param name="screens" value= "${screens}"/>
		
	</c:url>
	<div class="submit">
	<a href="${prcupdate}">
	<input type="button" name="update" value="update">
	</a>
	</div>
	
	<br>
	<c:url value="deletepricing.jsp" var="prcdelete">
	
		<c:param name="pricing_id" value= "${pricing_id}"/>
		<c:param name="category" value= "${category}"/>
		<c:param name="genres" value= "${genres}"/>
		<c:param name="hdAvailable" value= "${hdAvailable}"/>
		<c:param name="watchOnur" value= "${watchOnur}"/>
		<c:param name="moviesOrTvshow" value= "${moviesOrTvshow}"/>
		<c:param name="screens" value= "${screens}"/>
	
	</c:url>
	<div class="submit">
	<a href="${prcdelete}">
	<input type="button" name="delete" value="delete">
	</a>
	</div>
</div>
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