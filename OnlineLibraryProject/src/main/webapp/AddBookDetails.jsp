<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
   

</style>

</head>
<body>
<h2> Enter new staff details </h2>

<form action="AddBook"  name="book" onsubmit="return empty()">

 <table>
 
     <tr> <th>BOOKID:</th> <td><input type="text" name="ID" id="Id"  autofocus="on" autocomplete="off" class="input"></td> </tr>
     <tr> <th>TITLE:</th>  <td><input type="text" name="TITLE" id="Title"  autofocus="on" autocomplete="off" class="input"></td> </tr>
     <tr> <th>ISBN:</th>  <td><input type="number" name="ISBN" id="Isbn"  MIN="60000000000000" MAX="99999999999999" class="input"></td> </tr>
     <tr> <th>GENER:</th>  <td><input type="text" name="GENER" id="Gener"  class="input"></td> </tr>
     <tr> <th>PUBLICATION YEAR:</th>  <td> <input type="number" name="YEAR" id="Year" class="input"></td> </tr>
     <tr> <th>AUTHOR ID:</th>  <td><input name="text" name="AUTHORID" id="Authorid" class="input"></input></td> </tr>
 
 </table>
           <input type="submit" class="button"> 
</form>

<script>
function empty() {
    var A = document.getElementById('Id').value;
    var B = document.getElementById('Title').value;
    var C = document.getElementById('Isbn').value;
    var D = document.getElementById('Gener').value;
    var E = document.getElementById('Year').value;
    var F = document.getElementById('Authorid').value;

    if (A == "" || A == null) {      
        window.alert("Enter BOOKID");
        return false;
    }

    if (B == "" || B == null) {      
        window.alert("Enter The Title");
        return false;
    }
    
    if (C == "" || C == null) {      
        window.alert("Enter ISBN");
        return false;
    }
    
    if (D == "" || D == null) {      
        window.alert("Enter The Gener");
        return false;
    }
    
    if (E == "" || E == null) {      
        window.alert("Enter Publication Year");
        return false;
    }
    
    if (F == "" || F == null) {      
        window.alert("Enter Author ID");
        return false;
    }
    

    return true;
}
</script>

</body>
</html>