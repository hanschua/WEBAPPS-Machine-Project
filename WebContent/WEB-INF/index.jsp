<%@ page import="enums.user_registration_enum"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
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
	
	<c:import url="part/navbar.jsp"></c:import>
	
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
					<c:if test="${user==null}">
						<a class="waves-effect waves-light btn-large green" href="#Register">Register</a>
					</c:if>
					<a class="waves-effect waves-light btn-large blue" href="view_doctors">View Doctor List</a>
					<c:if test="${user==null}">
						<a class="waves-effect waves-light btn-large red" href="#Login">Login</a>
					</c:if>
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
	
	<c:if test="${user==null}">
	
	<div id="Login"></div>
	<div class="board yellow lighten-4 valign-wrapper">
		<div class="container valign">
			<div class="left-align board-padding col s12 ">
				<div>
					<h2 class="board-header display-inline">Login</h2>
					<h5 class="red-text display-inline left-margin10">
						<c:if test="${invalid_login!=null}">
							${invalid_login}
						</c:if>
					</h5>
				</div>
				<form action="login" method="post">
					<div class="input-field col s6 margin-top15">
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
						<button type="submit" class="waves-effect waves-light btn margin-top10"><i class="mdi-content-send right"></i>Login</button>
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
					<h5 class="red-text display-inline left-margin10">
						<c:if test="${invalid_registration!=null}">
							${invalid_registration}
						</c:if>
					</h5>
				</div>
				<div class="row">
				<form class="col s12" action="register" method="post">
					<div class="row">
						<div class="input-field col m6 s12">
							<input id="user_reg_first_name" name="user_reg_first_name" type="text" class="validate">
							<label for="user_reg_first_name">First Name</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="user_reg_last_name" name="user_reg_last_name" type="text" class="validate">
							<label for="user_reg_last_name">Last Name</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="user_reg_email" name="user_reg_email" type="email" class="validate">
							<label for="user_reg_email">Email</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="user_reg_contact_number" name="user_reg_contact_number" type="text" class="validate">
							<label for="user_reg_contact_number">Contact Number</label>
						</div>
						<div class="input-field col m6 s12 select">
							<select id="user_reg_gender" name="user_reg_gender">
								<option value="" selected disabled>Gender</option>
								<option value="M">Male</option>
								<option value="F">Female</option>
							</select>
						</div>
						<div class="input-field col m6 s12">	
 							<input id="user_reg_birthdate" name="user_reg_birthdate" type="date" class="datepicker">
							<label for="user_reg_birthdate">Birthdate</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="user_reg_password" name="user_reg_password" type="password" class="validate">
							<label for="user_reg_password">Password</label>
						</div>
						<div class="input-field col m6 s12">
							<input id="user_reg_confirm_password" name="user_reg_confirm_password" type="password" class="validate">
							<label for="user_reg_confirm_password">Confirm Password</label>
						</div>
					</div>
					<div class="right-align">
						<button type="submit" class="waves-effect waves-light btn margin-top10"><i class="mdi-content-send right"></i>Register</button>
					</div>
					<div class="left-align flow-text">
						A doctor? apply <a href="/Popcorn/doctor_application">here</a>
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>
	
	</c:if>
	
	<c:if test="${user!=null}">
		<c:if test="${user.isDoctor()!=false}">
			<div class="board valign-wrapper">
				<div class="container valign">
					<div class="left-align flow-text">
						A doctor? apply <a href="/Popcorn/doctor_application">here</a>
					</div>
				</div>
			</div>
		</c:if>
	</c:if>
	
	<c:import url="part/footer.jsp"></c:import>
		
</body>

<script>
		
	$('.datepicker').pickadate({
	   	selectMonths: true, // Creates a dropdown to control month
	   	selectYears: 15 // Creates a dropdown of 15 years to control year
	});
	
	$(document).ready(function() {
		$('select').material_select();
	});
	
	<%
		for(user_registration_enum i : user_registration_enum.values()){
			String val = (String) request.getAttribute(i.toString());
			if(val!=null){
	%>
				$("#<%=i.toString()%>").val("<%=val%>");
	<%
			}
		}
	%>
		
</script>

</html>