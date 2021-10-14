<%-- 
    Document   : homeStandar
    Created on : 14/10/2021, 07:40:40 AM
    Author     : JOSUE LOPEZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.peliculas"%>
<%@page import="java.util.List"%>
<%@page import="modelDAO.peliculasDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="view/components/header.jsp"/>
    <body>
        <jsp:include page="view/components/menu_standar.jsp"/>
        <center><h1>TOP ESTRENOS</h1></center>
                         <% 
                         peliculasDAO dao = new peliculasDAO();
                         List<peliculas> listar = dao.listar();
                         Iterator<peliculas>iterator=listar.iterator();
                         peliculas pelismodel = null;
                         while (iterator.hasNext())
                         {
                             pelismodel = iterator.next();
                         

                        %>
                        <div class="card" style="width: 18rem;">
                            <img src="<%= pelismodel.getImagen()%>" class="card-img-top" alt="...">
                            <div class="card-body">
                              <h5 class="card-title"><%= pelismodel.getNombre()%></h5>
                              <p class="card-text"><%= pelismodel.getSipnosis()%></p>
                              <a href="#" class="btn btn-dark"><%= pelismodel.getEstudio()%></a>
                            </div>
                        </div>
                        <% } %>
        
    </body>
</html>
