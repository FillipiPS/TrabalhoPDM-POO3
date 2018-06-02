<%-- 
    Document   : index
    Created on : 29/05/2018, 19:40:17
    Author     : m91223
--%>

<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.util.List"%>
<%@page import="br.unisc.Info"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info windows</title>
    </head>
    <body>
        <form action="Gerente" method="get">
            <input type="submit" value="Listar" name="op">
            <input type="submit" value="Mostrar" name="op">
        </form>
        ${jj}

    </body>
</html>
