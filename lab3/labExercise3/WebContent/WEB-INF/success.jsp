<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success Page</title>
</head>
<body>
    <h2>Success! User Information:</h2>
    
    <ul>
        <li><strong>First Name:</strong> ${user.fname}</li>
        <li><strong>Last Name:</strong> ${user.lname}</li>
        <li><strong>Course:</strong> ${user.course}</li>
        <li><strong>Gender:</strong> ${user.gender}</li>
        <li><strong>Languages:</strong> ${user.languages}</li>
        <li><strong>Transportation:</strong> ${user.transportation}</li>
        <li><strong>Phone:</strong> ${user.phone}</li>
        <li><strong>Address:</strong> ${user.address}</li>
        <li><strong>Email:</strong> ${user.email}</li>
    </ul>
</body>
</html>
