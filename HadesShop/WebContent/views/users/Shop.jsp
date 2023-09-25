<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="//theme.hstatic.net/1000306633/1000891824/14/favicon.png?v=572" type="image/png" />
<title>Hades Shop</title>
<%@include file="/configs/getbootstrap.jsp" %>
<!--===============================================================================================-->
				<link rel="icon" type="image/png" href="assets/images/icons/favicon.png" />
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css"
					href="assets/fonts/iconic/css/material-design-iconic-font.min.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/fonts/linearicons-v1.0.0/icon-font.min.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/animsition/css/animsition.min.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/daterangepicker/daterangepicker.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/slick/slick.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/MagnificPopup/magnific-popup.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/vendor/perfect-scrollbar/perfect-scrollbar.css">
				<!--===============================================================================================-->
				<link rel="stylesheet" type="text/css" href="assets/css/util.css">
				<link rel="stylesheet" type="text/css" href="assets/css/main.css">
				<!--===============================================================================================-->
</head>
<body class="animsition">
<jsp:include page="/views/components/NavOnly.jsp"></jsp:include>
<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('assets/images/Banner/nvbh_ngang.jpg'); height: 325px;padding-top: 120px;">

</section>
<!-- Product -->
<div class="bg0 m-t-20 p-b-140">
	<div class="container">
	
		<div class="flex-w flex-sb-m p-b-52">
			<div class="flex-w flex-l-m filter-tope-group m-tb-10" id="js-caterory-filter-list">
				<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
					All Products
				</button>
	
				<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".women">
					Women
				</button>
	
				<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".men">
					Men
				</button>
	
				<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".bag">
					Bag
				</button>
	
				<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".shoes">
					Shoes
				</button>
	
				<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".watches">
					Watches
				</button>
			</div>
	
			<div class="flex-w flex-c-m m-tb-10">
				<div
					class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
					<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
					<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
					Filter
				</div>
	
				<div
					class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
					<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
					<i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
					Search
				</div>
			</div>
	
			<!-- Search product -->
			<div class="dis-none panel-search w-full p-t-10 p-b-15">
				<div class="bor8 dis-flex p-l-15">
					<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
	
					<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product"
						placeholder="Search">
				</div>
			</div>
	
			<!-- Filter -->
			<div class="dis-none panel-filter w-full p-t-10">
				<div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
					<div class="filter-col1 p-r-15 p-b-27">
						<div class="mtext-102 cl2 p-b-15">
							Sort By
						</div>
	
						<ul>
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									Default
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									Popularity
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									Average rating
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04 filter-link-active">
									Newness
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									Price: Low to High
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									Price: High to Low
								</a>
							</li>
						</ul>
					</div>
	
					<div class="filter-col2 p-r-15 p-b-27">
						<div class="mtext-102 cl2 p-b-15">
							Price
						</div>
	
						<ul>
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04 filter-link-active">
									All
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									$0.00 - $50.00
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									$50.00 - $100.00
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									$100.00 - $150.00
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									$150.00 - $200.00
								</a>
							</li>
	
							<li class="p-b-6">
								<a href="#" class="filter-link stext-106 trans-04">
									$200.00+
								</a>
							</li>
						</ul>
					</div>
	
					<div class="filter-col3 p-r-15 p-b-27">
						<div class="mtext-102 cl2 p-b-15">
							Color
						</div>
	
						<ul>
							<li class="p-b-6">
								<span class="fs-15 lh-12 m-r-6" style="color: #222;">
									<i class="zmdi zmdi-circle"></i>
								</span>
	
								<a href="#" class="filter-link stext-106 trans-04">
									Black
								</a>
							</li>
	
							<li class="p-b-6">
								<span class="fs-15 lh-12 m-r-6" style="color: #4272d7;">
									<i class="zmdi zmdi-circle"></i>
								</span>
	
								<a href="#" class="filter-link stext-106 trans-04 filter-link-active">
									Blue
								</a>
							</li>
	
							<li class="p-b-6">
								<span class="fs-15 lh-12 m-r-6" style="color: #b3b3b3;">
									<i class="zmdi zmdi-circle"></i>
								</span>
	
								<a href="#" class="filter-link stext-106 trans-04">
									Grey
								</a>
							</li>
	
							<li class="p-b-6">
								<span class="fs-15 lh-12 m-r-6" style="color: #00ad5f;">
									<i class="zmdi zmdi-circle"></i>
								</span>
	
								<a href="#" class="filter-link stext-106 trans-04">
									Green
								</a>
							</li>
	
							<li class="p-b-6">
								<span class="fs-15 lh-12 m-r-6" style="color: #fa4251;">
									<i class="zmdi zmdi-circle"></i>
								</span>
	
								<a href="#" class="filter-link stext-106 trans-04">
									Red
								</a>
							</li>
	
							<li class="p-b-6">
								<span class="fs-15 lh-12 m-r-6" style="color: #aaa;">
									<i class="zmdi zmdi-circle-o"></i>
								</span>
	
								<a href="#" class="filter-link stext-106 trans-04">
									White
								</a>
							</li>
						</ul>
					</div>
	
					<div class="filter-col4 p-b-27">
						<div class="mtext-102 cl2 p-b-15">
							Tags
						</div>
	
						<div class="flex-w p-t-4 m-r--5">
							<a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Fashion
							</a>
	
							<a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Lifestyle
							</a>
	
							<a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Denim
							</a>
	
							<a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Streetstyle
							</a>
	
							<a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Crafts
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="js-show-list-product-isotope">
	
		</div>
	
	
		<!-- Load more -->
		<div class="flex-c-m flex-w w-full p-t-45">
			<a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
				Load More
			</a>
		</div>
	</div>
</div>

		

	
	<jsp:include page="/views/components/Footer.jsp"></jsp:include>
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
<!-- Modal1 -->
<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
	<div class="overlay-modal1 js-hide-modal1"></div>

	<div class="container">
		<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
			<button class="how-pos3 hov3 trans-04 js-hide-modal1">
				<img src="assets/images/icons/icon-close.png" alt="CLOSE">
			</button>

			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots" style="opacity: 0;"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="item-slick3" data-thumb="assets/images/product-detail-01.jpg"
									id="js-thumb-1-product-model">
									<div class="wrap-pic-w pos-relative">
										<img src="assets/images/product-detail-01.jpg" alt="IMG-PRODUCT"
											id="js-img-1-product-model">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="assets/images/product-detail-01.jpg"
											id="js-href-1-product-model">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3" data-thumb="assets/images/product-detail-02.jpg"
									id="js-thumb-2-product-model">
									<div class="wrap-pic-w pos-relative">
										<img src="assets/images/product-detail-02.jpg" alt="IMG-PRODUCT"
											id="js-img-2-product-model">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="assets/images/product-detail-02.jpg"
											id="js-href-2-product-model">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3" data-thumb="assets/images/product-detail-03.jpg"
									id="js-thumb-3-product-model">
									<div class="wrap-pic-w pos-relative">
										<img src="assets/images/product-detail-03.jpg" alt="IMG-PRODUCT"
											id="js-img-3-product-model">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="assets/images/product-detail-03.jpg"
											id="js-href-3-product-model">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14" id="js-name-product-model">
							Lightweight Jacket
						</h4>

						<span class="mtext-106 cl2" id="js-price-product-model">
							$58.79
						</span>

						<p class="stext-102 cl3 p-t-23" id="js-describe-product-model">
							Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris
							consequat ornare feugiat.
						</p>

						<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									Size
								</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time" id="js-size-product-model">
											<option>Choose an option</option>
											<option>Size S</option>
											<option>Size M</option>
											<option>Size L</option>
											<option>Size XL</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									Color
								</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time" id="js-color-product-model">
											<option>Choose an option</option>
											<option>Red</option>
											<option>Blue</option>
											<option>White</option>
											<option>Grey</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-204 flex-w flex-m respon6-next">
									<div class="wrap-num-product flex-w m-r-20 m-tb-10">
										<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product" type="number"
											name="num-product" value="1" id="js-num-product-model">

										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>

									<button
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
										data-product-by-id="1" id="js-btn-add-cart-product">
										Add to cart
									</button>
								</div>
							</div>
						</div>

						<!--  -->
						<div class="flex-w flex-m p-l-100 p-t-40 respon7">
							<div class="flex-m bor9 p-r-10 m-r-11">
								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
									data-tooltip="Add to Wishlist">
									<i class="zmdi zmdi-favorite"></i>
								</a>
							</div>

							<a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Facebook">
								<i class="fa fa-facebook"></i>
							</a>

							<a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Twitter">
								<i class="fa fa-twitter"></i>
							</a>

							<a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Google Plus">
								<i class="fa fa-google-plus"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--===============================================================================================-->
<script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="assets/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="assets/vendor/bootstrap/js/popper.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="assets/vendor/select2/select2.min.js"></script>
<script>
	$(".js-select2").each(function () {
		$(this).select2({
			minimumResultsForSearch: 20,
			dropdownParent: $(this).next('.dropDownSelect2')
		});
	})
</script>
<!--===============================================================================================-->
<script src="assets/vendor/daterangepicker/moment.min.js"></script>
<script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="assets/vendor/slick/slick.min.js"></script>
<script src="assets/js/slick-custom.js"></script>
<!--===============================================================================================-->
<script src="assets/vendor/parallax100/parallax100.js"></script>
<script>
	$('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<script src="assets/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
	$('.gallery-lb').each(function () { // the containers for all your galleries
		$(this).magnificPopup({
			delegate: 'a', // the selector for gallery item
			type: 'image',
			gallery: {
				enabled: true
			},
			mainClass: 'mfp-fade'
		});
	});
</script>
<!--===============================================================================================-->
<script src="assets/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script src="assets/vendor/sweetalert/sweetalert.min.js"></script>
<script>

	
	$('.js-addwish-b2').on('click', function (e) {
		e.preventDefault();
	});

	$('.js-addwish-b2').each(function () {
		var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
		$(this).on('click', function () {
			swal(nameProduct, "is added to wishlist !", "success");

			$(this).addClass('js-addedwish-b2');
			$(this).off('click');
		});
	});

	$('.js-addwish-detail').each(function () {
		var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

		$(this).on('click', function () {
			swal(nameProduct, "is added to wishlist !", "success");

			$(this).addClass('js-addedwish-detail');
			$(this).off('click');
		});
	});

	
</script>
<!--===============================================================================================-->
<script src="assets/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
	$('.js-pscroll').each(function () {
		$(this).css('position', 'relative');
		$(this).css('overflow', 'hidden');
		var ps = new PerfectScrollbar(this, {
			wheelSpeed: 1,
			scrollingThreshold: 1000,
			wheelPropagation: false,
		});

		$(window).on('resize', function () {
			ps.update();
		})
	});
</script>
<!--===============================================================================================-->
<script src="assets/js/mainn.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript">
		let arrProducts = [];
		let arrCateroty = [];
		
		/*--------------------Shopping Cart-----------------------*/
		// Lấy giỏ hàng từ cookie nếu tồn tại
		let cart = getCartFromCookie();

		// Hiển thị các sản phẩm trong giỏ hàng
		displayCartItems();

		// Hàm để lấy giỏ hàng từ cookie
		function getCartFromCookie() {
			let cartCookie = getCookie("cart");
			if (cartCookie !== "") {
				return JSON.parse(cartCookie);
			}
			return [];
		}

		// Hàm để lưu giỏ hàng vào cookie
		function saveCartToCookie() {
			setCookie("cart", JSON.stringify(cart), 7);
		}

		// Hàm để thêm sản phẩm vào giỏ hàng
		function addToCart(productItem) {		
			console.log("product.productId 1",productItem.productId);	
			console.log("cart-addToCart",cart);			
			// Kiểm tra sản phẩm đã có trong giỏ hàng hay chưa
			var existingProduct = cart.find(function(item) {
				console.log("isProductID:",item.productId == productItem.productId);
				console.log("item.productId",item.productId);
				console.log("product.productId 2",productItem.productId);
				return item.productId == productItem.productId;
			});
			console.log("existingProduct",existingProduct);
			if (existingProduct) {
				// Nếu sản phẩm đã có trong giỏ hàng
				existingProduct.quantity = existingProduct.quantity + parseFloat(productItem.quantity);
				console.log("existingProduct.quantity",existingProduct.quantity);
			} else {
				// Nếu sản phẩm chưa có trong giỏ hàng
				const productCartItem = {
					productId: productItem.productId,
					productName: productItem.productName,
					quantity: parseFloat(productItem.quantity),
					price: productItem.price,
					productImage: productItem.productImage
				}
				cart.push(productCartItem);
			}
			saveCartToCookie();
			displayCartItems();
		}

		// Hàm để xóa sản phẩm khỏi giỏ hàng
		function removeFromCart(index) {
			cart.splice(index, 1);
			saveCartToCookie();
			totalPriceCart();
		}

		// Hàm để xóa toàn bộ giỏ hàng
		function clearCart() {
			cart = [];
			saveCartToCookie();
			displayCartItems();
		}

		// Hàm để hiển thị các sản phẩm trong giỏ hàng
		function displayCartItems() {
			console.log("cart",cart);
			const cartItemsElement = document.getElementById("js-model-shopping-cart");
			cartItemsElement.innerHTML = "";
			cart.forEach((item, index) => {
				const html = '<li  class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img" data-row-index="'+index+'"><img src="assets/images/products/'+item.productImage+'" alt="IMG"></div><div class="header-cart-item-txt p-t-8"><a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">'+item.productName+'</a><span class="header-cart-item-info">'+item.price+' x '+item.quantity+'</span></div></li>';
				cartItemsElement.innerHTML += html;			
			});	
			totalPriceCart();
			addEventDelete();
		}
		//Hàm tính total price
		function totalPriceCart(){

			const cartTotalProduct = document.getElementById("js-cart-total-product");
			let num = 0;
			let totalPrice = 0;
			cart.forEach((item, index) => {
				totalPrice += item.price * item.quantity;
				num++;
			})
			$('#js-num-product-cart').attr('data-notify',num);
			console.log("totalPrice",totalPrice);
			cartTotalProduct.innerText = "Total: "+totalPrice;
		}
		//Hàm add Event delete
		function addEventDelete(){
			$('.header-cart-item-img').each(function () {	
				$(this).on('click', function (e) {
					var indexValue = $(this).attr('data-row-index');
					console.log("$(this)",$(this));						
					console.log("indexValue",indexValue);
					$(this).parent().remove();	
					removeFromCart(indexValue);
				});
			});
		}
		// Hàm để hiển thị các sản phẩm trong giỏ hàng
		function displayAddCartItems(item) {
			const cartItemsElement = document.getElementById("js-model-shopping-cart");
			const html = '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img"><img src="assets/images/products/'+item.productImage+'" alt="IMG"></div><div class="header-cart-item-txt p-t-8"><a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">'+item.productName+'</a><span class="header-cart-item-info">'+item.price+'</span></div></li>';
			cartItemsElement.innerHTML += html;		
		}

		// Hàm để lấy giá trị cookie
		function getCookie(name) {
			const cookieName = name + "=";
			const cookies = document.cookie.split(";");

			for (let i = 0; i < cookies.length; i++) {
				let cookie = cookies[i].trim();
				if (cookie.startsWith(cookieName)) {
					return cookie.substring(cookieName.length, cookie.length);
				}
			}

			return "";
		}

		// Hàm để đặt giá trị cookie
		function setCookie(name, value, days) {
			const expirationDate = new Date();
			expirationDate.setTime(expirationDate.getTime() + (days * 24 * 60 * 60 * 1000));
			document.cookie = name + "=" + value + ";expires=" + expirationDate.toUTCString() + ";path=/";
		}
		/*---------------------------------------------*/


		function getListProduct() {
			return new Promise((resolve, reject) => {
				$.ajax({
					url: "/HadesShop/Home",
					type: 'GET',
					data: {
						action: 'getlistproduct',
					},
					success: function (data) {
						resolve(data)
					},
					error: function (error) {
						reject(error)
					},
				})
			})
		}
		function getListCateroty() {
			return new Promise((resolve, reject) => {
				$.ajax({
					url: "/HadesShop/Home",
					type: 'GET',
					data: {
						action: 'getlistcaterory',
					},
					success: function (data) {
						resolve(data)
					},
					error: function (error) {
						reject(error)
					},
				})
			})
		}
		function slickHandle() {
			//$(".slider").not('.slick-initialized').slick()
			console.log("wrap-slick3", $('.wrap-slick3'));
			$('.wrap-slick3').each(function () {
				$(this).find('.slick3').not('.slick-initialized').slick({
					slidesToShow: 1,
					slidesToScroll: 1,
					fade: true,
					infinite: true,
					autoplay: false,
					autoplaySpeed: 6000,

					arrows: true,
					appendArrows: $(this).find('.wrap-slick3-arrows'),
					prevArrow: '<button class="arrow-slick3 prev-slick3"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
					nextArrow: '<button class="arrow-slick3 next-slick3"><i class="fa fa-angle-right" aria-hidden="true"></i></button>',

					dots: true,
					appendDots: $(this).find('.wrap-slick3-dots'),
					dotsClass: 'slick3-dots',
					customPaging: function (slick, index) {
						var portrait = $(slick.$slides[index]).data('thumb');
						console.log("portrait", portrait);
						return '<img class="portrait" src=" ' + portrait + ' "/><div class="slick3-dot-overlay"></div>';
					},
				});
			});
		}
		function initIsotope() {
			/*==================================================================
			[ Isotope ]*/
			var $topeContainer = $('.isotope-grid');
			var $filter = $('.filter-tope-group');

			// filter items on button click
			$filter.each(function () {
				$filter.on('click', 'button', function () {
					var filterValue = $(this).attr('data-filter');
					console.log("filterValue", filterValue);
					$topeContainer.isotope({ filter: filterValue });
				});

			});
			// init Isotope
			var $grid = $topeContainer.each(function () {
				$(this).isotope({
					itemSelector: '.isotope-item',
					layoutMode: 'fitRows',
					percentPosition: true,
					animationEngine: 'best-available',
					masonry: {
						columnWidth: '.isotope-item'
					}
				});
			});


			var isotopeButton = $('.filter-tope-group button');

			$(isotopeButton).each(function () {
				$(this).on('click', function () {
					for (var i = 0; i < isotopeButton.length; i++) {
						$(isotopeButton[i]).removeClass('how-active1');
					}

					$(this).addClass('how-active1');
				});
			});

			/*==================================================================
			[ Show modal1 ]*/
			$('.js-show-modal1').on('click', function (e) {
				e.preventDefault();
				$('.js-modal1').addClass('show-modal1');
				var maProduct = $(this).attr('data-filter-id');
				console.log("maProduct", maProduct);
				var product = arrProducts.find(item => item.MaSP == maProduct);
				console.log("product", product);
				const name = document.getElementById('js-name-product-model');
				const price = document.getElementById('js-price-product-model');
				const describe = document.getElementById('js-describe-product-model');
				const img1 = document.getElementById('js-img-1-product-model');
				const img2 = document.getElementById('js-img-2-product-model');
				const img3 = document.getElementById('js-img-3-product-model');
				const href1 = document.getElementById('js-href-1-product-model');
				const href2 = document.getElementById('js-href-2-product-model');
				const href3 = document.getElementById('js-href-3-product-model');
				const btnAddProduct = $('#js-btn-add-cart-product');
				btnAddProduct.attr("data-product-by-id", product.MaSP);
				$(".item-slick3").each((index, elem) => {
					elem.setAttribute("data-thumb", "assets/images/products/" + product.AnhSP);
				})
				//const dataThumb1 = document.getElementById('js-thumb-1-product-model');
				//const dataThumb2 = document.getElementById('js-thumb-2-product-model');
				//const dataThumb3 = document.getElementById('js-thumb-3-product-model');
				//$(".item-slick3").each((index, elem) => {
					//console.log("data-thumb", elem.getAttribute("data-thumb"));
				//})

				//dataThumb1.setAttribute("data-thumb","assets/images/products/");
				//dataThumb2.setAttribute("data-thumb","assets/images/products/");
				//dataThumb3.setAttribute("data-thumb","assets/images/products/");
				//console.log("dataThumb1",dataThumb1.attr("data-thumb"));
				//console.log("dataThumb2",dataThumb2.attr("data-thumb"));
				//console.log("dataThumb3",dataThumb3.attr("data-thumb"));
				name.innerText = product.TenSP;
				price.innerText = product.GiaSP;
				describe.innerText = product.MotaSP;
				img1.src = "assets/images/products/" + product.AnhSP;
				img2.src = "assets/images/products/" + product.AnhSP;
				img3.src = "assets/images/products/" + product.AnhSP;
				href1.href = "assets/images/products/" + product.AnhSP;
				href2.href = "assets/images/products/" + product.AnhSP;
				href3.href = "assets/images/products/" + product.AnhSP;
				//$('#js-data-thumb-1-product-model').attr("data-thumb","assets/images/products/" + product.AnhSP);
				//$('#js-data-thumb-2-product-model').attr("data-thumb","assets/images/products/" + product.AnhSP);
				//$('#js-data-thumb-3-product-model').attr("data-thumb","assets/images/products/" + product.AnhSP);
				//console.log("img1.src", img1.src);
				//console.log("img2.src", img2.src);
				//console.log("img3.src", img3.src);
				//console.log("href1.href", href1.href);
				//console.log("href2.href", href2.href);
				//console.log("href3.href", href3.href);
				//console.log("dataThumb1.attr('data-thumb')",dataThumb1.getAttribute("data-thumb"));
				//console.log("dataThumb2.attr('data-thumb')",dataThumb2.getAttribute("data-thumb"));
				//console.log("dataThumb3.attr('data-thumb')",dataThumb3.getAttribute("data-thumb"));
				slickHandle();
			});

			$('.js-hide-modal1').on('click', function () {
				$('.js-modal1').removeClass('show-modal1');
			});
		}
		$(document).ready(function () {
			getListProduct()
				.then(data => {
					const showListProductIsotope = document.getElementById('js-show-list-product-isotope');
					showListProductIsotope.innerHTML = "";
					let html = '<div class="row isotope-grid" id="js-list-product-isotope-grid">';
					const dataMap = data.map(item => {
						return '<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item '+item.MaDM+'"><!-- Block2 --><div class="block2"><div class="block2-pic hov-img0"><img src="assets/images/products/'+item.AnhSP+'" alt="IMG-PRODUCT"><a href="#" data-filter-id="'+item.MaSP+'" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">Quick View</a></div><div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'+item.TenSP+'</a><span class="stext-105 cl3">'+item.GiaSP +'</span></div><div class="block2-txt-child2 flex-r p-t-3"><a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><img class="icon-heart1 dis-block trans-04" src="assets/images/icons/icon-heart-01.png" alt="ICON"><img class="icon-heart2 dis-block trans-04 ab-t-l" src="assets/images/icons/icon-heart-02.png" alt="ICON"></a></div></div></div></div>';
					})
					html += dataMap.join("");
					html += '</div>';
					showListProductIsotope.innerHTML = html;
					arrProducts = data;
					return true;
				}).then(data => {
					getListCateroty()
						.then(data => {
							const contanerCaterotys = document.getElementById('js-caterory-filter-list');				
							contanerCaterotys.innerHTML = "";				
							let html = '<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">All Products</button>';
							const dataMap = data.map(item => {
								return '<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".'+item.MaDM +'">'+item.TenDM +'</button>';
							})		
							html += dataMap.join("");
							contanerCaterotys.innerHTML = html;
							arrCateroty = data;
							return true;
						}).then(data => {
							initIsotope();
						}).catch(err => {
							console.log("Err Show List Caterory Home:", err);
						});
				}).catch(err => {
					console.log("Err Show List Product Home:", err);
				});
			/*---------------------------------------------*/
			$('.js-addcart-detail').each(function () {
				var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
				$(this).on('click', function (e) {
					const btnAddProduct = e.target.getAttribute('data-product-by-id');
					const quantityProduct = document.getElementById('js-num-product-model').value;
					console.log("btnAddProduct", btnAddProduct);
					const productFindDatabase = arrProducts.find(item => item.MaSP == btnAddProduct);	
					console.log("productFindDatabase",productFindDatabase)
					let productAddCartModel = {
						productId: 1,
						productName: "Product 1",
						quantity: 1,
						price: 100,
						productImage: "image-url"
					};
					productAddCartModel.productId = productFindDatabase.MaSP;
					console.log("product.productId",productAddCartModel.productId)
					productAddCartModel.productName = productFindDatabase.TenSP;	
					productAddCartModel.quantity = quantityProduct;																			
					productAddCartModel.price = productFindDatabase.GiaSP;		
					productAddCartModel.productImage = productFindDatabase.AnhSP;
					addToCart(productAddCartModel);						
					swal(nameProduct, "is added to cart !", "success");
				});
			});
		});
	</script>