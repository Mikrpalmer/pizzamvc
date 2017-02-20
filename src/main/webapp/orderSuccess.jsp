<%-- 
    Document   : order
    Created on : Feb 7, 2017, 3:13:05 PM
    Author     : John Phillips
--%>

<%@page import="pizzamvc.PizzaOrder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Michael's Pizza Order</title>
        <link rel="stylesheet" href="mystyle.css">
    </head>
    <body>
        <h1>Thank you for your order!</h1>
        <h2>Order details:</h2>
        <p>Email = ${myOrder.email}</p>
        <p>Size = ${myOrder.size}</p>
        <p>Crust = ${myOrder.crust}</p>
        <p>Toppings: 
            <%
                // Checkboxes from a form may or may not be checked. We can use the
                // following code to get an array of the values that are checked.
                PizzaOrder po = (PizzaOrder) request.getAttribute("myOrder");
                double Cost = 0.0;
                if (po.getToppings() != null && po.getToppings().length != 0) {
                    for (String myTopping : po.getToppings()) {
                        out.println(myTopping + ", ");
                        Cost = Cost + po.getToppings().length * .75;
                    }
                } else {
                    out.println(" no toppings were requested");
                }
                String crust = request.getParameter("crust");
                String size = request.getParameter("size");
                if (size.equalsIgnoreCase("small")) {
                    Cost = Cost + 5.00;
                } else if (size.equalsIgnoreCase("medium")) {
                    Cost = Cost + 6.00;
                } else if (size.equalsIgnoreCase("large")) {
                    Cost = Cost + 7.00;
                }
                if (crust.equalsIgnoreCase("Pan")) {
                    Cost = Cost + 1.00;
                } else if (crust.equalsIgnoreCase("Hand-Tossed")) {
                    Cost = Cost + .50;
                } else if (crust.equalsIgnoreCase("Thin")) {
                    Cost = Cost;
                }
                out.println("<p>Your Final Cost is: " + Cost + "</p>");
            %>
        </p>
        <p><a href='home.html'>Return to home page</a></p>
    </body>
</html>
