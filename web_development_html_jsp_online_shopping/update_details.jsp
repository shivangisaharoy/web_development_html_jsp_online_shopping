<%@page import="java.sql.*"%>
<%
String orderid=request.getParameter("orderid");
String productid=request.getParameter("productid");
String productdetails=request.getParameter("productdetails");
String paymentdetails=request.getParameter("paymentdetails");
String shipmentdetails=request.getParameter("shipmentdetails");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdet","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into users(orderid,productid,productdetails,paymentdetails,shipmentdetails)values('"+orderid+"','"+productid+"','"+productdetails+"','"+paymentdetails+"','"+shipmentdetails+"')");
	response.sendRedirect("success_html.html");

}

catch(Exception e)
{
	response.sendRedirect("fail_html.html");
}
%>