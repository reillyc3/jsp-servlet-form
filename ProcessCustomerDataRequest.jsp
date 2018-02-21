<%-- 
    Document   : ProcessCustomerDataRequest.jsp
    Created on : Feb 11, 2018, 2:30:35 AM
    Author     : Connor Reilly & Nick Mares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Data</title>
    </head>
    <body>
        
         <table border="0" cellpadding="1">
             
                <tbody>
                    <tr>
                        <td>Customer Name</td>
                        <td><%= session.getAttribute ("thecustomer") %></td>
                    </tr>
                    <tr>
                        <td>Social Security Number</td>
                        <td><%= session.getAttribute ("ss") %></td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td><%= session.getAttribute ("email") %></td>
                    </tr>
                    <tr>
                        <td>Street Address</td>
                        <td><%= session.getAttribute ("address") %></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><%= session.getAttribute ("city") %></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td><%= session.getAttribute ("state") %></td>
                    </tr>
                    <tr>
                        <td>Zip Code</td>
                        <td>
                            <%= session.getAttribute ("zipcode") %></td>
                    </tr>
                </tbody>
            </table>
                   
                
                    <button onclick="myLocation()">Want your exact location? Press me!</button>
                    <p id="whereAmI"></p>
               
                    <script>
                        var x = document.getElementById("whereAmI");
                        
                        function myLocation(){
                            if(navigator.geolocation){
                                navigator.geolocation.getCurrentPosition(hereIAm);
                            } else {
                                x.innerHTML = "Geolocation is not currently supported by this browser.";
                            }
                        }
                        
                        function hereIAm(position){
                            x.innerHTML = "Latitude: " + position.coords.latitude +
                                    "<br>Longitude: " + position.coords.longitude;
                            }
                    </script>
    </body>
</html>