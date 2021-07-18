<%@page import="java.sql.*"%>
<%
String z=request.getParameter("orderid");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdet","root","root");
	
	Statement statement=con.createStatement();
	String sql="select * from users where orderid='"+z+"'";
	ResultSet rs=statement.executeQuery(sql);
	out.println("<table border='2'>");
	out.println("<tr>");
	out.println("<th>orderid</th>");
	out.println("<th>productid</th>");
	out.println("<th>productdetails</th>");
	out.println("<th>paymentdetails</th>");
	out.println("<th>shipmentdetails</th>");
	out.println("<tr>");
	
	while(rs.next())
	{
		String orderid=rs.getString("orderid");
		String productid=rs.getString("productid");
		String productdetails=rs.getString("productdetails");
		String paymentdetails=rs.getString("paymentdetails");
		String shipmentdetails=rs.getString("shipmentdetails");
		out.println("<tr>");
		out.println("<td>"+orderid+"</td>");
		out.println("<td>"+productid+"</td>");
		out.println("<td>"+productdetails+"</td>");
		out.println("<td>"+paymentdetails+"</td>");
		out.println("<td>"+shipmentdetails+"</td>");
		out.println("<tr>");
		
	}
	out.println("</table>");

	

}

catch(Exception e)
{
	response.sendRedirect("fail_html.html");
}
%>
© 2021 GitHub, Inc.