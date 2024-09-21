<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> AdminLogin </title>

<link rel="stylesheet" href="Admin.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body>

<h1 id="sings"> <a href="HomePage.html"> <i class="fa-solid fa-book-open-reader"> LIBRARY </i> </a> </h1> 

<form action="AdminLogin" name="admin" onsubmit="return empty()" method="POST">
<fieldset>
<legend>Admin Login</legend>
<table>
<tr> <td><input type="text" id="user" placeholder="UserName" class="input" name="user"></td> </tr>
<tr> <td><input type="password" id="password" placeholder="Password" class="input" name="password"></td> </tr>
</table>
<center> <input type="submit" value="Login" class="submit"> </center>  
<div class="new">

   <a href="SignIn.jsp"> SignIn </a>
    <a href="#"> Forget Password </a>

</div>
</fieldset>
</form>

<footer>
          <div class="social">
  
           <h3><i class="fa-brands fa-instagram"> Instagram</i></h3>
           <h3><i class="fa-brands fa-facebook"> Facebook</i></h3>
           <h3><i class="fa-brands fa-twitter"> Twitter</i></h3>
  
         </div>
         
         <div class="info">
             <h3>Address: </h3> <p> Teja Library ,Road No:1, <br> KPHB Colony,Kukatpally,Hyderabad <br> Pincode:500072</p>
         </div>
         
         <div>
               <h3>contact :</h3>
               <p> +91 7993280135  </p> 
               
         </div>
         
         <div id="email">
              <h3> Email : </h3>  <p> tejalibrary303@gmail.com </p>
               
         </div>
  </footer>  

<script>
function empty() {
    var A = document.getElementById('user').value;
    var B = document.getElementById('password').value;

    if (A == "" || A == null) {      
        window.alert("Enter your Name");
        return false;
    }

    if (B == "" || B == null) {      
        window.alert("Enter your password");
        return false;
    }

    return true;
}
</script>

</body>
</html>