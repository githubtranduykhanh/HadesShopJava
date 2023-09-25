<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<link rel="stylesheet" type="text/css" href="assets/fonts/iconic/css/material-design-iconic-font.min.css">
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
<jsp:include page="/views/components/NavNoCart.jsp"></jsp:include>
<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('assets/images/Banner/slideshow_0.jpg'); height: 325px;padding-top: 120px;">
    <h2 class="ltext-105 cl0 txt-center" style="color: #dc3545;">
        Checkout
    </h2>
</section>

<!-- breadcrumb -->
	<div class="container" style="margin-top: 10px;">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="Home" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="Cart" class="stext-109 cl8 hov-cl1 trans-04">
				Shoping Cart
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>
			<span class="stext-109 cl4">
				FormCheckout
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85" id="js-form-check-out">
		<input type="text" name="action" value="completeorder" hidden>
		<input type="text" name="cart" value="" hidden id="js-input-data-cart">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart bor10 p-t-20 p-b-15 p-lr-40 p-lr-15-sm">
							<h4 class="mtext-109 cl2 p-b-30">
								Hades Shop
							</h4>
							<div class="row g-3">
								
								<div class="col-md-6">
								  <label for="inputName4" class="form-label">Name</label>
								  <input type="text" class="form-control" id="inputName4" value="${sessionScope.LoginName}" name="name">
								</div>
								<div class="col-md-6">
									<label for="inputEmail4" class="form-label">Email</label>
									<input type="email" class="form-control" id="inputEmail4" value="${sessionScope.LoginEmail}" name="email">
								  </div>
								<div class="col-12">
								  <label for="inputPhone" class="form-label">Phone</label>
								  <input type="text" class="form-control" id="inputPhone" placeholder="84+" value="${sessionScope.LoginSDT}" name="sdt">
								</div>
								<div class="col-12">
								  <label for="inputAddress2" class="form-label">Address</label>
								  <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor" name="address">
								</div>
								
								<div class="size-208 col-md-2 m-t-40">
									<span class="mtext-101 cl2">
										Payment:
									</span>
								</div>
		
								<div class="size-209 p-t-1 col-md-10 m-t-40">
									<span class="mtext-110 cl2" id="js-payment-form-checkout">
										$79.65
									</span>
									<input type="text" value="${PAYMENT}" name="payment" hidden>
								</div>
								
							</div>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm ">
							<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" onclick="handlCheckout(event)">
								Complete Order
							</button>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30 bor12">
							Shopping Cart
						</h4>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
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
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2" id="js-cart-total-product-form-checkout">
									$79.65
								</span>
							</div>
						</div>			
					</div>
				</div>
			</div>
		</div>
	</form>
	
	
	

<jsp:include page="/views/components/Footer.jsp"></jsp:include>
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
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
		//$(".js-select2").each(function(){
			//$(this).select2({
				//minimumResultsForSearch: 20,
				//dropdownParent: $(this).next('.dropDownSelect2')
			//});
		//})
	</script>
<!--===============================================================================================-->
	<script src="assets/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<!--===============================================================================================-->
	<script src="assets/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="assets/js/mainn.js"></script>


	<script type="text/javascript">
		/*--------------------Shopping Cart-----------------------*/
				// Lấy giỏ hàng từ cookie nếu tồn tại
				let cart = getCartFromCookie();
				const URL = "https://vn-public-apis.fpo.vn/";

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

				// Hàm để lấy giỏ hàng từ cookie to string
				function getCartFromCookieToString() {
					let cartCookie = getCookie("cart");
					if (cartCookie !== "") {
						return cartCookie;
					}
					return "";
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
				}
				//Hàm tính total price
				function totalPriceCart(){
					const cartTotalProduct = document.getElementById("js-cart-total-product-form-checkout");
					let totalPrice = 0;
					cart.forEach((item, index) => {
						totalPrice += item.price * item.quantity;
					})
					console.log("totalPrice",totalPrice);
					cartTotalProduct.innerText = totalPrice;
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

				/*----------------------GET Select Provinces-----------------------*/
				function getSelectProvinces() {
					return new Promise((resolve, reject) => {
						$.ajax({
							url: URL+"provinces/getAll",
							type: 'GET',
							data: {
								limit: -1
							},
							success: function (data) {
								resolve(data.data.data)
							},
							error: function (error) {
								reject(error)
							},
						})
					})
				}
				/*---------------------------------------------*/

				/*----------------------GET Select District-----------------------*/
				function getSelectDistrictByProvince(code) {
					return new Promise((resolve, reject) => {
						$.ajax({
							url: URL+"districts/getByProvince",
							type: 'GET',
							data: {
								provinceCode: code,
								limit: -1
							},
							success: function (data) {
								resolve(data.data.data)
							},
							error: function (error) {
								reject(error)
							},
						})
					})
				}
				/*---------------------------------------------*/

				/*----------------------GET Select Wards-----------------------*/
				function getSelectWardsByDistrict(code) {
					return new Promise((resolve, reject) => {
						$.ajax({
							url: URL+"wards/getByDistrict",
							type: 'GET',
							data: {
								districtCode: code,
								limit: -1
							},
							success: function (data) {
								resolve(data.data.data)
							},
							error: function (error) {
								reject(error)
							},
						})
					})
				}
				/*---------------------------------------------*/
				/*----------------------POST Proceed to Checkout-----------------------*/
				function postCheckout() {
					return new Promise((resolve, reject) => {						
						$.ajax({
							url: "/HadesShop/FormCheckout",
							type: 'POST',
							data: new FormData(document.getElementById("js-form-check-out")),
							enctype: 'multipart/form-data',
                            processData: false,
                            contentType: false
                            ,
							success: function (data) {
								resolve(data)
							},
							error: function (error) {
								reject(error)
							},
						})
					})
				}
				function postCheckoutForm() {
					const fromData = document.getElementById('js-form-check-out');
					const name = fromData.querySelector('input[name="name"]');
					const email = fromData.querySelector('input[name="email"]');
					const sdt = fromData.querySelector('input[name="sdt"]');
					const address = fromData.querySelector('input[name="address"]');
					const payment = fromData.querySelector('input[name="payment"]');
					const cart = fromData.querySelector('input[name="cart"]');
					const action = fromData.querySelector('input[name="action"]');
					return new Promise((resolve, reject) => {						
						$.ajax({
							url: "/HadesShop/FormCheckout",
							type: 'POST',
							data: {
								name:name.value,
								email:email.value,
								sdt:sdt.value,
								address:address.value,
								payment:payment.value,
								cart:cart.value,
								action:action.value						
							}
                            ,
							success: function (data) {
								resolve(data)
							},
							error: function (error) {
								reject(error)
							},
						})
					})
				}
				function handlCheckout(event) {
					event.preventDefault();
					const cartData = document.getElementById('js-input-data-cart');
					if(cart.length > 0){
						cartData.value = JSON.stringify(cart);
						postCheckoutForm().then(data =>{
							if(data == "ok"){
								swal("Shopping Cart", "Order Success !", "success");
								clearCart();
								displayCartItems();	
							}else{	
								swal("Shopping Cart Err", "Order Err !", "error");	
							}
						})
					}else{
						swal("Cart Emty", "Please add product to cart !", "warning");
					}
				}
				$(document).ready(function () {	
					const addressData = `${ADDRESS}`;
					const payment = `${PAYMENT}`;
					const inputAddress = document.getElementById('inputAddress2');
					const textPayment = document.getElementById('js-payment-form-checkout');
					if(addressData != "" && payment != ""){
						inputAddress.value = addressData;
						if(payment == "cod"){
							textPayment.innerText = "Thanh toán khi nhận hàng COD";
						}else{
							textPayment.innerText = "Thanh toán trực tuyến";
						}
					}else{
						const address = "Provinces, District, Ward"
						inputAddress.value = address;
						textPayment.innerText = "";
					}
					
				})
	</script>
</body>
</html>