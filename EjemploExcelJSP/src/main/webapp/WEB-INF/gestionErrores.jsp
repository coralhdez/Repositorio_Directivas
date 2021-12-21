<%@page isErrorPage="true" %> <!--Indicamos que es un jsp que gestiona errores-->
<%@page import="java.io.*" %> <!--para poder usar PrintWritter-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Errores</title>
    </head>
    <body>
        <h1>Gestión de Errores</h1>
        <br/>
        Ocurrió una excepción: <%= exception.getMessage() %>
        <br/>
        <textarea cols="30" rows="5">
            <% exception.printStackTrace(new PrintWriter(out)); %>
        </textarea>
    </body>
</html>
