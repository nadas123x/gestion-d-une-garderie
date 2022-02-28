  <%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %> 

  <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                   
                             <tr>
                                    <th>Nom parent</th>
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
                                
                                  String query = "select * from parent";
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
                                 
                                 <td><a href="Update.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="Delete.jsp?id=<%=id%>">Delete</a></td>
                             </tr> 
                             
                             
                                <%
                                 
                                 }
                               %>
                             
                     </table>    
                 </div>

            </div>  