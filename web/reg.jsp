<%@ page import="SubZeroCoinProj.TurbomeGAco" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Vector" %>
<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 04.06.2014
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div class="coinImage">
        </div>
        <a href="collection.html" style="margin-left:50px; display:none;">Collection</a>
    </div>
    <div class="rsidebar">
        <div class="authform">
            <form method="get" action="register.jsp(или хуй его знает какое там расширение)">
                <input type="text" name="login" id="login" value="login"><br>
                <input type="password" name="pass" id="pass" value="password"><br>
                <input type="submit" value="Sigh UP" id="submit">
            </form>
        </div>
    </div>
    <div class="footer">
        <h3>© Copyright by Dima G, Yaryk V, Vlad L</h3>
    </div>
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
