<%@ page language="java" %>
  <link rel="stylesheet" type="text/css" href="loginenf.css">

<%
String username=(String) session.getAttribute("username");
String remarque=(String) session.getAttribute("remarque");

if(username==null) username="";
if(remarque==null) remarque="";
%>
<html>
<head>
<title>Show Saved Name</title>
</head>
<body>
<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3></h3>
<p>Vous trouvez ci les remarques de  votre enfant: <%=username%>,
: <%=remarque%><p>
         </div>
    </div>
                </div>
            </div>
        </div>
</body>