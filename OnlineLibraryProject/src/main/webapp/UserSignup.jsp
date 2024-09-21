<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>

<style>

    body
    {
      display:flex;
      justify-content:center;
      align-items:center;
      padding-top:10%;
    }
    
    legend
    {
      text-align:center;
    }

</style>

</head>
<body>
     <form action="UserRegistration" name="user" onsubmit="return empty()">
          <fieldset>
          <legend>USER-REGISTRATION</legend>
                 <table>
 
     <tr> <th>USERID:</th> <td><input type="text" name="ID" id="Id"  autofocus="on" autocomplete="off" class="input"></td> </tr>
     <tr> <th>NAME:</th>  <td><input type="text" name="Name" id="name"  autofocus="on" autocomplete="off" class="input"></td> </tr>
     <tr> <th>PASSWORD:</th>  <td><input type="password" id="password"  name="password"></td> </tr>
     <tr> <th>PH.NO:</th>  <td><input type="number" name="phno" id="Phno"  MIN="6000000000" MAX="9999999999" class="input"></td> </tr>
     <tr> <th>EMAIL-ID:</th>  <td> <input type="email" name="mail" id="email" class="input"></td> </tr>
     <tr> <th>ADDRESS:</th>  <td><textarea name="add" id="Add"  rows="4" cols="50" class="input"></textarea></td> </tr>
     <tr> <th>DESIGNATION:</th>  <td> <input type="text" name="des" id="Des"  class="input"></td> </tr>
 
              </table>
          <center> <input type="submit" class="button"> </center> 
          </fieldset>
     </form>
     
     <script>
function empty() {
    var A = document.getElementById('Id').value;
    var B = document.getElementById('name').value;
    var C = document.getElementById('Phno').value;
    var D = document.getElementById('password').value;
    var E = document.getElementById('email').value;
    var F = document.getElementById('Add').value;
    var G = document.getElementById('Des').value;

    if (A == "" || A == null) {      
        window.alert("Enter UserID");
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
        window.alert("Enter your Password");
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