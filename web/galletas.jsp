<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Galletas de semillas mixtas </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="menu-estilo.css"/>
        <link rel="stylesheet" href="vista-receta-estilo.css"/>
        <%! String nombre ="",comentario="",texto=""; %>
    </head>
    <body>
        <header> 
            <nav class='menu'>
                <ul>
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="recetas.html">Recetas</a></li>
                    <li><a href="consejos.html">Consejos</a></li>
                    <li><a href="informacion.jsp">Información</a></li>
                </ul>
            </nav>
        </header>
        <h2>Galletas de semillas mixtas </h2>
        <img src="img3.jpg" align="left"/>
        <h3>Ingredientes</h3>
        <nav>
            <li>300 g de harina integral</li>
            <li>50 g de cereal natural</li>
            <li>30 g de semillas mixtas</li>
            <li>100 g de pasas</li>
            <li>70 ml aceite de girasol </li>
            <li>5 cdas. de miel</li>
            <li>125 ml de leche</li>
        </nav>
        <h3 id="preparacion">Preparación</h3>
        <p>En un tazón,  coloque 300 g de harina integral, 50 g de cereal natural, 30 g de semillas mixtas y 100 g de pasas.Mezcle bien. Agregue 50 g de azúcar, 70 ml aceite de girasol y 5 cdas. de miel. Mezcle hasta integrar todos los ingredientes y añada poco a poco 125 ml de leche hasta formar una masa.
            Estire la masa sobre una mesa enharinada y corte al gusto. Coloque sobre una bandeja enharinada y lleve al horno a 180°C por 15 minutos, hasta que doren. Al retirar, pintelas con miel y deje enfriar.</p>
    <form action="galletas.jsp"> 
            <table border="0">
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" id="nom" name="nom"></td>
                </tr>
                
                <tr>
                    <td>Comentario: </td>
                    <td><input type="text" id="com" name="com"></td>
                </tr>
                <tr>
                    <td> </td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
         <%
          if(request.getParameter("nom") !=null && request.getParameter("com") !=null){
            if(!request.getParameter("nom").equals("") && !request.getParameter("com").equals("")){
                nombre=request.getParameter("nom");
                comentario=request.getParameter("com");
                texto+=nombre+": "+comentario+"<br>";
             }         
         }
        %>
        <div id="comentarios">
            <h2>Comentarios</h2>
            <h3><%=texto%></h3>
        </div>
    </body>
</html>
