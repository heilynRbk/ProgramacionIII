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
        <h2>Tamal de Maicena</h2>
        <img src="img1.jpg" align="left"/>
        <h3>Ingredientes</h3>
        <nav>
            <li>500 gr. de maicena</li>
            <li>500 gr. de azúcar</li>
            <li>250 gr. de queso rallado</li>
            <li>250 gr. de mantequilla</li>
            <li>3 tazas de leche fresca</li>
            <li>3 tazas de leche agria</li>
            <li>3 tazas de agua</li>
            <li>1 cda. de sal </li>
        </nav>
        <h3 id="preparacion">Preparación</h3>
        <p>Mezclar las leches y el agua en una olla. Agregar el azúcar, la maicena, el queso rallado, la mantequilla y la sal. Cocinar a fuego lento, moviendo constantemente con una cuchara de madera hasta que hierva bien. 
            Vaciar la mezcla en una cazuela o un molde engrasado y hornear. El tamal se dora cuando se le hace una capita un poco oscura, pero no tiene que quedar totalmente dorado.
            Al enfriarse, se endurece, y una vez frío se puede cortar en cuadritos. </p>
        
        <form action="tamal.jsp"> 
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
                texto+=nombre+":  "+comentario+"<hr><br>";
             }         
         }
        %>
        <div id="comentarios">
            <h2>Comentarios</h2>
            <h3><%=texto%></h3>
        </div>
        
    </body>
</html>