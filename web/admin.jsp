<%@ page import="SubZeroCoinProj.TurbomeGAco" %>
<%@ page import="CoinDataBase.Database" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Vector" %>
<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 04.06.2014
  Time: 0:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=windows-1251">
    <link rel="stylesheet" href="style.css" type="text/css" media="screen, projection">
</head>
<body>
<div class="main">
    <div class="header">
        <div>
            <h1 class="logo"><span class="lit">C</span>oin <span class="lit">R</span>ecognizer</h1>
        </div>
        <div style="position:relative; left:950px; bottom:30px; color:white; font-weight:bold;" onMouseOver="style.cursor='pointer'" OnClick="window.location.href='index.jsp'">HOME</div>
    </div>
    <div class="lsidebar">
        <form method="post" action="">
            <input type="file" style="margin-left:50px; margin-top:20px">
            <div class="coinImage">
            </div>
    </div>
    <div class="rsidebar">
        <div class="authform">
            <%=Database.Requests()%>
            <input type="text" name="name" id="login" value="name"><br>
            <input type="text" name="nominal" id="login" value="nominal"><br>
            <input type="text" name="author" id="login" value="author"><br>
            <input type="text" name="country" id="login" value="country"><br>
            <input type="text" name="course" id="login" value="course"><br>
            <span style=" font: 29pt Tw Cen MT Condensed; margin-left:20px;">Special</span> <button id="submit" style="width:40px; height:40px;" onClick="">+</button> <button id="submit" style="width:40px; height:40px;" onClick="">-</button><br>
            <input type="submit" value="ADD" id="submit">
            <input type="reset" value="RESET" id="submit">
            </form>
        </div>

    </div>

</div>
<div class="footer">
    <h3>© Copyright by Dima G, Yaryk V, Vlad L</h3>
</div>
Today <%=  new Date() %> oclock.
<br>
THis says you <%=TurbomeGAco.Fear()%>
<%!
    Date theDate = new Date();
    Date getDate()
    {
        System.out.println( "In getDate() method" );
        return theDate;
    }
%>
<hr>
<%= getDate() %>
</body>
</html>