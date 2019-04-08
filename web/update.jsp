<%-- 
    Document   : update
    Created on : Mar 10, 2016, 11:01:22 AM
    Author     : java4
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String j = request.getQueryString();
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();
String  msg=(String)session.getAttribute("Key");
    System.out.println("message"+msg);
    String  email=(String)session.getAttribute("Email");
    String  dec=(String)session.getAttribute("email");
     System.out.println("Email id"+email);
    int i = st.executeUpdate("update reg set yyys = '"+msg+"' where Email = '" + email + "'");
    if (i != 0) {
        response.sendRedirect("a_s_details.jsp?msg=send request to tpa");
    } else {
        response.sendRedirect("User_request.jsp?msg=Error");
    }
%>