<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informacion</title>
        <link rel="stylesheet" href="menu-estilo.css"/>
        <link rel="stylesheet" href="informacion-estilo.css"/>
        <%! String nombre ="",email="",texto=""; %>
    </head>
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
    <body>
        <img src="contactenos.jpg" align="left"/>
        <h1>Contáctanos!</h1>
        <p>Somos un grupo de nutricionistas con la meta de lograr que más personas 
            puedan tener una vida sana. Queremos dar el ejemplo que para tener una vida sana 
            o bajar de peso podemos saboreas nuestras comidas favoritas sin ningún remordimiento</p><br>
        <p>Te resolvemos todas tus dudas...Si quieres pedir cita o  necesitas información llámanos o escríbenos 
            tus dudas y las resolveremos en el menor tiempo posible.
        <form action="informacion.jsp"> 
            <table border="0">
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" id="nom" name="nom"></td>
                </tr>
                
                <tr>
                    <td>email: </td>
                    <td><input type="text" id="email" name="email"></td>
                </tr>
                <tr>
                    <td>asunto: </td>
                    <td><input type="text" id="asunto" name="asunto"></td>
                </tr>
                <tr>
                    <td>mensaje: </td>
                    <td><input type="text" id="men" name="men" size="70" heigth="50"></td>
                </tr>
                <tr>
                    <td> </td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
         <%
          if(request.getParameter("nom") !=null && request.getParameter("email") !=null){
            if(!request.getParameter("nom").equals("") && !request.getParameter("email").equals("")){
                nombre=request.getParameter("nom");
                email=request.getParameter("email");

                out.print("Gracias por escribirnos " + nombre+ " pronto nos contactaremos por medio de tu correo "+ email + " para responder tus dudas");
             }         
         }
        %>
    </body>
</html>
