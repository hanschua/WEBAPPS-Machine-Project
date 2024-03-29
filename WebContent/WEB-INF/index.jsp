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

<title>Senpai</title>
		
</head>
<body>
		
	<!--Import jQuery before materialize.js-->
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript" src="js/navbar-magic.js"></script>
	
	<c:import url="part/navbarmain.jsp"></c:import>
	
	<div id="Home"></div>
	<div class="board white lighten-3 valign-wrapper banner">
		<div class="container valign right-align">
			<h1>Senpai</h1>
			<h4>save an appointment at your convenience</h4>
			<c:if test="${user==null}">
				<a class="waves-effect waves-light btn-large green darken-1 margin-top15" href="#Register">
					Register
				</a>
				<a class="waves-effect waves-light btn-large green darken-1 margin-top15" href="#Login">
					Login
				</a>
			</c:if>
			<c:if test="${user!=null}">
				<a class="waves-effect waves-light btn-large green darken-1 margin-top15" href="view_doctors">
					View Doctors
				</a>
			</c:if>
		</div>
	</div>
	
	<div id="About"></div>
	<div class="board deep-purple lighten-3 valign-wrapper">
		<div class="container valign left-align board-padding col s12">
			<div class="section col s12">
				<h1>About</h1>
				<p class="flow-text" style="text-align:justify;text-justify: inter-word;">Senpai is an online doctor appointment system that grants you the privilege to save an appointment to the hospital and the doctor of your choice!
				Doctor profiles are transparent to everyone, their specialization, their schedule and those who have an appointment to them, as well as feedbacks.
				You may also cancel appointments, but the doctor may cancel some appointments too. </p>
			</div>
		</div>
	</div>
	
	<c:if test="${user==null}">
	
	<div id="Login"></div>
	<div class="board white lighten-4 valign-wrapper yellow lighten-4">
		<div class="container valign row">
			<div class="left-align board-padding col s12 ">
				<div class="col s12" style="margin-bottom:20px;">
					<h2 class="board-header display-inline">Login</h2>
					<h5 class="red-text display-inline left-margin10">
						<c:if test="${invalid_login!=null}">
							${invalid_login}
						</c:if>
					</h5>
				</div>
				<form action="login" method="post">
					<div>
					<div class="input-field col s12">
						<i class="mdi-communication-email prefix"></i>
						<input id="icon_prefix" type="email" class="validate" name="login_email">
						<label for="icon_prefix" class="black-text">Email Address</label>
					</div>
					</div>
					<div class="input-field col s12">
						<i class="mdi-action-lock prefix"></i>
						<input id="icon_prefix" type="password" class="validate" name="login_password">
						<label for="icon_prefix" class="black-text">Password</label>
					</div>
					<div class="right-align">
						<button type="submit" class="waves-effect waves-light btn green darken-1 margin-top10"><i class="mdi-content-send right"></i>Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div id="Register"></div>
	<div class="board valign-wrapper white">
		<div class="container valign">
			<div class="left-align board-padding col s12 ">
				<div class="register">
					<h2 class="board-header display-inline">Register</h2>
					<h5 class="red-text display-inline left-margin10">
						<c:if test="${invalid_registration!=null}">
							${invalid_registration}
						</c:if>
					</h5>
				</div>
				<div class="row" style="margin-top:20px">
				<form class="col s12" action="register" method="post">
					<div class="row">
						<div class="input-field col m6 s12 black-text">
							<c:choose>
								<c:when test="${user_reg_first_name == null }">
									<input id="user_reg_first_name" name="user_reg_first_name" type="text" class="validate">
									<label for="user_reg_first_name" class="black-text">First Name</label>
								</c:when>
								<c:otherwise>
									<input id="user_reg_first_name" name="user_reg_first_name" value="${user_reg_first_name}" type="text" class="validate">
									<label for="user_reg_first_name" class="black-text">First Name</label>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="input-field col m6 s12">
							<c:choose>
								<c:when test="${user_reg_last_name == null }">
									<input id="user_reg_last_name" name="user_reg_last_name" type="text" class="validate">
									<label for="user_reg_last_name" class="black-text">Last Name</label>
								</c:when>
								<c:otherwise>
									<input id="user_reg_last_name" name="user_reg_last_name" value="${user_reg_last_name}" type="text" class="validate">
									<label for="user_reg_last_name" class="black-text">Last Name</label>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="input-field col m6 s12">
							<c:choose>
								<c:when test="${user_reg_email == null }">
									<input id="user_reg_email" name="user_reg_email" type="text" class="validate">
									<label for="user_reg_email" class="black-text">Email</label>
								</c:when>
								<c:otherwise>
									<input id="user_reg_email" name="user_reg_email" value="${user_reg_email}" type="text" class="validate">
									<label for="user_reg_email" class="black-text">Email</label>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="input-field col m6 s12">
							<c:choose>
								<c:when test="${user_reg_contact_number == null }">
									<input id="user_reg_contact_number" name="user_reg_contact_number" type="text" class="validate">
									<label for="user_reg_contact_number" class="black-text">Contact Number</label>
								</c:when>
								<c:otherwise>
									<input id="user_reg_contact_number" name="user_reg_contact_number" value="${user_reg_contact_number}" type="text" class="validate">
									<label for="user_reg_contact_number" class="black-text">Contact Number</label>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="input-field col m6 s12">
							<c:choose>
								<c:when test="${user_reg_password == null}">
									<input id="user_reg_password" name="user_reg_password" type="password" class="validate">
									<label for="user_reg_password" class="black-text">Password</label>
								</c:when>
								<c:otherwise>
									<input id="user_reg_password" name="user_reg_password" value="${user_reg_password}" type="password" class="validate">
									<label for="user_reg_password" class="black-text">Password</label>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="input-field col m6 s12">
							<c:choose>
								<c:when test="${user_reg_confirm_password == null}">
									<input id="user_reg_confirm_password" name="user_reg_confirm_password" type="password" class="validate">
									<label for="user_reg_confirm_password" class="black-text">Confirm Password</label>
								</c:when>
								<c:otherwise>
									<input id="user_reg_confirm_password" name="user_reg_confirm_password" value="${user_reg_confirm_password}" type="password" class="validate">
									<label for="user_reg_confirm_password" class="black-text">Confirm Password</label>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="input-field col m6 s12 select">
							<select id="user_reg_gender" name="user_reg_gender">
								<c:choose>
									<c:when test="${user_reg_gender == null}">
										<option value="" selected disabled>Gender</option>
										<option value="M">Male</option>
										<option value="F">Female</option>
									</c:when>
									<c:when test="${user_reg_gender == 'F'}">
										<option value="" disabled>Gender</option>
										<option value="M">Male</option>
										<option value="F" selected>Female</option>
									</c:when>
									<c:otherwise>
										<option value="" disabled>Gender</option>
										<option value="M" selected>Male</option>
										<option value="F">Female</option>
									</c:otherwise>
								</c:choose>
							</select>
						</div>
						<div class="input-field col m6 s12">	
 							<c:choose>
								<c:when test="${user_reg_birthdate == null}">
 									<input id="user_reg_birthdate" name="user_reg_birthdate" type="text" class="datepicker">
									<label for="user_reg_birthdate" class="black-text">Birthdate</label>
								</c:when>
								<c:otherwise>
									<input id="user_reg_birthdate" name="user_reg_birthdate" value="${user_reg_birthdate}" type="text" class="datepicker">
									<label for="user_reg_birthdate" class="black-text">Birthdate</label>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="right-align" style="float:right">
						<button type="submit" class="waves-effect waves-light btn green darken-1 margin-top10"><i class="mdi-content-send right"></i>Register</button>
					</div>
					<div class="left-align flow-text" style="float:left; margin-top:10px">
						A doctor? apply <u><b><a href="/Popcorn/doctor_application" class="blue-text">here</a></b></u>
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>
	
	</c:if>
	
	<c:import url="part/footer.jsp"></c:import>
		
</body>

<script>
	
	<c:if test="${success!=null}">
		alert("Successfully ${success}");
	</c:if>
		
	$('.datepicker').pickadate({
	   	selectMonths: true, // Creates a dropdown to control month
	   	selectYears: 150, // Creates a dropdown of 150 years to control year
	   	max: true,
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
	
	$("#user_reg_birthdate").ready(function(){
		
		var monthNames = [	"January", "February", "March", "April", "May", "June",
		                  	"July", "August", "September", "October", "November", "December"	];
		
	    var date = new Date();
	    var day = date.getDate();
	    var month = date.getMonth();
	    var year = date.getFullYear();
	    
	    var today = day + " " + monthNames[month] + ", " + year;       
	    console.log(today);
	    $("#user_reg_birthdate").val(today);
	    
	});
		
</script>

</html>