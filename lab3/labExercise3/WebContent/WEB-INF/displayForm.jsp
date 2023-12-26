<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
        body {
            background-color: #ADD8E6;
            text-align: left;
            padding-left: 50px;
        }
        h2{
        	border-bottom: 2px solid #fff; 
            padding-bottom: 10px;
            text-align: center;
            padding-bottom: 10px;
        }
       
    </style>
</head>
<body>
	<form name=RegistrationForm method="get" action="RegistrationServlet"> 
        <h2>Registration Form</h2>
       	First Name: <input type="text" name="fname" value="First Name"/> 
        Last Name: <input type="text" name="lname" value="Last Name"/> <br><br>
		
        <label for="course">Course:</label>
        <select name="course">
            <option>course</option>
            <option>Software Engineering</option>
            <option>Data Engineering</option>
            <option>Bionformatics</option>
            <option>Network and Security</option>
            <option>Graphics and multimedia</option>
        </select><br><br>
        
		<label>Gender:</label><br>
        <input type="radio" name="gender" >
        <label for="male">Male</label>
        <input type="radio" name="gender" >
        <label for="female">Female</label><br><br>
        
		<label>Languages:</label><br>
        <input type="checkbox" id="english" name="languages" >
        <label for="english">English</label><br>
        <input type="checkbox" id="malay" name="languages" >
        <label for="spanish">Malay</label><br>
        <input type="checkbox" id="mandarin" name="languages" >
        <label for="french">Mandarin</label><br><br>

 		<label for="transportation">Transportation:</label><br>
        <select id="transportation" name="transportation" multiple>
        	<option value="bus">Bus</option>
            <option value="car">Car</option>
            <option value="motorCycle">MotorCycle</option>
            <option value="bicycle">Bicycle</option>
            <option value="Walking">Walking</option>
        </select><br><br>
        
        Phone: <input type="text" name="phone" value="phone no"/><br><br> 
        
 		<label for="address">Current Address:</label><br><br> 
        <textarea name="address" rows="6" cols="70"></textarea><br><br>
        
		<label for="email">Email:</label>
        <input type="email" name="email" value="Enter Email" required><br><br>
        <br><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>