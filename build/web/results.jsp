
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        <link rel="stylesheet" type="text/css" href="./style.css">
    </head>
    <body>
        <h1>Salary Info</h1>
    <%
        Integer totalh = Integer.parseInt(request.getParameter ("hours"));
        Double rate = Double.parseDouble(request.getParameter ("pay"));
        Double postdeduct = Double.parseDouble(request.getParameter ("post"));
        Double prededuct = Double.parseDouble(request.getParameter ("pre"));
        
        Integer regularhours;
        Integer overtime;
        Double overrate;
        Double regpay;
        Double overpay;
        Double gross;
        Double taxablep;
        Double prep;
        Double tax;
        Double postp;
        Double net;
        
        if (totalh >40){
                        regularhours=40;
                        overtime=totalh-regularhours;
                        overrate= rate*1.5;
                        regpay=regularhours*rate;
                        overpay=overtime*overrate;
                        gross=regpay+overpay;}
                           else {overtime=0;
                                 overrate=0.00;
                                 gross=totalh*rate;}
         if (gross <500) {taxablep=gross-prededuct;
                          tax= taxablep*0.18;}
                          else {taxablep=gross-prededuct;
                          tax= taxablep* 0.22;}
         prep=gross-prededuct;
         postp= taxablep-tax;
         net=postp-postdeduct;
 
    %>    
        
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td class="number"><%=totalh%></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td class="number"><%=rate%></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td class="number"><%=overtime%></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td class="number"><%=overrate%></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td class="number"><%= gross%></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td class="number"><%=prededuct%></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td class="number"><%= prep%></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td class="number"><%= tax%></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td class="number"><%= postp%></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td class="number"><%=postdeduct%></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td class="number"><%=net%></td>
                </tr> 
            </tbody>
        </table>
    <h4><a href="./index.jsp">Back </h4>
    </body>
</html>
