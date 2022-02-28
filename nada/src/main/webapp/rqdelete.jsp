<%@page import="java.sql.*" %> 


<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
        pst = con.prepareStatement("delete from remarque where id = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        request.getRequestDispatcher("rqindex.jsp").forward(request, response);
        
        %>
        
        <script>
            
            alert("remarque supprimée");
            
       </script>