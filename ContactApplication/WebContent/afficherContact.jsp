<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="servlets.Contact" %><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/sweetalert2/5.0.7/sweetalert2.min.css" />
	<title>Liste des contacts</title>
	<style>
		a {
			margin-right: 5px;
		}
	</style>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/sweetalert2/5.0.7/sweetalert2.js"></script>
	<script>

	function supprimerContact(elem, id)
	{
	  swal({   
	    title: "Supprimer ce contact?",   
	    text: "Vous ne pourrez plus le récupérer.",   
	    type: "warning",   
	    showCancelButton: true,   
	    confirmButtonColor: "#DD6B55",   
	    confirmButtonText: "Oui",
	    cancelButtonText: "Annuler",   
	    closeOnConfirm: false 
	    }).then(function(){   
	    $.ajax({
	        type     : "GET",
	        url      : "/Test1/SuppressionContact",
	        data     : "id=" + id,
	        success  : function() {
	          $(elem).closest('.panel').hide('slow');
	          swal("Supprimé!", "Le contact a bien été supprimé.", "success");
	        }
	    });
	    });

	       
	}
	
	</script>
</head>
<body>
	<div class="container">
		<section>
		<h2>Liste des contacts</h2>
	<%
	ArrayList<Contact> mesContacts = (ArrayList<Contact>) request.getAttribute("contacts");
	int i = 0;
	// print the information about every category of the list
	for(Contact c : mesContacts) {
		if(i == 0) out.println("<div class='row'>");
		out.println("<div class='col-md-3'>");
		i++;

	%>
	
	<div class="panel panel-info">
        <div class="panel-heading"><% out.println(c.getNom() + " " +c.getPrenom()); %>
           <a class="trash pull-right" onclick="supprimerContact(this,<% out.print(c.getId()); %>)"><span class="fa fa-trash"></span></a>
           <a class="trash pencil pull-right" href=""><span class="fa fa-pencil"></span></a>
        </div>
        <div class="panel-body"><img width="220" height="220" src=" https://teamindies.fr/templates/indies/gfx/forum-avatar_defaut.png.pagespeed.ce.CWpcjqsXc3.png "></div>
        <div class="panel-footer"><% out.println(c.getEmail()); %></div>
     </div>
     
     <%
     	out.println("</div>");
     if(i == 4)
     {
    	 out.println("</div>");
    	 i = 0;
     }
	}
     %>
     </section>
     <footer>
	 	<a href="index.html">Revenir au menu</a>
     </footer>
     </div>
</body>
</html>