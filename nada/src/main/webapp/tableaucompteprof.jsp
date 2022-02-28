<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
 <link rel="stylesheet" type="text/css" href="tableau.css">


<%

    String driver = "com.mysql.jdbc.Driver";
 
    String req = "select * from llogin ";
    
    try {

        Class.forName(driver);

        Connection conn = DriverManager.getConnection( "jdbc:mysql://localhost/userdb", "root", "Marwa555");


        PreparedStatement stmt = conn.prepareStatement(req);

        ResultSet res = stmt.executeQuery();
        

        // étape 4: exécuter la requête
        
        if (res.next()) {
            do {

                System.out.println("La connexion a était bien établit!!");
                String login = res.getString(1);
                String password = res.getString(2);
                String name = res.getString(3);
                 
              

out.print( "<table> <thead><tr><th>Son username</th><th>Son mot de passe</th><th>Son nom complet</th></tr></thead><tbody><tr><td>"+ login + "</td><td>" + password + "</td><td>" + name + "</td></tr></tbody> </table>");
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