package com.DatabaseConnection;
import java.sql.*;

public class SQL_Connection_Provider 
{
public static Connection getCon()
{
     try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_result_management", "root", "12345");
     return con;
     }
     catch (Exception e) 
     {
	  System.out.println(e);
		return null;
		
	}
     }
}
