<%-- 
    Document   : index
    Created on : Dec 15, 2016, 11:42:00 AM
    Author     : ramekosit
--%>

<%@page import="za.co.trudon.tmt.dal.User"%>
<%@page import="za.co.trudon.tmt.data.type.response.Resource"%>
<%@page import="za.co.trudon.tmt.data.type.response.LoggedInUser"%>
<%@page import="za.co.trudon.tmt.data.type.request.LoginData"%>
<!DOCTYPE html>
<%
    //Login Redirect
    LoginData loginData = (LoginData)session.getAttribute("loginData");
    LoggedInUser loggedInUser = new LoggedInUser();
    if(loginData==null || !loginData.getSuccess()){
        response.sendRedirect("tmt/auth");
    }else{
        User userDetails = loginData.getUser();
        loggedInUser.populateUserDetails(userDetails);
        
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1></h1>
    </body>
</html>
