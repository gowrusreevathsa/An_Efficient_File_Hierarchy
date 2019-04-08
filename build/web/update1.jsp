<%-- 
    Document   : update1
    Created on : May 14, 2016, 6:27:25 PM
    Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%

                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();

         String Status = "Yes";

    int  id=(Integer)session.getAttribute("theSid");
     System.out.println("session id is geted"+id);
    int i = st.executeUpdate("update request set status='" + Status + "' where id = '" + id + "'");
    if (i != 0) {
        response.sendRedirect("user_req.jsp?msg = Activate key sent to Your Email");
    } else {
        response.sendRedirect("user_req.jsp? msg = Error");
    }
%>
