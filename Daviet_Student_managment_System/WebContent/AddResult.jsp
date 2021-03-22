<%@page import="com.DatabaseConnection.SQL_Connection_Provider" %>
<%@page import="java.sql.*" %>

<%
String roll=request.getParameter("roll");
String phy=request.getParameter("phy");
String chy=request.getParameter("chy");
String math=request.getParameter("math");
String electrical_engg=request.getParameter("electrical_engg");
String electronics_engg=request.getParameter("electronic_engg");
String chy_lab=request.getParameter("chy_lab");
String phy_lab=request.getParameter("phy_lab");

try
{
	Connection con=SQL_Connection_Provider.getCon();
	Statement st=con.createStatement();
	
	st.executeUpdate("insert into add_result values('"+roll+"','"+phy+"','"+chy+"','"+math+"','"+electrical_engg+"','"+electronics_engg+"','"+chy_lab+"','"+phy_lab+"')");
	response.sendRedirect("adminHome.jsp");
	
}
catch(Exception e)
{
	out.println(e);
}

%>