<%@ page language="java" %>
  <link rel="stylesheet" type="text/css" href="loginenf.css">
<%
String username=request.getParameter("username");
String remarque=request.getParameter("remarque");

if(username==null) username="";

session.setAttribute("username",username);
session.setAttribute("remarque",remarque);
%>

<html>
<head>
<title>Name Saved</title>
</head>
<body>
<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3></h3>
<p><a href="3.jsp">Données envoyées!</a><p>
             </div>
    </div>
                </div>
            </div>
        </div>

</body>