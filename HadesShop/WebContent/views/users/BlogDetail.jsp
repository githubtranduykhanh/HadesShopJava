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
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('assets/images/Banner/slideshow_0.jpg'); height: 325px;padding-top: 120px;" id="js-panel-blog-item">
    <h2 class="ltext-105 cl0 txt-center" style="color: #dc3545;">
        Blog Detail
    </h2>
</section>
<!-- breadcrumb -->
<div class="container m-t-80">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
        <a href="Home" class="stext-109 cl8 hov-cl1 trans-04">
            Home
            <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
        </a>

        <a href="Blog" class="stext-109 cl8 hov-cl1 trans-04">
            Blog
            <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
        </a>

        <span class="stext-109 cl4">
            ${BLOGDETAIL.tieuDe}
        </span>
    </div>
</div>


<!-- Content page -->
<section class="bg0 p-t-52 p-b-20">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-lg-9 p-b-80">
                <div class="p-r-45 p-r-0-lg">
                    <!--  -->
                    <div class="wrap-pic-w how-pos5-parent">
                        <img src="assets/images/ItemTinTuc/${BLOGDETAIL.anhDaiDien}" alt="IMG-BLOG">

                        <div class="flex-col-c-m size-123 bg9 how-pos5">
                            <span class="ltext-107 cl2 txt-center">
                                22
                            </span>

                            <span class="stext-109 cl3 txt-center">
                                Jan 2023
                            </span>
                        </div>
                    </div>

                    <div class="p-t-32">
                        <span class="flex-w flex-m stext-111 cl2 p-b-19">
                            <span>
                                <span class="cl4">By</span> Admin  
                                <span class="cl12 m-l-4 m-r-6">|</span>
                            </span>

                            <span>
                                22 Jan, 2023
                                <span class="cl12 m-l-4 m-r-6">|</span>
                            </span>

                            <span>
                                StreetStyle, Fashion, Couple  
                                <span class="cl12 m-l-4 m-r-6">|</span>
                            </span>

                            <span>
                                ${BLOGDETAIL.luotXem} Comments
                            </span>
                        </span>

                        <h4 class="ltext-109 cl2 p-b-28">
                            ${BLOGDETAIL.tieuDe}
                        </h4>
						
                        <div class="stext-117 cl6 p-b-26"> 
                            ${BLOGDETAIL.chiTiet}
                        </div>

                    </div>

                    <div class="flex-w flex-t p-t-16">
                        <span class="size-216 stext-116 cl8 p-t-4">
                            Tags
                        </span>

                        <div class="flex-w size-217">
                            <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                Streetstyle
                            </a>

                            <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                Crafts
                            </a>
                        </div>
                    </div>

                    <!--  -->
                    <div class="p-t-40">
                        <h5 class="mtext-113 cl2 p-b-12">
                            Leave a Comment
                        </h5>

                        <p class="stext-107 cl6 p-b-40">
                            Your email address will not be published. Required fields are marked *
                        </p>

                        <form>
                            <div class="bor19 m-b-20">
                                <textarea class="stext-111 cl2 plh3 size-124 p-lr-18 p-tb-15" name="cmt" placeholder="Comment..."></textarea>
                            </div>

                            <div class="bor19 size-218 m-b-20">
                                <input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="name" placeholder="Name *">
                            </div>

                            <div class="bor19 size-218 m-b-20">
                                <input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="email" placeholder="Email *">
                            </div>

                            <div class="bor19 size-218 m-b-30">
                                <input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="web" placeholder="Website">
                            </div>

                            <button class="flex-c-m stext-101 cl0 size-125 bg3 bor2 hov-btn3 p-lr-15 trans-04">
                                Post Comment
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3 p-b-80">
                <div class="side-menu">
                    
                    <div class="p-t-55">
                        <h4 class="mtext-112 cl2 p-b-33">
                            Categories
                        </h4>

                        <ul id="js-ul-caterory-blog">
                            <li class="bor18">
                                <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                    Fashion
                                </a>
                            </li>

                            <li class="bor18">
                                <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                    Beauty
                                </a>
                            </li>

                            <li class="bor18">
                                <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                    Street Style
                                </a>
                            </li>

                            <li class="bor18">
                                <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                    Life Style
                                </a>
                            </li>

                            <li class="bor18">
                                <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                    DIY & Crafts
                                </a>
                            </li>
                        </ul>
                    </div>

                   


                    <div class="p-t-50">
                        <h4 class="mtext-112 cl2 p-b-27">
                            Tags
                        </h4>

                        <div class="flex-w m-r--5">
                            <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                Fashion
                            </a>

                            <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                Lifestyle
                            </a>

                            <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                Denim
                            </a>

                            <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                Streetstyle
                            </a>

                            <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                Crafts
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>	

		

	
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
<script type="text/javascript">
    /*----------------------GET Select Wards-----------------------*/
    function getCategoriesBlog() {
       return new Promise((resolve, reject) => {
           $.ajax({
               url: "/HadesShop/Blog",
               type: 'GET',
               data: {
                   action: "getcategoriesblog",
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
        const maDM = `${MADM}`;
        getCategoriesBlog().then(data =>{
            const ulCaterory = document.getElementById('js-ul-caterory-blog');
            ulCaterory.innerHTML = "";
            const dataMap = data.map(item => {
                return '<li class="bor18"><a href="BlogItem?ID='+item.MaDM+'" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">'+item.TenDM+'</a></li>';
            })
            ulCaterory.innerHTML = dataMap.join("");          
        }).catch(err =>{
            console.log("Err getCategoriesBlog:",err)
        })
    })
</script>