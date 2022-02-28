<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String sname = request.getParameter("sname");
        String pname = request.getParameter("pname");
        String padresse = request.getParameter("padresse");
        String ptelephone = request.getParameter("ptelephone");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
        pst = con.prepareStatement("update eleve set sname = ?,pname = ?,padresse= ? ,ptelephone= ? where id = ?");
        pst.setString(1, sname);
        pst.setString(2, pname);
        pst.setString(3, padresse);
        pst.setString(4, ptelephone);
        pst.setString(5, id);
     
        pst.executeUpdate();  
        %>
        
        <script>   
            alert("élève modifié");           
       </script>
    <%             
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification élève</title> 
        
     
          <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body>
        <h1>Modification élève</h1>
        
        
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
                          
                        pst = con.prepareStatement("select * from eleve where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                    <div alight="left">
                        <label class="form-label">Nom élève complet</label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("sname")%>" name="sname" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Nom parent complet</label>
                        <input type="text" class="form-control" placeholder="datedenaissance" name="pname" value="<%= rs.getString("pname")%>" id="pname" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Adresse email</label>
                        <input type="text" class="form-control" placeholder="adresse" name="padresse" id="padresse" value="<%= rs.getString("padresse")%>" required >
                     </div>
                       <div alight="left">
                        <label class="form-label">Téléphone parent</label>
                        <input type="text" class="form-control" placeholder="telephone" name="ptelephone" id="ptelephone" value="<%= rs.getString("ptelephone")%>" required >
                     </div>
                    
                    <% }  %>
                    
                    
                    
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                         <div align="right">
                             
                             <p><a href="prindex.jsp">Retour</a></p>
                             
                             
                         </div>
  
                </form>
            </div>          
        </div>