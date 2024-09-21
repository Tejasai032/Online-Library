<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StaffSignup</title>
<style>

   body
   {
     background-color:rgba(236, 240, 241 ,0.5);
     text-align:center;
   }
   
   .input
   {
      width:300px;
      font-size:20px;
      border:none;
      background-color:rgba(28, 40, 51 ,0.3);
      color:white;
      font-family:Poppins,sans-serif;
      
   }
   th
   {
     font-size:20px;
     font-family:Poppins,sans-serif;
   }
   
   .button
   {
     height:50px;
	width:300px;
	font-size:18px;
	border-radius:7px;
	cursor: pointer;
	position:relative;
	left:20px;
	margin-top:5px;
	font-family:Poppins,sans-serif;
   }
   
   table
   {
     position:relative;
     left:480px;
   }
   
   a
   {
    text-decoration:none;
   }

</style>

</head>
<body>

<h1 id="sings"> <a href="HomePage.html"> <i class="fa-solid fa-book-open-reader"> LIBRARY </i> </a> </h1> 

<h2> Enter Your details </h2>

<form action="StaffRegistraion" method="POST" name="staff" onsubmit="return empty()">

 <table>
 
     <tr> <th>STAFFID:</th> <td><input type="text" name="ID" id="Id"  autofocus="on" autocomplete="off" class="input"></td> </tr>
     <tr> <th>NAME:</th>  <td><input type="text" name="Name" id="name"  autofocus="on" autocomplete="off" class="input"></td> </tr>
     <tr> <th>PH.NO:</th>  <td><input type="number" name="phno" id="Phno"  MIN="6000000000" MAX="9999999999" class="input"></td> </tr>
     <tr> <th>DOB:</th>  <td><input type="date" name="dob" id="DOB"  class="input"></td> </tr>
     <tr> <th>EMAIL-ID:</th>  <td> <input type="email" name="mail" id="email" class="input"></td> </tr>
     <tr> <th>ADDRESS:</th>  <td><textarea name="add" id="Add"  rows="4" cols="50" class="input"></textarea></td> </tr>
     <tr> <th>DESIGNATION:</th>  <td> <input type="text" name="des" id="Des"  class="input"></td> </tr>
 
 </table>
           <input type="submit" class="button"> 
</form>

<script>
function empty() {
    var A = document.getElementById('Id').value;
    var B = document.getElementById('name').value;
    var C = document.getElementById('Phno').value;
    var D = document.getElementById('DOB').value;
    var E = document.getElementById('email').value;
    var F = document.getElementById('Add').value;
    var G = document.getElementById('Des').value;

    if (A == "" || A == null) {      
        window.alert("Enter SatffID");
        return false;
    }

    if (B == "" || B == null) {      
        window.alert("Enter your Name");
        return false;
    }
    
    if (C == "" || C == null) {      
        window.alert("Enter your Phno");
        return false;
    }
    
    if (D == "" || D == null) {      
        window.alert("Enter your DOB");
        return false;
    }
    
    if (E == "" || E == null) {      
        window.alert("Enter your Email");
        return false;
    }
    
    if (F == "" || F == null) {      
        window.alert("Enter your Address");
        return false;
    }
    
    if (G == "" || G == null) {      
        window.alert("Enter your Designation");
        return false;
    }
    
    

    return true;
}
</script>

</body>
</html>