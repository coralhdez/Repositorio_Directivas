<!--Uso de Directiva para delegar la gestión de las excepciones del JSP a getsionErrores.jsp -->
<%@page errorPage="WEB-INF/gestionErrores.jsp" %>
<!--Uso de Directiva para importar clase en el JSP -->
<%@page import="utils.Conversiones, java.util.Date" %>

<!--Uso de Directiva para especificar el tipo de respuesta -->
<%@page contentType="application/vnd.ms-excel" pageEncoding="UTF-8" %>
<!--Indicamos el nombre del fichero excel y el modo de acceso -->
<%
    String nombreArchivo = "reporte.xls";
    //Especifico el nombre del archivo excel
    response.setHeader("Content-Disposition", "attachment;filename=" + nombreArchivo);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Excel</title>
    </head>
    <body>
        <h1>Reporte Excel</h1>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripción</th>
                <th>Fecha</th>
            </tr>
            <tr>
                <td>1. Fundamentos de Java</td>
                <td>Aprendemos la estructura básica de Java</td>
                <td><%= Conversiones.format("500") %></td>
            </tr>
            <tr>
                <td>2. Programación con Java</td>
                <td>Pondremos en práctica conceptos de POO</td>
                <td><%= Conversiones.format(new Date()) %></td>
                
            </tr>
        </table>
    </body>
</html>
