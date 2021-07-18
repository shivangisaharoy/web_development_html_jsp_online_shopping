<%@page import="java.sql.*"%>
<%
String[] bags=request.getParameterValues("bags");
int x=0;
if(bags!=null)
{
	for(int i=0;i<bags.length;i++)
	{
		out.println("<b>"+bags[i]+"<b>");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdet","root","root");
			Statement st=con.createStatement();
			st.executeUpdate("insert into ord(orderdet)values('"+bags[i]+"')");
			

		}
		catch(Exception e)
		{
			response.sendRedirect("fail_html.html");
		}
		x=x+50;
	}
	out.println("<br/>you need to pay:");
	out.println("<b>"+x+"<b>");
}


%>