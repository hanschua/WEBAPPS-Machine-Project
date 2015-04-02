<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<link rel="shortcut icon" href="popcorn.ico">
	
	<!--Import materialize.css-->
	<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

	<!--Let browser know website is optimized for mobile-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	
	<link type="text/css" rel="stylesheet" href="css/main.css"  media="screen,projection"/>
	
	<title>POPCORN</title>
		
</head>
<body>
		
	<!--Import jQuery before materialize.js-->
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript" src="js/animation.js"></script>
	
	<div class="navbar-fixed">
		<nav>
			<div class="nav-wrapper">
				<a href="#Home" class="brand-logo">POPCORN</a>
				<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
				<ul class="right hide-on-med-and-down">
					<li><a href="#Home">Home</a></li>
					<li><a href="#About">About</a></li>
					<li><a href="view_doctors">View Doctors</a></li>
					<li><a href="#Login">Login</a></li>
					<li><a href="#Register">Register</a></li>
				</ul>
				<ul class="side-nav" id="mobile-demo">
					<li><a href="#Home">Home</a></li>
					<li><a href="#About">About</a></li>
					<li><a href="view_doctors">View Doctors</a></li>
					<li><a href="#Login">Login</a></li>
					<li><a href="#Register">Register</a></li>
				</ul>
			</div>
		</nav>
	</div>
	
	<div id="Home"></div>
	<div class="board lime lighten-3 valign-wrapper">
		<div class="container valign">
			<div class="center-align board-padding col s12 ">
				<div class="section col s12">
					<div class="row">
						<div class="col s12">
						<h2>POPCORN</h2>
						</div>
					</div>
					<h5 class="flow-text">Doctor Appointment System</h5>
				</div>
				<div class="row">
					<a class="waves-effect waves-light btn-large green" href="#Register">Register</a>
					<a class="waves-effect waves-light btn-large blue" href="view_doctors">View Doctor List</a>
					<a class="waves-effect waves-light btn-large red" href="#Login">Login</a>
				</div>
			</div>
		</div>
	</div>
	
	<div id="About"></div>
	<div class="board teal lighten-3 valign-wrapper">
		<div class="container valign">
			<div class="left-align board-padding col s12 ">
				<div class="section col s12">
					<h1>About</h1>
					<p class="flow-text justify">Lorem ipsum dolor sit amet, porro clita imperdiet id pri. Ne mea prima antiopam, ut vis enim doming voluptua. Nihil inimicus ut eam, oratio latine mei in, ut purto inciderint vim. Cu dolores singulis est, has ad quot tamquam voluptua, pro cu eius perfecto assentior. Eos fierent constituam ea, ea clita maiorum suavitate pri. No nostro debitis efficiantur duo, prima iuvaret et duo, solet consequat omittantur an eos.</p>
				</div>
				<div class="row col s12">
				</div>
			</div>
		</div>
	</div>
	
	<div id="Login"></div>
	<div class="board yellow lighten-4 valign-wrapper">
		<div class="container valign">
			<div class="left-align board-padding col s12 ">
				<div>
					<h2 class="board-header display-inline">Login</h2>
					<h5 class="red-text display-inline left-margin10">Invalid User</h5>
				</div>
				<form action="login" method="post">
					<div class="input-field col s6">
						<i class="mdi-communication-email prefix"></i>
						<input id="icon_prefix" type="email" class="validate">
						<label for="icon_prefix">Email Address</label>
					</div>
					<div class="input-field col s6">
						<i class="mdi-action-lock prefix"></i>
						<input id="icon_prefix" type="password" class="validate">
						<label for="icon_prefix">Password</label>
					</div>
					<div class="right-align">
						<button type="submit" class="waves-effect waves-light btn btn-top-margin"><i class="mdi-content-send right"></i>Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div id="Register"></div>
	<div class="board valign-wrapper">
		<div class="container valign">
			<div class="left-align board-padding col s12 ">
				<div>
					<h2 class="board-header display-inline">Register</h2>
					<h5 class="red-text display-inline left-margin10">Invalid Email</h5>
				</div>
				<div class="row">
				<form class="col s12" action="register" method="post">
					<div class="row">
						<div class="input-field col m6 s12">
							<input id="first_name" type="text" class="validate">
							<label for="first_name">First Name</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="last_name" type="text" class="validate">
							<label for="last_name">Last Name</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="email" type="email" class="validate">
							<label for="email">Email</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="contact-number" type="text" class="validate">
							<label for="contact-number">Contact Number</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="password" type="password" class="validate">
							<label for="password">Password</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="confirm-password" type="password" class="validate">
							<label for="confirm-password">Confirm Password</label>
						</div>
					</div>
					<div class="right-align">
						<button type="submit" class="waves-effect waves-light btn btn-top-margin"><i class="mdi-content-send right"></i>Register</button>
					</div>
					<div class="left-align flow-text">
						A doctor? apply <a href="doctor_apply.html">here</a>
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>
	
	<footer class="page-footer">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
					<h5 class="white-text">POPCORN</h5>
					<p class="grey-text text-lighten-4">Lorem ipsum dolor sit amet, porro clita imperdiet id pri. Ne mea prima antiopam, ut vis enim doming voluptua. Nihil inimicus ut eam, oratio latine mei in, ut purto inciderint vim.</p>
				</div>
				<div class="col l4 offset-l2 s12">
					<h5 class="white-text">Links</h5>
					<ul>
						<li><a class="grey-text text-lighten-3" href="#Home">Home</a></li>
						<li><a class="grey-text text-lighten-3" href="#About">About</a></li>
						<li><a class="grey-text text-lighten-3" href="view_doctors">View Doctors</a></li>
						<li><a class="grey-text text-lighten-3" href="#Login">Login</a></li>
						<li><a class="grey-text text-lighten-3" href="#Register">Register</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copyright">
			<div class="container">
				&copy; 2015 Copyright Text
			</div>
		</div>
	</footer>
		
</body>

	<script>
		
		$(document).ready(function(){
		
			$('.slider').slider({full_width: true});
		
		});
		
	</script>

</html>