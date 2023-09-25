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
						<div class="flex-c-m h-full p-lr-19 bor6">						
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-modal-search" hidden>
								<i class="zmdi zmdi-search"></i>
							</div>
						</div>						
						<div class="flex-c-m h-full p-lr-19 bor6">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" id="js-num-product-cart" data-notify="2">
								<i class="zmdi zmdi-shopping-cart"></i>
							</div>
						</div>
						<div class="flex-c-m h-full p-lr-19 bor6">
							<a href="#" class="dis-block icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti" data-notify="0">
								<i class="zmdi zmdi-favorite-outline"></i>
							</a>
						</div>
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
					<a href="about.html">About</a>
				</li>

				<li>
					<a href="contact.html">Contact</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="assets/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
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
								style="background-image: url('assets/images/KhachHang/${sessionScope['LoginImage']}');" id="js-nav-logo-avatar-modal"></a>
							</div>
							<span class="mtext-101 cl5" id="js-nav-text-name-modal">
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


	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full" id="js-model-shopping-cart">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="assets/images/item-cart-01.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								White Shirt Pleat
							</a>

							<span class="header-cart-item-info">
								1 x $19.00
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="assets/images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Converse All Star
							</a>

							<span class="header-cart-item-info">
								1 x $39.00
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="assets/images/item-cart-03.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Nixon Porter Leather
							</a>

							<span class="header-cart-item-info">
								1 x $17.00
							</span>
						</div>
					</li>
				</ul>
				
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40" id="js-cart-total-product">
						Total: $75.00
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="Cart" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart
						</a>

						<a href="Cart" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

    