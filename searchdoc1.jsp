<%@page import="java.sql.*" %>
<%
       String Docname= request.getParameter("searchdoc");
	   String docName, docID;
    
    try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "SYSTEM", "DADDY");
        Statement st = con.createStatement();
		
		ResultSet rs=st.executeQuery("select Docname,Docid from doctor where Docname='Docname'");
		
		while(rs.next)
		{
			docName=rs.getString("Docname");
			docID=rs.getString("Docid");
			
			out.println("<table>");
			out.println("<tr><td> +docName");
			out.print("<td> +docID");
		}
     
       }catch(Exception e)
	   {
	   System.out.println(e);
	   }
%>