<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body background="<%=request.getContextPath()%>/resources/images/bg2.jpg">
         <form commandName="employee">
    
        <%@include file="header.jsp" %>
       
        <h3 style="color:Dark blue" align="center">${employee.name} successfully Login</h3>
    <center><a href="/PMS-1.0/test"><font style="color:Dark blue" size="5">Add Skill</font></a><br></center>
    <center><a href="/PMS-1.0/employeelist"><font style="color:Dark blue" size="5">Employee List</font></a></center>


</form>
    </body>


</html>
