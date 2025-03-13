<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>

<html>
<head>
   <meta charset="UTF-8">
    <title>SportFlow</title>
   <!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons (CDN Mzroud) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">


</head>
<body>
            
            
            
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <!-- Logo dyal la salle -->
            <a class="navbar-brand text-light" href="index.jsp">
    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-barbell" viewBox="0 0 16 16">
        <path d="M2 5h1v6H2V5Zm11 0h1v6h-1V5ZM4.5 4a.5.5 0 0 0-.5.5v1h-1v5h1v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5V4.5a.5.5 0 0 0-.5-.5h-1Zm6 0a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1h1v-5h-1v-1a.5.5 0 0 0-.5-.5h-1ZM7 3.5A.5.5 0 0 1 7.5 3h1a.5.5 0 0 1 .5.5V6h1v4h-1v2.5a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5V10h-1V6h1V3.5Z"/>
    </svg>
    SportFlow
</a>


            <!-- Button dyal menu f mobile -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Links dyal Login & Registration -->
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
    
    
    
    <!-- &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& -->
    
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="col-md-4">
            <div class="card shadow-lg p-4">
                <div class="card-body">
                    <h3 class="text-center mb-4">Login</h3>

                    <form action="Login" method="post">
                        <div class="mb-3">
                            <label class="form-label">Email address</label>
                            <input required name="email" type="email" class="form-control" placeholder="Entrer votre email">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input required name="password" type="password" class="form-control" placeholder="Entrer votre mot de passe">
                        </div>
                      <button type="submit" class="btn btn-outline-light w-100">Se connecter</button>
                    </form>

                   <div class="text-center mt-3" style="white-space: nowrap;">
                 <span>Vous n'avez pas de compte ? </span>
             <a href="register.jsp" class="text-decoration-none">Créez-en un</a>
            </div>

                </div>
            </div>
        </div>
    </div>
    
    
    
    

    <!-- Bootstrap JS (for responsive menu) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            


</body>
</html>
