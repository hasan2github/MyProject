<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar" %>    


<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Calculate</title>

    </head>

    <body>

        <h1>Calculate</h1>
        <p>${hello}</p>
        <%

            String date1 = request.getParameter("");

            String date2 = request.getParameter("seconddate");

//            SimpleDateFormat dateformat = new SimpleDateFormat("E    yyyy.MM.dd"); //SDF to display output with day of week
//
//            Date displaydate1 = new Date(date1); //Turning the inputed date from string
//            //to date format to be used for the output
//            Date displaydate2 = new Date(date2);
//
//            int differenceInDays = (int) ((displaydate2.getTime() - displaydate1.getTime()) / (1000 * 60 * 60 * 24));//common method to calculate number of days
//
//            out.println("Between " + dateformat.format(displaydate1) + " and " + dateformat.format(displaydate2) + " there are " + differenceInDays + " days");

        %>
    </body>
    <c:forEach var="pd" items="${listProject}">
        <tr>
            <td><a href="displayProjectDetails">${pd.project_Name}</td>
            <td>
        <c:set value="${pd.pstart_Date.time/(1000*60*60*24)}" var="datediff"/>
        <c:set value="${pd.pEnd_Date.time/(1000*60*60*24)}" var="datediff1" />

        <c:set value="${ datediff1-datediff}" var="datediff2"/>
        <fmt:parseNumber var="j" integerOnly="true" type="number" value="${datediff2}" />  
        Expected time:${j}
        </br>

</html>

