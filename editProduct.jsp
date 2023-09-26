<%@page import="Project.ConnectionProvider" %>

<%@page import="java.sql.*" %>
<%@include  file="adminHeader.jsp"%>
<%@page import="java.io.*" %>
<%@page import="java.nio.*" %>
<%@page import="java.util.*" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<%
String id = request.getParameter("id");
String imagename = request.getParameter("photo");
String imagePath = "C:/Users/bunty/eclipse-workspace/MyShoppingSite/src/main/webapp/images/" + imagename + ".jpg";


File fileName = new File(imagePath);
if (fileName.exists()) {


  byte[] data = Files.readAllBytes(fileName.toPath());
String base64Image = Base64.getEncoder().encodeToString(data);
try
{
	Connection con = ConnectionProvider.getCon();
	   Statement st = con.createStatement();
	   ResultSet rst = st.executeQuery("select * from product where id='"+id+"'");
	   while(rst.next())
	   {
		   

%>
<form action="editAction" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="<%=rst.getString(1) %> ">
<div class="left-div">
 <h3>Enter Name</h3>
<input class="input-style" type="text" name="name" value="<%=rst.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" value="<%=rst.getString(3) %>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="text" name="price" value="<%=rst.getString(4) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active">
<option value="Yes">Yes
</option>
<option value="No">No
</option>
</select>
 <hr>
</div>
<div class="left-div">
<h3>Photo</h3>






				
 
  <img src="data:image/jpeg;base64, <%= base64Image %>">
  
<hr>
</div>

<button class="button">Save
 <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
}
	   }
catch(Exception e)
{
	System.out.println(e);
}
%>
 <%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
	%><h1>Edit Successfully!</h1>
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