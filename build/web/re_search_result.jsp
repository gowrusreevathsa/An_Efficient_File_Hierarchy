<%-- 
    Document   : re_search_result
    Created on : May 15, 2016, 11:09:01 AM
    Author     : java4
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>An Efficient File Hierarchy</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">An Efficient File Hierarchy Attribute-Based
                Encryption &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scheme in Cloud Computing</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
<!--          <li><a href="admin_home.jsp"><span>Admin Home</span></a></li>
          <li><a href="user_de.jsp"><span>User Details</span></a></li>
          <li class="active"><a href="owner_de.jsp"><span>Owner Details</span></a></li>
          <li><a href="research_de.jsp"><span>Researcher Details</span></a></li>
           <li><a href="user_req.jsp"><span>User Request</span></a></li>
           <li><a href="researcher_req.jsp"><span>Researcher Request</span></a></li>-->
          <li><a href="re_search_record.jsp"><span>Back</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
     
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
      <div class="content_resize">
<!-- start body---->
   <!-- /.container -->
          <%
//                        String uname = session.getAttribute("name").toString();
                        String search = request.getParameter("search");
                        System.out.println("get the search"+search);
                        session.setAttribute("search", search);
                    %>

        <div class="container">
            <div class="row">
                <div class="box" style="height: 400px;">
                    <!--To do you work-->
                    <div style="border: 1px solid white;height: 350px;border-top-width: 20px;border-bottom-width: 10px">
                        <center><h3>Owner Details</h3></center><br />
                        <table border="1" style="text-align: center;margin-left: 320px">
                            <tr>

                                <th style="text-align: center;width: 100px;">Categories</th>
                                <th style="text-align: center;width: 100px;">Report</th>
                                <th style="text-align: center; width: 100px;">Request</th>
                            </tr>
                            <tr>
                               <%int fid=0;
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from patient_details where pcategories LIKE '%" + search + "%'");
                                    if (rs.next()) {
                                     session.setAttribute("Spcategories", rs.getString("pcategories"));
                                    session.setAttribute("Sfilename", rs.getString("filename"));
                                    session.setAttribute("Ssecret_key", rs.getString("master_key"));
                                    session.setAttribute("Spatient_id", rs.getString("patient_id"));
//                                  
                                      	do{		
                                      
                            %>
    
                                <td><%=rs.getString("pcategories")%></td>     
                                <td><%=rs.getString("filename")%></td>  
                                <td> <a href="re_request.jsp?<%=rs.getString("id")%>"><font style="color: green">Send</a></font> </td>   
                                        </tr>
                                     <% }while (rs.next());%>
                                     
                                     <% }else{ 
                                        response.sendRedirect("other2.jsp");
                                        
   %>   
                                
                                
                                      <%
                                   
                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }
                                                                       
                                %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container -->



<!-- end body---->
<br></br><br></br>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
    
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="rf"><a href=""></a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>

