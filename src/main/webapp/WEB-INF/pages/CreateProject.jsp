<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New/Edit Contact</title>
        <style>
            .error {
                color: red;
                font-weight: bold;
            }
        </style>
        

    </head>
    <body
        background="<%=request.getContextPath()%>/resources/images/bg2.jpg">
 <jsp:include page="header.jsp"/>

        <div align="center">
            <h1 style="color: orangered">Create Project</h1>
        <h3> <p style="color: orangered">${msg}</p></h3>
            <form:form action="cproject" method="post"
                       modelAttribute="pd" commandName="pd">
                <table>
                
                    <form:hidden path="project_id" />
                    <form:hidden path="manageremail" />
                    <tr>
                        <td>Project Name:</td>
                        <td><form:input type="text" path="project_Name" name="project_Name" required="true"/></td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td><form:textarea path="project_desc" rows="5" cols="5" name="project_Name"/></td>
                    </tr>
                    <tr>
                        <td>Project Start Date:</td>
                        <td><form:input path="pstart_Date" type="date" name="pstart_Date" required="true"/></td>
                    </tr>

                    <tr>
                        <td>Project End Date:</td>
                        <td><form:input path="pEnd_Date" type="date" id="endDate"
                                    name="endDate" required="true"/></td>
                    </tr> 

                    <tr>

                        <td><input type="submit" value="Create Project"></td>

                    </tr>
                </table>

                <table border="1" align="left">

                    <th style="color: red">Project Name</th>
                     <th style="color: red">Edit Action</th>
                      <th style="color: red">Delete Action</th>

                    <c:forEach var="pd" items="${listProject}">
                        <tr>

                            <td><a href="showtask?project_id=${pd.project_id}&mgrid=${mid}" style="color: Dark blue">${pd.project_Name}</a></td>
                            <td><a href="editproject?project_id=${pd.project_id}" style="color: Dark blue">Edit</a>
                            <td><a href="deleteproject?project_id=${pd.project_id}" style="color: Dark blue" onclick="return confirm('Are you sure you want to delete this Project?');">delete</a>
                        </tr>


                    </c:forEach>
                </table>

            </form:form>
        </div>
        <br>
    </div>
    <div align="right">
        <form:form action="managerpage"  modelAttribute="employee">
            
            <table>
                <tr>
                    <td>
                        <a href="managerpage?email=${employee.email}">Employee List</a>
            </table>
        </form:form>
    </div>

    <div align="right">
        <form:form action="backtomanagerDashboard" method="post" commandName="employee">

            <table>
                <tr>
                    <td>
                        <input type="submit" value="Back">

                    </td>
                </tr>


</table>
 
</form:form>
</div>

 
</body>

</html>
