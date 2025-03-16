<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.Coachdao" %> 
<%@ page import="dao.DBConnect" %>
<%@ page import="model.Seance" %>




<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons (CDN Mzroud) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <title>Coach Page</title>
</head>
<body>



        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <!-- Logo -->
        <a class="navbar-brand text-light d-flex align-items-center" href="home.jsp">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-barbell me-2" viewBox="0 0 16 16">
                <path d="M2 5h1v6H2V5Zm11 0h1v6h-1V5ZM4.5 4a.5.5 0 0 0-.5.5v1h-1v5h1v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5V4.5a.5.5 0 0 0-.5-.5h-1Zm6 0a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1h1v-5h-1v-1a.5.5 0 0 0-.5-.5h-1ZM7 3.5A.5.5 0 0 1 7.5 3h1a.5.5 0 0 1 .5.5V6h1v4h-1v2.5a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5V10h-1V6h1V3.5Z"/>
            </svg>
            <span class="fw-bold">SportFlow</span>
        </a>

        <!-- Toggle Button for Mobile -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Logout Button -->
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="btn btn-outline-danger px-3 py-2" href="Logout">
                        <i class="bi bi-box-arrow-right"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
                     








<%
    HttpSession sessionUser = request.getSession();
    String fullName = (String) sessionUser.getAttribute("fullName");

    if (fullName == null) {
        response.sendRedirect("login.jsp");
    }
%>

<%
int idCoach = (int) session.getAttribute("idUser"); 
Coachdao seanceDao = new Coachdao(DBConnect.getCoon()); 
List<Seance> seances = seanceDao.getSeancesByCoach(idCoach);
%>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg p-4 text-center">
                <h2 class="fw-bold">Bonjour Coach <%= fullName %> 👋!</h2>
                <p class="text-muted">Bienvenue dans votre espace coach.</p>
            </div>
        </div>
    </div>
</div>

    
<h2 class="text-center my-4">📅 Mes Séances</h2>

<div class="container">
    <div class="row justify-content-center">
        <%
            for (Seance s : seances) {
        %>
        <div class="col-md-6 mb-3">
            <div class="card shadow-lg">
                <div class="card-body">
                    <h5 class="card-title text-primary">
                        🏋 Séance du <%= s.getDateSeance() %>
                    </h5>
                    <p class="card-text">
                        <strong>🕒 Heure :</strong> <%= s.getHeure() %> <br>
                        <strong>🙋‍♂️ Membre :</strong> <%= s.getMemberName() %>
                    </p>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>


</body>
</html>
