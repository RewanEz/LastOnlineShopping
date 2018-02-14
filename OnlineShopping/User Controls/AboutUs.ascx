<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.ascx.cs" Inherits="OnlineShopping.User_Controls.AboutUs" %>

<div>
     <div class="banner banner10">
		<div class="container">
			<h2>About Us</h2>
		</div>
	</div>
	
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>About Us</li>
			</ul>
		</div>
	</div>
	
	<div class="about">
		<div class="container">	
			<div class="w3ls_about_grids">
				<div class="col-md-6 w3ls_about_grid_left">
					<p>Welcome to our store – the Middle East’s online marketplace. <br />

 We connect people and products – opening up a world of possibility. From bracelets and backpacks to Electronics(Mobiles,Televisions,Any machines) – we give you access to everything you need and want. Our range is unparalleled, and our prices unbeatable. 
</p>
					<div class="col-xs-2 w3ls_about_grid_left1">
						<span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 w3ls_about_grid_left2">
						<p>Driven by smart technology, everything we do is designed to put the power directly in your hands – giving you the freedom to shop however, whenever and wherever you like.</p>
					</div>
					<div class="clearfix"> </div>
					<div class="col-xs-2 w3ls_about_grid_left1">
						<span class="glyphicon glyphicon-flash" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 w3ls_about_grid_left2">
						<p>We’re trusted by millions, because we don’t just deliver to your doorstep, we were born here. With our store you’ll always be getting a good deal – with exceptional service that makes your shopping experience as easy and seamless as possible. </p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 w3ls_about_grid_right">
					<img src="images/48.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about --> 
	<!-- team -->
	<div class="team">
		<div class="container">
			<h2 style="text-align:center">Meet Our Team</h2>
			<div class="wthree_team_grids">
				<div class="col-md-3 wthree_team_grid">
					<img src="images/t4.png" alt=" " class="img-responsive" />
					<h4>REwan Ezz <span>Manager</span></h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<img src="images/t5.png" alt=" " class="img-responsive" />
					<h4>Doaa Shazly <span>Designer</span></h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<img src="images/t6.png" alt=" " class="img-responsive" />
					<h4>Wessam Abdel Khalek <span>Director</span></h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
                
				<div class="col-md-3 wthree_team_grid">
					<img src="images/t7.png" alt=" " class="img-responsive" />
					<h4>Hadeer elHafney<span>Quality Checker</span></h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
				<p></p>
			</div>
		</div>
	</div>
	
	<div class="team-bottom">
		<div class="container">
			<h3>Are You Ready For Deals? Flat <span>30% Offer </span>on Mobiles</h3>
			<p></p>
			<a href="products.html">Shop Now</a>
		</div>
	</div>
	
	
	 
	
	<script src="js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
            var items, len, i;

            if (this.subtotal() > 0) {
                items = this.items();

                for (i = 0, len = items.length; i < len; i++) {
                }
            }
        });
    </script>  
	</div>