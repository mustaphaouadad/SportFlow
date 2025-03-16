<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.Coachdao" %>
<%@ page import="dao.DBConnect" %>
<%@ page import="model.Coach" %>




<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons (CDN Mzroud) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <title>Member Page</title>
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
    Coachdao dao = new Coachdao(DBConnect.getCoon());
    List<Coach> coachList = dao.getAllCoaches();
%>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg p-4 text-center">
                <h2 class="fw-bold">Bonjour, <%= fullName %> 👋!</h2>
                <p class="text-muted">Bienvenue dans votre espace membre.</p>
            </div>
        </div>
    </div>
</div>
  
   
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="col-md-6">
        <div class="card shadow-lg p-4">
            <div class="card-body">
                <h3 class="text-center mb-4">Créer une Séance</h3>

                <form action="SeanceServlet" method="post">
                    <div class="mb-3">
                        <label class="form-label">Date de la Séance</label>
                        <input type="date" id="dateSeance" name="dateSeance" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Heure</label>
                        <input type="time" id="heure" name="heure" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Choisir Coach et Speciality</label>
                        <select id="coach" name="idCoach" class="form-select">
                            <%
                                for (Coach c : coachList) {
                            %>
                                <option value="<%= c.getIdCoach() %>">
                                    <%= c.getSpeciality() %> - <%= c.getFullName() %>
                                </option>
                            <%
                                }
                            %>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-outline-dark w-100">Envoyer</button>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>
