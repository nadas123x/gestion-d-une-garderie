<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %> 
<% 

    if(request.getParameter("submit")!=null)
    {
        String sname = request.getParameter("sname");
        String datedenaissance = request.getParameter("datedenaissance");
        String adresse = request.getParameter("adresse");
        String telephone = request.getParameter("telephone");

        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
        pst = con.prepareStatement("insert into professeur (sname,datedenaissance,adresse,telephone)values(?,?,?,?)");
        pst.setString(1, sname);
        pst.setString(2, datedenaissance);
        pst.setString(3, adresse);
        pst.setString(4, telephone);
        pst.executeUpdate();  
        
        %> 
    <script>   
        alert("professeur ajouté");     
    </script> 
    <%             
    }
   %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
      
 <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>        
    </head>
    <body>
        <h1>Gestion des professeurs</h1>
        </br>
     <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3></h3>
                <form  method="POST" action="#" > 
                    
                    <div alight="left">
                        <label class="form-label">Nom du professeur complet</label>
                        <input type="text" class="form-control" placeholder="" name="sname" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Date de naissance</label>
                        <input type="text" class="form-control" placeholder="" name="datedenaissance" id="datedenaissance" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Email</label>
                        <input type="text" class="form-control" placeholder="" name="adresse" id="adresse" required >
                     </div>
                      <div alight="left">
                        <label class="form-label">téléphone</label>
                        <input type="text" class="form-control" placeholder="" name="telephone" id="telephone" required >
                     </div>
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                                                  <button class="button"  >

  <div class="pattern">
    <div class="target inner bg1"></div>
  </div>
  <div class="text"> <a href="http://localhost:8080/nada/admingererpageprof.jsp" >Quitter</a></div>
  
</button>
            
                     </div>  
                         
                </form>
            </div>
            
             <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                   
                             <tr>
                                    <th>Nom professeur</th>
                                    <th>Date de naissance</th>
                                    <th>Email</th>
                                    <th>Téléphone</th>
                                    <th>Modifier</th>
                                    <th>Supprimer</th>
                             </tr>  
                          
                             <%   

                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
                                
                                  String query = "select * from professeur";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                   %>
             
                             <tr>
                                 <td><%=rs.getString("sname") %></td>
                                 <td><%=rs.getString("datedenaissance") %></td>
                                 <td><%=rs.getString("adresse") %></td>
                                 <td><%=rs.getString("telephone") %></td>
                                 
                                 <td><a href="updatee.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="deletee.jsp?id=<%=id%>">Delete</a></td>
                             </tr> 
                             
                             
                                <%
                                 
                                 }
                               %>
                             
                     </table>    
                 </div>

            </div>  
        </div>
          </div>
             </div>
               </div>

    </body>

</html>