<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %> 
<% 

    if(request.getParameter("submit")!=null)
    {
        String sname = request.getParameter("sname");
        String pname = request.getParameter("pname");
        String padresse = request.getParameter("padresse");
        String ptelephone = request.getParameter("ptelephone");

        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
        pst = con.prepareStatement("insert into eleve (sname,pname,padresse,ptelephone) values(?,?,?,?)");
        pst.setString(1, sname);
        pst.setString(2, pname);
        pst.setString(3, padresse);
        pst.setString(4, ptelephone);
        pst.executeUpdate();  
        
        %> 
    <script>   
        alert("élève ajouté");     
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
        <h1>Gestion des élèves:</h1>
        </br>
     <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3></h3>
                <form  method="POST" action="#" > 
                    
                    <div alight="left">
                        <label class="form-label">Nom d'élève complet</label>
                        <input type="text" class="form-control" placeholder="" name="sname" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Nom du parent d'élève:</label>
                        <input type="text" class="form-control" placeholder="" name="pname" id="pname" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Adresse email parent:</label>
                        <input type="text" class="form-control" placeholder="" name="padresse" id="padresse" required >
                     </div>
                      <div alight="left">
                        <label class="form-label">Téléphone parent:</label>
                        <input type="text" class="form-control" placeholder="" name="ptelephone" id="ptelephone" required >
                     </div>
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                </form>
            </div>
   
            
             <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                   
                             <tr>
                                    <th>Nom élève</th>
                                    <th>Nom parent élève</th>
                                    <th>Adresse parent</th>
                                    <th>Téléphone parent</th>
                                    <th>Modifier</th>
                                    <th>Supprimer</th>
                             </tr>  
                          
                             <%   

                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/userdb","root","Marwa555");
                                
                                  String query = "select * from eleve";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                   %>
             
                             <tr>
                                 <td><%=rs.getString("sname") %></td>
                                 <td><%=rs.getString("pname") %></td>
                                 <td><%=rs.getString("padresse") %></td>
                                 <td><%=rs.getString("ptelephone") %></td>
                                 
                                 <td><a href="prupdate.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="prdelete.jsp?id=<%=id%>">Delete</a></td>
                             </tr> 
                             <tr>
                                   
         
           
                           
                             
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