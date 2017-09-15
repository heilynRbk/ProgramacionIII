<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tamal de Maicena</title>
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
        <h2>Dip de atún y chipotle </h2>
        <img src="img2.jpg" align="left"/>
        <h3>Ingredientes</h3>
        <nav>
            <li>2 latas medianas de atún en agua</li>
            <li>3 cdas. de cebolla finamente picada</li>
            <li>3 cdas. de chipotle</li>
            <li>250 g de queso crema</li>
            <li>½ taza de natilla</li>
        </nav>
        <h3 id="preparacion">Preparación</h3>
        <p>Escurra el exceso de líquido del atún. En un recipiente, mezcle bien todos los ingredientes. Sirva acompañado de chips salados. </p><br><br><br><br><br><br>
    
        <form action="atun.jsp"> 
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