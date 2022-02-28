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
        pst = con.prepareStatement("insert into parent (sname,datedenaissance,adresse,telephone)values(?,?,?,?)");
        pst.setString(1, sname);
        pst.setString(2, datedenaissance);
        pst.setString(3, adresse);
        pst.setString(4, telephone);
        pst.executeUpdate();  
        
        %> 
    <script>   
        alert("Parent ajouté");     
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
        <h1>Gestion des parents</h1>
        </br>
     <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3></h3>
                <form  method="POST" action="#" > 
                    
                    <div alight="left">
                        <label class="form-label">Nom du parent complet</label>
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
  <div class="text"> <a href="http://localhost:8080/nada/pageadmin.jsp" >Quitter</a></div>
  
</button>
                     </div>  
                         
                </form>
            </div>
            
           
        </div>
          </div>
             </div>
               </div>

    </body>
</html>