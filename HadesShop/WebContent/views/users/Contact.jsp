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
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('assets/images/Banner/slideshow_0.jpg');height:325px;padding-top: 120px;">
    <h2 class="ltext-105 cl0 txt-center" style="color: #28a745;">
        Contact
    </h2>
</section>	

<!-- Content page -->
<section class="bg0 p-t-104 p-b-116">
	<div class="container">
		<div class="flex-w flex-tr">
			<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
				<form id="js-form-contact-send">
					<h4 class="mtext-105 cl2 txt-center p-b-30">
						Send Us A Message
					</h4>

					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="email" name="email" placeholder="Your Email Address">
						<img class="how-pos4 pointer-none" src="assets/images/icons/icon-email.png" alt="ICON">
					</div>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="subject" placeholder="Subject">
						<img class="how-pos4 pointer-none" src="assets/images/icons/icon-heart-02.png" alt="ICON">
					</div>
					<div class="bor8 m-b-30">
						<textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" placeholder="How Can We Help?"></textarea>
					</div>

					<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"  id="js-btn-form-contact-send">
						Submit
					</button>
				</form>
			</div>

			<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
				<div class="flex-w w-full p-b-42">
					<span class="fs-18 cl5 txt-center size-211">
						<span class="lnr lnr-map-marker"></span>
					</span>

					<div class="size-212 p-t-2">
						<span class="mtext-110 cl2">
							Address
						</span>

						<p class="stext-115 cl6 size-213 p-t-18">
							168 Nguyễn Văn Cừ nối dài, An Bình, Ninh Kiều, Cần Thơ
						</p>
					</div>
				</div>

				<div class="flex-w w-full p-b-42">
					<span class="fs-18 cl5 txt-center size-211">
						<span class="lnr lnr-phone-handset"></span>
					</span>

					<div class="size-212 p-t-2">
						<span class="mtext-110 cl2">
							Lets Talk
						</span>

						<p class="stext-115 cl1 size-213 p-t-18">
							+1 800 1236879
						</p>
					</div>
				</div>

				<div class="flex-w w-full">
					<span class="fs-18 cl5 txt-center size-211">
						<span class="lnr lnr-envelope"></span>
					</span>

					<div class="size-212 p-t-2">
						<span class="mtext-110 cl2">
							Sale Support
						</span>

						<p class="stext-115 cl1 size-213 p-t-18">
							hadeshop@gmail.com
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>	


<!-- Map -->
<div class="map">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.1078237349147!2d105.72025667486122!3d10.007951772898174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08903d92d1d0d%3A0x2c147a40ead97caa!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOYW0gQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1692809411798!5m2!1svi!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>	

		

	
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
<!--===============================================================================================-->
<script src="assets/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>

<!--===============================================================================================-->
<script src="assets/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script src="assets/vendor/sweetalert/sweetalert.min.js"></script>

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
    /*----------------------GET Select Wards-----------------------*/
    function sendContact(event) {
		event.preventDefault();
        return new Promise((resolve, reject) => {
            $.ajax({
				url: "/HadesShop/Contact",
				type: 'POST',
				data: new FormData(document.getElementById("js-form-contact-send")),
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
	/*---------------------------------------------*/
    function shoppingCartNav(){
        
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
    }
    //Window Ready
	$(document).ready(function () {
        shoppingCartNav();      
		$('#js-btn-form-contact-send').on("click",function(e){
			const inputName = document.querySelector("input[name='email']");
			const inputSubject = document.querySelector("input[name='subject']");
			const textareaMsg = document.querySelector("textarea[name='msg']");
			if(inputName.value == "" || inputSubject.value == "" || textareaMsg.value == ""){
				e.preventDefault();
				swal("Input Emty", "Err Sending Email", "warning");
			}else{
				sendContact(e).then(data => {
					console.log("data",data);
					swal("Successfully", data, "success");
					inputName.value = "";
					inputSubject.value = "";
					textareaMsg.value = "";
				}).catch(err => {
					swal("Err", "Err Sending Email", "error");
					console.log("Err sendContact",err);
				})
			}	
		})
    })
    
</script>