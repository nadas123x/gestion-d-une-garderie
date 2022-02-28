<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String sname = request.getParameter("sname");
        String datedenaissance = request.getParameter("datedenaissance");
        String adresse = request.getParameter("adresse");
        String telephone = request.getParameter("telephone");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
        pst = con.prepareStatement("update parent set sname = ?,datedenaissance = ?,adresse= ? ,telephone= ? where id = ?");
        pst.setString(1, sname);
        pst.setString(2, datedenaissance);
        pst.setString(3, adresse);
        pst.setString(4, telephone);
        pst.setString(5, id);
     
        pst.executeUpdate();  
        %>
        
        <script>   
            alert("Record Updateddddd");           
       </script>
    <%             
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification parent</title> 
        
     
          <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body>
        <h1>Modification parent</h1>
        
        
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" >
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
                           
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from parent where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                    <div alight="left">
                        <label class="form-label">Nom parent</label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("sname")%>" name="sname" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Date de naissance</label>
                        <input type="text" class="form-control" placeholder="datedenaissance" name="datedenaissance" value="<%= rs.getString("datedenaissance")%>" id="datedenaissance" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Adresse</label>
                        <input type="text" class="form-control" placeholder="adresse" name="adresse" id="adresse" value="<%= rs.getString("adresse")%>" required >
                     </div>
                       <div alight="left">
                        <label class="form-label">Telephone</label>
                        <input type="text" class="form-control" placeholder="telephone" name="telephone" id="telephone" value="<%= rs.getString("telephone")%>" required >
                     </div>
                    
                    <% }  %>
                    
                    
                    
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                         <div align="right">
                             
                             <p><a href="indexx.jsp">Retour</a></p>
                             
                             
                         </div>
  
                </form>
            </div>          
        </div>
  
    </body>
</html>