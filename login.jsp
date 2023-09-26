<%@include  file="header.jsp"%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
</head>   <body>
      <div class="contact_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <h1 class="contact_taital">LOGIN</h1>
                  <div class="bulit_icon"><img src="images/bulit-icon.png"></div>
               </div>
            </div>
         
         
            
            
                
     <form action="login" method="post">
     <input type="email" name="email" placeholder="enter emailid" required><br><br>
     <input type="password" name="password" placeholder="enter password" required>
     <input type="submit" value="login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
String msg = request.getParameter("msg");
if("not exist".equals(msg))
{
	%><h1>Incorrect username and password</h1>
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

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
     
      <!-- contact section end -->
     
   

  <%@include  file="../footer.jsp"%>
</body>
</html>