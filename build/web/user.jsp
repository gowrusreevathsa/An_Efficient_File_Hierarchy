<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>An Efficient File Hierarchy Attribute-Based</title>
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
                        <%
           if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Please Enter Correct username and Password');</script>
        <%
            }
        %>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">An Efficient File Hierarchy Attribute-Based
                Encryption &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scheme in Cloud Computing</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
        <ul>
          <li><a href="index.jsp"><span>Home</span></a></li>
          <li><a href="researcher.jsp"><span>Researcher</span></a></li>
          <li><a href="admin.jsp"><span>Admin</span></a></li>
          <li><a href="owner.jsp"><span>Owner</span></a></li>
          <li class="active"><a href="user.jsp"><span>User</span></a></li>
          <li><a href="register.jsp"><span>Registration</span></a></li>
          <li><a href="graph.jsp"><span>Graph</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="img/u2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="img/u1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="img/u3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

<br></br>
<center><div class="article">
          <h2><span>User</span> Login</h2>
          <div class="clr"></div>
          <form action="loginaction.jsp" method="get" id="sendemail">
            <ol>
              <li>
                  <input id="name" type="text" name="uname" placeholder="Enter your User Name" class="text" required=""/>
              </li><br>
              <li>
                  <input id="email" type="password" name="pass" placeholder="Password" class="text" required=""/>
              </li>
                  <input type="hidden" value="1" name="status" />
              <li>
                <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                <div class="clr"></div>
              </li><br></br><br></br><br></br><br></br><br></br>
            </ol>
          </form>
        </div>
</center>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
