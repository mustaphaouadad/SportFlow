<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportFlow - Inscription</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <!-- Logo -->
            <a class="navbar-brand text-light" href="index.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-barbell" viewBox="0 0 16 16">
                    <path d="M2 5h1v6H2V5Zm11 0h1v6h-1V5ZM4.5 4a.5.5 0 0 0-.5.5v1h-1v5h1v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5V4.5a.5.5 0 0 0-.5-.5h-1Zm6 0a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1h1v-5h-1v-1a.5.5 0 0 0-.5-.5h-1ZM7 3.5A.5.5 0 0 1 7.5 3h1a.5.5 0 0 1 .5.5V6h1v4h-1v2.5a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5V10h-1V6h1V3.5Z"/>
                </svg>
                SportFlow
            </a>
            <!-- Navbar Toggler for Mobile -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar Links -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Registration</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Registration Form -->
     <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="col-md-4">
            <div class="card shadow-lg p-4">
                <div class="card-body">
            <h2 class="text-2xl font-bold text-center mb-4">Inscription</h2>
            <form action="register" method="post">
                <!-- Full Name -->
                <div class="mb-3">
                    <input type="text" name="fullname" class="form-control" placeholder="Nom Complet" required>
                </div>
                <!-- Email -->
                <div class="mb-3">
                    <input type="email" name="email" class="form-control" placeholder="Email" required>
                </div>
                <!-- Password -->
                <div class="mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Mot de passe" required>
                </div>
                <!-- Role Selection -->
                <div class="mb-3">
                    <select name="role" id="role" class="form-control" onchange="toggleFields()">
                        <option value="">Sélectionner un rôle</option>
                       
                        <option value="member">Membre</option>
                        <option value="coach">Coach</option>
                    </select>
                </div>

                <!-- Member Specific Fields -->
                <div id="memberFields" class="d-none">
                    <div class="mb-3">
                        <input type="date" name="dateNaissance" class="form-control" placeholder="Date de naissance" required>
                    </div>
                    <div class="mb-3">
                        <input type="text" name="sportPratique" class="form-control" placeholder="Sport pratiqué" required>
                    </div>
                </div>

                <!-- Coach Specific Fields -->
                <div id="coachFields" class="d-none">
                    <div class="mb-3">
                        <input type="text" name="speciality" class="form-control" placeholder="Spécialité" required>
                    </div>
                </div>

                <!-- Submit Button -->
               <button type="submit" class="btn btn-outline-light w-100">S'inscrire</button>
            </form>
        </div>
     </div>
      </div>
       </div>

    <!-- JS to Toggle Fields Based on Role -->
    <script>
        function toggleFields() {
            let role = document.getElementById("role").value;

            // Hide both Member and Coach specific fields initially
            document.getElementById("memberFields").classList.add("d-none");
            document.getElementById("coachFields").classList.add("d-none");

            // Show fields based on the selected role
            if (role === "member") {
                document.getElementById("memberFields").classList.remove("d-none");
            } else if (role === "coach") {
                document.getElementById("coachFields").classList.remove("d-none");
            }
        }
    </script>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
