<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <link rel="stylesheet" type="text/css" href="contact.css">
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
    
    
        <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Vous avez besoin d'un petit don?</h3>
                        <p>Veuillez remplir ce formulaire</p>
        <form method="post" action="vuploadServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Id: </td>
                    <td><input type="text" name="id" size="50"/></td>
                </tr>
                <tr>
                    <td>Adresse de don: </td>
                    <td><input type="text" name="adressededon" size="50"/></td>
                </tr>
                <tr>
                    <td>Votre justification : </td>
                    <td><input type="file" name="justification" size="50"/></td>
                </tr>
                  <tr>
                    <td> Catégorie souhaitée: </td>
                    <td><input type="text" name="categorie" size="50" placeholder="tricot/pantalon/chaussures.."/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
               </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>