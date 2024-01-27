<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    

<!DOCTYPE html>
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
-------------------------------------------


<br>
<br>
<br>
<br>

<c:forEach var="mov" items="${m3detail}">
	
	
	<c:set var="id"  value="${mov.id}"/>
	<c:set var="title"  value="${mov.mtitle}"/>
	<c:set var="ryear"  value="${mov.ryear}"/>
	<c:set var="genre"  value="${mov.genre}"/>
	<c:set var="descrip"  value="${mov.description}"/>
	<c:set var="actor"  value="${mov.actor}"/>
	<c:set var="picurl"  value="${mov.picurl}"/>
	
	
		<CENTER>
		
		
			<H1>${mov.id}  ${mov.mtitle}</H1>
		
		
		
		</CENTER>
	
	
	<CENTER>
	
	<img src="${mov.picurl}" WIDTH ="500" HEIGHT="500" >
	
	</CENTER>
	
	<CENTER>
	
	
	<H4>${mov.mtitle}</H4>
	<H4>${mov.ryear}</H4>
	<H4>${mov.genre}</H4>
	<H4>${mov.description}</H4>
	
	
	
	
	</CENTER>
	</c:forEach>


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











</body>
</html>