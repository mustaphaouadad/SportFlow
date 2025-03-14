<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.Coachdao" %>
<%@ page import="dao.DBConnect" %>
<%@ page import="model.Coach" %>
<%@ page import="java.sql.Connection" %>

<%
    Coachdao dao = new Coachdao(DBConnect.getCoon());
    List<Coach> coachList = dao.getAllCoaches();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Member Page</title>
</head>
<body>

    <h1>Member</h1>
    <a href="Logout">Logout</a>

    <form action="SeanceServlet" method="post">
        <label for="dateSeance">Date:</label>
        <input type="date" id="dateSeance" name="dateSeance" required><br>

        <label for="heure">Heure:</label>
        <input type="time" id="heure" name="heure" required><br>

        <label for="coach">Choisir un coach:</label>
        <select id="coach" name="idCoach">
            <%
                for (Coach c : coachList) {
            %>
                <option value="<%= c.getIdCoach() %>">
                <%= c.getSpeciality() %> - <%= c.getFullName() %></option>
            <%
                }
            %>
        </select><br>

        <input type="submit" value="Envoyer">
    </form>

</body>
</html>
