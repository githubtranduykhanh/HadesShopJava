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
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('assets/images/Banner/slideshow_0.jpg'); height: 325px;padding-top: 120px;">
    <h2 class="ltext-105 cl0 txt-center" style="color: #dc3545;">
        Cart
    </h2>
</section>
<!-- breadcrumb -->
	<div class="container" style="margin-top: 10px;">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="Home" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Shoping Cart
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85" id="js-form-proceed-to-checkout">
		<input type="text" name="action" value="proceedtocheckout" hidden>
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart" id="js-table-shopping-cart-products">
								<tr class="table_head">
									<th class="column-1">Product</th>
									<th class="column-2"></th>
									<th class="column-3">Price</th>
									<th class="column-4">Quantity</th>
									<th class="column-5">Total</th>
								</tr>

								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="assets/images/item-cart-04.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2">Fresh Strawberries</td>
									<td class="column-3">$ 36.00</td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" data-num-product="0" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5">$ 36.00</td>
								</tr>

								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="assets/images/item-cart-05.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2">Lightweight Jacket</td>
									<td class="column-3">$ 16.00</td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product2" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5">$ 16.00</td>
								</tr>
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">
									
								<div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
									Apply coupon
								</div>
							</div>

							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10" id="js-update-cart-products">
								Update Cart
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Cart Totals
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Subtotal:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2" id="js-total-subtotal-product">
									$79.65
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									Shipping:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<div class="stext-111 cl6 p-t-2">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="payment" value="cod" id="flexRadioDefault1" checked>
										<label class="form-check-label" for="flexRadioDefault1">
											COD Payment
										</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="payment" value="online" id="flexRadioDefault2">
										<label class="form-check-label" for="flexRadioDefault2">
											Online Payment
										</label>
									</div>
								</div>
								
								<div class="p-t-15">
									<span class="stext-112 cl8">
										Calculate Shipping
									</span>

									<div class="rs1-select2 rs2-select2 bg0 m-b-12 m-t-9">
										<select class="js-select2 form-select" name="provinces" id="js-select-provinces">
											<option>Provinces/Citys</option>
											<option>USA</option>
											<option>UK</option>
										</select>
										<!--<div class="dropDownSelect2"></div>-->
									</div>

									<div class="rs1-select2 rs2-select2 bg0 m-b-12 m-t-9">
										<select class="js-select2 form-select" name="districts" id="js-select-districts">
											<option>Districts</option>
											<option>USA</option>
											<option>UK</option>
										</select>
										<!--<div class="dropDownSelect2"></div>-->
									</div>

									<div class="rs1-select2 rs2-select2 bg0 m-b-12 m-t-9">
										<select class="js-select2 form-select" name="wards" id="js-select-wards">
											<option>Wards</option>
											<option>USA</option>
											<option>UK</option>
										</select>
										<!--<div class="dropDownSelect2"></div>-->
									</div>
									
									<div class="flex-w">
										<div class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
											Update Totals
										</div>
									</div>
										
								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2" id="js-total-bottom-product">
									$79.65
								</span>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" onclick="handlPostProceedToCheckout(event)">
							Proceed to Checkout
						</button>
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
				let arrProducts = [];
				const provinces = document.getElementById("js-select-provinces");
            	const districts = document.getElementById("js-select-districts");
            	const wards = document.getElementById("js-select-wards");
				const paymentData = document.querySelector('input[name="payment"]');
				const provincesData = document.querySelector('select[name="provinces"]');
				const districtsData = document.querySelector('select[name="districts"]');
				const wardsData = document.querySelector('select[name="wards"]');
				const URL = "https://vn-public-apis.fpo.vn/";
		/*--------------------Shopping Cart-----------------------*/
				// Lấy giỏ hàng từ cookie nếu tồn tại
				let cart = getCartFromCookie();

				// Hiển thị các sản phẩm trong giỏ hàng
				displayShoppingCart();
				// Hiển thị các sản phẩm trong model giỏ hàng
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
					displayShoppingCart();
					displayCartItems();
				}

				// Hàm để xóa sản phẩm khỏi giỏ hàng
				function removeFromCart(index) {
					cart.splice(index, 1);
					saveCartToCookie();
					totalPriceShoppingCart();
					totalPriceCart();
				}

				// Hàm để xóa toàn bộ giỏ hàng
				function clearCart() {
					cart = [];
					saveCartToCookie();
					displayShoppingCart();
					displayCartItems();
				}


				//-------------------------Cart UI------------------------------------
				// Hàm thêm sự kiện +/- số lượng sản phẩm;
				function addEvenNumProduct(){
					/*==================================================================
					[ +/- num product ]*/
					$('.btn-num-product-down').on('click', function(){
						var numProduct = Number($(this).next().val());
						if(numProduct > 0) $(this).next().val(numProduct - 1);
					});

					$('.btn-num-product-up').on('click', function(){
						var numProduct = Number($(this).prev().val());
						$(this).prev().val(numProduct + 1);
					});
				}
				// Hàm để hiển thị các sản phẩm trong giỏ hàng
				function displayShoppingCart() {
					console.log("cart",cart);
					const cartTableElement = document.getElementById("js-table-shopping-cart-products");
					cartTableElement.innerHTML = "";
					cartTableElement.innerHTML += '<tr class="table_head"><th class="column-1">Product</th><th class="column-2"></th><th class="column-3">Price</th><th class="column-4">Quantity</th><th class="column-5">Total</th></tr>';
					cart.forEach((item, index) => {
						const html = '<tr class="table_row"><td class="column-1"><div class="how-itemcart1" data-row-index="'+index+'"><img src="assets/images/products/'+item.productImage+'" alt="IMG"></div></td><td class="column-2">'+item.productName+'</td><td class="column-3">'+item.price+'</td><td class="column-4"><div class="wrap-num-product flex-w m-l-auto m-r-0"><div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m"><i class="fs-16 zmdi zmdi-minus"></i></div><input class="mtext-104 cl3 txt-center num-product" type="number" data-num-product="'+item.productId+'" value="'+item.quantity+'"><div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m"><i class="fs-16 zmdi zmdi-plus"></i></div></div></td><td class="column-5">'+item.quantity*item.price+'</td></tr>';
						cartTableElement.innerHTML += html;			
					});	
					totalPriceShoppingCart();
					addEventDeleteShoppingCart();
					addEvenNumProduct();
				}
				//Hàm tính total price
				function totalPriceShoppingCart(){

					const cartTotalSubtotalProduct = document.getElementById("js-total-subtotal-product");
					const cartTotalBottomProduct = document.getElementById("js-total-bottom-product");
					let num = 0;
					let totalPrice = 0;
					cart.forEach((item, index) => {
						totalPrice += item.price * item.quantity;
						num++;
					})
					$('#js-num-product-cart').attr('data-notify',num);
					console.log("totalPrice",totalPrice);
					cartTotalSubtotalProduct.innerText = totalPrice;
					cartTotalBottomProduct.innerText = totalPrice;
				}
				//Hàm add Event delete
				function addEventDeleteShoppingCart(){
					$('.how-itemcart1').each(function () {	
						$(this).on('click', function (e) {
							var indexValue = $(this).attr('data-row-index');
							$('.header-cart-item-img').each(function () {
								if($(this).attr('data-row-index') == indexValue){
									$(this).parent().remove();
								}
							})
							console.log("$(this)",$(this));						
							console.log("indexValue",indexValue);
							$(this).parent().parent().remove();	
							removeFromCart(indexValue);
						});
					});
				}
				
				function handlUpdateCart (){
					$('.num-product').each(function () {
						const maSP = $(this).attr('data-num-product');
						const valNum = $(this).val();
						console.log("maSP:",maSP);
						console.log("valNum:",valNum);
						let productItemUpdate = cart.find(item => item.productId == maSP);
						productItemUpdate.quantity = valNum;
						
					})
					console.log("Cart:",cart);
					saveCartToCookie();
					displayShoppingCart();
					displayCartItems();
					console.log("Cart:",cart);
				}

				//-------------------------Cart Modal------------------------------------
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
					//let num = 0;
					let totalPrice = 0;
					cart.forEach((item, index) => {
						totalPrice += item.price * item.quantity;
						//num++;
					})
					//$('#js-num-product-cart').attr('data-notify',num);
					console.log("totalPrice",totalPrice);
					cartTotalProduct.innerText = "Total: "+totalPrice;
				}
				//Hàm add Event delete
				function addEventDelete(){
					$('.header-cart-item-img').each(function () {	
						$(this).on('click', function (e) {
							var indexValue = $(this).attr('data-row-index');
							$('.how-itemcart1').each(function (){
								if($(this).attr('data-row-index') == indexValue){
									$(this).parent().parent().remove();
								}
							});
							console.log("$(this)",$(this));						
							console.log("indexValue",indexValue);
							$(this).parent().remove();	
							removeFromCart(indexValue);
						});
					});
				}
				//-------------------------------------------------------------
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




				/*----------------------GET List Product-----------------------*/
				function getListProduct() {
					return new Promise((resolve, reject) => {
						$.ajax({
							url: "/HadesShop/Cart",
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
				function postProceedToCheckout() {
					return new Promise((resolve, reject) => {						
						$.ajax({
							url: "/HadesShop/FormCheckout",
							type: 'POST',
							data: new FormData(document.getElementById("js-form-proceed-to-checkout")),
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

				function sendDataToCheckOut() {
					const payment = document.querySelector('input[name="payment"]');
					const provinces = document.querySelector('select[name="provinces"]');
					const districts = document.querySelector('select[name="districts"]');
					const wards = document.querySelector('select[name="wards"]');
					console.log("payment",payment);
					console.log("provinces",provinces);
					console.log("districts",districts);
					console.log("wards",wards);
					return new Promise((resolve, reject) => {						
						$.ajax({
							url: "/HadesShop/FormCheckout",
							type: 'GET',
							data: {
								payment:payment.value,
								provinces:provinces.value,
								districts:districts.value,
								wards:wards.value
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

				function handlPostProceedToCheckout(event) {
					event.preventDefault();
					if(cart.length > 0){
						if(provincesData.value == "" || districtsData.value == "" || wardsData.value == ""){
							swal("Address Emty", "Please add address to cart !", "warning");
						}else{							
							postProceedToCheckout().then(data =>{
								if(data == ""){
									location.href = "/HadesShop/Login";	
								}else{	
									const address = readAddress();
									location.href = '/HadesShop/FormCheckout?payment='+paymentData.value+'&address='+address+'';		
								}
							})
						}						
					}else{
						swal("Cart Emty", "Please add product to cart !", "warning");
					}
				}


				function readAddress(){
					return provinces.options[provinces.selectedIndex].text+", "+districts.options[districts.selectedIndex].text+", "+wards.options[wards.selectedIndex].text;
				}
				/*---------------------------------------------*/
				//Window Ready
				$(document).ready(function () {
					const btnUpdateCart = document.getElementById('js-update-cart-products');
					btnUpdateCart.addEventListener("click",handlUpdateCart);
					getListProduct()
						.then(data =>{
							arrProducts = data;
						})
					getSelectProvinces()
						.then(data => {
							console.log("getSelectProvinces",data);
							let html = '<option selected value="">Provinces/Citys</option>';							
							const provincesMap = data.map( item => {
								return '<option value="'+item.code+'">'+item.name_with_type+'</option>';
							})
							provinces.innerHTML = html + provincesMap.join("");
							return true;
						}).then(data => {
							provinces.addEventListener("change",function(){
								console.log(provinces.value);
								getSelectDistrictByProvince(provinces.value)
									.then(data =>{
										console.log("getSelectDistrictByProvince",data);
										let html = '<option selected value="">Districts</option>';							
										const districtsMap = data.map( item => {
											return '<option value="'+item.code+'">'+item.name_with_type+'</option>';
										})
										districts.innerHTML = html + districtsMap.join("");
										return true;
									}).then(data => {
										districts.addEventListener("change",function(){
											console.log(districts.value);
											getSelectWardsByDistrict(districts.value)
												.then(data =>{
													console.log("getSelectWardsByDistrict",data);
													let html = '<option selected value="">Wards</option>';							
													const wardsMap = data.map( item => {
														return '<option value="'+item.code+'">'+item.name_with_type+'</option>';
													})
													wards.innerHTML = html + wardsMap.join("");
												})
										})										
									})
							})
						})
				})
	</script>
</body>
</html>