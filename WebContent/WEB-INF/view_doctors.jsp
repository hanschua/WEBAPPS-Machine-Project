<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="enums.filters" %>
   
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
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
	<link type="text/css" rel="stylesheet" href="css/view_doctors.css"  media="screen,projection"/>
	
	<title>POPCORN</title>
		
</head>
<body>
	
	<!--Import jQuery before materialize.js-->
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	
	<div class="navbar-fixed">
		<nav class="blue darken-3">
			<div class="nav-wrapper">
				<a href="index#Home" class="brand-logo">POPCORN</a>
				<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
				<ul class="right hide-on-med-and-down">
					<li><a href="index#Home">Home</a></li>
					<li><a href="index#About">About</a></li>
					<li><a href="view_doctors">View Doctors</a></li>
					<li><a href="index#Login">Login</a></li>
					<li><a href="index#Register">Register</a></li>
				</ul>
				<ul class="side-nav" id="mobile-demo">
					<li><a href="index#Home">Home</a></li>
					<li><a href="index#About">About</a></li>
					<li><a href="view_doctors">View Doctors</a></li>
					<li><a href="index#Login">Login</a></li>
					<li><a href="index#Register">Register</a></li>
				</ul>
			</div>
		</nav>
	</div>
	
	<div class="board">
		<div class="container custom-container row center-align board-padding">
			<div class="center-align col s12">
				<div class="col l3 hide-on-med-and-down">
					<div class="card">
						<div class="card-content">
							<form action="search_doctors" method="get">
								<p class="flow-text">Search</p>
								<div class="input-field">
									<input id="search" type="text" class="validate" name="search">
									<label for="search">Doctor's Name (any)</label>
								</div>
								<div class="right-align">
									<button type="submit" class="waves-effect waves-light btn white-text">Search</button>
								</div>
							</form>
						</div>
					</div>
					<div class="card">
						<div class="card-content">
							<form action="filter_doctors" method="GET">
								<p class="flow-text">Filters</p>
								<select id="specialization_selector" name="specialization" onchange="this.form.submit()">
									<option value="0" disabled selected>Specialization</option>
									<option value="1">None</option>
									<!--- PRINT SPECIALIZATIONS --->
									<c:forEach items="${specializations}" var="specialization">
								        <option value="${specialization.key}">${specialization.value}</option>
								    </c:forEach>
								</select>
								<select id="city_selector" name="city" onchange="this.form.submit()">
									<option value="0" disabled selected>Location</option>
									<option value="1">None</option>
									<!--- PRINT CITIES --->
									<c:forEach items="${cities}" var="city">
								        <option value="${city.key}">${city.value}</option>
								    </c:forEach>
								</select>
								<select id="hospital_selector" name="hospital" onchange="this.form.submit()">
									<option value="0" disabled selected>Hospital</option>
									<option value="1">None</option>
									<!--- PRINT HOSPITALS --->
									<c:forEach items="${hospitals}" var="hospital">
								        <option value="${hospital.key}">${hospital.value}</option>
								    </c:forEach>
								</select>
							</form>
							<form action="clear_filters">
								<div class="right-align">
									<button type="submit" class="waves-effect waves-light btn white-text">Clear</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col l9 s12 list">
					<div class="row">
						<div class="col s12 hide-on-large-only">
							<ul class="collapsible" data-collapsible="accordion">
								<li>
									<div class="collapsible-header"><i class="mdi-action-search"></i>Search</div>
									<div class="collapsible-body"></div>
								</li>
								<li>
									<div class="collapsible-header"><i class="mdi-content-filter-list"></i>Filters</div>
									<div class="collapsible-body">
										<form action="filter_doctors" method="GET">
											<div class="filter-small">
												<div class="row">
													<div class="col s12 m4">
														<select id="specialization_selector" name="specialization" onchange="this.form.submit()">
															<option value="0" disabled selected>Specialization</option>
															<option value="1">None</option>
															<!--- PRINT SPECIALIZATIONS --->
															<c:forEach items="${specializations}" var="specialization">
														        <option value="${specialization.key}">${specialization.value}</option>
														    </c:forEach>
														</select>
													</div>
													<div class="col s12 m4">
														<select id="location_selector" name="location" onchange="this.form.submit()">
															<option value="9" disabled selected>Location</option>
															<option value="1">None</option>
															<!--- PRINT CITIES --->
															<c:forEach items="${cities}" var="city">
														        <option value="${city.key}">${city.value}</option>
														    </c:forEach>
														</select>
													</div>
													<div class="col s12 m4">
														<select id="hospital_selector" name="hospital" onchange="this.form.submit()">
															<option value="0" disabled selected>Hospital</option>
															<option value="1">None</option>
															<!--- PRINT HOSPITALS --->
															<c:forEach items="${hospitals}" var="hospital">
														        <option value="${hospital.key}">${hospital.value}</option>
														    </c:forEach>
														</select>
													</div>
												</div>
											</div>
										</form>
									</div>
								</li>
							</ul>
						</div>
						<div class="col s12">
							<div class="card-panel">
								<div class="row">
									<div class="col s12">
										<table class="hoverable center-align centered bordered">
											<thead>
												<tr>
													<th data-field="id">Name</th>
													<th data-field="name">Location</th>
													<th data-field="price">Specialization</th>
												</tr>
											</thead>
											<tbody id="list_of_doctors">
												
											</tbody>
										</table>
									</div>
								</div>
								<div class="row center">
									<ul class="pagination col s12 center-align" style="width: auto">
										<li class="disabled"><a href="#!"><i class="mdi-navigation-chevron-left"></i></a></li>
										<li class="active"><a href="#!">1</a></li>
										<li class="waves-effect"><a href="#!">2</a></li>
										<li class="waves-effect"><a href="#!">3</a></li>
										<li class="waves-effect"><a href="#!">4</a></li>
										<li class="waves-effect"><a href="#!">5</a></li>
										<li class="waves-effect"><a href="#!"><i class="mdi-navigation-chevron-right"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
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
                 <li><a class="grey-text text-lighten-3" href="index#Home">Home</a></li>
                 <li><a class="grey-text text-lighten-3" href="index#About">About</a></li>
                 <li><a class="grey-text text-lighten-3" href="view_doctors">View Doctors</a></li>
                 <li><a class="grey-text text-lighten-3" href="index#Login">Login</a></li>
                 <li><a class="grey-text text-lighten-3" href="index#Register">Register</a></li>
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
	
	<div id="doctor-info" class="modal modal-fixed-footer">
		<div class="modal-content">
			<span>
			<h4>Doctor Piggy</h4>
			</span>
			<div class="flow-text margin-top10">Weekdays : 8am - 4pm</div>
			<div class="flow-text margin-top10">Weekends : 8am - 4pm</div>
			<div class="flow-text margin-top10">Available Days :</div>
			<div class="row margin-top10">
				<div class="col s12 m4 margin-top15">
					<input type="checkbox" id="mon_checkbox" checked="checked" disabled="disabled" />
					<label for="test7">Monday</label>
				</div>
				<div class="col s12 m4 margin-top15">
					<input type="checkbox" id="tue_checkbox" checked="checked" disabled="disabled" />
					<label for="test7">Tuesday</label>
				</div>
				<div class="col s12 m4 margin-top15">
					<input type="checkbox" id="wed_checkbox" disabled="disabled" />
					<label for="test7">Wednesday</label>
				</div>
				<div class="col s12 m4 margin-top15">
					<input type="checkbox" id="thur_checkbox" checked="checked" disabled="disabled" />
					<label for="test7">Thursday</label>
				</div>
				<div class="col s12 m4 margin-top15">
					<input type="checkbox" id="fri_checkbox" checked="checked" disabled="disabled" />
					<label for="test7">Friday</label>
				</div>
				<div class="col s12 m4 margin-top15">
					<input type="checkbox" id="sat_checkbox" checked="checked" disabled="disabled" />
					<label for="test7">Saturday</label>
				</div>
				<div class="col s12 m4 margin-top15">
					<input type="checkbox" id="sun_checkbox" disabled="disabled" />
					<label for="test7">Sunday</label>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a class="waves-effect waves-green btn-flat modal-action" href="doctor_profile.html">View Doctor</a>
			<a class="waves-effect waves-teal btn-flat modal-action modal-close">Close</a>
		</div>
	</div>

</body>

	<script>
	
		<%
			ServletContext sc = request.getServletContext();
			Object o;
			for(filters i : filters.values()){
				String attr = i.toString();
				o = sc.getAttribute(attr);
				if(o==null || o.equals("1")){
					%>
						$("#<%=attr%>_selector option[value='0']").attr('selected', true);
					<%
				}else{
					%>
						$("#<%=attr%>_selector option[value='0']").attr('selected', false);
						$("#<%=attr%>_selector option[value=\"" + <%=o.toString()%>+ "\"]").attr('selected', true);
					<%
				}
			}
			
			o = sc.getAttribute("search");
			
			if(o!=null){
				%>
					$("#search").val("<%=o%>");
				<%
			}
			
		%>
	
		$(document).ready(function(){
		
			$('.button-collapse').sideNav({menuWidth: 240, activationWidth: 70});
			$('select').material_select();
			$('.modal-trigger').leanModal();
			$('.collapsible').collapsible({
				accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
			});
	
			$('a[href^="#"]').on('click',function (e) {
				e.preventDefault();

				var target = this.hash;
				var $target = $(target);

				$('html, body').stop().animate({
					'scrollTop': $target.offset().top
				}, 600, 'swing', function () {
					window.location.hash = target;
				});
			});
			
			var list = $('#list_of_doctors');
				
			for(var i=0; i<10; i++){
				list.append('<tr class="modal-trigger" href="#doctor-info" onclick="load_doctor_info()"><td>Piggy</td><td>Manila</td><td>Physician</td></tr>');
			}
			
		});
		
		function load_doctor_info(id){
			$('#doctor-info').openModal();	
		}
		
	</script>
	
</html>