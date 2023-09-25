<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- Header -->
	<header class="header-v3">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop p-l-45">
					
					<!-- Logo desktop -->		
					<a href="#" class="logo">
						<img width="200" height="70" loading="lazy" itemprop="logo" src="//theme.hstatic.net/1000306633/1000891824/14/logo.png?v=572" alt="HADES STUDIO" class="img-responsive logoimg">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="Home">Home</a>
								
								<!--
									<ul class="sub-menu">
									<li><a href="index.html">Homepage 1</a></li>
									<li><a href="home-02.html">Homepage 2</a></li>
									<li><a href="home-03.html">Homepage 3</a></li>
								</ul>
								-->
							
							</li>

							<li class="label1" data-label1="hot">
								<a href="Shop">Shop</a>
							</li>

							<li>
								<a href="Blog">Blog</a>
							</li>


							<li>
								<a href="Contact">Contact</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">													
						<div class="flex-c-m h-full p-lr-19">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
								<i class="zmdi zmdi-menu"></i>
							</div>
						</div>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<img width="100" height="20" loading="lazy" itemprop="logo" src="//theme.hstatic.net/1000306633/1000891824/14/logo.png?v=572" alt="HADES STUDIO" class="img-responsive logoimg">
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
				<div class="flex-c-m h-full p-r-5">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="2">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>
				</div>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="main-menu-m">
				<li>
					<a href="index.html">Home</a>
					<ul class="sub-menu-m">
						<li><a href="index.html">Homepage 1</a></li>
						<li><a href="home-02.html">Homepage 2</a></li>
						<li><a href="home-03.html">Homepage 3</a></li>
					</ul>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="product.html">Shop</a>
				</li>

				<li>
					<a href="shoping-cart.html" class="label1 rs1" data-label1="hot">Features</a>
				</li>

				<li>
					<a href="blog.html">Blog</a>
				</li>

				<li>
					<a href="contact.html">Contact</a>
				</li>
			</ul>
		</div>

	</header>


	<!-- Sidebar -->
	<aside class="wrap-sidebar js-sidebar">
		<div class="s-full js-hide-sidebar"></div>

		<div class="sidebar flex-col-l p-t-22 p-b-25">
			<div class="flex-r w-full p-b-30 p-r-27">
				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll" style="flex-grow: 0;">
				<ul class="sidebar-link w-full">
					<li class="p-b-13">
						<a href="Home" class="stext-102 cl2 hov-cl1 trans-04">
							Home
						</a>
					</li>

					<li class="p-b-13">
						<a href="Shop" class="stext-102 cl2 hov-cl1 trans-04">
							Shop
						</a>
					</li>

					<li class="p-b-13">
						<a href="MyAccount" class="stext-102 cl2 hov-cl1 trans-04">
							My Account
						</a>
					</li>

					<li class="p-b-13">
						<a href="Cart" class="stext-102 cl2 hov-cl1 trans-04">
							Cart
						</a>
					</li>

					<li class="p-b-13">
						<a href="Blog" class="stext-102 cl2 hov-cl1 trans-04">
							Blog
						</a>
					</li>

					<li class="p-b-13">
						<a href="Contact" class="stext-102 cl2 hov-cl1 trans-04">
							Contact
						</a>
					</li>

					<li class="p-b-13">
						<a href="Login" class="stext-102 cl2 hov-cl1 trans-04">
							Login
						</a>
					</li>
				</ul>
				<div class="sidebar-gallery w-full p-tb-30" style="text-align: center;">
					<c:choose>
						<c:when test="${sessionScope['LoginName'] != null}">
                            <!-- item gallery sidebar -->
							<div class="m-b-10">
								<a class="item-gallery bg-img1" href="assets/images/KhachHang/${sessionScope['LoginImage']}" data-lightbox="gallery" 
								style="background-image: url('assets/images/KhachHang/${sessionScope['LoginImage']}');"></a>
							</div>
							<span class="mtext-101 cl5">
								${sessionScope['LoginName']}
							</span>
						</c:when>
						<c:otherwise>
							<!-- item gallery sidebar -->
							<div class="m-b-10">
								<a class="item-gallery bg-img1" href="assets/images/DanhMuc/logo_key_back.jpg" data-lightbox="gallery" 
								style="background-image: url('assets/images/DanhMuc/logo_key_back.jpg');"></a>
							</div>
							<span class="mtext-101 cl5">
								Hades Shop
							</span>
						</c:otherwise>
					</c:choose> 
				</div>
				<c:choose>
					<c:when test="${sessionScope['LoginName'] != null}">
						<div class="sidebar-gallery w-full p-tb-30" style="text-align: center;">
							<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" onclick="handlLogout()" fdprocessedid="5kqzs5">
								Logout
							</button>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</aside>


	

    