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

<!-- ===================data table =========================== -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.css" />
<script type="text/javascript" src = "https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>

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
	.popup {
            position: fixed;
            z-index: 1;
            left: 120px;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            display: none;
        }
        .popup-content {
            background-color: white;
            margin: 10% auto;
            padding: 10px;
            border: 1px solid #888888;
            width: 65%;
            font-weight: bolder;
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
								<h5>Purchase Details</h5>
							</div>
						</div>
						<div class="col-sm-6" align="right"><button type="button" class="btn btn-outline-secondary inputbutton" onclick="javascript:window.history.back();">Back</button>
							<button class="btn btn-secondary waves-effect" type="button" id="newPuItem">Add</button>
						</div>
					</div>
<!--   ============end page title========================== -->
					
<!--   ============Start table========================== -->
					<div class="row">
						<div class="col-12"><br>
							<div class="card">
								<div class="card-body">
<!-- 									<h5 class="mt-0 header-title">Pending Projects</h5> -->
									<div class="table-rep-plugin">
										<div class="table-responsive mb-0" data-pattern="priority-columns">
											<table id="itemRecordsTable" class="table table-striped dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
												<thead>
													<tr>
														<th>#</th>
														<th>Item Code</th>
														<th>Item Name</th>
														<th>Quantity</th>
														<th>Date</th>
														<th>View</th>
<!-- 														<th>Delete & Update</th> -->
													</tr>
												</thead>
												<tbody>
<%-- 													<c:set var="count" value="0" scope="page" /> --%>
<%-- 													<c:forEach varStatus="loopCounter" items="${wearhouse}" --%>
<%--  														var="wearhouseRecord"> --%>
<!-- 														<tr> -->
<%-- 															<c:set var="count" value="${count + 1}" scope="page" /> --%>
<%-- 															<td><c:out value="${count}"></c:out></td> --%>
<%-- 															<td id="item_code"><c:out value="${wearhouseRecord.itemCode}"></c:out></td> --%>
<%-- 															<td id="item_name"><c:out value="${wearhouseRecord.itemName}"></c:out></td> --%>
<%-- 															<td id="pu_price"><c:out value="${wearhouseRecord.qty}"></c:out></td> --%>
<%-- 															<td id="sell_price"><c:out value="${wearhouseRecord.date}"></c:out></td> --%>

<!-- 																<td>	 -->
<%-- 																	<a href="DeleteWearhouseItem?id=${wearhouseRecord.id}"><input type="button" value="Delete" class="btn btn-secondary waves-effect" action = "deletealert()" /></a> --%>
<%-- 																	<a href="UpdateWearhouseItemDetails?id=${wearhouseRecord.id}"><input type="button" value="Update" class="btn btn-outline-secondary inputbutton" /></a> --%>
<!-- 															</td> -->
																	
<!-- 																<td></td> -->
																	
<!-- 														</tr> -->
<%-- 													</c:forEach> --%>
												</tbody>
											</table>
										</div>
										
										
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-12">
							<div id="myPopup" class="popup">
									<div class="popup-content">
										<h3 style="color: green;">New Purchase Item</h3>
										<div class="card">
											<div class="card-body">
												<form id = "newPurchase">
													<div class="row">
														<div class="col-md-6">
															<label>Category :</label>
															 <select id = "category" class = "form-control" onchange="setCategoryData()" name = "category">
															 <option value="Select a Category" selected="selected">Select a Category</option>
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
																<option value="Other">Other</option></select>
															 <div class="form-error text-danger" id = "errorcategory"></div><br>
															<label>Item Name :</label>
															 <select id = "name" class = "form-control" onchange="setCodeData()" name = "name"></select>
															 <div class="form-error text-danger" id = "errorname"></div><br>
															<label>Item Code :</label><br>
															<input type = "text" id = "code" class = "form-control" name = "code"></input> <br>
															<label>Date :</label>
															 <input type = "date" class = "form-control" id = "date" name ="date" readonly  />
														</div>
														<div class="col-md-6">
															<label>Quantity :</label><br>
															<input type = "number" id = "qty" class = "form-control" name = "qty"></input>
															<div class="form-error text-danger" id = "errorqty"></div><br>
															<label>Purchase Price :</label><br>
															<input type = "number" id = "pprice" class = "form-control" name = "pprice"></input><br>
															<label>Selling Price :</label><br>
															<input type = "number" id = "sprice" class = "form-control" name = "sprice"></input>
															 
														</div>
													</div>
												</form>
											</div>
										</div><br>
										<div class="row">
											<div class="col-md-5"></div>
											<div class="col-md-3">
												<div class="btn-toolbar" role="toolbar" align="right">
													<div class="btn-group" role="group">
														<button id="closePopup" class="btn btn-outline-secondary">Cancel</button>
														&nbsp;&nbsp;
													</div>
													<div class="btn-group" role="group">
														<button id="add" class="btn btn-secondary">Add</button>
													</div>


												</div>
											</div>
											<div class="col-md-4"></div>

										</div>
										<!-- 										<button id="closePopup" class="btn btn-secondary">Cancel</button> -->
<!-- 										<button id="add" class="btn btn-outline-secondary">Cancel</button> -->
									</div>
								</div>
							</div>

						</div>
					</div>

					<!--   ============End table========================== -->
					
				</div>
			</div>
		</div>


		<!--    ================End right Content here========= -->
		
	<script type="text/javascript">
	
	function Redirect() {
	    location.href="login";
	 }
	
	$(function() {
		$('#itemRecordsTable').DataTable();
		getPurchaseData();
	});
	
	function getPurchaseData() {
		$.ajax({
			type : 'GET',
			contentType : "application/json",
			url : 'getPurchaseData',
			dataType : 'json',
			success : function(response) {
// 				alert(response);
				setPurchaseTable(response);
			}
		});
	}
	
	function setPurchaseTable(response) {
		var tableID = '#itemRecordsTable';
		var count1 = 0;
		console.log(tableID);
		var mytable;
		if ($.fn.dataTable.isDataTable(tableID)) {
			mytable = $(tableID).DataTable();
		} else {
			mytable = $(tableID).DataTable({
				paging : false
			});
		}
		mytable.clear().draw();

		for ( var key in response) {
			if (response.hasOwnProperty(key)) {
				var val = response[key];
				var vewButton = '<input type="button" value = "View"  id ="more" class="btn btn-secondary" onclick =\"javascript:window.location.href=\'viewPurchaseData?itemCode='+val.itemCode+'\'; \">' ;
				var rowNode = mytable.row.add(
						[ 
							++count1, 
							val.itemCode,
							val.itemName,
							val.qty,
							val.date,
							vewButton
							])
						.node();
				mytable.draw();
			}
		} 
		
		
	}
	
	
	</script>
		
		
		
		
	<script type="text/javascript">
	document.getElementById("date").valueAsDate = new Date();
	
	newPuItem.addEventListener("click", function () {
// 		$("input[type=text],select,input[type=number]").val('');
		
// 		$.ajax({
// 	        type: "GET",
// 	        url: "newPurchItem",
// 	        success: function (items) {
// 	        	$('#category').append("<option>Select A Category</option>");
// 	        	for(var i = 0; i < items.length ; i++){
// 	        		$('#category').append("<option value = " + items[i].category +">" + items[i].category + "</option>");
// 	        	}
// 	        }
	        
// 	    });
		
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
    
    
    function setCategoryData() {
    	$("input[type=text],input[type=number]").val('');
    	 var category = $("#category :selected").text();
    	 var reslt = document.getElementById("name");
    	 
    	 $.ajax({
 	        type: "POST",
 	        url: "purchItemName",
 	        data :{ "category": category},
 	        success: function (names) {
 			setName(names);
 	        }
 	        
 	    });
	}
    
    
    function setName(names) {
    	alert(names);
    	$("input[type=text],input[type=number]").val('');
    	$('#name').append("<option>Select Item Name</option>");
    	for(var i = 0; i < names.length ; i++){
    		$('#name').append("<option value = " + names[i].name +">" + names[i].name + "</option>");
    	}
		
	}
    
    
    
    function setCodeData() {
    var name = $("#name :selected").text();
    var res = document.getElementById("code");	
    	$.ajax({
	        type: "POST",
	        url: "purchItemCode",
	        data :{ "name": name},
	        success: function (code) {
// 	        	alert(code);
			setCode(code);
	        }
	        
	    });
		
	}
    function setCode(item) {
		console.log(item);
		document.getElementById('code').value=item.itemCode ;
		document.getElementById('pprice').value=item.purchasePrice ;
		document.getElementById('sprice').value=item.sellingPrice ;
		
	}
    
    $('#add').click(function(e) {
    	document.getElementById("errorname").innerHTML = "";
    	document.getElementById("errorqty").innerHTML = "";
    	
		var name = $("#name :selected").text();
		var code = document.getElementById("code").value;
		var date = document.getElementById("date").value;
		var qty = document.getElementById("qty").value;
		var pprice = document.getElementById("pprice").value;
		var sprice = document.getElementById("sprice").value;
		
		
		if(name == "Select Item Name" || qty == ""){
			if(name == "Select Item Name"){
				document.getElementById("errorname").innerHTML = "Plese select a Item Name! ";
			}
			if(qty == ""){
				document.getElementById("errorqty").innerHTML = "Plese enter Quantity! ";
			}
		}
		if(!(name == "Select Item Name" || qty == "")){
			
			savePurchase(name,code,date,qty,pprice,sprice);
		}
    });
    
    function savePurchase(name,code,date,qty,pprice,sprice) {
    	
    	$.ajax({
	        type: "POST",
	        url: "saveNevPurch",
	        data :{ "itemname": name,
	        		"code": code,
	        		"date": date,
	        		"qty": qty,
	        		"pprice": pprice,
	        		"sprice": sprice
	        	},
	        success: function (name) {
	        	alert(name + "savd");
// 	        	close(name);
	        }
	        
	    });
    }
    
    function close(name) {
		Swal.fire({
			  title: 'Hurray!!',
			  text: name + " Successfully Added!",
			  icon: 'success',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Ok'
			}).then((result) => {
			  if (result.isConfirmed) {
				  
// 				  window.location.reload();

					Swal.fire({
        		                              title: 'Hurrray!!',
        		                              text: employee.empName + "Successfully Saved!",
        		                              icon: 'success',
        		                              confirmButtonColor: '#3085d6',
        		                              confirmButtonText: 'Ok'
        		                            }).then((result) => {
        		                              if (result.isConfirmed) {
        		                                  window.location.reload();
        		                              }
        		                            })


// 			    Swal.fire(
// 			      'Deleted!',
// 			      'Your file has been deleted.',
// 			      'success'
// 			    )
			  }
			});
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
	
	function deletealert(){
		alert ("Are you sure delete this?");
	}
	
	
	</script>
</div>

</body>
</html>