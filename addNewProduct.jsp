
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include  file="adminHeader.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
	%>
	<h3 class="alert">Product Added Successfully!</h3>
<% }%>

<%

if("wrong".equals(msg))
{
	%>
	<h3 class="alert">Some thing went wrong! Try Again!</h3>
<% }%>


<%
int id = 1;
try
{
	Connection con = ConnectionProvider.getCon();
	Statement s = con.createStatement();
	ResultSet rst = s.executeQuery("select max(id) from product");
	while (rst.next())
	{
		id = rst.getInt(1);
		id = id+1;
	}
}
catch(Exception e)
{
	
}
%>
<form action="addProduct" method="post" enctype="multipart/form-data">
<h3 style="color: red;">Product ID:<%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="enter name" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
  <input class="input-style" type="text" name="category" placeholder="enter category" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
  <input class="input-style" type="number" name="price" placeholder="enter price" required>
<hr>
</div>
<div class="right-div">
<h3>Enter Photo</h3>
  <input class="input-style" type="file" name="photo" placeholder="enter photo" required>
<hr>
</div>
<div class="left-div">
<h3>Active</h3>
<select class="input-style" name="active">
<option value="Yes">Yes
</option>
<option value="No">No
</option>
</select>
<hr>
</div>
<br><br>
 <input type="submit" value="save">
</form>


<%@include  file="../footer.jsp"%>
</body>
</html>