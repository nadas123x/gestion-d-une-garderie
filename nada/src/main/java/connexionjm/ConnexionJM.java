package connexionjm;
import java.sql.*;
/**
 *
 * @author Said
 */
public class ConnexionJM {
 static Connection cnx;
 static Statement st;
 static ResultSet rst;
  
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
         //AjouterP(100,"AAAA",50.50,15,"Informatique",1);
        
        //SupprimerParID(3);
        
        recherchePparid("2");
      
        
                
          try{
              cnx=connecterDB(); 
              st=cnx.createStatement();
              rst=st.executeQuery("SELECT * FROM eleve");
              
              while(rst.next()){
                  System.out.print(rst.getInt("id")+"\t");
                  System.out.print(rst.getString("sname")+"\t");
                  System.out.print(rst.getDouble("pname")+"\t");
                  System.out.print(rst.getInt("padresse")+"\t");
                  System.out.print(rst.getString("ptelephone")+"\t");
                  System.out.println();
              }
          }catch(Exception ex){
              ex.printStackTrace();
          } 
     
    }
    
  
    
    public static Connection  connecterDB(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver oki");
            String url="jdbc:mysql://localhost:3306/dbuser";
            String user="root";
            String password="Marwa555";
           Connection cnx=DriverManager.getConnection(url,user,password);
            System.out.println("Connexion bien établié");
            return cnx;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
   
   
   
    public static void recherchePparid(String id){
        try{
           String query="SELECT * FROM eleve WHERE id='"+id+"'"; 
           cnx=connecterDB();
           st=cnx.createStatement();
           rst= st.executeQuery(query);
           rst.last();
           int nbrRow = rst.getRow();
           if(nbrRow!=0){
               System.out.println("Produit trouve");
           }else{
                System.out.println("Produit non trouve");
               
           }
           
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        
    }
    
  
       
    
    
   
    
}