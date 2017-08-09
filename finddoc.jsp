<%@ page language="java" import="java.sql.*"%>
<%
    String name= request.getParameter("name");
    String email= request.getParameter("email");
    String telenum= request.getParameter("telenum");
    String message= request.getParameter("message");
	

   
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "SYSTEM", "sriram");
        PreparedStatement ps = con.prepareStatement("insert into aya values(?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
		ps.setString(3, telenum);
        ps.setString(4, message);
        
       
 
        

        ps.executeUpdate();
        out.println("Data saved successfully");
    } catch (Exception e) {
        out.println(e);
    } 
%>