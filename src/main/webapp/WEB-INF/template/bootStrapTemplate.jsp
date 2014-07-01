<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Book Shop Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="./bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

.searchbar {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="../assets/ico/favicon.png">
</head>

<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="#">Book Shop Management </a>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						Logged in as <a href="#" class="navbar-link">Admin</a>
					</p>
					<ul class="nav">
						<li class="active"><a href="">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/about">About</a></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
					</ul>
					<div class="searchbar">
						<form class="form-search" action="searchBook" method="get">
							<div class="input-append">
								<input type="text" name="isbnBook" placeholder="ISBN"
									class="span2 search-query">
								<button type="" class="btn">Search</button>
							</div>
						</form>
					</div>
				</div>

				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">Menu</li>
						<li><a href="${pageContext.request.contextPath}/newUser">User
								Management</a></li>
						<li><a href="${pageContext.request.contextPath}/newBook">Book
								Management</a></li>
					</ul>
				</div>
				<!--/.well 	-->
			</div>
			<!--/span-->
			<div class="span9">
				<div class="hero-unit">
					<h4>
						<p>This is a sample Bootstrap web application for a BOOK
							Management Application. It includes creation and Listing of Users
							and Books.</p>
					</h4>
					<h5>
						<p>Technologies Used :(Java 6) View - Twitter Bootstrap and
							JSP, Controller - Spring ,Model - Hibernate using H2 embeded
							database</p>
					</h5>
					<h5>
						<p>Build tool : Maven 3.x,Tomcat plugin</p>
					</h5>
					<h5>
						<p>Version Control : GIT : https://github.com/javaway/BookManagementSystem </p>
					</h5>
					<h5>
						<p>PAAS tool : Openshift : http://bookshopmanagement-hidayathulla.rhcloud.com</p>
					</h5>

					</p>
				</div>
				<div class="row-fluid">
					<div class="span9">

						<!-- Tiles Dynamic body -->
						<tiles:insertAttribute name="body" />

					</div>
					<!--/span-->
				</div>
				<!--/row-->
			</div>
			<!--/span-->
		</div>
		<!--/row-->

		<hr>

		<footer>
			<p>&copy; Company 2014</p>
		</footer>

	</div>
	<!--/.fluid-container-->

	<!-- Le javascript
    ================================================== -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.0/js/bootstrap.min.js">
	<!--   <script src="bootstrap/js/bootstrap-alert.js">
		
	</script>
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap-modal.js"></script>
	<script src="bootstrap/js/bootstrap-dropdown.js"></script>
	<script src="bootstrap/js/bootstrap-scrollspy.js"></script>
	<script src="bootstrap/js/bootstrap-tab.js"></script>
	<script src="bootstrap/js/bootstrap-tooltip.js"></script>
	<script src="bootstrap/js/bootstrap-popover.js"></script>
	<script src="bootstrap/js/bootstrap-button.js"></script>
	<script src="bootstrap/assets/js/bootstrap-collapse.js"></script>
	<script src="bootstrap/assets/js/bootstrap-carousel.js"></script>
	<script src="bootstrap/assets/js/bootstrap-typeahead.js"></script>
	-->
</body>
</html>
