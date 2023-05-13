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
<%@ page import="javax.servlet.*" %>
<html>
<head>
    <title>Home</title>
</head>
<body>

<%
        data stud_data = new data();
        student stud = new student();
        //Имя
        String fname = request.getParameter("fname");
        stud.setFname(fname);
        //Фамилия
        String lname = request.getParameter("lname");
        stud.setLname(lname);
        // Отчество
        String sname = request.getParameter("sname");
        stud.setSname(sname);

        String special = request.getParameter("special");
        stud.setSpecial(special);

        String mark = request.getParameter("mark");
        stud.setMark(mark);



%>


<h1> Set data: </h1>
<p>
    <p>&fname - first name</p>
    <p>&lname - last name</p>
    <p>&sname - second name</p>
    <p>&special - subject name</p>
    <p>&mark - score on subject exam</p>
</p>

<h3>Send data:</h3>
<h4>[ Example ] : [ ?fname=andrey&lname=zubarev&sname=andreevich&special=tp&mark=99 ]</h4>


<%

   // int id = (int) (Math.random() * (10 * 100 - 11))  * 1000;
    String key = fname +"_"+ sname +"_"+ lname; //+"_"+ id ; // уникальный ключ
    // новый файл для записи информации
    String file = new path().get_path() + key + ".bin";
    // Сессионная переменная для хранения ключа
    HttpSession ses = request.getSession();
    ses.setAttribute("key", key);

    try {
            File f = new File(file);
            // Убедитесь, что он не существует
            if (f.createNewFile()){
                    System.out.println("File created");
                    // Запись информации в файл
            } else {
                System.out.println("File already exists");

            }

    }  catch (Exception e) { System.err.println(e); }
    stud_data.writeFile(file, stud);

            data chek = new data();
            chek.readFile(file);
            System.out.println(file);
            if (chek.getSpecial() == special){
                int mrk = Integer.parseInt(chek.getMark());
                if (61 <= mrk){
                    String path = request.getContextPath() + "/err";
                    response.sendRedirect(path);
                }
            }



%>

<h2>--------------------------------------</h2>
<h3>[ key ]  <%= key %></h3>

</body>
</html>
