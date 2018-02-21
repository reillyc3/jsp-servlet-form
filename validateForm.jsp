<%-- 
    Document   : validateForm.jsp
    Created on : Feb 11, 2018, 2:30:35 AM
    Author     : Connor Reilly & Nick Mares 
--%>


        <%
            String name = request.getParameter("customerName");
            session.setAttribute("thecustomer", name);
            String ssNumber = request.getParameter("socialSecurityNumber");
            session.setAttribute("ss", ssNumber);
            String emailAddress = request.getParameter("emailAddress");
            session.setAttribute("email", emailAddress);
            String streetAddress = request.getParameter("streetAddress");
            session.setAttribute("address", streetAddress);
            String city = request.getParameter("city");
            session.setAttribute("city", city);
            String state = request.getParameter("state");
            session.setAttribute("state", state);
            String zipCode = request.getParameter("zipCode");
            session.setAttribute("zipcode", zipCode);
            %>
<HTML>
<BODY>
    
<A HREF="ProcessCustomerDataRequest.jsp">Continue</A>
</BODY>
</HTML>