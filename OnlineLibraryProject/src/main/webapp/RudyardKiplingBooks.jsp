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

         
<h2>Rudyard Kipling</h2> 
<div class="category">


           <div class="card" style="width: 15rem;">
                  <img src="https://i.pinimg.com/564x/15/62/4c/15624c65a0f3810c52f93115d62b4480.jpg" class="card-img-top" alt="jungle book">
                   <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   </div>
           </div>
           
            <div class="card" style="width: 15rem;">
                  <img src="https://i.pinimg.com/564x/01/c2/80/01c2805dbd84258712a4685913dee3da.jpg" class="card-img-top" alt="just so stories">
                   <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   </div>
           </div>
           
            <div class="card" style="width: 15rem;">
                  <img src="https://i.pinimg.com/564x/f4/1d/88/f41d8833eafdabea316ddc5d5beaa02a.jpg" class="card-img-top" alt="captian couragues">
                   <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   </div>
           </div>
           
            <div class="card" style="width: 15rem;">
                  <img src="https://i.pinimg.com/564x/e1/e6/18/e1e6182bc04fad176d3a6547732e8711.jpg" class="card-img-top" alt="kim">
                   <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   </div>
           </div>
           
            
    
</div>

</body>
</html>