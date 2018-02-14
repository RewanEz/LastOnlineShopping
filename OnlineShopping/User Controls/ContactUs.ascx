<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.ascx.cs" Inherits="OnlineShopping.User_Controls.ContactUs" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Electronic Store a Ecommerce Online Shopping Category Bootstrap Responsive Website Template | Mail Us :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery.min.js"></script> 
<!-- //js -->  
<!-- web fonts --> 
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //web fonts --> 
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- //end-smooth-scrolling --> 
</head> 

    <body>
        <!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>Contact Us</h2>
		</div>
	</div>
	<!-- //banner -->    
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Contact Us</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 
	<!-- mail -->
	<div class="mail">
		<div class="container">
<%--			<h3>Contact Us</h3>--%>
			<div class="agile_mail_grids">
				<div class="col-md-5 contact-left">
					<h4>Address</h4>
					<p>
						<span>25,suezCanal st,Cairo</span></p>
					<ul>
						<li>Free Phone :+64 345 433 21</li>
						<li>Telephone :+64 345 433 21</li>
						<li>Fax :+64 345 433 21</li>
						<li><a href="mailto:doaa.shazly154@gmail.com">doaa.shazly154@gmail.com</a></li>
					</ul>
				</div>
				<div class="col-md-7 contact-left">
					<h4>Contact Form</h4>
					<%--<form  action="mailto:doaa.shazly154@gmail.com" method="post">--%>
						<%--<input type="text" name="Name" placeholder="Your Name" required="">--%>
                    <asp:TextBox ID="txtname" runat="server" placeholder="Your Name"></asp:TextBox>&nbsp;
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2" BorderColor="Red"></asp:RequiredFieldValidator>&nbsp;

                                                  <asp:TextBox ID="txtMail" runat="server" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtMail" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
<%--                                                <asp: ID="RangeValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2" validationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtMail"></asp:>--%>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtMail" ForeColor="Red" ValidationGroup="g2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


						<%--<input type="email" name="Email" placeholder="Your Email" required="">--%>
						<%--<input type="text" name="Telephone" placeholder="Telephone No" required="">--%>
                    <asp:TextBox ID="txtmsg" runat="server" placeholder="Message..." TextMode="MultiLine"></asp:TextBox>&nbsp;
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmsg" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2" BorderColor="Red"></asp:RequiredFieldValidator>&nbsp;

						<%--<textarea name="message" placeholder="Message..." required=""></textarea>--%>
                      <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="g2"  />&nbsp;

						<%--<input type="submit" value="Submit" >--%>
<%--					</form>--%>
                    <asp:Label ID="lbmsg" runat="server" Text="" ForeColor="green"></asp:Label>
				</div>
				<div class="clearfix"> </div>
			</div>

			<div class="contact-bottom">
				<%--<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d96908.54934770924!2d-73.74913540000001!3d40.62123259999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sanimal+rescue+service+near+Inwood%2C+New+York%2C+NY%2C+United+States!5e0!3m2!1sen!2sin!4v1436335928062" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
			</div>
		</div>
	</div>
	<!-- //mail -->
    </body>
</html>