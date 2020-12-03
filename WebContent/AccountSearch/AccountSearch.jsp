<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search account</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/headerAndFooterStyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CustomerSearch/styles.css">
</head>
<body>
	<form id="homeNavigationForm" name="homeNavigationForm"
		action="HomeNavigationController" method="get">
		<input type="hidden" id="homeNavigationHidden"
			name="homeNavigationHidden" value="">
	</form>

	<header>
		<h1 class="site-title">
			<span id="title1">FedChoice </span><span id="title2">Bank</span>
		</h1>

		<div class="customNavbar">
			<a href="#" id="home" onclick="submitForm('index.html')">Home</a>
			<div class="customDropDown">
				<button type="button" id="customer-management">Customer
					Management</button>
				<div class="customDropDown-content">
					<a href="#" onclick="submitForm('Customer/createcustomer.html')">Create Customer</a> <a
						href="#" onclick="submitForm('CustomerSearch/CustomerSearch.jsp')">Search Customer</a>
				</div>
			</div>
			<div class="customDropDown">
				<button type="button" id="account-management">Account
					Management</button>
				<div class="customDropDown-content">
					<a href="#" onclick="submitForm('Account/createaccount.html')">Create Account</a> <a
						href="#" onclick="submitForm('AccountSearch/AccountSearch.jsp')">Search Account</a>
				</div>
			</div>
			<div class="customDropDown">
				<button type="button" id="status-details">Status Details</button>
				<div class="customDropDown-content">
					<a href="#"
						onclick="submitForm('ViewAllCustomerStatus/ViewCustomerStatus.jsp')">Customer
						Status</a> <a href="#"
						onclick="submitForm('ViewAllAccountStatus/ViewAccountStatus.jsp')">Account
						Status</a>
				</div>
			</div>
			<div class="customDropDown">
				<button type="button" id="account-operations">Account
					Operations</button>
				<div class="customDropDown-content">
					<a href="#">Under Maintenance</a> <a href="#">Under Maintenance</a>
				</div>
			</div>
			<a href="#logout" onclick="submitForm('Login.jsp')" id="logout">Logout</a>
		</div>
	</header>
		<!------------------------------------------------- Account search ---------------------------->
		<div class='mainContent'>
		<div class=' text-center main-content'>
			<form class="customerSearchForm" name="accountSearchForm"
				action="SearchAccountController" method="post">
				<div class="form-group">
					<h3>Search Account</h3>
					<table class="table table-borderless searchTable">
						<tr>
							<td><label for="accountID">Enter Account ID:<sup
									class="superScript">*</sup></label></td>
							<td><input type="text" class="form-control-sm" id="accountID" name="accountID"></td>
						</tr>
						<tr style="text-align: center">
							<td colspan="2">OR</td>
						</tr>
						<tr>
							<td><label for="customerID">Enter Customer ID:<sup
									class="superScript">*</sup></label></td>
							<td><input type="text" class="form-control-sm"
								id="customerID" name="customerID" onchange="customerIdValidation(this.val)"></td>
						</tr>
						<tr style="text-align: center">
							<td colspan="2"><input class="btn btn-outline-secondary"
								type="submit" id="accountSearchButton" value="VIEW"></td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>

	<!-------------------------------------  Footer ------------------------------------------->
	<footer class="footer">
		<div class="row">
			<div class="col-sm-5">
				<div class="footer-widget">
					<h3>About Us</h3>
					<div class="footer-widget-content">Welcome to Retail Bank,
						your number one source for all things [product]. We're dedicated
						to providing you the best of [product], with a focus on
						dependability. customer service, and [store characteristic].</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="footer-widget">
					<h3>Services</h3>
					<div class="footer-widget-content list-group">
						<a href="#">Personal Banking</a> <a href="#">Retail Banking</a> <a
							href="#">Corporate Internet Banking</a> <a href="#">Debit and
							Credit Cards</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="footer-widget">
					<h3>Contact Us</h3>
					<div class="footer-widget-content">
						Email: <a href="mail to:contactus@retailbank.com">contactus@retailbank.com</a><br>Contact
						No: +1 123-456-7890<br> Address: Corporate office, 66 Perry
						Street<br> West Village, NY 12345
					</div>
				</div>
			</div>
		</div>
	</footer>


	<script type="text/javascript" src="${pageContext.request.contextPath}/AccountSearch/scripts.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/main.js"></script>
	<!--  Bootstrap scripts -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>