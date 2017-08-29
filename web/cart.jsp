<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JerryCheng
  Date: 2017.8.22
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="assets/css/slider.css" type="text/css">
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
    <script >
  function sum() {
      var x=0;
      for(var i = 0; i<$('.eachprice').length; i++){
        x+=Number($('.eachprice').eq(i).html());
      }
      $('#sum').text(x);
  }
    </script>
</head>

<body onload="sum()">
<!--  Preloader  -->
<div id="preloader">
    <div id="loading"> </div>
</div>
<section class="shopping-cart">
    <!-- .shopping-cart -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/Product.form">主页</a></li>
                    <li class="breadcrumb-item active">购物车</li>
                </ol>
            </div>
            <div class="col-md-12">
                <h2>购物车商品</h2>
                <table>
                    <tr>
                        <th>商品</th>
                        <th>商品编号</th>
                        <th>描述</th>
                        <th>价格</th>
                        <th>数量</th>
                        <th>总价</th>
                        <th>操作</th>
                    </tr>

                    <c:forEach items="${carts}" var="cart">
                        <tr>
                            <td><img src="assets/images/elec-img4.jpg" alt="13"></td>
                            <td>${cart.product}</td>
                            <td>9月出iphone8</td>
                            <td><strong>${cart.price}</strong></td>
                            <td><input type="number" name="quantity" min="1" max="500" value="${cart.num}"></td>
                            <td><strong class="eachprice">${cart.price*cart.num}</strong></td>
                            <td><span class="red"><a href="/delete.form?id=${cart.id}" class="fa fa-times"></a></span></td>
                        </tr>
                    </c:forEach>


                </table>
                <div class="col-sm-6 col-md-6 ">
                    <a href="/querycart.form" class="button red">继续购物</a>
                </div>
                <div class="col-sm-6 col-md-6 text-right">
                    <a href="#" class="button">清空购物车</a>
                </div>

                <div class="col-sm-4 col-md-4">
                    <div class="shipping-outer">
                        <ul>
                            <li>购物车总价: <strong id="sum"></strong></li>
                            <li class="text-center">
                                <a href="#" class="redbutton">结算</a>

                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.shopping-cart -->
</section>

<p id="back-top"> <a href="#top"><i class="fa fa-chevron-up" aria-hidden="true"></i></a> </p>
<script src="assets/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-dropdownhover.min.js"></script>
<!-- Plugin JavaScript -->
<script src="assets/js/jquery.easing.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<!-- owl carousel -->
<script src="assets/owl-carousel/owl.carousel.js"></script>
<!--  Custom Theme JavaScript  -->
<script src="assets/js/filter-price.js"></script>
<script src="assets/js/custom.js"></script>
</body>
</html>
