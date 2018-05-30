<%-- 
    Document   : listar
    Created on : 22/05/2018, 17:42:47
    Author     : Fillipi
--%>

<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="br.unisc.Info"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" width="10%" cellpadding="5">
            <tr>
                <th>ID</th>
                <th>Latitude</th>
                <th>Longitude</th>
                <th>Foto</th>
            </tr>
            <%
                List<Info> infos = (List<Info>) request.getAttribute("lista");
                for (Info i : infos) {
                    Blob image = i.getPhoto();
                    byte[] imgData = image.getBytes(1, (int) image.length());
                    String encode = Base64.encodeBase64String(imgData);
            %>
            <tr>
                <td><%out.print(i.getId());%></td>
                <td><%out.print(i.getLatitude());%></td>
                <td><%out.print(i.getLongitude());%></td>
                <td><img src="data:image/jpeg;base64,<%out.print(encode);%>"></td>
            </tr>
            <%
                }
            %>
        </table>
        <a href="index.jsp">Voltar</a>
    </body>
</html>
