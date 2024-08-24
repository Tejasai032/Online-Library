<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STAFF PAGE</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

   <style>
   
             iframe
                   {
	                 height:400px;
	                 width:600px;
	                 border:none;
	                 background-color:rgba(236, 240, 241 ,0.5);
	                 border-radius:8px;
	                 position:relative;
	                 left:20%;
                   }
                   
            body
                   {
	                  background-image:url('https://images.pexels.com/photos/1750566/pexels-photo-1750566.jpeg');
                      background-repeat:no-repeat;
                      background-size:cover;

                   }
                   
           
                     
              input
                      {
	            height:45px;
	            width:250px;
	            border:2px solid white;
	            background-color:rgba(28, 40, 51 ,0.3);
	            border-radius:7px;
	            padding:15px;
	            color:white;
	            font-size:18px;
                       }
              
              span
              {
                 font-size:25px;
                 color:white;
              }
              
              #details
              {
                 position:absolute;
                 top:30%;
                 left:5%
              }
              
              #add
              {
                height:45px;
	            width:250px;
	            border:2px solid white;
	            background-color:rgba(28, 40, 51 ,0.3);
	            border-radius:7px;
	            color:white;
	            font-size:18px;
	            cursor: pointer; 
	            position:absolute;
	            top:45%;
	            left:12%;
              }
              
              #show
              {
                height:45px;
	            width:250px;
	            border:2px solid white;
	            background-color:rgba(28, 40, 51 ,0.3);
	            border-radius:7px;
	            color:white;
	            font-size:18px;
	            cursor: pointer; 
	            position:absolute;
	            top:70%;
	            left:30%;
              }
              
             
              
  footer
 {
 display:flex;
 justify-content:space-around;
  margin-top:50px;
  padding:15px;
   height:150px;
   font-size:20px;
   background-color:rgba(236, 240, 241 ,0.5);
   color:black;
   border-radius:7px;
   text-align:center;
    font-family:Poppins,sans-serif;
 }
 
 .address
 {
   margin-right:50px;
   margin-left:50px;
   color:black;
 }
 
 #email
 {
   margin-left:50px;
 }
 
 #sings
 {
   color:white;
 }
 
 #heading
 {
   color:white;
   text-align:center;
   font-size:38px;
 }
   
   </style>

</head>
<body>

<h1> <a href="HomePage.html" id="sings"> <i class="fa-solid fa-book-open-reader"> LIBRARY </i> </a> </h1> 

 <h1 id="heading">Welcome, <%= request.getAttribute("staffname") != null ? request.getAttribute("staffname") : "Guest" %></h1>
    
    <div class="card2">
        
       <form action="ShowBookDetails" target="frame" id="details">
       
     <span> BOOK-ID:</span><input type="search" name="bookID"> <br><br>
  
    <button type="submit" id="show" onclick="openPopup()"> Show Book's Details </button> <br>
    
       </form>
       
       <form action="AddBookDetails.jsp" target="frame">
               <button id="add"> ADD A NEW BOOK </button>
       </form>

    </div>
    <center>
    <div class="show" id="view">
    
        <iframe src=""  name="frame">
            
        </iframe>
    
    </div>
    </center>

  
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
               <h3>Contact :</h3>
               <p> +91 7993280135  </p> 
               
         </div>
         
         <div id="email">
              <h3> Email : </h3>  <p> tejalibrary303@gmail.com </p>
               
         </div>
  </footer>
  
</body>
</html>