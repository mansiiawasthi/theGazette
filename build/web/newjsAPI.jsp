<%-- 
    Document   : index
    Created on : 24-May-2021, 08:30:53
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">

    <title>About Us</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <script src="assets/js/jquery.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-stand-blog.css">
    <link rel="stylesheet" href="assets/css/owl.css">
<!--

TemplateMo 551 Stand Blog

https://templatemo.com/tm-551-stand-blog

-->
  </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- include header.jsp -->
    <jsp:include page="header.jsp"></jsp:include>
        
  
       
    

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="main-banner header-text">
      <div class="container-fluid">
        <div class="owl-banner owl-carousel">
          
          
        </div>
      </div>
    </div>
    <!-- Banner Ends Here -->

     


    <section class="blog-posts">
      <div class="container">
        <div class="row" >
          <div class="col-lg-8" id="news">
           <div class ="col col-md-12 ">                  
                   <% 
                       String key=request.getParameter("q"); 
                     System.out.println("key is ="+key);
                     String val=key;
                   %><br/><br/><br/>
                   Enter Keyword : <input type="textarea" name="keyword" id="keyword" value='<%=val%>'/>
                   <input type="button" id="b1" value="Search/Load News" />
                </div>
              </div>
                    <div class="row">
                      <div class="col-md-8" id="nws">

            </div>
              </div>
                
          
            
            
        <jsp:include page="sidebar.jsp"></jsp:include> 
        </div>
      </div>
    </section>

    
        <jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/accordions.js"></script>

    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>
 <script>
            $("#b1").click(function () {
              //  https://newsapi.org/v2/everything?q=" + $("#keyword").val() + "&from=2021-06-27&sortBy=publishedAt&apiKey=381e4be231734341bf0a7333872d1ce8
              //  $.get("https://newsapi.org/v2/everything?q=" + $("#keyword").val() + "&from=2021-08-11&sortBy=publishedAt&apiKey=21f6b04f7efe489485c54aeef72cb961",  
                $.get("https://newsapi.org/v2/everything?q=" + $("#keyword").val() + "&from=2021-07s-27&sortBy=publishedAt&apiKey=381e4be231734341bf0a7333872d1ce8",
                        function (result, status) {
                            //var news = JSON.parse(result);
                            var articles = result.articles;
                            $("#news").html("");
                            for (x in articles) {
                                var article = articles[x];
                                var s = '<div class="card col col-md-3 col-sm-12 col-lg-3" style="border-width:2px;border-radius: 5px;border-style:solid;margin:5px;">\
                    <img class="card-img-top" src="'+article.urlToImage+'" alt="Card image" style="width:100%">\
                    <div class="card-body">\
                        <h4 class="card-title">'+ article.title+'</h4>\
                        <p class="card-text">'+ article.description+'</p>\
                        <a href="'+article.url+'" class="btn btn-primary stretched-link">Show News</a>\
                    </div></div>';
            
                                $("#news").append(s);

                            }
                        });

            });

        </script>
  </body>
</html>