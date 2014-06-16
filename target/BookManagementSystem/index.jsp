
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.0/css/bootstrap.css" rel="stylesheet" media="screen">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.0/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
         
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <h1><a class="brand" href="#">Book Management System</a></h1>
          <div class="nav-collapse collapse">
            
              </li>
            </ul>
         <!--    <form class="navbar-form pull-right">
              <input class="span2" type="text" placeholder="Email">
              <input class="span2" type="password" placeholder="Password">
              <button type="submit" class="btn">Sign in</button>
            </form> -->
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="hero-unit">
       <h4><p>This is a sample Bootstrap web application for a BOOK Management Application. It includes creation and Listing of Users and Books.</p>
        </h4>
        <h4><p>Technologies Used :(Java 6) View - Twitter Bootstrap and JSP, Controller - Spring ,Model - Hibernate using H2 embeded database  </p></h4>
        <h4><p>Build tool : Maven 3.x,Tomcat plugin </p></h4>
        <h4><p>Version Control : GIT </p></h4>
        <h4><p>PAAS tool : Openshift </p></h4>
        
        </p>
      </div>

      <!-- Example row of columns -->
      <div class="row">
        <div class="span4">
          <h2> <a href="${pageContext.request.contextPath}/newBook" class="btn btn-primary btn-large">Book Management &raquo;</a></h2>
          <p>Allows creation and listing of Users with name, email and password fields. </p>
         
        </div>
        <div class="span4">
          <h2> <a href="${pageContext.request.contextPath}/newUser" class="btn btn-primary btn-large">User Creation &raquo;</a></h2>
          <p>Allows creation and listing of Books with name, isbn and description fields </p>
          
       </div>
      </div>

      <hr>

      <footer>
        <p>&copy; Company 2013</p>
      </footer>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  
   <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.0/js/bootstrap.min.js">
  <!--   <script src="bootstrap/js/bootstrap-alert.js"></script>
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
    <script src="bootstrap/assets/js/bootstrap-typeahead.js"></script> -->

  </body>
</html>
