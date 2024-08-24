<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER PAGE</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>

    body
    {
	 background-image:url('https://images.pexels.com/photos/1750566/pexels-photo-1750566.jpeg');
     background-repeat:no-repeat;
     background-size:cover;
     background-attachment:fixed; 
    }

    #display
    {
	display:flex;
	justify-content:space-around;
	margin-top:100px;
    }
    
    button
    {
        font-size:28px;
        font-weight: 600;
        background-color:rgba(236, 240, 241 ,0);
        border:none;
        cursor:pointer;
    }
    
    button:hover
    {
     border:2px,solid,black;
    }
    
     iframe
   {
	height:500px;
	width:900px;
	border:none;
	background-color:rgba(236, 240, 241 ,0.5);
	border-radius:8px;
   }
   
   .card2
{
	height:500px;
	width:500px;
	background-color:rgba(236, 240, 241 ,0.5);
	border-radius:5px;
	font-family:Poppins,sans-serif;
	display:flex;
	flex-direction:column;
	justify-content:center;
	align-items: center;
}
    
   .show
   {
    display:none;
   }
   
   
   .open-popup
   {
    display:block;
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
              
        #show
        {
        
         margin-left:50px;
          
        }
        
         #sings
         {
          color:white;
          text-decoration:none;
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

<h1 id="heading">Welcome, <%= request.getAttribute("userName") != null ? request.getAttribute("userName") : "Guest" %></h1>

<div id="display">
    
    <div class="card2">
         <form action="BookBorrow" target="frame" id="details">
       
     <span><b> BOOK-ID:</b> </span><input type="search" name="bookID"> <br><br>
  
    <button type="submit" id="show" onclick="openPopup()"> Show Book's Details </button> <br>
    <input type="hidden" name="userName" value=" <%= request.getAttribute("userName") != null ? request.getAttribute("userName") : "Guest" %>">
    
       </form>
        
        <form action="BorrowedBooks" target="frame">
      <h2> <button type="submit" onclick="openPopup()"> My Books </button></h2>
      <input type="hidden" name="userName" value=" <%= request.getAttribute("userName") != null ? request.getAttribute("userName") : "Guest" %>">
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

</body>
</html>