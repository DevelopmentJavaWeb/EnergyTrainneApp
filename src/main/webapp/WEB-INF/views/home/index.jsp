<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<jsp:body> 
	<div class="container min-container">
		<p>MAIN IMAGE - Testing - Energias</p>
		
		 
		
		
			
		<div id="d3shapes" class="container min-container">
		<div id="button" class="container min-container">
					<button class="btn btn-primary" id="circ"
						onclick='d3.select("#d3svg").append("circle").attr("cx", "150px").attr("cy", "200px").attr("r", "20px").attr("fill","red").attr("id","circ");'>Circulo</button>
			<button class="btn btn-primary" id="quad"
						onclick='d3.select("#d3svg").append("rect").attr("x", "200px").attr("y", "175px").attr("width", "50px").attr("height", "50px").attr("fill","green").attr("id","rect");'>Quadrado</button>
			<button class="btn btn-primary" id="tria"
						onclick='d3.select("#d3svg").append("polyline").attr("points", "275,225 350,225 315,175").attr("stroke-width", "2px").attr("stroke", "black").attr("fill","blue").attr("id","polyline");'>Triangulo</button>
		    <button class="btn btn-primary" id="limp"
						onclick='d3.select("#d3svg").select("circle").remove();d3.select("#d3svg").select("rect").remove();d3.select("#d3svg").select("polyline").remove();'>Limpar</button>
		
		</div>
			<svg id="d3svg" width="500" height="500">
			
			<image width="500" height="500" xlink:href="img/darth-vader.jpeg" />
				</svg>
				
				
		</div>
		

		
	</div>
</jsp:body>
</template:admin>
