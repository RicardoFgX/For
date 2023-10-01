<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Solicitud</title>
</head>
<body>
    <h1>Solicitud</h1>
    <p>Después de introducir tus datos, oprime el botón "enviar".</p>
    <form action="" method="post">
        <table cellspacing="3" cellpadding="3" border="1">
            <tr>
                <td align="right">Nombre:</td>
                <td><input type="text" name="Nombre"></td>
            </tr>
            <tr>
                <td align="right">Apellidos:</td>
                <td><input type="text" name="apellidos"></td>
            </tr>
            <tr>
                <td align="right">Correo:</td>
                <td><input type="text" name="mail"></td>
            </tr>
        </table>
        <p>
            Eres: <input type="radio" name="genero" value="masculino" checked> Hombre
            <input type="radio" name="genero" value="femenino"> Mujer<br>
            Selecciona lo que sabes: <br> 
            <input type="checkbox" name="habilidades" value="java"> Java 
            <input type="checkbox" name="habilidades" value="c"> C/C++
            <input type="checkbox" name="habilidades" value="basic"> Basic 
            <input type="checkbox" name="habilidades" value="html"> HTML <br>
        </p>
        <table cellspacing="5" cellpadding="5" border="0">
            <tr>
                <td align="center">Selecciona los idiomas que comprendes:</td>
                <td><select name="idiomas" multiple>
                    <option selected>Español</option>
                    <option>Inglés</option>
                    <option>Francés</option>
                    <option>Alemán</option>
                </select></td>
            </tr>
            <tr>
                <td align="center">Comentarios adicionales</td>
                <td><textarea name="comentario" rows="3" cols="20"></textarea></td>
            </tr>
        </table>
        <input type="reset" value="Borrar"> <input type="submit" value="Enviar">
    </form>

    <!-- Procesamiento de datos -->
    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String nombre = request.getParameter("Nombre");
            String apellidos = request.getParameter("apellidos");
            String correo = request.getParameter("mail");
            String genero = request.getParameter("genero");
            String[] habilidades = request.getParameterValues("habilidades");
            String[] idiomas = request.getParameterValues("idiomas");
            String comentario = request.getParameter("comentario");

            out.println("<h2>Datos enviados:</h2>");
            out.println("<p>Nombre: " + nombre + "</p>");
            out.println("<p>Apellidos: " + apellidos + "</p>");
            out.println("<p>Correo: " + correo + "</p>");
            out.println("<p>Género: " + genero + "</p>");
            
            if (habilidades != null) {
                out.println("<p>Habilidades de programación: ");
                for (String habilidad : habilidades) {
                    out.println(habilidad + " ");
                }
                out.println("</p>");
            }
            
            if (idiomas != null) {
                out.println("<p>Idiomas que comprendes: ");
                for (String idioma : idiomas) {
                    out.println(idioma + " ");
                }
                out.println("</p>");
            }
            
            out.println("<p>Comentarios adicionales: " + comentario + "</p>");
        }
    %>
</body>
</html>
