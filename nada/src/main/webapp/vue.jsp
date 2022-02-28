<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>ID </th>
<th>Nom </th>
<th>Prenom </th>
<th>Addresse</th>
<tr/>
<c:forEach var="enf" items="${requestScope.Enfant}"> 
<tr>
<td> ${enf.id}</td>
<td> ${enf.Nom}</td>
<td>${ enf.Prenom} </td>
<td>$ {enf.Addresse}</td>
</tr>
</c:forEach>
</table>
</body>
</html>