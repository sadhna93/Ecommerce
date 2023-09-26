<%@include  file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
      <div class="contact_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <h1 class="contact_taital">Signup</h1>
                  <div class="bulit_icon"><img src="images/bulit-icon.png"></div>
               </div>
            </div>
         </div>
 
   <form action="signup" method="post">
 
    <input type="text" name="name" placeholder=" enter your name" required><br><br>
     <input type="email" name="email" placeholder=" enter your emailid" required><br><br>
     <input type="number" name="mobilenumber" placeholder=" enter your contact number" required><br><br>
     <input type="password" name="password" placeholder="enter password" required><br><br>
     <select name="security questions" required>
     <option value="what was your first pet">what was your first pet</option>
      <option value="what was your first car">what was your first car</option>
       <option value="which city you born">which city you born</option>
     </select>
      <input type="text" name="answer" placeholder=" enter answer" required><br><br>
        <input type="text" name="address" placeholder=" enter address" required><br><br>
          <input type="text" name="city" placeholder=" enter city" required><br><br>
       <input type="text" name="state" placeholder=" enter state" required><br><br>
       <input type="text" name="country" placeholder=" enter country" required><br><br>

        <img id="output" width="200" /><br><br>
         
  <input type="submit" value="signup">
    </form>
      
  
  <div class='whysign'>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
	%><h1>Successfully registered</h1>
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



<div>   <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div></div>
</div>
<%@include  file="../footer.jsp"%>
</body>
</html>