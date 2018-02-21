<%-- 
    Document   : index.jsp
    Created on : Feb 11, 2018, 12:54:33 AM
    Author     : Connor Reilly & Nick Mares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.form.ZipCode.*" %>

<jsp:useBean id="form" class="com.form.ZipCode" scope="request">
    </jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Data</title>
    </head>
    <body> 
        <form name="myform" action="validateForm.jsp" method="POST">
            <table border="0" cellpadding="1">
                <tbody>
                    <tr>
                        <td>Customer Name: </td>
                        <td><input type=text name="customerName" value="" required placeholder="Fullname" pattern=".{4,50}"
                        	title="Invalid name, Please enter your Full Name." /></td>
                    </tr>
                    <tr>
                        <td>Social Security Number: </td>
                        <td><input name="socialSecurityNumber" required placeholder="xxx-xx-xxxx" pattern="^\d{3}-\d{2}-\d{4}$"
                        		title="xxx-xx-xxxx"/></td>
                    </tr>
                    <tr>
                        <td>Email Address: </td>
                        <td><input type="email" name="emailAddress" value="" placeholder="username@email.com" pattern=".{7,}"
                        		title="Please enter valid email address."/></td>
                    </tr>
                    <tr>
                        <td>Street Address: </td>
                        <td><input type="text" name="streetAddress" placeholder="123 youraddress road" value="" pattern=".{4,50}"
                        	title="Invalid Address, Please try again." /></td>
                    </tr>
                    <tr>
                        <td>City: </td>
                        <td><input type="text" name="city" value="" placeholder="yourcityname" pattern=".{3,50}"
                        	title="Invalid City, Please try again." /></td>
                    </tr>
                    <tr>
                        <td>State: </td>
                        <td><select name="state">
                                <option value="AL">Alabama</option>
                                <option value="AK">Alaska</option>
                                <option value="AZ">Arizona</option>
                                <option value="AR">Arkansas</option>
                                <option value="CA">California</option>
                                <option value="CO">Colorado</option>
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="DC">District Of Columbia</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="HI">Hawaii</option>
                                <option value="ID">Idaho</option>
                                <option value="IL">Illinois</option>
                                <option value="IN">Indiana</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="MT">Montana</option>
                                <option value="NE">Nebraska</option>
                                <option value="NV">Nevada</option>
                                <option value="NH">New Hampshire</option>
                                <option value="NJ">New Jersey</option>
                                <option value="NM">New Mexico</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="ND">North Dakota</option>
                                <option value="OH">Ohio</option>
                                <option value="OK">Oklahoma</option>
                                <option value="OR">Oregon</option>
                                <option value="PA">Pennsylvania</option>
                                <option value="RI">Rhode Island</option>
                                <option value="SC">South Carolina</option>
                                <option value="SD">South Dakota</option>
                                <option value="TN">Tennessee</option>
                                <option value="TX">Texas</option>
                                <option value="UT">Utah</option>
                                <option value="VT">Vermont</option>
                                <option value="VA">Virginia</option>
                                <option value="WA">Washington</option>
                                <option value="WV">West Virginia</option>
                                <option value="WI">Wisconsin</option>
                                <option value="WY">Wyoming</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Zip Code: </td>
                        <td><input type="text" name="zipCode" required placeholder="xxxxx-xxxx" pattern="^\d{5}-\d{4}$"  value=""
                                   title="xxxxx-xxxx"/></td> 
                    </tr>
                </tbody>
               
            </table>
            <br>
            
          <input type="reset" value="Clear" name="clear" />
          <input type="submit" value="Submit" name="submit" />
          
        </form>  
    </body>
</html>