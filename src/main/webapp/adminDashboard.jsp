<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
            
            
              <h1>Bienvenue, Admin!</h1>
        
        <h2>Gestion des Membres</h2>
        <table border="1">
            <tr>
                <th>Nom</th>
                <th>Email</th>
                <th>Sport</th>
                <th>Action</th>
            </tr>
            <%-- Loop sur les membres pour les afficher --%>
           
                <td>
                    <button>Modifier</button>
                    <button>Supprimer</button>
                </td>
            </tr>
           
        </table>
        
        <h2>Gestion des Coachs</h2>
        <table border="1">
            <tr>
                <th>Nom</th>
                <th>Email</th>
                <th>Spécialité</th>
                <th>Action</th>
            </tr>
            <%-- Loop sur les coachs pour les afficher --%>
          
                <td>
                    <button>Modifier</button>
                    <button>Supprimer</button>
                </td>
            </tr>
           
        </table>


</body>
</html>