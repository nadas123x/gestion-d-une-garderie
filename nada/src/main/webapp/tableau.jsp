<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
 <link rel="stylesheet" type="text/css" href="tableau.css">


<%

    String driver = "com.mysql.jdbc.Driver";
 
    String req = "select * from eleve ";
    
    try {

        Class.forName(driver);

        Connection conn = DriverManager.getConnection( "jdbc:mysql://localhost/userdb", "root", "Marwa555");


        PreparedStatement stmt = conn.prepareStatement(req);

        ResultSet res = stmt.executeQuery();
        

        // étape 4: exécuter la requête
        
        if (res.next()) {
            do {

                System.out.println("La connexion a était bien établit!!");
                String id = res.getString(1);
                String sname = res.getString(2);
                String pname = res.getString(3);
                String padresse = res.getString(4);
                String ptelephone = res.getString(5);
                 
              

out.print( "<table> <thead><tr><th>Nom complet élève</th><th>Nom complet parent</th><th>Adresse parent</th><th>Téléphone</th><th>id</th></tr></thead><tbody><tr><td>"+id+ " </td><td>"+ sname + "</td><td>" + pname + "</td><td>" + padresse + "</td><td>" + ptelephone + "</td></tr></tbody> </table>");
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