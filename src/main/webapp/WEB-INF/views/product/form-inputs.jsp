<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group">
	<label for="name">name</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='name' type='text' />
		<form:errors path='name' />

	</div>
</div>
<div class="form-group">
	<label for="description">description</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='description' type='text' />
		<form:errors path='description' />

	</div>
</div>
<div class="form-group">
	<label for="price">price</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='price' type='text' />
		<form:errors path='price' />

	</div>


	<div class="form-group">
		<label for="categoria">Categoria</label>
		<div class="input-group">
			<span class="input-group-addon"><i
				class="glyphicon glyphicon-unchecked"></i></span>
			<%-- <form:select path='categoria' >
			
			<c:forEach items="${categorias}"  var="categoria">
                   <form:option value="${categoria}">
                                    <c:out value="${categoria.name}" />
                                </form:option>             
               </c:forEach>                    
			</form:select> --%>
			
			<form:select path='categoria' items="${categorias}" itemLabel="name" itemValue="id" >
			

    
          
			</form:select>

			<form:errors path='categoria' />

		</div>
	</div>