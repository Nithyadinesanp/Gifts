<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>:: Welcome To BassettFurniture.com ::</title>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
	
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

    </style>
	
	
	

 <%-- <%@ include file="Header.jsp"%>
 --%>
<br>
<br>
<br>
<br>
<br>
<div class="container-fluid">
	<div>
		<div class="row">
			<div class="col-sm-6">
				<table class="table">
					<thead>
						<tr>
							<th></th>
							<th>Product name</th>
							<th>Product Price</th>
							<th>Quantity</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${itemlist}" var="item">
							<tr>
								<td><img src="resources/images/${item.product.productId}.jpg" 
									style="max-width: 175px; max-height: 100px;" /></td>
								<td style="vertical-align: middle; color: #1E7145;">${item.product.model}</td>
								<td style="vertical-align: middle; color: #1E7145;">${item.product.price }</td>
								<td style="vertical-align: middle; color: #1E7145;">${item.quantity }</td>
								<td style="vertical-align: middle; color: #1E7145;">${item.itemTotal }</td>
							</tr>
						</c:forEach>



					</tbody>
				</table>
				<c:forEach items="${itemlist}" var="item">
					<label style="visibility: hidden;">${total=item.itemTotal+total}</label>
				</c:forEach>
				<label style="float: right; color: #1E7145;">Total:${total}</label>
			</div>


			<div class="col-sm-6"
				style="text-align: justify; color: #1E7145; padding: 0; font-size: x-large;">
				<h6 style="font-size: xx-large; color: #1E7145;">Address</h6>
				<label>Phone no:</label>${order.user.shippingAddress.mobile}<br>
				<label>City:</label>${order.user.shippingAddress.city }<br>
				<label>Pin:</label>${order.user.shippingAddress.zipCode}<br> <label>State:</label>${order.user.shippingAddress.state }<br>

			</div>
			
		</div>
		<a class="btn btn-default btn-lg button"
				href="${flowExecutionUrl}&_eventId=shippingaddress"
				style="float: left; margin-left: 2px;">Back</a> <a
				class="btn btn-default button btn-lg"
				href="${flowExecutionUrl}&_eventId=event2"
				style="float: right; margin-right: 2px;">Confirm</a>
	</div>
</div>

<%@ include file="footer.jsp"%>