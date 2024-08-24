<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOOKS</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

   <style>
   
        .carousel-inner
        {
        height:500px;
        }
        
        .carousel-item img 
        {
            width: 100%;
            height: auto;
            max-height: 500px; /* Ensure this matches carousel-inner max-height */
            object-fit: fill; /* or 'contain' */
        }
        
        
        h1
        {
         text-align:center;
         color:white;
        
        }
        
         .headings
        {
         text-align:center;
         color:white;
         text-decoration:underline;
        }
        
        a
        {
	    color:white;

        }
        
        
        body
        {
         background-color:rgb(0, 128, 128);
        }
        
        .Authors
        {
          display:flex;
          justify-content:space-around;
          margin-top:20px;
          margin-bottom:20px;
        }
        .author
        {
          text-decoration:none;
          color:white;
          border: 2px solid white;
          border-radius:8px;
          padding:5px;
          background-color:rgb(170, 183, 184);
          font-size:25px;
          display:flex;
          flex-direction:column;
          align-items: center;
          width:178px;
        }
        
        .author:hover
        {
          box-shadow:5px 5px 5px 5px white;
        }
        
 #main
{
    display:flex;
	justify-content: space-between;
	align-items: flex-end;
    background-color:rgba(28, 40, 51 ,0.5);
    width:1518px;
    height:80px;
    margin-bottom:20px;
}
#sing
 {
   font-size:25px;
   padding-left:5px;
 }
#sing:hover 
 {
   border-bottom:5px solid white;
 }
 .all
 {
  font-size:20px;
  padding-left:5px;
  padding-right:5px;
 }
 .all:hover
 {
  border-bottom:5px solid white;
 }
  .info
 {
	 background-color:rgba(236, 240, 241 ,0);
	 border-radius:7px;
	 border:none;
	 font-size:18px;
	 color:white;
	 margin-left:0px;
	 margin-right:0px;
	 cursor: pointer;
 }
   
   .display
   {
    display:none;
   }
   
   .open-popup
   {
    display:block;
   }
   
    .category
        {
          margin-top:20px;
          margin-bottom:20px;
          display:flex;
          justify-content:space-around;
          
        }
        
        .card-img-top
        {
          
          width:16rem;
          height:250px;
          cursor:pointer;
          
        }
        
        .photo
        {
         border-radius:8px;
         
        }
        
        footer
 {
 display:flex;
 justify-content:space-around;
  margin-top:50px;
  padding:15px;
   height:150px;
   font-size:20px;
   background-color:rgba(28, 40, 51 ,0.5);
   color:white;
   border-radius:7px;
   text-align:center;
    font-family:Poppins,sans-serif;
 }
 
 .address
 {
   margin-right:50px;
   margin-left:50px;
   color:white;
 }
 
 #email
 {
   margin-left:50px;
 }
        
   
   </style>

</head>
<body>
   
   <div id="main">
      <h1 id="sing"> <a href="HomePage.html"> <i class="fa-solid fa-book-open-reader"> LIBRARY </i> </a> </h1>  <br>
      <h1 class="all"> <a href="BookDetails.jsp"> <i class="fa-solid fa-book"> BOOK DETAILS </i></a> </h1> 
      <h1 class="all"> <a href="AdminLogin.jsp"> <i class="fa-solid fa-user"> ADMINISTARTOR </i></a> </h1>
      <h1 class="all"> <a href="LibraryMember.jsp"> <i class="fa-solid fa-users"> LIBRARY MEMEBERS </i></a> </h1>
     <h1 class="all"> <button onclick="openPopup()" class="info"> <i class="fa-solid fa-bullhorn"> ANNONCEMENTS </i></button> </h1>  
      <h1 class="all"> <a href="Aboutus.jsp"> <i class="fa-solid fa-circle-info"> ABOUT US </i> </a> </h1>
    </div>  
    
    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="https://i.pinimg.com/564x/c7/be/51/c7be517257e1380ab382d5c879fed25d.jpg" class="d-block w-100" alt="Book-Geners">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="https://i.pinimg.com/564x/31/88/5d/31885d33f2fb5862c8b98b5dffd4e7f7.jpg" class="d-block w-100" alt="Quotation">
    </div>
    <div class="carousel-item">
      <img src="https://i.pinimg.com/564x/ea/1a/5e/ea1a5e710b0aa59a7887c8052d2b2a85.jpg" class="d-block w-100" alt="Book">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <b class="carousel-control-prev-icon" aria-hidden="true"></b>
    <b class="visually-hidden">Previous</b>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <b class="carousel-control-next-icon" aria-hidden="true"></b>
    <b class="visually-hidden">Next</b>
  </button>
</div>

<h1>BOOKS BY CATEGORIES</h1>

<h2 class="headings">AUTHORS</h2>
<div class="Authors">

<button class="author" onclick="openPopup2()"> <img src="https://i.pinimg.com/564x/58/57/b5/5857b57af3995b2531a054295aa1fa6a.jpg" alt="Description of image" width="160" height="150" class="photo"> <b>SudhaMurthy </b> </button>
<button class="author" onclick="openPopup()"> <img src="https://londonspeakerbureau.com/wp-content/uploads/2017/09/keynote-speaker-amish-tripathi.png" alt="Description of image" width="160" height="150" class="photo"> <b> Amisha </b> </button>
<button class="author" onclick="openPopup3()"> <img src="https://iitk.ac.in/dora/imag/profile/hc-verma-bw.jpg" alt="Description of image" width="160" height="150" class="photo"> <b>HcVerma </b>  </button>
<button class="author" onclick="openPopup4()"> <img src="https://image.tmdb.org/t/p/original/8VDx3K8NBGJDEWr4KdsGsuT8wuj.jpg" alt="Description of image" width="160" height="150" class="photo"> <b> JkRowling </b> </button>
<button class="author" onclick="openPopup5()"> <img src="https://assets.telegraphindia.com/telegraph/2023/May/1684411433_newruskin.jpg" alt="Description of image" width="160" height="150" class="photo"> <b> RuskinBond </b> </button>
<button class="author" onclick="openPopup1()"> <img src="https://www.frontlist.in/storage/uploads/2021/08/Arundhati-Roy.jpg" alt="Description of image" width="160" height="150" class="photo"> <b> ArundhatiRoy </b> </button>
<button class="author" onclick="openPopup6()"> <img src="https://img.etimg.com/thumb/msid-63845903,width-650,height-488,imgsize-171424,resizemode-75/every-time-chetan-bhagat-brought-the-house-down-with-his-tweets-and-got-trolled.jpg" alt="Description of image" width="160" height="150" class="photo"> <b> ChetanBhagat </b> </button>
<button class="author" onclick="openPopup7()"> <img src="https://upload.wikimedia.org/wikipedia/commons/6/64/Rudyard_Kipling%2C_by_Elliott_%26_Fry_%28colorized%29.png" alt="RudyardKipling" width="160" height="150" class="photo"> <b> R.Kipling </b> </button>

</div> 
 
 <div class="display" id="view2">
  <h2 class="headings">Sudha Murthy</h2> 
<div class="category">


           <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/7b/5e/c9/7b5ec923bdd5a1ba156ae075c02e84a0.jpg" class="card-img-top" alt="grandma's bag of stories">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b> Book111A </p>
                  <p class="card-text"><b>TITLE:</b> Grandma Bag Of Stories </p>
                  <p class="card-text"><b>ISBN:</b> 9780143333623 </p>
                  <p class="card-text"><b>GENRE:</b> Juvenile Fiction </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b> 2015 </p>
                  <p class="card-text"><b>AUTHOR-ID:</b> Admin111 </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/06/af/ac/06afac498fec0721879068cda93e1671.jpg" class="card-img-top" alt="gopi diaries">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b> Book111B </p>
                  <p class="card-text"><b>TITLE:</b> Gopi Diaries </p>
                  <p class="card-text"><b>ISBN:</b> 9789362135049 </p>
                  <p class="card-text"><b>GENRE:</b> Juvenile Fiction </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b> 2024 </p>
                  <p class="card-text"><b>AUTHOR-ID:</b> Admin111 </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/736x/a2/eb/1e/a2eb1e6ec4a1974e64c8a2e5535eb56a.jpg " class="card-img-top" alt="how the earth got its beauty">
                   <div class="card-body">
                 <p class="card-text"><b>BOOK-ID:</b> Book111C </p>
                  <p class="card-text"><b>TITLE:</b> How The Earth Got It's Beauty </p>
                  <p class="card-text"><b>ISBN:</b> 9780143447061 </p>
                  <p class="card-text"><b>GENRE:</b> Juvenile Fiction </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b> 2021 </p>
                  <p class="card-text"><b>AUTHOR-ID:</b> Admin111 </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/f8/3d/8d/f83d8db8cf8adb5896a0bbb2de78faa6.jpg " class="card-img-top" alt="the magic of the lost temple">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b> Book111D </p>
                  <p class="card-text"><b>TITLE:</b> The Magic Of The Lost Temple </p>
                  <p class="card-text"><b>ISBN:</b> 9780143333166 </p>
                  <p class="card-text"><b>GENRE:</b> Juvenile Fiction </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b> 2015 </p>
                  <p class="card-text"><b>AUTHOR-ID:</b> Admin111 </p>
                   </div>
           </div>
           
            
    
</div>

</div>
 
 <div class="display" id="view">
 
       <h2 class="headings">Amisha</h2> 
<div class="category">


           <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/b7/2e/fe/b72efecc138a6d32f44231b875714a18.jpg" class="card-img-top" alt="war of lanka">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/26/98/89/2698894a3b98f1a02b3a5c7bfc84fdca.jpg" class="card-img-top" alt="sitha">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/15/0d/c8/150dc82526eb0fa8c443842287a1580f.jpg" class="card-img-top" alt="vayuputras">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/fb/3b/f0/fb3bf07ef116b4d0ac169cba5497d036.jpg" class="card-img-top" alt="ravana">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            
    
</div>
 
 </div>
 
 <div class="display" id="view3">
 
 
                
<h2 class="headings">Hc.verma</h2> 
<div class="category">


           <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/75/db/11/75db11148a9dbdfeb1b7ace03141d0b4.jpg" class="card-img-top" alt="iit jee">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/736x/6c/f3/18/6cf318213d07203950d5a3cc5aae4023.jpg" class="card-img-top" alt="quantum phy">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/b1/f9/46/b1f946a8f38cd2c079e454501dd0bb2e.jpg" class="card-img-top" alt="concept of phy">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/a8/2d/41/a82d41432d2eb10f797eb340fee3d2e4.jpg" class="card-img-top" alt="foundation of science">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            
    
</div>
 
 
 </div>
 
  <div class="display" id="view4">
  
                 
<h2 class="headings">JK ROWLING</h2> 
<div class="category">


           <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/c3/b4/fc/c3b4fcef2eb8b7e9f75c7a329122c2d2.jpg" class="card-img-top" alt="harrypoter(azkaban)">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/fb/7e/66/fb7e66f8f41122f654d26911d6570049.jpg" class="card-img-top" alt="harrypoter(chamber of secrets)">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/c3/c0/89/c3c08954b7c42666ab9acf8e66990528.jpg" class="card-img-top" alt="harrypoter(order of the phoenix)">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/60/35/5e/60355ec8affadc84a111f2be66e383fc.jpg" class="card-img-top" alt="harrypoter(goblet of fire)">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            
    
</div> 
  
  </div>
  
  
   <div class="display" id="view5">
   
                  
<h2 class="headings">Ruskin Bond</h2> 
<div class="category">


           <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/736x/4c/31/15/4c3115b02964bd23bdf2f1be7ff031b4.jpg" class="card-img-top" alt="stories for children">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/16/09/3a/16093adac5df4c280b19ce1888cb0c10.jpg" class="card-img-top" alt="train journey">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/40/17/c6/4017c673db575a51c82f2f09baa68af7.jpg" class="card-img-top" alt="rusty">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/9d/3f/ef/9d3fef0591a2b7d54cb6ab73ddd6bd51.jpg" class="card-img-top" alt="cricket for crocodile">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
 
 </div>
   
   </div>
  
 
  <div class="display" id="view1">
 
     <h2 class="headings">Arundhati roy</h2> 
<div class="category">


           <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/2f/3a/2a/2f3a2a16fb46c0c6920b76f25345c73c.jpg" class="card-img-top" alt="seditious heart">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/15/b8/49/15b849addd1042ea675c17beb21c52bb.jpg " class="card-img-top" alt="god of small things">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/ea/e9/4e/eae94e2c68d3918373dd880889be4acf.jpg" class="card-img-top" alt="power politics">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/1d/3b/ba/1d3bbabdeaee4f67fe7b6e111da47f85.jpg" class="card-img-top" alt="azadi">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            
    
</div> 
 
 </div>
 
 
      <div class="display" id="view6">
      
                 
<h2 class="headings">Chetan Bhagat</h2> 
<div class="category">


           <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/62/3f/8f/623f8fee7aedff33d854ae99590ed344.jpg" class="card-img-top" alt="2states">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/b6/fe/fb/b6fefb00d8250da034e32bf7f976d19e.jpg" class="card-img-top" alt="half girlfriend">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/7d/b0/68/7db068e4390ef59fcd6014feaace06e2.jpg" class="card-img-top" alt="3mistakes of my life">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/96/88/11/968811062ebb23853427c01490c8302a.jpg" class="card-img-top" alt="one indian girl">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            
    
</div> 
      
      </div>
      
      
        <div class="display" id="view7">
        
                           
<h2 class="headings">Rudyard Kipling</h2> 
<div class="category">


           <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/15/62/4c/15624c65a0f3810c52f93115d62b4480.jpg" class="card-img-top" alt="jungle book">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/01/c2/80/01c2805dbd84258712a4685913dee3da.jpg" class="card-img-top" alt="just so stories">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/f4/1d/88/f41d8833eafdabea316ddc5d5beaa02a.jpg" class="card-img-top" alt="captian couragues">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            <div class="card" style="width: 16rem;">
                  <img src="https://i.pinimg.com/564x/e1/e6/18/e1e6182bc04fad176d3a6547732e8711.jpg" class="card-img-top" alt="kim">
                   <div class="card-body">
                  <p class="card-text"><b>BOOK-ID:</b>  </p>
                  <p class="card-text"><b>TITLE:</b>  </p>
                  <p class="card-text"><b>ISBN:</b>  </p>
                  <p class="card-text"><b>GENRE:</b>  </p>
                  <p class="card-text"><b>PUBLICATON-YEAR:</b>  </p>
                  <p class="card-text"><b>AUTHOR-ID:</b>  </p>
                   </div>
           </div>
           
            
    
</div>
        
        </div>
 
 
 <script>

     let view = document.getElementById("view");
     let view1 = document.getElementById("view1");
     let view2 = document.getElementById("view2");
     let view3 = document.getElementById("view3");
     let view4 = document.getElementById("view4");
     let view5 = document.getElementById("view5");
     let view6 = document.getElementById("view6");
     let view7 = document.getElementById("view7");
     
	 function  openPopup(){
	 
		 view.classList.add("open-popup");
	 
	 }
	 function  openPopup1(){
		 
		 view1.classList.add("open-popup");
	 
	 }
     function  openPopup2(){
		 
		 view2.classList.add("open-popup");
	 
	 }
     function  openPopup3(){
		 
		 view3.classList.add("open-popup");
	 
	 }
     function  openPopup4(){
		 
		 view4.classList.add("open-popup");
	 
	 }
     function  openPopup5(){
		 
		 view5.classList.add("open-popup");
	 
	 }
     function  openPopup6(){
		 
		 view6.classList.add("open-popup");
	 
	 }
     function  openPopup7(){
		 
		 view7.classList.add("open-popup");
	 
	 }
	 function  closePopup(){
	 
		 view.classList.remove("open-popup");
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