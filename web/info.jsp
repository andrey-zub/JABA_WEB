<%--
  Created by IntelliJ IDEA.
  User: Андрей
  Date: 08.05.2023
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.File" %>
<%@ page import="logic.*" %>
<html>
<head>
    <title>info</title>
</head>
<body>
<h1> STUDENT-INFO: </h1>

<%
    HttpSession ses = request.getSession();
    String key = (String) ses.getAttribute("key");
    String param = request.getParameter("key");

    if (param != null) { key = param; }


    String file = new path().get_path() + key + ".bin";
    data stud_data = new data();
    System.out.println(file);
    stud_data.readFile(file);
%>


<h3>[ first name ] <%= stud_data.getFname() %></h3>
<h3>[ second name ] <%= stud_data.getSname() %></h3>
<h3>[ last name ] <%= stud_data.getLname() %></h3>
<h3>[ subject name ] <%= stud_data.getSpecial() %></h3>
<h3>[ score on subject exam ] <%= stud_data.getMark() %></h3>

<h5>------------------------------------------------------</h5>
<p>Show data:</p>
<p>[ Example ] : [ ?key=andrey_andreevich_zubarev  ]</p>
</body>
</html>
