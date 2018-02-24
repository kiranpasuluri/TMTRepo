<%-- 
    Document   : top_navigation
    Created on : 28 Aug 2017, 10:08:26 AM
    Author     : MaremaM
--%>
<%@page import="za.co.trudon.tmt.data.type.request.LoginData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                 <%
              LoginData loginData = (LoginData)session.getAttribute("loginData");
              String fullUserName = loginData.getUser().getFullName();
              fullUserName = fullUserName.substring(fullUserName.indexOf(':')+1);
              
              String init = (String)request.getAttribute("init");
              
          %>
 <!--    top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <img src="../images/activiti_logo.png" style="float:left;"/>
              <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="../images/user.png" alt=""><span user="nameHolder"><%=fullUserName%></span>
                    <span class=" fa fa-angle-down" style="margin-left: -1px;"></span>
                  </a>
                   <ul class="dropdown-menu dropdown-usermenu pull-right">
                      <li><a id="btnLogoff" href="#"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                      <li><a id="profileButton"> Profile</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
    </body>
</html>
