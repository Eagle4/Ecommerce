<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recherche d'un produit</title>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
	<script type="text/javascript" charset="utf8" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  	<script type="text/javascript" charset="utf8" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   	
	
</head>
<body>

	
	<div class="container">

		<nav class="navbar navbar-inverse">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#"> Bienvenue, Utilisateur! </a></li>
			<li><a href="logout">D�connexion</a></li>
			<li><a href="utilisateurs">Liste des Utilisateurs </a></li>

		</ul>

		<form class="navbar-form pull-right">
			<input type="text" style="width: 150px" class="input-small"
				placeholder="Recherche">
			<button type="submit" class="btn btn-primary btn-xs" id="flip">
				<span class="glyphicon glyphicon-eye-open"></span> Chercher
			</button>
		</form>
		</nav>


		<div class="container">
			<div class="col-md-12">
				<div class="center-block text-center">
					<h1>Ensemble des produits </h1>
					<p class="lead">EPSI - Lille </p>
				</div>
				<div class="container"">

					<div id="panel">
						<div class="col-sm-6">
							<a href="#"><img class="img-responsive"
								src="${pageContext.request.contextPath}/resources/img/epsi.png"
								height="450" width="180"><i
								class="btn btn-product fa fa-star"></i></a>
							<hr>
							<h2>Objectifs</h2>
							<p>Ce site permet la gestion des commandes au sein d'une organisation </p>
							<hr>
							<hr>


						</div>
						<div class="col-sm-6">
							<div class="productsrow">
								<div class="product menu-category">
									<div class="menu-category-name list-group-item active"> Une application souple, l�g�re pour la gestion des commandes</div>
									<div class="product-image">
										<img class="product-image"
											src="${pageContext.request.contextPath}/resources/img/ecommerce.jpg"
											height="180" width="540">
									</div>

								</div>




							</div>
						</div>
					</div>
				</div>
				<!--/row-->
			</div>

			<!--/container-->
		</div>

		<div class=resultsearch>
			<form action="detail" method="GET">
			<div class="form-actions">
						<button class="btn btn-success"> <a href="new" style="color: #FFFFFF;">  Nouveau </a> </button>
					
					</div>
					
					<br />
					<br />
				<table class="table table-striped table-bordered" width="100%" cellspacing="0" >

					<thead>

						<tr>
							
							
							<th width="9%">Produit - ID</th>
							<th width="25%">Nom</th>
							<th width="11%">Prix</th>
                        
                            <th width="20%"></th>
                            
							


						</tr>

					</thead>
					<c:forEach var="p" items="${produits}">

						<tbody>

							<tr>


								<td><c:out value="${p.id}"></c:out></td>
								<td><c:out value="${p.nom}"></c:out></td>
                                <td><c:out value="${p.prix}"></c:out></td>
                                <td><button class="btn btn-info btn-sm">
									<%-- <a href="<c:url value="detail/${p.idProduit}"/>" style="color: #FFFFFF"> --%>
										<a href="detail/${p.id}" style="color: #FFFFFF;"> 
										 <span class="glyphicon glyphicon-pencil"> </span> Update </a>
									</button>
								
								
									<button class="btn btn-danger btn-sm">
									<a href="delete/${p.id}" style="color: #FFFFFF">
										<span class="glyphicon glyphicon-remove"> </span>
										Delete </a>
									</button></td>

							</tr>


						</tbody>
					</c:forEach>
				</table>
				
			</form>
		</div>
	</div>




</body>
</html>