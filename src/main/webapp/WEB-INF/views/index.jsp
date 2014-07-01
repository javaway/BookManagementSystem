

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
 
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
  <div class="body">

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
        <h3><p>Technologies Used :(Java 6) View - Twitter Bootstrap and JSP, Controller - Spring ,Model - Hibernate using H2 embeded database  </p></h3>
        <h3><p>Build tool : Maven 3.x,Tomcat plugin </p></h3>
        <h3><p>Version Control : GIT </p></h3>
        <h3><p>PAAS tool : Openshift </p></h3>
        
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

     

    </div> <!-- /container -->

	</div>
  
  </tiles:putAttribute>
</tiles:insertDefinition>
