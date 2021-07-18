<%@page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String age=request.getParameter("age");
String country=request.getParameter("country");
String state=request.getParameter("state");
String pincode=request.getParameter("pincode");
String password=request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdet","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into reg(username,age,country,state,pincode,password)values('"+username+"','"+age+"','"+country+"','"+state+"','"+pincode+"','"+password+"')");
	response.sendRedirect("success_html.html");


}

catch(Exception e)
{
	response.sendRedirect("fail_html.html");
}
%>