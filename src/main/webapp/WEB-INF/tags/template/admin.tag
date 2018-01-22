<%@attribute name="extraScripts" fragment="true"%>
<%@attribute name="extraStyles" fragment="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Testing - Energias</title>
	
  <!-- style -->
   <link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>">
     <script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
   <script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
   <script src="<c:url value='/assets/js/jquery.jqpagination.js'/>"></script>
   <script src="<c:url value='/assets/js/d3.min.js'/>"></script>
   <script src="<c:url value='/assets/js/custom-d3.js'/>"></script>
   
  
   <link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">
   <link rel="stylesheet" href="<c:url value='/assets/css/forms.css'/>">
   <link rel="stylesheet" href="<c:url value='/assets/css/pagination/jqpagination.css'/>">
   
  


</head>
<body>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">

        <a class="navbar-brand" href="/">Testing - Energias</a>
      </div>
      <!-- <div class="collapse navbar-collapse" id="menu"> -->
      <div class="nav navbar-nav" id="menu">
        <ul class="nav navbar-nav">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Menu <span class="caret"></span></a>
            <ul class="dropdown-menu">
   	              <li><a href="<c:url value='/product/form'/>"><span class="glyphicon glyphicon-plus-sign"></span> Add product</a></li>	              
	              <li><a href="<c:url value='/product'/>"><span class="glyphicon glyphicon-menu-hamburger"></span> List product</a></li>
	              <li><a href="<c:url value='/categoria/form'/>"><span class="glyphicon glyphicon-plus-sign"></span> Add categoria</a></li>	              
	              <li><a href="<c:url value='/categoria'/>"><span class="glyphicon glyphicon-menu-hamburger"></span> List categoria</a></li>
				  <li role="separator" class="divider"></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>

<jsp:doBody />

 <%-- <script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
 <jsp:invoke fragment="extraScripts"/> --%>


</body>
</html>