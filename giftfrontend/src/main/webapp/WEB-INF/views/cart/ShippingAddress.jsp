<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>


<!DOCTYPE html>
<html lang="en">
<head>
   <title>Bootstrap Example</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
    <style type="text/css">


.bgimg
{
background-image:url("resources/images/images.jpg");
}
body
{ 
    background:url("resources/images/white-background-wallpaper-004.jpg");
}
#footer {
    border-top: 5px solid #CDB380;background-image:url("resources/images/bgb.jpg");
    
    padding-top: 30px;
    margin-top: 60px;
    clear: both;
    color: #AAA;
    display: block;
}

#footer .widgettitle {
    margin: 0px;
    padding: 0px 0px 15px;
    border-bottom: medium none;
}
#footer h4 {
    color: #FFF;
}

#footer ul {
    list-style: outside none none;
}

#footer li {
    padding: 7px 0px;
    border-bottom: 1px dotted rgba(255, 255, 255, 0.2);
    margin: 0px;
}

#footer li a {
    color:blue;
}

#sub-floor {
    color: #AAA;
    background: #031634 none repeat scroll 0% 0%;
    padding: 10px 0px;
}



    .glyphicon { margin-right:5px; }
.thumbnail
{
    margin-bottom: 20px;
    padding: 0px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.item.list-group-item
{
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 10px;
}
.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
{
    background: #428bca;
}

.item.list-group-item .list-group-image
{
    margin-right: 10px;
}
.item.list-group-item .thumbnail
{
    margin-bottom: 0px;
}
.item.list-group-item .caption
{
    padding: 9px 9px 0px 9px;
}
.item.list-group-item:nth-of-type(odd)
{
    background: #eeeeee;
}

.item.list-group-item:before, .item.list-group-item:after
{
    display: table;
    content: " ";
}

.item.list-group-item img
{
    float: left;
}
.item.list-group-item:after
{
    clear: both;
}
.list-group-item-text
{
    margin: 0 0 11px;
}

.form-signup {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}
.form-signup .form-control {
	position: relative;
	height: auto;
	padding: 10px;
	font-size: 16px;
}

    </style>
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'http://bootsnipp.com');
        });
    </script>
</head>
<body>
		
<nav class="navbar navbar-default navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <a class="navbar-brand" href=" "><i class="fa fa-gift" style="font-size:30px;color:orange;"> Gift</i></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
 <li class="active"><a href=" ">Home</a></li>
        <li class="active"><a href="images">Images</a></li>
        <li><a href="aboutus">About us</a></li>
<li><a href="contact">Contact</a></li>
<!-- <li><a href="products">Prodect</a></li> -->
<li class="dropdown"><a data-toggle="" class="dropdown-toggle"
						href="<c:url value="/products"/>"><b>Prodect</b><b class="caret"></b></a></li>
					<sec:authorize access="hasRole('ADMIN')">

						<li><a href="<c:url value="/productAdmin"/>">Admin Page</a></li>
						<li><a href="<c:url value='/logout' />">Sign Out</a></li>
					</sec:authorize>

					<sec:authorize access="hasRole('USER')">

						<li><a href="<c:url value="/cart"/>">Cart</a></li>
						<li><a href="<c:url value='/logout' />">Sign Out</a></li>
					</sec:authorize>
       
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register">Register</a></li>
<li><a href="login">Login</a></li>
          </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>



<br>
<br>
<br>
<br>
<div class="container">

	<form:form class="form-signup" commandName="order">
		<h2 style="color: #1E7145">ShippingAddress</h2>
		<form:input type="text" id="user.shippingAddress.line1" path="user.shippingAddress.line1" 
		class="form-control" placeholder="Address Line 1"/>
		<br>
		
		<form:input type="text" id="user.shippingAddress.line2" path="user.shippingAddress.line2"
		 class="form-control" placeholder="Address Line 2"/>
		<br>
		
		<form:input type="text" id="user.shippingAddress.city" path="user.shippingAddress.city" 
		class="form-control" placeholder="City"/>
		<br>
		
	    <form:input type="text" id="user.shippingAddress.state" path="user.shippingAddress.state" 
	    class="form-control" placeholder="State"/>
		<br>
		
		<form:input type="text" id="user.shippingAddress.zipCode" path="user.shippingAddress.zipCode" 
		class="form-control" placeholder="Postal Code"/>
		<br>
		
		<br>
		<form:input type="text" id="user.shippingAddress.mobile" path="user.shippingAddress.mobile" 
		class="form-control" placeholder="Mobile No."/>
		<br>
		
		<input name="_eventId_event1"
		class="btn btn-lg btn-default btn-block button" type="submit"
		value="Confirm">

		</form:form> 
</div>

<br>
<br>
<br>
<br>
<%@ include file="footer.jsp"%>


















