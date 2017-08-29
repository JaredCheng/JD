<%--
  Created by IntelliJ IDEA.
  User: JerryCheng
  Date: 2017.8.22
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- Latest Bootstrap min CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
    <!-- Dropdownhover CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap-dropdownhover.min.css" type="text/css">
    <!-- latest fonts awesome -->
    <link rel="stylesheet" href="assets/font/css/font-awesome.min.css" type="text/css">
    <!-- simple line fonts awesome -->
    <link rel="stylesheet" href="assets/simple-line-icon/css/simple-line-icons.css" type="text/css">
    <!-- stroke-gap-icons -->
    <link rel="stylesheet" href="assets/stroke-gap-icons/stroke-gap-icons.css" type="text/css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.min.css" type="text/css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="assets/css/jcarousel.connected-carousels.css" type="text/css">
    <!--  baguetteBox -->
    <link rel="stylesheet" href="assets/css/baguetteBox.css">
    <!-- Owl Carousel Assets -->
    <link href="assets/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="assets/owl-carousel/owl.theme.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="/assets/js/jquery-1.8.1.min.js"></script>
    <script>
        /*ajax获取不同颜色商品的价格和库存*/
       $(function() {
           $('.x').click(function (){
               var standardprice=$('#price').val();
               $('#colors').val($(this).html());
               $.ajax({
                   url:'/choose.form',
                   type:"post",
                   data:{
                       color:$(this).html(),
                       id:$('#id').val()
                   },
                   dataType:"json",
                   success:function(data){
                        var price=parseInt(standardprice)+parseInt(data.floating);
                       $('#tempprice').text(price);
                       $('#floating').val(price);
                       $('#stock').text(data.stock);
                   },
                   error:function(){
                       alert("fail");
                   }
               });
           })

           $('.addtocart2').click(function () {
      // $('#productform').submit();
       $.ajax({
           url:'/addcart.form',
           type:"post",
           data:{
               color:$('#colors').val(),
               product:$('#id').val(),
               num:$('#number').val(),
               price:$('#floating').val()
           },
           success:function(data){
               alert(data);
           },
           error:function(){
               alert("fail");
           }
       });
   })

       });
    </script>
</head>

<body>
<!--  Preloader  -->
<div id="preloader">
    <div id="loading"> </div>
</div>
<section class="top-md-menu">
    <div class="container">
        <div class="col-sm-6" style="">
            <!-- Search box Start -->
            <form>
                <div class="well carousel-search hidden-phone">
                    <div class="btn-group">
                        <a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#">所有类别 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Item I</a></li>
                            <li><a href="#">Item II</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Other</a></li>
                        </ul>
                    </div>
                    <div class="search">
                        <input type="text" placeholder="搜索你想要的商品" />
                    </div>
                    <div class="btn-group">
                        <button type="button" id="btnSearch" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </div>
                </div>
            </form>
            <!-- Search box End -->
        </div>
        <div class="col-sm-3">
            <!-- cart-menu -->
            <div class="cart-menu">
                <ul>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" data-hover="dropdown"><i class="icon-basket-loaded icons" aria-hidden="true"></i></a><span class="subno">${sessionScope.cartnum}</span><strong>购物车</strong>

                        <div class="dropdown-menu  cart-outer">
                            <a href="/querycart.form" class="cart-btn">查看购物车</a> <a href="checkout.html" class="cart-btn">结算</a>
                        </div>

                    </li>
                </ul>
            </div>
            <!-- cart-menu End -->
        </div>
        <div style="float:right">
            <c:if test="${empty sessionScope.username}"><a href="login.jsp" class="add-btn">登陆</a></c:if>
            <c:if test="${ not empty sessionScope.username}">欢迎,${sessionScope.username} <a href="/logout.form" class="add-btn">安全退出</a></c:if>
        </div>
    </div>
</section>
<!-- newsletter -->
<section class="grid-shop">
    <!-- .grid-shop -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/Product.form">主页</a></li>
                    <li class="breadcrumb-item active">商品详情</li>
                </ol>
                <div class="row">
                    <!-- left side -->
                    <div class="col-sm-5 col-md-5">
                        <!-- product gallery -->
                        <div class="connected-carousels">
                            <div class="stage">
                                <div class="carousel carousel-stage">
                                    <ul>
                                        <li><img class="zoom_01" src="assets/images/products/fashion/1.jpg" data-zoom-image="assets/images/products/fashion/1.jpg" alt="qoute-icon" /> </li>
                                        <li><img class="zoom_01" src="assets/images/products/fashion/2.jpg" data-zoom-image="assets/images/products/fashion/2.jpg" alt="qoute-icon" /></li>
                                        <li><img class="zoom_01" src="assets/images/products/fashion/3.jpg" data-zoom-image="assets/images/products/fashion/3.jpg" alt="qoute-icon" /></li>
                                        <li><img class="zoom_01" src="assets/images/products/fashion/15.jpg" data-zoom-image="assets/images/products/fashion/15.jpg" alt="qoute-icon" /> </li>
                                        <li><img class="zoom_01" src="assets/images/products/fashion/8.jpg" data-zoom-image="assets/images/products/fashion/8.jpg" alt="qoute-icon" /></li>
                                        <li><img class="zoom_01" src="assets/images/products/fashion/12.jpg" data-zoom-image="assets/images/products/fashion/12.jpg" alt="qoute-icon" /></li>
                                    </ul>
                                </div>
                                <p class="photo-credits">
                                    Photos by <a href="http://www.mw-fotografie.de">Marc Wiegelmann</a>
                                </p>
                                <a href="#" class="prev prev-stage"><span>&lsaquo;</span></a>
                                <a href="#" class="next next-stage"><span>&rsaquo;</span></a>
                            </div>

                            <div class="navigation">
                                <a href="#" class="prev prev-navigation">&lsaquo;</a>
                                <a href="#" class="next next-navigation">&rsaquo;</a>
                                <div class="carousel carousel-navigation">
                                    <ul>
                                        <li><img src="assets/images/products/fashion/1.jpg" width="110" height="110" alt=""></li>
                                        <li><img src="assets/images/products/fashion/2.jpg" width="110" height="110" alt=""></li>
                                        <li><img src="assets/images/products/fashion/3.jpg" width="110" height="110" alt=""></li>
                                        <li><img src="assets/images/products/fashion/15.jpg" width="110" height="110" alt=""></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- / product gallery -->
                    </div>
                    <div class="col-sm-7 col-md-7">
                        <!-- .pro-text -->
                        <div class="pro-text product-detail">
                            <!-- /.pro-img -->
                            <a href="#">
                                <h4>${detaildemo.describe}</h4>
                            </a>
                            <div class="star2">
                                <ul>
                                    <li class="yellow-color"><i class="fa fa-star" aria-hidden="true"></i></li>
                                    <li class="yellow-color"><i class="fa fa-star" aria-hidden="true"></i></li>
                                    <li class="yellow-color"><i class="fa fa-star" aria-hidden="true"></i></li>
                                    <li class="yellow-color"><i class="fa fa-star" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                    <li><a href="#">收藏(10)</a></li>
                                    <li><a href="#"> 添加到收藏</a></li>
                                </ul>
                            </div>
                            <p><strong id="tempprice">${detaildemo.price}</strong>元</p>
                            <p class="in-stock" >库存数: <span id="stock"></span></p>
                            <p>产品的详细介绍. </p>
                            <div class="weight">
                                <div class="filter-outer">

                                    <div class="size">
                                        <h3>颜色</h3>
                                        <ul>
                                            <c:forEach items="${colors}" var="color">
                                                <li><a class="x" style="cursor:pointer" >${color}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                    <%--隐藏域--%>
                                    <input  hidden id="price" name="price" value="${detaildemo.price}">
                                    <form id="productform" action="/addcart.form" method="post">
                                        <h3>数量</h3><div class="numbers-row">
                                        <input  id="number" name="num" value="0">
                                    </div>
                                        <input hidden id="id" name="product" value="${detaildemo.id}">
                                        <input hidden id="floating" name="price" >
                                        <input hidden id="colors" name="color" >
                                        <a class="addtocart2" style="cursor:pointer">添加到购物车</a>
                                    </form>


                                  <%--  <a class="addtocart2" >添加到购物车</a>--%>

                                </div>
                            </div>

                        </div>
                        <!-- /.pro-text -->
                    </div>
                </div>
                <div class="row">
                    <div class="tab-bg">
                        <ul>
                            <li class="active"><a data-toggle="tab" href="#home">描述</a></li>
                            <li><a data-toggle="tab" href="#menu1">详情</a></li>
                            <li><a data-toggle="tab" href="#menu2">评价</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div id="home" class="tab-pane fade in active">
                            <p>Lorem Ipsum is sim since the n bo</p>
                            <ul>
                                <li>Claritas est etiam processus dynamicus.</li>

                            </ul>
                            <p>It has survived not only five centuries</p>
                        </div>
                        <div id="menu1" class="tab-pane fade">
                            <p>Lorem Ipsum is simply dummy text of th to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages..</p>
                            <ul>
                                <li>Claritas est etiam proscessus dynamicus.</li>
                                <li>Qui sequitur mutationem consuetudium lectorum. </li>

                            </ul>
                            <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release.</p>
                        </div>
                        <div id="menu2" class="tab-pane fade">
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when anunknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages..</p>
                            <ul>
                                <li>Claritas est etiam processus dynamicus.</li>

                            </ul>
                            <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- right side -->
        </div>
    </div>
    <!-- /.grid-shop -->
</section>



<p id="back-top"> <a href="#top"><i class="fa fa-chevron-up" aria-hidden="true"></i></a> </p>
<script src="assets/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-dropdownhover.min.js"></script>
<script src="assets/js/incrementing.js"></script>
<!-- Plugin JavaScript -->
<script src="assets/js/jquery.easing.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<!-- owl carousel -->
<script src="assets/owl-carousel/owl.carousel.js"></script>
<!--  Custom Theme JavaScript  -->
<script src="assets/js/custom.js"></script>
<!--  jcarousel Theme JavaScript  -->
<script type="text/javascript" src="assets/js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="assets/js/jcarousel.connected-carousels.js"></script>
<script type="text/javascript" src="assets/js/jquery.elevatezoom.js"></script>
<script>
    $('.zoom_01').elevateZoom({
        zoomType: "inner",
        cursor: "crosshair",
        zoomWindowFadeIn: 500,
        zoomWindowFadeOut: 750
    });
</script>
</body>
</html>
