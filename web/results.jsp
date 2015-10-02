
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
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
 
    %>    
        
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%=totalh%></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%=rate%></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><% if (totalh >40){
                        regularhours=40;
                        overtime=totalh-regularhours;}
                           else {overtime=0;}
                    %></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td>
                        <% if (totalh >40){overrate= rate*1.5;}
                             else {overrate=0.00;}
                    %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%
                        if (totalh >40) {regularhours=40;
                        regpay=regularhours*rate;
                        overpay=overtime*overrate;
                        gross=regpay+overpay;}
                        else {gross=totalh*rate;}
                    %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%=prededuct%></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%
                         prep=gross-prededuct;
                    %></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%
                          if (gross <500) {taxablep=gross-prededuct;
                          tax= taxablep*0.18;}
                          else {taxablep=gross-prededuct;
                          tax= taxablep* 0.22;}
                    %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%
                          postp= taxablep-tax;
                    %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%=postdeduct%></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><% net=postp-postdeduct; %></td>
                </tr>
            </tbody>

        </table>
    </body>
</html>
