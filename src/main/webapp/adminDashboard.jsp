<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.Memberdao" %>
<%@ page import="dao.Coachdao" %>
<%@ page import="dao.DBConnect" %>
<%@ page import="model.Member" %>
<%@ page import="model.Coach" %>
<%@ page session="true" %>

<%
    // استرجاع البيانات من قاعدة البيانات
    Memberdao memberDao = new Memberdao();
    List<Member> members = memberDao.getAllMembers();
    
    Coachdao coachDao = new Coachdao(DBConnect.getCoon());
    List<Coach> coaches = coachDao.getAllCoaches();
%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand text-light d-flex align-items-center" href="Logout">
            <i class="bi bi-barbell me-2" style="font-size: 1.5rem;"></i>
            <span class="fw-bold">SportFlow</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <a class="btn btn-outline-danger px-3 py-2" href="Logout">
                <i class="bi bi-box-arrow-right"></i> Logout
            </a>
        </div>
    </div>
</nav>

<!-- Message de bienvenue -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg p-4 text-center">
                <h2 class="fw-bold">Bienvenue Admin 👋!</h2>
              
            </div>
        </div>
    </div>
</div>

<!-- Liste des Membres -->
<div class="container my-4">
    <h2 class="text-center text-primary mb-4"> Liste des Membres</h2>
    <div class="row">
        <% if (members == null || members.isEmpty()) { %>
            <p class="text-center text-danger">⚠ Aucun membre trouvé dans la base de données.</p>
        <% } else { 
            for (Member m : members) { %>
                <div class="col-md-4 mb-3">
                    <div class="card shadow-lg">
                        <div class="card-body">
                            <h5 class="card-title"> <%= m.getFullName() %></h5>
                            <p class="card-text">
                                 <strong>Email :</strong> <%= m.getEmail() %> <br>
                                 <strong>Sport :</strong> <%= m.getSportPratique() %>
                            </p>
                            <div class="d-flex justify-content-between">
   
    <a href="DeleteUser?id=<%=m.getIdMem()%>" class="btn btn-danger btn-sm px-2 py-1">
        <i class="bi bi-trash"></i> 
    </a>
</div>

                        </div>
                    </div>
                </div>
            <% }
        } %>
    </div>
</div>

<!-- Liste des Coachs -->
<div class="container my-4">
    <h2 class="text-center text-success mb-4"> Liste des Coachs</h2>
    <div class="row">
        <% if (coaches == null || coaches.isEmpty()) { %>
            <p class="text-center text-danger">⚠ Aucun coach trouvé dans la base de données.</p>
        <% } else { 
            for (Coach c : coaches) { %>
                <div class="col-md-4 mb-3">
                    <div class="card shadow-lg">
                        <div class="card-body">
                            <h5 class="card-title"> <%= c.getFullName() %></h5>
                            <p class="card-text">
                                 <strong>Email :</strong> <%= c.getEmail() %> <br>
                                 <strong>Spécialité :</strong> <%= c.getSpeciality() %>
                            </p>
                           <div class="d-flex justify-content-between">
  
    <a href="DeleteUser?id=<%= c.getIdCoach() %>" class="btn btn-danger btn-sm px-2 py-1">
        <i class="bi bi-trash"></i> 
    </a>
</div>

                        </div>
                    </div>
                </div>
            <% }
        } %>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
