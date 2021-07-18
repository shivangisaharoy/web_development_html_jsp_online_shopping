<%@page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdet","root","root");
	Statement st=con.createStatement();
	if(username.equals("roy") && password.equals("roy"))
	{response.sendRedirect("success_html.html");
	}
	else
	{
	response.sendRedirect("fail_html.html");
	}

}

catch(Exception e)
{
	response.sendRedirect("fail_html.html");
}
%>