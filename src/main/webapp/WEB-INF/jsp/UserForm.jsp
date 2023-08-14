<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang = "en" dir = "ltr">
<head>
<meta charset="UTF-8">
<title>Lakshitha Storese</title>
<link rel = "stylesheet" href = "style.css">
<!-- Boxiocns CDN Link -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<meta name = "viewport" content = "width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<style type="text/css">
/* Google Fonts Import Link */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: boarder-box;
	font-family: 'Poppins', sans-serif;
}

.sidebar {
	position: fixed;
	top: 0;
	left: 0;
	height: 100%;
	width: 260px;
	background: #11101d;
	align-content: center;
	z-index: 100;
	transition: all 0.5s ease;
}

.sidebar.close {
	width: 78px;
}

.sidebar .logo-details {
	height: 60px;
	width: 100%;
	display: flex;
	align-items: center;
}

.sidebar .logo-details .logo-name img {
	font-size: 30px;
	/* 	background-color: red; */
	color: #fff;
	height: 21px;
	min-width: 35px;
	text-align: center;
	line-height: 50px;
	transiton: all 0.5s ease;
	padding-left: 35px;
}

.sidebar .logo-details .logo-name {
	font-size: 22px;
	color: #fff;
	font-weight: 600;
	transiton: 0.3s ease;
	transiton-delay: 0.1s;
}

.sidebar.close .logo-details .logo-name {
	transiton-delay: 0s;
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links {
	height: 100%;
	padding: 30px 0 150px 0;
	overflow: auto;
}

.sidebar.close .nav-links {
	overflow: visible;
}

.sidebar .nav-links::-webkt-scrollbar {
	display: none;
}

.sidebar .nav-links li .icon-link {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.sidebar.close .nav-links li .icon-link {
	display: block;
}

.sidebar .nav-links li {
	position: relative;
	list-style: none;
	transition: all 0.4s ease;
}

.sidebar .nav-links li:hover {
	background: #1d1b31;
}

.sidebar .nav-links li i {
	height: 50px;
	min-width: 78px;
	text-align: center;
	line-height: 50px;
	color: #fff;
	font-size: 20px;
	cursor: pointer;
	transition: all 0.3s ease;
}

.sidebar .nav-links li.showMenu i.arrow {
	transform: rotate(-180deg);
}

.sidebar.close .nav-links i.arrow {
	display: none;
}

.sidebar .nav-links li a {
	align-items: center;
	display: flex;
	text-decoration: none;
}

.sidebar .nav-links li a .link-name {
	font-size: 18px;
	font-weight: 400;
	color: #fff;
}

.sidebar.close .nav-links li a .link-name {
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links li .sub-menu {
	padding: 6px 6px 14px 80px;
	margin-top: -10px;
	background: #1d1b31;
	display: none;
}

.sidebar .nav-links li.showMenu .sub-menu {
	display: block;
}

.sidebar .nav-links li .sub-menu a {
	color: #fff;
	font-size: 15px;
	padding: 5px 0;
	white-space: nowrap;
	opacity: 0.6;
	transiton: all 0.3 ease;
}

.sidebar .nav-links li .sub-menu a:hover {
	opacity: 1;
}

.sidebar.close .nav-links li .sub-menu {
	position: absolute;
	left: 100%;
	top: -10px;
	margin-top: 0;
	padding: 10px 20px;
	border-radius: 0 6px 6px 0;
	opacity: 0;
	display: block;
	pointer-events: none;
	transiton: 0s;
}

.sidebar.close .nav-links li:hover .sub-menu {
	top: 0;
	opacity: 1;
	pointer-events: auto;
	transition: all 0.4s ease;
}

.sidebar .nav-links li .sub-menu .link_name {
	display: none;
}

.sidebar.close .nav-links li .sub-menu .link_name {
	font-size: 18px;
	opacity: 1;
	display: block;
}

.sidebar .nav-links li .sub-menu.blank {
	opacity: 1;
	pointer-events: auto;
	padding: 3px 20px 6px 16px;
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links li:hover .sub-menu.blank {
	top: 50%;
	transform: translateY(-50%);
}

.sidebar .profile-details {
	position: fixed;
	bottom: 0;
	width: 260px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	background: #1d1b31;
	padding: 6px 0;
	transition: all 0.5s ease;
}

.sidebar.close .profile-details {
	background: none;
}

.sidebar.close .profile-details {
	width: 78px;
}

.sidebar .profile-details .profile-content {
	display: flex;
	align-items: center;
}

.sidebar .profile-details img {
	height: 35px;
	width: 35px;
	object-fit: cover;
	border-radius: 16px;
	background-color: red;
	margin: 0 14px 0 12px;
	background: #1d1b31;
	transtion: all 0.5s ease;
}

.sidebar.close .profile-details img {
	padding: 10px;
}

.sidebar .profile-details .profile-name, .sidebar .profile-details .job
	{
	color: #fff;
	font-size: 16px;
	font-weight: 500;
	white-space: nowrap;
}

.sidebar.close .profile-details i, .sidebar.close .profile-details .profile-name,
	.sidebar.close .profile-details .job {
	display: none;
}

.sidebar .profile-details .job {
	font-size: 12px;
}

.home-section {
	position: relative;
	background: #E4E9F7;
	height: 10vh;
	left: 260px;
	width: calc(100% - 260px);
	transition: all 0.5s ease;
}

.sidebar.close ~ .home-section {
	left: 78px;
	width: calc(100% - 78px);
}

.home-section .home-content {
	height: 60px;
	display: flex;
	align-items: center;
}

.home-section .home-content .bx-menu, .home-section .home-content .text
	{
	color: #11101d;
	font-size: 35px;
}

.home-section .home-content .bx-menu {
	margin: 0 15px;
	cursor: pointer;
}

.home-section .home-content .text {
	font-size: 26px;
	font-weight: 600;
}

.main-content{
	position: relative;
	height: (90vh);
	left: 260px;
	width: calc(100% - 260px);
	transition: all 0.5s ease;
}

.main-content .page-content{
	align-items: center;
	margin: 10px 7px;
	
}

/* .main-content { */
/* 	font-size: 26px; */
/* 	font-weight: 600; */
/* 	background: #E4E9F7; */
/* 	color: red; */
/* } */
</style>
<style type="text/css">
/* ===============message========================== */

/* The message box is shown when the user clicks on the password field */
#message {
   display:none; 
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
/*   content: "✔"; */
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
/*   content: "X"; */
}
</style>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>
<div id="layout-wrapper">

	<div class="sidebar">
	
<!-- 	==================Start sidebar====================== -->
		<div class="logo-details">
			<span class="logo-name"><br><img src="images/logo.png">
			</span>
		</div>
		
		<ul class="nav-links">
			<li>
				<a href="dashboard"><i class='bx bx-grid-alt'></i>
				<span class="link-name">Dashboard</span>
				</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="dashboard">Dashboard</a></li>
				</ul>
			</li>
			<li>
				<a href="items"><i class='bx bx-collection'></i>
				<span class="link-name">Items</span>
				</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="items">Items</a></li>
				</ul>
			</li>
			
			
			<li>
				<div class="icon-link">
					<a href="store">
						<i class='bx bx-store-alt'></i>
						<span class="link-name">Store</span>
					</a>
				<i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">Store</a></li>
					<li><a href="store">Store</a></li>
					<li><a href="PurchaseTable">Purchase Item</a></li>
				</ul>
			</li>
			
			<li>
				<div class="icon-link">
					<a href="#">
						<i class='bx bx-store-alt'></i>
						<span class="link-name">Sales</span>
					</a>
				<i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">Sales</a></li>
					<li><a href="sales">Sales Details</a></li>
					<li><a href="billing">Billing</a></li>
				</ul>
			</li>
			
			<li>
				<a href="employee"><i class='bx bxs-user-detail'></i>
				<span class="link-name">Employee</span>
				</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="employee">Employee</a></li>
				</ul>
				
			</li>
			<li>
				<a href="userTable"><i class='bx bx-user'></i>
				<span class="link-name">User</span>
				</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="userTable">User</a></li>
				</ul>
				
			</li>
			
			<li>
				<a href="customer"><i class='bx bx-user-plus'></i>
				<span class="link-name">Customer</span>
				</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="customer">Customer</a></li>
				</ul>
				
			</li>
			<li>
				<a href="Report"><i class='bx bxs-report'></i>
				<span class="link-name">Report</span>
				</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="Report">Report</a></li>
				</ul>
				
			</li>
			
			<li>
				<div class="profile-details">
					<div class="profile-content">
						<img alt="" src="images/profile.png">
					</div>	

					<div class="name-job">
						<div class="profile-name"> ${username} </div>
					</div>
					<i class="bx bx-log-out" onclick="Redirect();"></i>
				</div>
			</li>
		</ul>
<!-- 	==================End sidebar====================== -->
	</div>
	
		<section class = "home-section">
<!-- 	================Start home-section================= -->
			<div class = "home-content">
				<i class='bx bx-menu'></i>
				<span class = "text">Drop Down Sidebar</span>
			</div>
<!-- 	================End home-section================= -->
		</section>
		
<!--    ================Start right Content here========= -->

		<div class="main-content">
			<div class="page-content">
				<div class="container-fluid">
<!--    ================start page title================= -->
					<div class="row">
						<div class="col-md-6">
							<div class="page-title-box">
								<h5>Add New User</h5><br>
							</div>
						</div>
<!-- 						<div class = "col-md-6" align = "right"> -->
<!-- 							<button type="button" class="btn btn-outline-secondary inputbutton" onclick="javascript:window.history.back();">Back</button> -->
<!-- 							<a href="userForm"><input type="button" value="Add" class="btn btn-secondary waves-effect" /></a> -->
<!-- 						</div><br> -->
					</div>

					<!--   ============end page title========================== -->
					
					<!--   ============Start Form========================== -->
					
					<div class="row">
							<div class="col-12">
<!-- 							<div id="myPopup" class="popup"> -->
<!-- 									<div class="popup-content"> -->
<!-- 										<h3 style="color: green;">Add New Employee</h3> -->
							<div class="card">
								<div class="card-body">
									<form id="newUser">
										<div class="row">
											<div class="col-md-6">
												<label>Employee Name : </label><br> <select class="form-control input-sm viewdata" id="name" name="name" onchange="setUSerId()">
													<option value="Select Employee" selected="selected">Select Employee</option>
													<c:forEach items="${employeeList}" var="empList">
														<option value="${empList.empName}">${empList.empName}</option>
													</c:forEach>
												</select>
												<div class="form-error text-danger" id="errorname"></div>
												<br> <label>User Id : </label><br> <input type="text" class="form-control input-sm viewdata" id="userId" name="userId" />
												<div class="form-error text-danger" id="erroruserid"></div>
												<br> <label>Designation : </label><br> <input type="text" class="form-control input-sm viewdata" id="designation" name="designation" />
												<div class="form-error text-danger" id="errordesignation"></div>
												<br>

											</div>
											<div class="col-md-6">
												<label>Password : </label><br> <input type="password" class="form-control input-sm viewdata" id="password"
													name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
													required />
												<div class="form-error text-danger" id="errorpassword"></div>
												<div id="message">
													<h6>Password must contain the following:</h6>
													<label id="letter" class="invalid">*A <b>lowercase </b> letter</label>
													<label id="capital" class="invalid">*A <b>capital (uppercase)</b> letter </label>
													<label id="number" class="invalid">*A <b>number </b></label>
													<label id="length" class="invalid">*Minimum <b>8 characters</b></label>
												</div>
												<br> <label>Re Enter Password : </label><br> <input
													type="password" class="form-control input-sm viewdata"
													id="rpassword" name="rpassword" />
												<div class="form-error text-danger" id="errorrepassword"></div>
											</div>
										</div>
									</form></div>
							</div>
							<br>
							<div class="row">

								<div class="col-md-6" align="left">
									<button type="button" class="btn btn-outline-secondary inputbutton" onclick="javascript:window.history.back();">Back</button>
									<button type="button" class="btn btn-secondary waves-effect" id = "saveUser">Save</button>
								</div>
								<div class="col-md-6" align="right">
								<button type="reset" class="btn btn-outline-secondary inputbutton">Clear Form</button>
<!-- 									<button type="reset" class="btn btn-secondary">Clear Form</button> -->
								</div>
								<br>
							</div>
							<!-- 									</div> -->
<!-- 								</div> -->
							</div>

						</div>

					<!--   ============End Form========================== -->
					
				</div>
			</div>
		</div>


		<!--    ================End right Content here========= -->
</div>


	<script type="text/javascript">
	function Redirect() {
	    location.href="login";
	 }
	
// 	function getFormData(data) {
//         var unindexed_array = data;
//         var indexed_array = {};
//         $.map(unindexed_array, function(n, i) { 
//          indexed_array[n['name']] = n['value']; 
//         });
//         return indexed_array;
//      }	
	
	function setUSerId() {
	var empName = $("#name :selected").text();
// 	alert(empName);
   	 var reslt = document.getElementById("userId");
   	 
   	 $.ajax({
	        type: "POST",
	        url: "userId",
	        data:{ "empName": empName},
	        success: function (names) {
// 	        	alert(names);
			setUserId(names);
	        }
	        
	    });		
	}
	
	function setUserId(names) {
		document.getElementById('userId').value=names.empNo ;
		document.getElementById('designation').value=names.desgnation ;
		
	}
	
	function getFormData(data) {
        var unindexed_array = data;
        var indexed_array = {};
        $.map(unindexed_array, function(n, i) { 
         indexed_array[n['name']] = n['value']; 
        });
        return indexed_array;
     }
	
	$('#saveUser').click(function(e) {
        e.preventDefault();
        clearErroField();
        
        var empName = $("#name :selected").text();
        var userId = (document.getElementById("userId")).value;
        var designation = (document.getElementById("designation")).value;
        var pword = (document.getElementById("password")).value;
        var reEnter = (document.getElementById("rpassword")).value;
        
        if(empName == "Select Employee" || userId == "" || designation == "" || pword == "" || reEnter == ""){
        	if(empName == "Select Employee"){
        		document.getElementById("errorname").innerHTML = "Plese select a Employee!";
        	}
        	if(userId == ""){
        		document.getElementById("erroruserid").innerHTML = "Plese enter UserId!";
        	}
        	if(designation == ""){
        		document.getElementById("errordesignation").innerHTML = "Plese enter Designation!";
        	}
        	if(pword == ""){
        		document.getElementById("errorpassword").innerHTML = "Plese enter Pasword!";
        	}
        	if(reEnter == ""){
        		document.getElementById("errorrepassword").innerHTML = "Plese re enter Pasword!";
        	}
        }
        if(!(empName == "Select Employee" || userId == "" || designation == "" || pword == "" || reEnter == "")){
        	
        	  if(pword != reEnter){
        		  document.getElementById("errorrepassword").innerHTML = "Password do not match!";
        	  }
        	  else{
        		  saveUser(empName,userId,designation,pword);
        	  }
        	
        	}  
        
	});
	
	function saveUser(empName,userId,designation,pword) {
// 		alert("hi");
		
		$.ajax({
	        type: "GET",
	        url: "usersave",
	        data: {
	        	"empName": empName,
	        	"userId": userId,
	        	"designation": designation,
	        	"pword": pword
	        },
	        success: function (result) {
	        	console.log(result);
// 	        	alert(res);
// 	        	alert(user)
				if(result.res == "Username already in the system"){
					Swal.fire({
						  title: 'Error!',
						  text: result.res,
						  icon: 'Error',
						  confirmButtonColor: '#3085d6',
						  confirmButtonText: 'Ok'
						}).then((result) => {
						  if (result.isConfirmed) {
							  window.location.reload();
						  }
						})
				}
				else{
					Swal.fire({
						  title: 'Hurrray!!',
						  text: "User Successfully Saved!",
						  icon: 'success',
						  confirmButtonColor: '#3085d6',
						  confirmButtonText: 'Ok'
						}).then((result) => {
						  if (result.isConfirmed) {
							  window.location.reload();
						  }
						})
				}
	        }
	        
	    });
	}
	
	
	function clearErroField() {
		document.getElementById("errorname").innerHTML = "";
		document.getElementById("erroruserid").innerHTML = "";
		document.getElementById("errordesignation").innerHTML = "";
		document.getElementById("errorpassword").innerHTML = "";
		document.getElementById("errorrepassword").innerHTML = "";
		
	}

	
// 	================password=======================

var myInput = document.getElementById("password");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
	
	
</script>
	<script>
	let arrow = document.querySelectorAll(".arrow");
	for(var i = 0; i < arrow.length; i++){
		arrow[i].addEventListener("click", (e)=>{
			let arrowParent = e.target.parentElement.parentElement;
			arrowParent.classList.toggle("showMenu");
		
		});
	}
	
	let sidebar = document.querySelector(".sidebar");
	let sidebarBTN = document.querySelector(".bx-menu");
	console.log(sidebarBTN);
	sidebarBTN.addEventListener("click", ()=>{
			sidebar.classList.toggle("close");
	});
	
	</script>

</body>
</html>