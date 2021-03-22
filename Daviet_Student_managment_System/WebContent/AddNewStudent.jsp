
<%@page import="com.DatabaseConnection.SQL_Connection_Provider"%>
<%@page import="java.sql.*" %>
<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String roll=request.getParameter("roll");
String name=request.getParameter("name");
String father_name=request.getParameter("fathername");
String gender=request.getParameter("gender");


 try
{
	Connection con=SQL_Connection_Provider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into add_student values('"+course+"','"+branch+"','"+roll+"','"+ name+"','"+father_name+"','"+gender+"')");
    response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	out.println(e);
} 
%>