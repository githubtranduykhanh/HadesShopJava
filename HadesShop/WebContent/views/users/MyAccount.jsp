<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <link rel="shortcut icon" href="//theme.hstatic.net/1000306633/1000891824/14/favicon.png?v=572"
        type="image/png" />
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
        <link href="https://unpkg.com/@webpixels/css/dist/index.css" rel="stylesheet">
        <!-- Custom styles for this template-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css"
          integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body class="animsition">
      <jsp:include page="/views/components/NavOnly.jsp"></jsp:include>
      <!-- Title page -->
      <section class="bg-img1 txt-center p-lr-15 p-tb-92"
        style="background-image: url('assets/images/Banner/slideshow_0.jpg');padding-top: 30px; padding-bottom: 54px;">
      </section>

      <div>
        <div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary">
          <!-- Vertical Navbar -->
          <nav
            class="navbar show navbar-vertical h-lg-screen navbar-expand-lg px-0 py-3 py-lg-0 navbar-light bg-light border-bottom border-bottom-lg-0 border-end-lg"
            id="navbarVertical">
            <div class="container-fluid">
              <!-- Toggler -->
              <button class="navbar-toggler ms-n2" type="button" data-bs-toggle="collapse"
                data-bs-target="#sidebarCollapse" aria-controls="sidebarCollapse" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <!-- Brand -->
              <div class="navbar-brand py-lg-5 mb-lg-5 px-lg-6 me-0" href="#">
                <c:choose>
                  <c:when test="${sessionScope['LoginName'] != null}">
                    <!-- item gallery sidebar -->
                    <div class="m-b-10">
                      <a class="item-gallery bg-img1" href="assets/images/KhachHang/${sessionScope['LoginImage']}"
                        data-lightbox="gallery"
                        style="background-image: url('assets/images/KhachHang/${sessionScope['LoginImage']}');" id="js-nav-image-my-account"></a>
                    </div>
                    <span class="mtext-101 cl5" style="display: block; text-align: center;" id="js-nav-name-my-account">
                      ${sessionScope['LoginName']}
                    </span>
                  </c:when>
                  <c:otherwise>
                    <!-- item gallery sidebar -->
                    <div class="m-b-10">
                      <a class="item-gallery bg-img1" href="assets/images/DanhMuc/logo_key_back.jpg"
                        data-lightbox="gallery"
                        style="background-image: url('assets/images/DanhMuc/logo_key_back.jpg');"></a>
                    </div>
                    <span class="mtext-101 cl5" style="display: block; text-align: center;">
                      Hades Shop
                    </span>
                  </c:otherwise>
                </c:choose>
              </div>
              <!-- User menu (mobile) -->
              <div class="navbar-user d-lg-none">
                <!-- Dropdown -->
                <div class="dropdown">
                  <!-- Toggle -->
                  <a href="#" id="sidebarAvatar" role="button" data-bs-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">
                    <div class="avatar-parent-child">
                      <img alt="Image Placeholder"
                        src="https://images.unsplash.com/photo-1548142813-c348350df52b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                        class="avatar avatar- rounded-circle">
                      <span class="avatar-child avatar-badge bg-success"></span>
                    </div>
                  </a>
                  <!-- Menu -->
                  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="sidebarAvatar">
                    <a href="#" class="dropdown-item">Profile</a>
                    <a href="#" class="dropdown-item">Settings</a>
                    <a href="#" class="dropdown-item">Billing</a>
                    <hr class="dropdown-divider">
                    <a href="#" class="dropdown-item">Logout</a>
                  </div>
                </div>
              </div>
              <!-- Collapse -->
              <div class="collapse navbar-collapse" id="sidebarCollapse">
                <!-- Form -->
                <form class="mt-4 mb-3 d-none">
                  <div x-data="{focused: false}" :class="{ 'focused': focused }">
                    <div class="input-group input-group-sm">
                      <span class="input-group-text border-end-0 rounded-left-pill" id="basic-addon1">
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor"
                          xmlns="http://www.w3.org/2000/svg">
                          <path fill-rule="evenodd"
                            d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z" />
                          <path fill-rule="evenodd"
                            d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z" />
                        </svg>
                      </span>
                      <input type="text" class="form-control border-left-0 ps-0 rounded-end-pill" placeholder="Search"
                        aria-label="Username" aria-describedby="basic-addon1" @focus="focused = !focused"
                        @click.away="focused = false">
                    </div>
                  </div>
                </form>
                <!-- Navigation -->
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="MyAccount">
                      <i class="bi bi-house"></i> Info Account
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Order">
                      <i class="bi bi-bar-chart"></i> The Order 
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Password">
                      <i class="bi bi-chat"></i> Update Password
                      <span
                        class="badge bg-opacity-30 bg-primary text-primary rounded-pill d-inline-flex align-items-center ms-auto">6</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">
                      <i class="bi bi-bookmarks"></i> Collections
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">
                      <i class="bi bi-people"></i> Users
                    </a>
                  </li>
                </ul>
                <!-- Divider -->
                <hr class="navbar-divider my-5 opacity-20">
              </div>
            </div>
          </nav>
          <!-- Main content -->
          <div class="h-screen flex-grow-1 overflow-y-lg-auto">
            <!-- Header -->
            <header class="bg-surface-primary border-bottom pt-6">
              <div class="container-fluid">
                <div class="mb-npx">
                  <div class="row align-items-center">
                    <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                      <!-- Title -->
                      <h1 class="h2 mb-0 ls-tight">Account Settings</h1>
                    </div>
                    <!-- Actions -->
                    <div class="col-sm-6 col-12 text-sm-end">
                      <div class="mx-n1">
                        <a href="#" class="btn d-inline-flex btn-sm btn-neutral mx-1">
                          <span class=" pe-2">
                            <i class="bi bi-pencil"></i>
                          </span>
                          <span>Edit</span>
                        </a>
                        <a href="#" class="btn d-inline-flex btn-sm btn-primary mx-1">
                          <span class=" pe-2">
                            <i class="bi bi-plus"></i>
                          </span>
                          <span>Create</span>
                        </a>
                      </div>
                    </div>
                  </div>
                  <!-- Nav -->
                  <ul class="nav nav-tabs mt-4 overflow-x border-0">
                    <li class="nav-item ">
                      <a href="#" class="nav-link active">All files</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link font-regular">Shared</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link font-regular">File requests</a>
                    </li>
                  </ul>
                </div>
              </div>
            </header>
            <!-- Main -->
            <main class="py-6 bg-surface-secondary" style="background: #fff !important;">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-xl-7 mx-auto">
                    <!-- Profile picture -->
                    <div class="card shadow border-0 mt-4 mb-10">
                      <div class="card-body">
                        <div class="d-flex align-items-center">
                          <div>
                            <div class="d-flex align-items-center">
                              <c:choose>
                                <c:when test="${sessionScope['LoginName'] != null}">
                                  <a href="#" class="avatar avatar-lg bg-warning rounded-circle text-white">
                                    <img alt="..." style="height: 100%;"
                                      src="assets/images/KhachHang/${sessionScope['LoginImage']}" id="js-logo-image-my-account">
                                  </a>
                                  <div class="ms-4">
                                    <span class="h4 d-block mb-0" id="js-text-name-my-account">${sessionScope['LoginName']}</span>
                                    <a href="#" class="text-sm font-semibold text-muted">View Profile</a>
                                  </div>
                                </c:when>
                                <c:otherwise>
                                  <a href="#" class="avatar avatar-lg bg-warning rounded-circle text-white">
                                    <img alt="..."
                                      src="assets/images/DanhMuc/logo_key_back.jpg">
                                  </a>
                                  <div class="ms-4">
                                    <span class="h4 d-block mb-0">Hades Shop</span>
                                    <a href="#" class="text-sm font-semibold text-muted">View Profile</a>
                                  </div>
                                </c:otherwise>
                              </c:choose>
                              
                            </div>
                          </div>

                        </div>
                      </div>
                    </div>
                    <!-- Form -->
                    <div class="mb-5">
                      <h5 class="mb-0">Contact Information</h5>
                    </div>
                    <form class="mb-6" id="js-from-update-my-account">
                      <input type="text" name="id" hidden value="${sessionScope['LoginID']}">
                      <div class="row mb-5">
                        <div class="col-12">
                          <div class="">
                            <label class="form-label" for="first_name">Full name</label>
                            <input type="text" class="form-control" id="full_name" name="name">
                          </div>
                        </div>
                      </div>
                      <div class="row g-5">
                        <div class="col-md-6">
                          <div class="">
                            <label class="form-label" for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="">
                            <label class="form-label" for="phone_number">Phone number</label>
                            <input type="tel" class="form-control" id="phone_number" name="number">
                          </div>
                        </div>
                        <div class="col-12">
                          <div class="">
                            <label class="form-label" for="js-select-provinces">Address</label>
                            <div class="row">
                              <div class="col">
                                <select class="js-select2 form-select" name="provinces" id="js-select-provinces">
                                  <option>Provinces/Citys</option>
                                  <option>USA</option>
                                  <option>UK</option>
                                </select>
                              </div>
                              <div class="col">
                                <select class="js-select2 form-select" name="districts" id="js-select-districts">
                                  <option>Districts</option>
                                  <option>USA</option>
                                  <option>UK</option>
                                </select>
                              </div>
                              <div class="col">
                                <select class="js-select2 form-select" name="wards" id="js-select-wards">
                                  <option>Wards</option>
                                  <option>USA</option>
                                  <option>UK</option>
                                </select>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-12">
                          <div class="">
                            <label class="form-label" for="js-my-account-image">Avatar</label>
                            <input class="dropify" type="file" id="js-my-account-image" name="file">
                          </div>
                        </div>
                        <div class="col-12">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="check_primary_address"
                              id="check_primary_address">
                            <label class="form-check-label" for="check_primary_address">
                              Make this my default address
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="text-end">
                        <button type="button" class="btn btn-sm btn-neutral me-2">Cancel</button>
                        <button type="submit" class="btn btn-sm btn-primary" onclick="sendUpdate(event)">Save</button>
                      </div>
                    </form>
                    <hr class="my-10" />
                  </div>
                </div>
              </div>
            </main>
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

      <!--===============================================================================================-->
      <script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
      <!--===============================================================================================-->
      <script src="assets/vendor/animsition/js/animsition.min.js"></script>
      <!--===============================================================================================-->
      <script src="assets/vendor/bootstrap/js/popper.js"></script>
      <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
      <!--===============================================================================================-->
      <script src="assets/vendor/select2/select2.min.js"></script>
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
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"
        integrity="sha512-8QFTrG0oeOiyWo/VM9Y8kgxdlCryqhIxVeRpWSezdRRAvarxVtwLnGroJgnVW9/XBRduxO/z1GblzPrMQoeuew=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
        const sessionLogin = `${sessionScope['LoginID']}`;
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
        function shoppingCartNav() {

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
            console.log("product.productId 1", productItem.productId);
            console.log("cart-addToCart", cart);
            // Kiểm tra sản phẩm đã có trong giỏ hàng hay chưa
            var existingProduct = cart.find(function (item) {
              console.log("isProductID:", item.productId == productItem.productId);
              console.log("item.productId", item.productId);
              console.log("product.productId 2", productItem.productId);
              return item.productId == productItem.productId;
            });
            console.log("existingProduct", existingProduct);
            if (existingProduct) {
              // Nếu sản phẩm đã có trong giỏ hàng
              existingProduct.quantity = existingProduct.quantity + parseFloat(productItem.quantity);
              console.log("existingProduct.quantity", existingProduct.quantity);
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
            console.log("cart", cart);
            const cartItemsElement = document.getElementById("js-model-shopping-cart");
            cartItemsElement.innerHTML = "";
            cart.forEach((item, index) => {
              const html = '<li  class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img" data-row-index="' + index + '"><img src="assets/images/products/' + item.productImage + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8"><a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + item.productName + '</a><span class="header-cart-item-info">' + item.price + ' x ' + item.quantity + '</span></div></li>';
              cartItemsElement.innerHTML += html;
            });
            totalPriceCart();
            addEventDelete();
          }
          //Hàm tính total price
          function totalPriceCart() {

            const cartTotalProduct = document.getElementById("js-cart-total-product");
            let num = 0;
            let totalPrice = 0;
            cart.forEach((item, index) => {
              totalPrice += item.price * item.quantity;
              num++;
            })
            $('#js-num-product-cart').attr('data-notify', num);
            console.log("totalPrice", totalPrice);
            cartTotalProduct.innerText = "Total: " + totalPrice;
          }
          //Hàm add Event delete
          function addEventDelete() {
            $('.header-cart-item-img').each(function () {
              $(this).on('click', function (e) {
                var indexValue = $(this).attr('data-row-index');
                console.log("$(this)", $(this));
                console.log("indexValue", indexValue);
                $(this).parent().remove();
                removeFromCart(indexValue);
              });
            });
          }
          // Hàm để hiển thị các sản phẩm trong giỏ hàng
          function displayAddCartItems(item) {
            const cartItemsElement = document.getElementById("js-model-shopping-cart");
            const html = '<li class="header-cart-item flex-w flex-t m-b-12"><div class="header-cart-item-img"><img src="assets/images/products/' + item.productImage + '" alt="IMG"></div><div class="header-cart-item-txt p-t-8"><a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">' + item.productName + '</a><span class="header-cart-item-info">' + item.price + '</span></div></li>';
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

        function addressSelect(provincesCode,districtsCode,wardsCode) {
          const provinces = document.getElementById("js-select-provinces");
          const districts = document.getElementById("js-select-districts");
          const wards = document.getElementById("js-select-wards");
          const URL = "https://vn-public-apis.fpo.vn/";
          /*----------------------GET Select Provinces-----------------------*/
          function getSelectProvinces() {
            return new Promise((resolve, reject) => {
              $.ajax({
                url: URL + "provinces/getAll",
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
                url: URL + "districts/getByProvince",
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
                url: URL + "wards/getByDistrict",
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
          function handlChangeSelectDistrictByProvince(){
              console.log(districts.value);
              getSelectWardsByDistrict(districts.value)
                .then(data =>{
                  console.log("getSelectWardsByDistrict",data);
                  let html = '<option selected value="">Wards</option>';							
                  const wardsMap = data.map( item => {
                    return '<option value="'+item.code+'">'+item.name_with_type+'</option>';
                  })
                  wards.innerHTML = html + wardsMap.join("");
                  
                  }).catch(err => {
                      console.log("Err getSelectProvinces: ", err)
                  })                                 
          }
          getSelectProvinces()
            .then(data => {
              console.log("getSelectProvinces", data);
              let html = '<option selected>Provinces/Citys</option>';
              const provincesMap = data.map(item => {
                return '<option value="' + item.code + '">' + item.name_with_type + '</option>';
              })
              provinces.innerHTML = html + provincesMap.join("");
              return true;
            }).then(data => {
                getSelectDistrictByProvince(provincesCode)
                  .then(data => {
                    console.log("getSelectDistrictByProvince", data);
                    let html = '<option selected>Districts</option>';
                    const districtsMap = data.map(item => {
                      return '<option value="' + item.code + '">' + item.name_with_type + '</option>';
                    })
                    districts.innerHTML = html + districtsMap.join("");
                    return true
                  }).then(data => {   
                    getSelectWardsByDistrict(districtsCode)
                      .then(data => {
                        console.log("getSelectWardsByDistrict", data);
                        let html = '<option selected>Wards</option>';
                        const wardsMap = data.map(item => {
                            return '<option value="' + item.code + '">' + item.name_with_type + '</option>';
                        })
                        wards.innerHTML = html + wardsMap.join("");   
                        return true                  
                      }).then(data => {
                        provinces.value = provincesCode;
                        districts.value =  districtsCode;
                        wards.value = wardsCode;
                        console.log(provinces.value);
                        console.log(districts.value);
                        console.log(wards.value); 
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
                                  districts.addEventListener("change",handlChangeSelectDistrictByProvince)										
                                }).catch(err => {
                                  console.log("Err getSelectProvinces: ", err)
                                })
                        })
                      }).catch(err => {
                        console.log("Err getSelectWardsByDistrict: ", err)
                      })  
                  }).catch(err => {
                    console.log("Err getSelectDistrictByProvince: ", err)
                  })                      
            }).catch(err => {
              console.log("Err getSelectProvinces: ", err)
            })
             
          /*---------------------------------------------*/
          
        }

        function getMyAccount(id) {
					return new Promise((resolve, reject) => {
						$.ajax({
							url:  "/HadesShop/MyAccount",
							type: 'GET',
							data: {
								action:"getmyaccount",
                id
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
        function sendUpdate(event) {
          event.preventDefault();
          if(sessionLogin != ""){
            $.ajax({
                  url: "/HadesShop/MyAccount",
                  type: 'POST',
                  data: new FormData(document.getElementById("js-from-update-my-account")),
                  enctype: 'multipart/form-data',
                  processData: false,
                  contentType: false
                  ,
                  success: function (data) {
                    if(data != null){
                      swal("My Account", "is update my account !", "success");
                      const imageNav = document.getElementById('js-nav-image-my-account');
                      const imageLogo = document.getElementById('js-logo-image-my-account');
                      const imageNavModal = document.getElementById('js-nav-logo-avatar-modal');
                      const textNavModal = document.getElementById('js-nav-text-name-modal');
                      const nameNav = document.getElementById('js-nav-name-my-account');
                      const nameText = document.getElementById('js-text-name-my-account');                   
                      imageNavModal.style.backgroundImage = "url('assets/images/KhachHang/"+data.AnhDaiDien+"')";
                      textNavModal.innerText = data.TenKh;

                      imageNav.style.backgroundImage = "url('assets/images/KhachHang/"+data.AnhDaiDien+"')";                     
                      nameNav.innerText = data.TenKh;

                      imageLogo.src = "assets/images/KhachHang/"+data.AnhDaiDien;
                      nameText.innerText = data.TenKh;
                      
                    }else{
                      swal("ERR", "Err update my account !", "error");
                    }
                  },
                  error: function (error) {
                    reject(error)
                  },
                })
          }else{
            swal("ERR", "Err update my account !", "warning");
          }
				}
        function resetPreview(name, src, fname = '') {
                //let inputValue = document.getElementById('js-add-product-image').value;
                let input = $('input[name="' + name + '"]');               
                let wrapper = input.closest('.dropify-wrapper');
                let preview = wrapper.find('.dropify-preview');
                let filename = wrapper.find('.dropify-filename-inner');
                let render = wrapper.find('.dropify-render').html('');      
                console.log("name",name);  
                console.log("src",src);  
                console.log("fname",fname);  
                //inputValue = src;  
                //console.log("Input value 1: ",inputValue)    
                //console.log("Input value 2: ",input.val())                 
                wrapper.removeClass('has-error').addClass('has-preview');
                filename.html(fname);
                render.append($('<img />').attr('src', src).css('max-height', input.data('height') || ''));
                preview.fadeIn();
        }
        //Window Ready
        $(document).ready(function () {
                                    
          shoppingCartNav();
          
          $('.dropify').dropify();
          if(sessionLogin != ""){
            getMyAccount(sessionLogin).then(data => {
              console.log("getMyAccount",data);
              if(data != null){
                const [codeProvinces,codeDistricts,codeWards] = data.DiaChiKH.split(",");
                addressSelect(codeProvinces,codeDistricts,codeWards);
                const inputName = document.querySelector('input[name="name"]');
                const inputEmail = document.querySelector('input[name="email"]');
                const inputNumber = document.querySelector('input[name="number"]');
                const urlImage = 'assets/images/KhachHang/' + data.AnhDaiDien;
                inputName.value = data.TenKh;
                inputEmail.value = data.EmailKH;
                inputNumber.value = data.sdtKH;
                $('.dropify').dropify();
                resetPreview('file', urlImage, data.AnhDaiDien);
              }
            });
          }
        })

      </script>