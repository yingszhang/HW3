<%-- 
    Document   : index
    Created on : 2015-10-1, 20:00:46
    Author     : Shuo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index</title>
        <link rel="stylesheet" type="text/css" href="./style.css">
    </head>
    
    <body>
        <div>
        <h1>Simple Salary Calculator</h1>
        <form name="Simple salary form" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked: </td>
                        <td><input type="text" name="hours" value="" size="50"> </td>
                    </tr>
                    <tr>
                        <td>Hourly Pay: </td>
                        <td><input type="text" name="pay" value="" size="50"> </td>
                    </tr>
                    
                   <tr>
                        <td>Pre-tax Deduction: </td>
                        <td><input type="text" name="pre" value="" size="50"> </td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduction: </td>
                        <td><input type="text" name="post" value="" size="50"> </td>
                    </tr>
                </tbody>   
            </table>
        </div>
        
        <div id="button">
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
        </div>
       
        </form>
       
        
    </body>
</html>
