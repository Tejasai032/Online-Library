<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AuthorPage</title>

<link rel="stylesheet" href="Authorpage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
  
    button
    {
        font-size:22px;
        font-weight: 800;
        background-color:rgba(236, 240, 241 ,0);
        border:none;
    }
    
    button:hover
    {
     border:2px,solid,black;
    }
    
    .show
   {
    display:none;
   }
   
   .open-popup
   {
    display:block;
   }
    
   iframe
{
	height:500px;
	width:700px;
	border:none;
	background-color:rgba(236, 240, 241 ,0.5);
	border-radius:8px;
}

.card2
{
    height:500px;
}
  
  </style>

</head>
<body>

<h1> <a href="HomePage.html" id="sings"> <i class="fa-solid fa-book-open-reader"> LIBRARY </i> </a> </h1> 

<h1>Welcome, <%= request.getAttribute("authorName") != null ? request.getAttribute("authorName") : "Guest" %></h1>

<div id="display">
    
    <div class="card2">
        <form action="AddStaff.jsp" target="frame">
      <h2> <button type="submit" onclick="openPopup()"> Add New Staff Members </button></h2>
        </form>
        
        <form action="Showstaff" target="frame">
      <h2> <button type="submit" onclick="openPopup()"> Show Staff Details </button></h2>
        </form>
        
      <form action="ShowBookDetails" target="frame">
    <h2><button type="submit" onclick="openPopup()"> Show Book's Details </button></h2>
    <input type="hidden" name="authorID" value="<%= request.getAttribute("authorID") != null ? request.getAttribute("authorID") : "Guest" %>">
    <input type="hidden" name="authorName" value="<%= request.getAttribute("authorName") != null ? request.getAttribute("authorName") : "Guest" %>">
</form>

    </div>
    
    <div class="show" id="view">
    
        <iframe src=""  name="frame">
            
        </iframe>
    
    </div>
    
</div>

<script>

        let view = document.getElementById("view");
        
        function  openPopup(){
       	 
   		 view.classList.add("open-popup");
   	 
   	 }

</script>

 <footer>
          <div class="social">
  
           <h3><i class="fa-brands fa-instagram"> Instagram</i></h3>
           <h3><i class="fa-brands fa-facebook"> Facebook</i></h3>
           <h3><i class="fa-brands fa-twitter"> Twitter</i></h3>
  
         </div>
         
         <div class="address">
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



</body>
</html>