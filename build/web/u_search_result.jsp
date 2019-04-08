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
          <li><a href="search_patient.jsp"><span>Back</span></a></li>
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
                        <table border="1" style="text-align: center;margin-left: 80px">
                            <tr>
                                <th style="text-align: center;width: 70px;">PID</th>
                                <th style="text-align: center;width: 70px;">Name</th>
                                <th style="text-align: center;width: 100px;">Age</th>
                                <th style="text-align: center;width: 300px;">DOB</th>
                                <th style="text-align: center;width: 60px;">Medical Status</th>
                                <th style="text-align: center;width: 100px;">Admission</th>
                                <th style="text-align: center;width: 100px;">Contact</th>
                                <th style="text-align: center;width: 60px;">Blood</th>
                                <th style="text-align: center;width: 100px;">Categories</th>
                                <th style="text-align: center;width: 100px;">Report</th>
                                <th style="text-align: center; width: 100px;">Request</th>
                            </tr>
                          
                               <%int fid=0;
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from patient_details where patient_id LIKE '%" + search + "%'");
                                    if (rs.next()) {
                                     session.setAttribute("SSpcategories", rs.getString("pcategories"));
                                    session.setAttribute("SSfilename", rs.getString("filename"));
                                    session.setAttribute("SSsecret_key", rs.getString("secret_key"));
                                    session.setAttribute("SSpatient_id", rs.getString("patient_id"));
                                    session.setAttribute("SSstatus", rs.getString("status"));
                                      			
                                    do{  
                            %>
                            <tr>
                                <td><%=rs.getString("patient_id")%></td>
                                <td><%=rs.getString("pname")%></td>     
                                <td><%=rs.getString("pAge")%></td>     
                                <td><%=rs.getString("pdate")%></td>     
                                <td><%=rs.getString("pmstatus")%></td>     
                                <td><%=rs.getString("padmission")%></td>     
                                <td><%=rs.getString("pcotact")%></td>    
                                <td><%=rs.getString("pblood")%></td>     
                                <td><%=rs.getString("pcategories")%></td>     
                                <td><%=rs.getString("filename")%></td>  
                                <td> <a href="request.jsp?<%=rs.getString("id")%>"><font style="color: green">Send</a></font> </td>   
                            </tr>  
                                     <% }while (rs.next());%>
                                     
                                     <% }else{ 
                                        response.sendRedirect("other.jsp");
                                        
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

