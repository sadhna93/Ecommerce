<%@include  file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>MyShopping Site</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--

TemplateMo 569 Edu Meeting

https://templatemo.com/tm-569-edu-meeting

-->
  </head>

<body>
<h1>update Password</h1>
  <form action="forgetPassword" method="post">
      <input type="email" name="email" placeholder="enter emailid" required><br><br>
       <input type="number" name="mobilenumber" placeholder=" enter your contact number" required><br><br>
     <select name="security questions" required>
     <option value="what was your first pet">what was your first pet</option>
      <option value="what was your first car">what was your first car</option>
       <option value="which city you born">which city you born</option>
     </select>
      <input type="text" name="answer" placeholder=" enter answer" required><br><br>
     <input type="password" name="newpassword" placeholder="enter new password to update" required><br><br>
     <input type="submit" value="save"></form>
      <h2><a href="login.jsp">Login</a></h2>

  
   <%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
	%><h1>Password Changed Successfully!</h1>
	<%
}
%>

<%

if("invalid".equals(msg))
{
	%><h1>Something went wrong! Try again !</h1>
	<%
}
%>


 <%@include  file="../footer.jsp"%>


</body>
</html>