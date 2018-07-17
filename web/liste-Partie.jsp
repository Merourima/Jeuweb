<%-- 
    Document   : liste-Partie
    Created on : 13 juil. 2018, 11:47:17
    Author     : Administrateur
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<link >
    <meta charset="UTF-8">
    <title> Liste Des Parties </title>
    <link href="styleListePartie.css" type="text/css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Galada" rel="stylesheet">
</head>

<body >
	
	<div  style="text-align: center; ">
		<!-- <div style="width: 10%; display: inline-block;background-color: red;">
		</div> -->

		<div    style="width: 79%; display: inline-block;" >
			<div class = "mainBox arrondi  imgBackDiv">
		
				<!--<div class="fullLarge ">
					<div class=" large40">
						<img src="images.jpg" style="width:100px ;height:100px;border: 1px solid #342435;">
					</div>
					
					<div class="large25">
						<p> <b> Pseudo: </b></p>
					</div>
					<div class="large25"> 
						<p> pseudo </p>  
					</div>
				</div>-->
				<div class="fullLarge " >
					
				</div>
				
				<div class = "fullLarge " >
					<div class="large5 avatar libelle">
						<table>
							<tr>
								<td><img src="image/8593b69631698b1b6268a52d83b27020.jpg" alt="Avatar" style="width:200px"></td>
								<td><p> Rima </p></td>
							</tr>
						</table>
					</div>
					<div class="large60 design libelle floatRight">
                                            <form method="post">
						<div class="sameLine"><p> Créer une partie </p></div>
						<div class="sameLine"><input  type="text" name="nomPartie" placeholder="Nom de la partie"></div>
						<div class="sameLine"><input type="submit" value="Créer"></div>
                                            </form>

					</div>
					
				</div>
				<div class = "fullLarge">
					<div class="textStyle"> 
						<h1>  Liste Des Parties </h1>
					</div>
					<div class = "fullLarge ">
					<div class = "fullLarge design arrondi listePartie">
                                            
                                            <c:forEach items="${listeParNoDema}" var="parAct"> 
                                                    <div class="large15 libelle">

                                                        <p> ${parAct.nom} </p>

                                                    </div>

                                                    <div class="large15 libelle"> 
                                                        ${parAct.joueurs.size()}
                                                    </div>
                                                    <div class="large20 floatRight">
                                                        <a href="<c:url value="/LoginServlet"/>?idPartie=${parAct.id}">
                                                            <input type="button" value="Rejoindre"  >
                                                        </a>
                                                    </div>
                                            </c:forEach>   
					</div>
				</div>
				<div class = "fullLarge" >
					<br/><br/><br/><br/><br/><br/><br/><br/>
					
				</div>

			</div>
		</div>
		
		<!-- <div style="width: 10%; display: inline-block; background-color: green;">
			
		</div>
		 -->

	</div>

</body>


</html>