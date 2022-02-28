<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
 <link rel="stylesheet" type="text/css" href="tableau.css">


<%

    String driver = "com.mysql.jdbc.Driver";
 
    String req = "select * from vetements ";
    
    try {

        Class.forName(driver);

        Connection conn = DriverManager.getConnection( "jdbc:mysql://localhost/userdb", "root", "Marwa555");


        PreparedStatement stmt = conn.prepareStatement(req);

        ResultSet res = stmt.executeQuery();
        

        // étape 4: exécuter la requête
        
        if (res.next()) {
            do {

                System.out.println("La connexion a était bien établit!!");
                String nom = res.getString(1);
                String adresse = res.getString(2);
                String email = res.getString(3);
                String type = res.getString(4);
                String quantite = res.getString(5);
                 
              

out.print( "<table> <thead><tr><th>Nom complet du donateur</th><th>Adresse du don</th><th>Email</th><th>Type</th><th>quantité</th></tr></thead><tbody><tr><td>"+nom+ " </td><td>"+ adresse + "</td><td>" + email + "</td><td>" + type + "</td><td>" + quantite + "</td></tr></tbody> </table>");
            } while (res.next());


        } if(!request.getParameter("id").equals(null)){
            stmt.setString(1,request.getParameter("id"));

        }

        // étape 5: fermez l'objet de connexion
        stmt.executeUpdate();
        conn.close();
    } catch (Exception e) {
        System.out.println(e);
    }
%>