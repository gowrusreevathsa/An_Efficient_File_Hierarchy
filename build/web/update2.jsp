<%-- 
    Document   : update2
    Created on : May 15, 2016, 11:39:25 AM
    Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
  int  id=(Integer)session.getAttribute("thSid");
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();

String Status = "Allowed";

    int i = st.executeUpdate("update request set status='" + Status + "' where id = '" + id + "'");
    if (i != 0) {
        response.sendRedirect("researcher_req.jsp?msg = Activate key sent to Your Email");
    } else {
        response.sendRedirect("researcher_req.jsp? msg = Error");
    }
%>
