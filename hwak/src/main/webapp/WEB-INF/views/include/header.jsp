<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
Bootstrap core CSS
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
Custom styles for this template
<link href="resources/css/modern-business.css" rel="stylesheet">
<script type="text/javascript" src="resources/plugins/jQuery/jquery-3.4.1.js"></script> -->
 <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.html">Dance Moa</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="event">EVENT</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="magazine">MAGAZINE</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="academy">ACADEMY</a>
          </li>
          
          
     	<c:choose>
     		<c:when test="${login eq null}">
     		<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              JOIN
            </a>
     			<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
	              <a class="dropdown-item" href="login">Login</a>
	              <a class="dropdown-item" href="member">Sign Up</a>
	            </div>
	        </li>
     		</c:when>
     		
     		<c:otherwise>
     		<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             ${login.name }님
            </a>
     			<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
	              <a class="dropdown-item" id="log_out" href="logout">Logout</a>
	              <a class="dropdown-item" href="myinfo">My Info</a>
	            </div>
	        </li>
     		</c:otherwise>
     	</c:choose>

        </ul>
      </div>
    </div>
  </nav>
