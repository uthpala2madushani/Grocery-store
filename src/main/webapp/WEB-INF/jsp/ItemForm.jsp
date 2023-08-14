<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html lang = "en" dir = "ltr">
<head>
<meta charset="UTF-8">
<title>Lakshitha Storese</title>
<link rel = "stylesheet" href = "style.css">
<!-- Boxiocns CDN Link -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
<meta name = "viewport" content = "width=device-width, initial-scale=1.0">
<script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
<style type="text/css">
/* Google Fonts Import Link */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
						<div class="col-sm-6">
							<div class="page-title-box">
								<h5>Add Item</h5>
							</div>
						</div>
					</div>
<!--   ============end page title========================== -->
					
<!--   ============Start table========================== -->
					<div class="row">
						<div class="col-12">

							<div class="card">
								<div class="card-body">
									<form id = "itemForm">
										<div class = "row">
											<div class = "col-md-6">
												<label>Name : </label><br>
												<input type = "text" class = "form-control input-sm viewdata" id = "name" name ="name" />
												<div class="form-error text-danger" id = "errorname"></div>
												<br> <label>Date : </label>
												<br><input type = "date" class = "form-control input-sm viewdata" id = "date" name ="date" readonly  />
												<div class="form-error text-danger"  id = "errordate"></div>
												<br><label>Category</label><br>
												<select class = "form-control" id = "category">
													<option value="" />
													<option value="Fresh Meat">Fresh Meat</option>
													<option value="Dairy">Dairy</option>
													<option value="Fruits">Fruits</option>
													<option value="Vegetables">Vegetables</option>
													<option value="Bakery">Bakery</option>
													<option value="Kitchenware">Kitchenware</option>
													<option value="Household Cleaners">Household Cleaners</option>
													<option value="Jarred Goods">Jarred Goods</option>
													<option value="Dry/Baking Goods">Dry/Baking Goods</option>
													<option value="Frozen Foods">Frozen Foods</option>
													<option value="Paper Goods">Paper Goods</option>
													<option value="Personal Care">Personal Care</option>
													<option value="Other">Other</option>
												</select><br>
													<div class="form-error text-danger" id = "errorcategory"></div>
												<label>Min Quantity : </label><br>
												<input type = "number" class = "form-control input-sm viewdata" id = "minqty" name = "minQty"/>
												<div class="form-error text-danger" id = "errorminqty"></div>
												<br>
												
											</div>
											<div class = "col-md-6">
												<label>Purchase Price : </label><br>
												<input type = "number" class = "form-control input-sm viewdata" id = "pprice" name = "purchasePrice"/>
												<div class="form-error text-danger" id = "errorpprice"></div>
												<br> <label>Selling Price : </label><br>
												<input type = "number" class = "form-control input-sm viewdata" id = "sprice" name = "sellingPrice"/>
												<div class="form-error text-danger" id = "errorsprice"></div>
												<br><label>Description : </label><br>
												<textarea rows="5" id="description" class = "form-control input-sm viewdata" name = "description"></textarea>
												<br>
												
											</div>
										</div>
										<div class = "row">
											<div class = "col-md-6">
												<button type = "button" id="saveItem" class="btn btn-secondary waves-effect">Save</button>
												<button type="reset" class="btn btn-outline-secondary inputbutton">Clear Form</button>
											</div>
											<div class = "col-md-6" align="right">												
												<button type="button" class="btn btn-secondary waves-effect" onclick="javascript:window.history.back();">Back</button>
											</div>
										</div>
									</form>	
								</div>
							</div>
						</div>
					</div>

					<!--   ============End table========================== -->
					
				</div>
			</div>
		</div>


		<!--    ================End right Content here========= -->
</div>

<script>
function Redirect() {
    location.href="login";
 }
	
	document.getElementById("date").valueAsDate = new Date();
	
	function getFormData(data) {
        var unindexed_array = data;
        var indexed_array = {};
        $.map(unindexed_array, function(n, i) { 
         indexed_array[n['name']] = n['value']; 
        });
        return indexed_array;
     }
	
	$('#saveItem').click(function(e) {
        e.preventDefault();
        clearErroField();
        formValdate(); 
    });
	
	function clearErroField() {
		document.getElementById("errorname").innerHTML = "";
		document.getElementById("errordate").innerHTML = "";
		document.getElementById("errorminqty").innerHTML = "";
		document.getElementById("errorpprice").innerHTML = "";
		document.getElementById("errorsprice").innerHTML = "";
		document.getElementById("errorcategory").innerHTML = "";
		
	}

	function validateDateRange(inputDate) {
	    var now = new Date(),
	        date = new Date(inputDate);
	    return date == now ;
	}
	
	function formValdate(){
		var name = document.getElementById("name").value;
		var date = document.getElementById("date").value;
		var minqty = document.getElementById("minqty").value;
		var pprice = document.getElementById("pprice").value;
		var sprice = document.getElementById("sprice").value;
		var description = document.getElementById("description").value;
		var category = document.getElementById("category").value;
		
		
		if(name==""||date==""||minqty==""||pprice==""||sprice==""||category==""){
			if(name==""){
				document.getElementById("errorname").innerHTML = "Plese enter Name! ";
			}
			if(date==""){
				document.getElementById("errordate").innerHTML = "Plese enter Date!";
			}
			if(minqty==""){
				document.getElementById("errorminqty").innerHTML = "Plese enter Min Quantity! ";
			}
			if(pprice==""){
				document.getElementById("errorpprice").innerHTML = "Plese enter Purchase Price! ";
			}
			if(sprice==""){
				document.getElementById("errorsprice").innerHTML = "Plese enter Selling Price! ";
			}
			if(category){
				document.getElementById("errorcategory").innerHTML = "Plese select a category! ";
			}
		}if(!(name==""||date==""||minqty==""||pprice==""||sprice==""||category=="")){
				
			if(sprice < pprice){
				document.getElementById("errorsprice").innerHTML = "Sellng price should be greater than purchase price!";
			}else{
				
				saveItem(name,date,minqty,pprice,sprice,description,category);
				
				
			}
			
		}
		
	}
	
	function saveItem(name,date,minqty,pprice,sprice,description,category){
		
		$("input[type=text],select,textarea,input[type=number]").val('');
// 		var JsonMainObj = {};
// 		JsonMainObj = getFormData($("#itemForm").serializeArray());
// 		console.log(JsonMainObj);
		
		$.ajax({
	        type: "GET",
	        url: "itemsave",
	        data: {
	        	"name": name,
	        	"date": date,
	        	"minQty": minqty,
	        	"purchasePrice": pprice,
	        	"sellingPrice": sprice,
	        	"description": description,
	        	"category":category
	        },
	        success: function (name) {
	        	swal({
	        		  title: "Hurray!",
	        		  text: name + "successfully saved.",
	        		  imageUrl: "../images/hurray.png"
	        		});
	        }
	        
	    });
	}
	
	
// 	==================================================
	
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