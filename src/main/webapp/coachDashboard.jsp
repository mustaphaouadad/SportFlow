<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.Userdao" %> 
<%@ page import="dao.DBConnect" %>
<%@ page import="model.Seance" %>

<%
int idCoach = (int) session.getAttribute("idUser"); // جلب ID المدرب
Userdao seanceDao = new Userdao(DBConnect.getCoon()); // Hna kanst3mlo Userdao
List<Seance> seances = seanceDao.getSeancesByCoach(idCoach);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Coach Page</title>
</head>
<body>

    <h1>Coach</h1>
    <a href="Logout">Logout</a>

    <h2>Mes séances</h2>
    <table border="1">
        <tr>
            <th>Date</th>
            <th>Heure</th>
            <th>Nom du Membre</th>
        </tr>
        <%
            for (Seance s : seances) {
        %>
        <tr>
            <td><%= s.getDateSeance() %></td>
            <td><%= s.getHeure() %></td>
            <td><%= s.getMemberName() %></td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>
