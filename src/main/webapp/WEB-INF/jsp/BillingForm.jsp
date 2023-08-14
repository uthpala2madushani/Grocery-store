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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>

<!-- ===================data table =========================== -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.css" />


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
</style>

<style type="text/css">
	.popup {
            position: fixed;
            z-index: 1;
            left: 50px;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            display: none; 
        }
        .popup-content {
            background-color: white;
            margin: 4% auto;
            padding: 10px;
            border: 1px solid #888888;
            width: 50%;
            font-weight: bolder;
            border-radius: 6px;
        }
        
        .popup-content button {
            display: block;
            margin: 0 auto;
        }
        .show {
            display: block;
        }
        h1 {
            color: green;
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
				<span class = "text"></span>
			</div>
<!-- 	================End home-section================= -->
		</section>
		
<!--    ================Start right Content here========= -->

		<div class="main-content">
			<div class="page-content">
				<div class="container-fluid">
<!--    ================start page title================= -->
					<div class="row">
						<div class="col-sm-6" align="left">
							<div class="page-title-box">
								<h5>Sales Invoice</h5>
							</div>
						</div>
						<div class="col-sm-6" align="right">
							<button type="button" class="btn btn-outline-secondary inputbutton" onclick="javascript:window.history.back();">Back</button>
							<button class="btn btn-secondary waves-effect" type="button" id="newCustomer">Add Customer</button>
						</div>
						
					</div>
<!--   ============end page title========================== -->

<!-- =====================add================================= -->

<!-- ========================================================= -->
					<div class="row">
						<div class="col-12"><br>
							<div class="card">
								<div class="card-body" align="center">
									<button class="btn btn-outline-secondary inputbutton" type="button" id="newInvoice">Add</button>
								</div>
							</div>
						</div>
<!--   ============Start table========================== -->
					<div class="row">
						<div class="col-12"><br>
							<div class="card">
								<div class="card-body">
<!-- 									<h5 class="mt-0 header-title">Pending Projects</h5> -->
									<div class="table-rep-plugin">
										<div class="table-responsive mb-0" data-pattern="priority-columns">
											<table id="invoice" class="display" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
												<thead>
													<tr>
														<th>#</th>
														<th>Item Id</th>
														<th>Category</th>
														<th>Item Name</th>
														<th>Price</th>
														<th>Quantity</th>
														<th>Total</th>
													</tr>
												</thead>
												
												<tbody>
												
												</tbody>

											</table>
											<div>
											<h4>Grand Total: </h4>
											<h5 id = "grandTotal1"></h5>
<!-- 												<input type = "number" class = "form-control input-sm viewdata" id = "grandTotal1" name ="grandTotal" /> -->
											</div>
											
											<button id="payment" class="btn btn-secondary">Pay</button>
												
											<input id = "id" style="visibility: hidden" />
											
											
										</div>
										
										
									</div>
								</div>
							</div>
						</div>
					</div>


<!--   ============end table========================== -->
					
<!--   ============Start form========================== -->
					<div class="row">
							<div class="col-12">
							<div id="myPopup" class="popup">
									<div class="popup-content">
										<h3 style="color: green;">Add New Customer</h3>
										<div class="card">
											<div class="card-body">
												<form id = "newPurchase">
													<div class="row">
														<div class="col-md-6">
															<label>Name : </label><br>
															<input type = "text" class = "form-control input-sm viewdata" id = "name" name ="name" />
															<div class="form-error text-danger" id = "errorname"></div><br>
															<label>NIC : </label><br>
															<input type = "text" class = "form-control input-sm viewdata" id = "nic" name ="nic" />
															<div class="form-error text-danger" id = "errornic"></div><br>
															
															 
														</div>
														<div class="col-md-6">
														<label>Mobile : </label><br>
															<input type="tel" pattern="07[1,2,5,6,7,8]{1}[0-9]{7}" maxlength="10" id="mobile" name ="mobile"  class = "form-control input-sm viewdata"/>
<!-- 															<input type = "tel" pattern="[0]{1}[7]{1}[01245678]{1}[0-9]{7}" class = "form-control input-sm viewdata" id = "mobile" name ="mobile" /> -->
															<div class="form-error text-danger" id = "errormobile"></div><br>
															<label>Address : </label><br>
															<textarea rows="3" class = "form-control input-sm viewdata" id = "address" name ="address"></textarea>
<!-- 															<input type = "text" class = "form-control input-sm viewdata" id = "address" name ="address" /> -->
															<div class="form-error text-danger" id = "erroraddress"></div><br>
														</div>
													</div>
												</form>
											</div>
										</div><br>
									<div class="row">
										<div class="col-md-12">
										<span><button id="closePopup" class="btn btn-outline-secondary" >Cancel</button>&nbsp;&nbsp;
											<button id="add" class="btn btn-secondary">Add</button>
											</span>
											
										</div>
									</div>
									</div>
								</div>
							</div>

						</div>

<!--   ============End form========================== -->

<!--   ==================start invoice form================ -->
						<div class="row">
							<div class="col-12">
							<div id="myPopupItem" class="popup">
									<div class="popup-content">
										<h3 style="color: green;">Add Item</h3>
										<div class="card">
											<div class="card-body">
												<form id = "newPurchase">
													<div class="row">
														<div class="col-md-6">
															<label>Item Category : </label><br> <select class="form-control" id="category" onchange="setCategoryData()">
																<option value="Select a Category" selected="selected" id = "catagory">Select a Category</option>
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
															</select>
															<div class="form-error text-danger" id = "errorcategory"></div><br>
															<label>Item Name : </label><br>
															<select class="form-control" id="itemname" onchange="setPrice()"></select>
<!-- 															<input type = "text" class = "form-control input-sm viewdata" id = "itemname" name ="itemname" /> -->
															<div class="form-error text-danger" id = "erroritemname"></div><br>
															
														</div>
														<div class="col-md-6">
															<label>Price : </label><br>
															<input type = "number" class = "form-control input-sm viewdata" id = "price" name ="price"/>
															<div class="form-error text-danger" id = "errorprice"></div><br>
															<label>Quantity : </label><br>
															<input type = "number" class = "form-control input-sm viewdata" id = "qty" name ="qty" onchange="getTotal()" />
															<div class="form-error text-danger" id = "errorqty"></div>
														</div>
													</div>
													<div class = "row">
													<div class = "col-md-3"></div>
													<div class = "col-md-6">
														<label>Total : </label><br>
															<input type = "number" class = "form-control input-sm viewdata" id = "tot" name ="tot" />
													</div>
													<div class = "col-md-3"></div>
													</div>
													
														<input id = "itemcode" style="visibility: hidden"></input>
												</form>
											</div>
										</div><br>
									<div class="row">
										<div class="col-md-12">
										<span><button id="closePopupItem" class="btn btn-outline-secondary" >Cancel</button>&nbsp;&nbsp;
											<button id="addItem" class="btn btn-secondary">Add</button>
											</span>
											
										</div>
									</div>
									</div>
								</div>
							</div>

						</div>
			</div>
<!-- ============================================================ -->
					
				</div>
			</div>
		</div>


		<!--    ================End right Content here========= -->
</div>		


<script type="text/javascript" src = "https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
	$(function() {
		$('#invoice').DataTable({"bPaginate": false});
		
		 $(".dataTables_empty").empty();
		
	});
	
	function Redirect() {
	    location.href="login";
	 }
	
	
	
	function total() {
// 		let myTable = document.getElementById('invoice');

// 		for (let row of myTable.rows) {
// 		    for(let cell of row.cells){
// 		       console.log(cell.innerText);
// 		       gettot(cell.innerText);
// 		    }
// 		}
		
// 	    var table = document.getElementById('invoice');
// 	    for (var r = 1, n = table.rows.length; r < n; r++) {
// 	        for (var c = 0, m = table.rows[r].cells.length; c < m; c++) {
// 	            console.log(table.rows[r].cells[c].innerText);
// 	            gettot(table.rows[r].cells[c].innerText);
// 	        }
// 	    }
	}
	
// 	function gettot(res) {
// 		alert(res);
		
// 		for(var i = 0; i < res.length ; i++){
// 			alert(res[i]);
// 		}
// 	}
	
//     function total() {
// //     	alert("total");
    	
//     	var table = document.getElementById("invoice"), sumVal = 0;
        
//         for(var i = 1; i < table.rows.length; i++)
//         {
//             sumVal = sumVal +  parseInt(table.rows[i].cells[4].innerHTML);
//         }
        
//         document.getElementById("todal").innerHTML = "Total = " + sumVal;
//         console.log(sumVal);
// 	}
    
    
 	</script> 

	<script>	
	newInvoice.addEventListener("click", function () {
		$("input[type=text],input[type=number]").val('');	
		myPopupItem.classList.add("show");
		
		closePopupItem.addEventListener("click", function () {
			$("input[type=text],select,input[type=number]").val('');
			myPopupItem.classList.remove("show");
		});

		window.addEventListener("click", function (event) {
		    if (event.target == myPopupItem) {
		    	myPopupItem.classList.remove("show");
		    }
		});
	    
	});
	
	
	function setCategoryData() {
// 		alert("hi");
		
	$("input[type=text],input[type=number]").val('');
   	 var category = $("#category :selected").text();
   	 var reslt = document.getElementById("itemname");
   	 
   	 $.ajax({
	        type: "POST",
	        url: "itemName",
	        data :{ "category": category},
	        success: function (names) {
// 	        	alert(names);
			setName(names);
	        }
	        
	    });
		
	}
	
	function setName(names) {
//     	$("input[type=text],select,input[type=number]").val('');
		$("#itemname").val = "";
    	$('#itemname').append("<option>Select Item Name</option>");
    	for(var i = 0; i < names.length ; i++){
    		$('#itemname').append("<option value = " + names[i].name +">" + names[i].name + "</option>");
    	}
		
	}
	
	function setPrice() {
		
	    var name = $("#itemname :selected").text();
	    var res = document.getElementById("price");	
	    	$.ajax({
		        type: "POST",
		        url: "itemPrice",
		        data :{ "name": name},
		        success: function (result) {
		        	console.log(result);
		        	setItemPrice(result.sellingPrice);
		        	document.getElementById("itemcode").value = result.itemCode;
		        }
		        
		    });
			
		}
	
	function setItemPrice(price) {
// 		console.log(price);
		document.getElementById('price').value=price ;
		
	}
	
	function getTotal() {
		
// 		alert("ihih");
		var price = document.getElementById("price").value;
		var qty = document.getElementById("qty").value;
// 		var totalAmount = $("#todal").val();
// 		if(totalAmount == "" ){
// 			totalAmount = 0 ;
// 		}
// 		console.log(totalAmount);
// 		console.log(price);
		
		$.ajax({
	        type: "POST",
	        url: "getTotal",
	        data :{ "price": price,
	        		"qty": qty
// 	        		"totalAmount":totalAmount
	        	},
	        success: function (total) {
// 	        	alert(total);
			document.getElementById("tot").value = total;
// 			document.getElementById("tdtotalamount").innerHTML = total.res2;
			
	        	
	        }
	    });
		
	}
	
	$('#addItem').click(function(e) {
		document.getElementById("errorcategory").innerHTML = "";
		document.getElementById("erroritemname").innerHTML = "";
		document.getElementById("errorprice").innerHTML = "";
		document.getElementById("errorqty").innerHTML = "";
		
		var itemcode = document.getElementById("itemcode").value;
		var category = document.getElementById("category").value;
		var name = document.getElementById("itemname").value;
		var price = document.getElementById("price").value;
		var qty = document.getElementById("qty").value;
		var total = document.getElementById("tot").value;
		
// 		alert(category + name + price + qty);
		
		if(category == "" ||category == "Select a Category" || name == "" || name == "Select Item Name"|| qty == ""){
			if(category == "" ||category == "Select a Category"){
				document.getElementById("errorcategory").innerHTML = "Plese Select Category! ";
			}
			if(name == "" || name == "Select Item Name" ){
				document.getElementById("erroritemname").innerHTML = "Plese Select Item Name! ";
			}
			if(qty == ""){
				document.getElementById("errorqty").innerHTML = "Plese enter Quantity! ";
			}
		}
		
		if(!(category == "" ||category == "Select a Category" || name == "" || name == "Select Item Name"|| qty == "")){
			saveItem(itemcode,name,category,price,qty);
			$("input[type=text],select,input[type=number]").val('');
		}
// 		var totalAmount = $("#todal").val();
// 		if(totalAmount == "" ){
// 			totalAmount = 0 ;
// 		}
// 		console.log("1: " + totalAmount);
//         var valuea = parseInt(totalAmount);
//         console.log( "2:" +valuea);
//         var typeValue =parseInt(total);
//         console.log("3:" + typeValue);
//         valuea = valuea + typeValue;
//         console.log("4:" + valuea);
//         var strval = valuea.toString();
//         console.log("5:" + strval);
        
//         var inputTotal = document.getElementById("todal");
// 		totalAmount = parseInt(totalAmount) + (price * qty);
// 		inputTotal.innerHTML = strval;
// 		$("#todal").val(valuea);
	});
	
	
		function saveItem(itemcode,name,category,price,qty){
			document.getElementById("errorcategory").innerHTML = "";
			document.getElementById("erroritemname").innerHTML = "";
			document.getElementById("errorprice").innerHTML = "";
			document.getElementById("errorqty").innerHTML = "";
			
			$("itemname").val('Select Item Name');
			 document.getElementById("invoice").style.display="block";
             
			 var temNO = 1;
             var table = document.getElementById("invoice");
             var row = table.insertRow(-1);
             var count = row.insertCell(0);
             var itemId = row.insertCell(1);
             var category = row.insertCell(2);
             var name = row.insertCell(3);
             var price = row.insertCell(4);
             var qty = row.insertCell(5);
             var total = row.insertCell(6);
             count.innerHTML = temNO++;
             itemId.innerHTML = document.getElementById("itemcode").value; 
             category.innerHTML = document.getElementById("category").value;
             name.innerHTML = document.getElementById("itemname").value;
             price.innerHTML = document.getElementById("price").value;
             qty.innerHTML = document.getElementById("qty").value;
             total.innerHTML = document.getElementById("tot").value;
             total.classList.add("totalamount");
             console.log("hi");
             
             var grandTotalAmount = 0;
             var totalamounts = document.getElementsByClassName("totalamount");
             for (var i = 0; i < totalamounts.length; i++) {
            	 console.log(totalamounts.item(i).innerHTML);
            	 grandTotalAmount = parseFloat(grandTotalAmount) + parseFloat(totalamounts.item(i).innerHTML);
             }
             document.getElementById("grandTotal1").innerHTML = grandTotalAmount;
             
             
             var itemId1 = document.getElementById("itemcode").value; 
             var category1 = document.getElementById("category").value;
             var name1= document.getElementById("itemname").value;
             var price1 = document.getElementById("price").value;
             var qty1 = document.getElementById("qty").value;
             $.ajax({
     	        type: "POST",
     	        url: "savetem",
     	        data :{ "itemId": itemId1,
     	        		"category": category1,
     	        		"name": name1,
     	        		"sellprice": price1,
     	        		"qty": qty1
     	        	}
//      	        success: function (customer) {
//      	         	alert(customer+ " saved!");
//      			document.getElementById("id").value = customer.id;
//      			msg(customer);
     	        	
     	        });
             
//              $("#grandTotal1").prop('value', 'new value');
           
             return false;
		}
	
	</script>
	
	<script>
	newCustomer.addEventListener("click", function () {
		$("input[type=text],input[type=number]").val('');	
		myPopup.classList.add("show");
	    
	});
	
	closePopup.addEventListener("click", function () {
		
	    myPopup.classList.remove("show");
	});

	window.addEventListener("click", function (event) {
	    if (event.target == myPopup) {
	        myPopup.classList.remove("show");
	    }
	});
	
	
	$('#add').click(function(e) {
		document.getElementById("errorname").innerHTML = "";
		document.getElementById("errormobile").innerHTML = "";
		document.getElementById("erroraddress").innerHTML = "";
		document.getElementById("errornic").innerHTML = "";
		
		var name = document.getElementById("name").value;
		var mobile = document.getElementById("mobile").value;
		var address = document.getElementById("address").value;
		var nic = document.getElementById("nic").value;
		
		if(name == "" || mobile == "" || address == "" || nic == ""){
			if(name == ""){
				document.getElementById("errorname").innerHTML = "Plese enter Name! ";
			}
			if(mobile == ""){
				document.getElementById("errormobile").innerHTML = "Plese enter Mobile! ";
			}
			if(address == ""){
				document.getElementById("erroraddress").innerHTML = "Plese enter Address! ";
			}
			if(nic == ""){
				document.getElementById("errornic").innerHTML = "Plese enter NIC! ";
			}
		}
		
		if(!(name == "" || mobile == "" || address == "" || nic == "")){
			saveCustomer(name,mobile,address,nic);
		}
	});
	
	function saveCustomer(name,mobile,address,nic) {
		
		$.ajax({
	        type: "POST",
	        url: "saveCustomer",
	        data :{ "name": name,
	        		"mobile": mobile,
	        		"address": address,
	        		"nic": nic,
	        	},
	        success: function (customer) {
// 	         	alert(customer+ " saved!");
			document.getElementById("id").value = customer.id;
			msg(customer);
	        	
	        }
	    });
	}
	
	
	function msg(customer) {

		Swal.fire({
	                title: 'Hurrray!!',
	                text: customer.name + "Successfully Saved!",
	                icon: 'success',
	                confirmButtonColor: '#3085d6',
	                confirmButtonText: 'Ok'
	                }).then((result) => {
	                     if (result.isConfirmed) {
		 				window.location.reload();
	                }
	             })

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