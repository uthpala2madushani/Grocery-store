<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang = "en" dir = "ltr">
<head>
<meta charset="UTF-8">
<title>Lakshitha Storese</title>
<link rel = "stylesheet" href = "style.css">
<!-- Boxiocns CDN Link -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<meta name = "viewport" content = "width=device-width, initial-scale=1.0">
<style type="text/css">
/* Google Fonts Import Link */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');

*{
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

.sidebar.close{
	width: 78px;
}

.sidebar .logo-details{
	height: 60px;
	width: 100%;
	display: flex;
	align-items: center;
}

.sidebar .logo-details .logo-name img{
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

.sidebar .logo-details .logo-name{
	font-size: 22px;
	color:#fff;
	font-weight: 600;
	transiton: 0.3s ease;
	transiton-delay: 0.1s;
	
}

.sidebar.close .logo-details .logo-name{
	transiton-delay: 0s;
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links{
	height: 100%;
	padding: 30px 0 150px 0;
	overflow: auto;
	
}

.sidebar.close .nav-links{
	overflow: visible;
}

.sidebar .nav-links::-webkt-scrollbar{
	display: none;
}

.sidebar .nav-links li .icon-link{
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.sidebar.close .nav-links li .icon-link{
	display: block;
}

.sidebar .nav-links li{
	position: relative;
	list-style: none;
	transition: all 0.4s ease;
}

.sidebar .nav-links li:hover{
	background: #1d1b31;
}

.sidebar .nav-links li i{
	height: 50px;
	min-width: 78px;
	text-align: center;
	line-height: 50px;
	color: #fff;
	font-size: 20px;
	cursor: pointer;
	transition: all 0.3s ease;
}

.sidebar .nav-links li.showMenu i.arrow{
	transform: rotate(-180deg);
}

.sidebar.close .nav-links i.arrow{
	display: none;
}

.sidebar .nav-links li a{
	align-items: center;
	display: flex;
	text-decoration: none;
}

.sidebar .nav-links li a .link-name{
	font-size: 18px;
	font-weight: 400;
	color: #fff;
}

.sidebar.close .nav-links li a .link-name{
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links li .sub-menu{
	padding: 6px 6px 14px 80px;
	margin-top: -10px;
	background: #1d1b31;
	display: none;
}

.sidebar .nav-links li.showMenu .sub-menu{
	display: block;
}

.sidebar .nav-links li .sub-menu a{
	color: #fff;
	font-size: 15px;
	padding: 5px 0;
	white-space: nowrap;
	opacity: 0.6;
	transiton: all 0.3 ease;
}

.sidebar .nav-links li .sub-menu a:hover{
	opacity: 1;
}

.sidebar.close .nav-links li .sub-menu{
	position: absolute;
	left: 100%;
	top: -10px;
	margin-top: 0;
	padding: 10px 20px;
	border-radius: 0 6px 6px 0;
	opacity: 0;
	display: block;
	pointer-events:none;
	transiton: 0s;
}

.sidebar.close .nav-links li:hover .sub-menu{
	top: 0;
	opacity: 1;
	pointer-events: auto;
	transition: all 0.4s ease;
}

.sidebar .nav-links li .sub-menu .link_name{
	display: none;
}

.sidebar.close .nav-links li .sub-menu .link_name{
	font-size: 18px;
	opacity: 1;
	display: block;
}

.sidebar .nav-links li .sub-menu.blank{
	opacity: 1;
	pointer-events: auto;
	padding: 3px 20px 6px 16px;
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links li:hover .sub-menu.blank{
	top: 50%;
	transform: translateY(-50%);
}


.sidebar .profile-details{
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

.sidebar.close .profile-details{
	background: none;
}

.sidebar.close .profile-details{
	width: 78px;
}

.sidebar .profile-details .profile-content{
	display: flex;
	align-items: center;
}

.sidebar .profile-details img{
	height: 35px;
	width: 35px;
	object-fit: cover;
	border-radius: 16px;
	background-color: red;
	margin: 0 14px 0 12px;
	background: #1d1b31;
	transtion: all 0.5s ease;
}

.sidebar.close .profile-details img{
	padding: 10px;
}

.sidebar .profile-details .profile-name,
.sidebar .profile-details .job{
	color: #fff;
	font-size: 16px;
	font-weight: 500;
	white-space: nowrap;
}

.sidebar.close .profile-details i,
.sidebar.close .profile-details .profile-name,
.sidebar.close .profile-details .job{
	display: none;
}

.sidebar .profile-details .job{
	font-size: 12px;
}

.home-section{
	position: relative;
	background: #E4E9F7;
	height: 100vh;
	left: 260px;
	width: calc(100% - 260px);
	transition: all 0.5s ease;
}

.sidebar.close ~ .home-section{
	left: 78px;
	width: calc(100% - 78px);
}

.home-section .home-content{
	height: 60px;
	display: flex;
	align-items: center;
}

.home-section .home-content .bx-menu,
.home-section .home-content .text{
	color: #11101d;
	font-size: 35px;
}

.home-section .home-content .bx-menu{
	margin: 0 15px;
	cursor: pointer;
}

.home-section .home-content .text{
font-size: 26px;
font-weight: 600;
}



</style>
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

<%-- 				<c:if test="${desi.admin == true}"> --%>
<!--         only admin could see this content -->
<%--     </c:if> --%>
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
</div>

<script>

function Redirect() {
    location.href="login";
 }


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