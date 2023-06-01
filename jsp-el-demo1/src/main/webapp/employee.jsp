<%@ page import="model.Employee"%>
<%@ page import="model.Address"%>

<html>
<head>
    <title>Employee Info</title>
</head>
<body>
<%
    Employee emp = (Employee) request.getAttribute("emp");

    out.println("First Name: "+emp.getFirstName());
    out.println("<br/>");
    out.println("Last Name: "+emp.getLastName());
    out.println("<br/>");
    out.println("Street :"+emp.getAddress().getStreet());
    out.println("<br/>");
    out.println("city :"+emp.getAddress().getCity());
    out.println("<br/>");
    out.println("State :"+emp.getAddress().getState());
    out.println("<br/>");

%>
<p>Employee Details :</p>
<p>First Name - <%= emp.getFirstName()%></p>
<p>Last Name - <%= emp.getLastName()%></p>
<p>Address :</p>
<p>Street :<%= emp.getAddress().getStreet()%></p>
<p>City :<%= emp.getAddress().getCity()%></p>
<p>State :<%= emp.getAddress().getState()%></p>
<hr/>

<p>Employee Details :</p>
<p>First Name - ${emp.firstName}</p>
<p>Last Name - ${emp.lastName}</p>
<p>Address : </p>
<p>Street : ${emp.address.street}</p>
<p>City : ${emp.address.city}</p>
<p>State : ${emp.address.state}</p>

</body>
</html>