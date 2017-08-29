<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JerryCheng
  Date: 2017.8.21
  Time: 14:50
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

    <div style="float:right">
      <c:if test="${empty sessionScope.username}"><a href="login.jsp" class="add-btn">登陆</a></c:if>
      <c:if test="${ not empty sessionScope.username}">欢迎,${sessionScope.username} <a href="/logout.form" class="add-btn">安全退出</a></c:if>
    </div>

    <!-- cart-menu -->
    <div class="cart-menu">
      <ul>
        <li class="dropdown">
          <a href="#" data-toggle="dropdown" data-hover="dropdown"><i class="icon-basket-loaded icons" aria-hidden="true"></i></a>
          <c:if test="${ not empty sessionScope.cartnum}"><span class="subno">${sessionScope.cartnum}</span></c:if><strong>购物车</strong>

          <div class="dropdown-menu  cart-outer">
            <a href="/querycart.form" class="cart-btn">查看购物车</a> <a href="checkout.html" class="cart-btn">结算</a>
          </div>

        </li>
      </ul>
    </div>
    <!-- cart-menu End -->
  </div>

</section>
<section class="grid-shop">
  <!-- .grid-shop -->
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ol class="breadcrumb">
        </ol>
      </div>
      <div class="col-sm-3 col-md-3">
        <div class="weight">
          <div class="title">
            <h2>分类</h2>
          </div>
          <div class="product-categories">
            <ul>
              <li><a href="#">电脑  <span><i class="fa fa-angle-right" aria-hidden="true"></i></span></a></li>
              <li><a href="#">存储   <span><i class="fa fa-angle-right" aria-hidden="true"></i></span></a></li>
              <li><a href="#">游戏  <span><i class="fa fa-angle-right" aria-hidden="true"></i></span></a></li>
              <li><a href="#">Mac  <span><i class="fa fa-angle-right" aria-hidden="true"></i></span></a></li>
              <li><a href="#">超极本 <span><i class="fa fa-angle-right" aria-hidden="true"></i></span></a></li>
              <li><a href="#">打印机  <span><i class="fa fa-angle-right" aria-hidden="true"></i></span></a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col-sm-9 col-md-9">
        <div class="grid-spr">
          <div class="col-sm-6 col-md-6"> <a href="#" class="grid-view-icon"><i class="fa fa-th-large" aria-hidden="true"></i></a> <a href="#" class="list-view-icon"><i class="fa fa-list" aria-hidden="true"></i></a>
            <div class="select-option">
              <a class="btn btn-default btn-select options2">
                <input type="hidden" class="btn-select-input" id="1" name="1" value="" />
                <span class="btn-select-value">Select an Item</span>
                <span class="btn-select-arrow fa fa-angle-down"></span>
                <ul>
                  <li class="selected">默认分类</li>
                  <li>Option 1</li>
                  <li>Option 2</li>
                  <li>Option 3</li>
                  <li>Option 4</li>
                </ul>
              </a>
            </div>
          </div>
          <div class="col-sm-6 col-md-6 text-right"> <strong>显示 1-12 条结果</strong> </div>
        </div>

<c:forEach items="${jdproducts}" var="product">
        <div class="col-xs-12 col-sm-6 col-md-4">
          <!-- .pro-text -->
          <div class="pro-text text-center">
            <!-- .pro-img -->
            <div class="pro-img"> <img src="assets/images/products/digital/2.jpg" alt="2"> <sup class="sale-tag">sale!</sup>
            </div>
            <!-- /.pro-img -->
            <div class="pro-text-outer">
              <a href="#">
                <h4>${product.describe}</h4>
              </a>
              <p class="wk-price">${product.price}元</p> <a href="/detail.form?id=${product.id}" class="add-btn">添加到购物车</a> </div>
          </div>
          <!-- /.pro-text -->
        </div>
</c:forEach>




        <div class="col-xs-12">
          <div class="grid-spr pag">
            <!-- .pagetions -->
            <div class="col-xs-12 col-sm-6 col-md-6 text-left">
              <ul class="pagination">
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
            </div>
            <!-- /.pagetions -->
          </div>
        </div>

      </div>
    </div>
  </div>
  <!-- /.grid-shop -->
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
