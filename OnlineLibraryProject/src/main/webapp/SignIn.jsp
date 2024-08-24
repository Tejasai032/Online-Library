<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Registration</title>

<link rel="stylesheet" href="Signin.css">

</head>
<body>
   
   <h1 id="sings"> <a href="HomePage.html"> <i class="fa-solid fa-book-open-reader"> LIBRARY </i> </a> </h1> 


     <form action="AdminRegistration">
     
        <fieldset>
        <legend>Registration Form</legend>
          <table>
          <tr> <th>AdminID:</th> <td><input type="text" name="ID"  autofocus="on" autocomplete="off" class="input"></td> </tr>
          <tr> <th>First Name:</th> <td><input type="text" name="FN"  autofocus="on" autocomplete="off" class="input"></td> </tr>
          <tr> <th>Last Name:</th>  <td><input type="text" name="LN"  autofocus="on" autocomplete="off" class="input"></td> </tr>
          <tr> <th>Gender:</th>  <td>  
                    <input type="radio" name="Gender" value="m">M
                    <input type="radio" name="Gender" value="f">F </td> </tr>
          <tr> <th>DOB:</th>  <td><input type="date" name="dob" class="input"></td> </tr>
          <tr> <th>Ph.No:</th>  <td><input type="number" name="phno"  MIN="6000000000" MAX="9999999999" class="input"></td> </tr>
          <tr> <th>Address:</th>  <td><textarea name="add" rows="4" cols="50" ></textarea></td> </tr>
          <tr> <th>Email:</th>  <td> <input type="email" name="mail"  class="input"></td> </tr>
          <tr> <th>Password:</th>  <td> <input type="Password" name="pswd"  class="input"></td> </tr>
         
          
          </table>
            <center>  <input type="submit" class="button"> </center>
            
            
        
        </fieldset>
     
     </form>
   
   
</body>
</html>