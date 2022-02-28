<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String sname = request.getParameter("sname");
        String remarques = request.getParameter("remarques");
       
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
        pst = con.prepareStatement("update remarque set sname = ?,remarques = ? where id = ?");
        pst.setString(1, sname);
        pst.setString(2, remarques);
     
        pst.setString(3, id);
     
        pst.executeUpdate();  
        %>
        
        <script>   
            alert("remarque modifiée");           
       </script>
    <%             
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification remarque:</title> 
        
     
          <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body>
        <h1>Modification remarques:</h1>
        
        
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
                          
                        pst = con.prepareStatement("select * from remarque where id = ?");
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
                        <label class="form-label">Remarques:</label>
                       
                       <textarea type="text" class="form-control" placeholder="datedenaissance" name="remarques" value="<%= rs.getString("remarques")%>" id="remarques" required >
                       </textarea>
                     </div>
                         
                  
                    
                    <% }  %>
                    
                    
                    
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                         <div align="right">
                             
                             <p><a href="rqindex.jsp">Retour</a></p>
                             
                             
                         </div>
  
                </form>
            </div>          
        </div>l>