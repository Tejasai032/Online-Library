<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<%@include file='BookDetails.jsp' %>
 
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>

.card-img-top
        {
          
          width:15rem;
          height:250px;
          
        }
        
        h2
        {
         text-align:center;
         
        }
        
        .category
        {
          margin-top:20px;
          margin-bottom:20px;
          display:flex;
          justify-content:space-around;
          
        }

</style>

</head>
<body>
    
      
<h2>Ruskin Bond</h2> 
<div class="category">


           <div class="card" style="width: 15rem;">
                  <img src="https://i.pinimg.com/736x/4c/31/15/4c3115b02964bd23bdf2f1be7ff031b4.jpg" class="card-img-top" alt="stories for children">
                   <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   </div>
           </div>
           
            <div class="card" style="width: 15rem;">
                  <img src="https://i.pinimg.com/564x/16/09/3a/16093adac5df4c280b19ce1888cb0c10.jpg" class="card-img-top" alt="train journey">
                   <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   </div>
           </div>
           
            <div class="card" style="width: 15rem;">
                  <img src="https://i.pinimg.com/564x/40/17/c6/4017c673db575a51c82f2f09baa68af7.jpg" class="card-img-top" alt="rusty">
                   <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   </div>
           </div>
           
            <div class="card" style="width: 15rem;">
                  <img src="https://i.pinimg.com/564x/9d/3f/ef/9d3fef0591a2b7d54cb6ab73ddd6bd51.jpg" class="card-img-top" alt="cricket for crocodile">
                   <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   </div>
           </div>
           
 
 </div>
    
</body>
</html>