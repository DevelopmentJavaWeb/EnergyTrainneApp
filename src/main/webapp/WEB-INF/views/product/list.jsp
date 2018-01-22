<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>

<template:admin>

 <jsp:body>
  <div>
    <div class ="container min-container">

      <h2 class="basic-title">List Product</h2>

        <div class="well">
          <table class="table table-condensed table-bordered table-striped table-hover">
          		  <thead>
	                  <tr>
	                  	<td>id</td>
		                  	<td>name</td>
		                  	<td>description</td>
		                  	<td>price</td>
		                  	<td>categoria</td>
						<td>actions</td>
	                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items='${paginatedList.currentList}' var='object'>         		
	                  <tr>
						<td><a href="<c:url value='/product'/>/${object.id}">${object.id}</a></td>
		                  	<td>${object.name}</td>
		                  	<td>${object.description}</td>
		                  	<td>${object.price}</td>
		                  	<td>${object.categoria.name}</td>
	                    <td><a href="<c:url value='/product/remove'/>/${object.id}">Remove</a></td>
					  </tr>
                  </c:forEach>
                  </tbody>
          </table>
		  <template:paginationComponent paginatedList="${paginatedList}" page="${param.page}" action="/product"/>
	
          <a href="<c:url value='/product/form'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span> Add New</a>
        </div>
    </div>
  </div>
</jsp:body>
</template:admin>
