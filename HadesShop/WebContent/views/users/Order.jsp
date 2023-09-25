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
        <link href="assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" />
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
                  <div class="col-12">
                    <div class="card-body" id="js-table-responsive-inner-html">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTableOrder" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Order Code</th>
                                        <th>Name</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Order status</th>
                                        <th>Date created</th>
                                        <th>Money</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>Order Code</th>
                                        <th>Name</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Order status</th>
                                        <th>Date created</th>
                                        <th>Money</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                                <tbody id="js-table-body">
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>$320,800</td>
                                        <td>$320,800</td>
                                    </tr>                                
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    <hr class="my-10" />
                  </div>
                </div>
              </div>
            </main>
          </div>
        </div>
      </div>



      <!-- Order Details Modal-->
      <div class="modal fade" id="orderDetailsModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
      aria-labelledby="js-heading-order-detail" aria-hidden="true">
      <div class="modal-dialog" style="max-width: 1190px;">
          <div class="modal-content">
              <div class="modal-header">
                  <h1 class="modal-title fs-5" id="js-heading-order-detail">Order details</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                  <form id="js-OrderDetails">                                            
                      <input name="id" value="0" hidden="true" id="js-id-order-detail">
                      <div class="row g-3">
                          <div class="col-6">
                              <label for="js-name-order-detail" class="col-form-label">Name</label>
                              <input type="text" class="form-control" id="js-name-order-detail" name="name">
                          </div>
                          <div class="col-6">
                              <label for="js-email-order-detail" class="col-form-label">Email</label>
                              <input type="text" class="form-control" id="js-email-order-detail" name="email">
                          </div>
                          <div class="col-6">
                              <label for="js-address-order-detail" class="col-form-label">Address</label>
                              <input type="text" class="form-control" id="js-address-order-detail" name="address">
                          </div>
                          <div class="col-6">
                              <label for="js-phone-order-detail" class="col-form-label">Phone</label>
                              <input type="text" class="form-control" id="js-phone-order-detail" name="phone">
                          </div>
                          <div class="col-2">
                              <label for="js-date-create-order-detail" class="col-form-label">Date create</label>
                              <input type="date" class="form-control" id="js-date-create-order-detail" name="datecreate">
                          </div>
                          <div class="col-12">
                              <div class="card-body">
                                  <div class="table-responsive">
                                      <table class="table table-bordered" id="dataTableOrderDetail" width="100%" cellspacing="0">
                                          <thead>
                                              <tr>
                                                  <th>Image</th>
                                                  <th>Name</th>
                                                  <th>Price</th>
                                                  <th>Quantity</th>
                                                  <th>Total</th>
                                              </tr>
                                          </thead>
                                          <tfoot>
                                              <tr>
                                                  <th>Image</th>
                                                  <th>Name</th>
                                                  <th>Price</th>
                                                  <th>Quantity</th>
                                                  <th>Total</th>
                                              </tr>
                                          </tfoot>
                                          <tbody id="js-table-body-order-detail">
                                              <tr>
                                                  <td>Tiger Nixon</td>
                                                  <td>System Architect</td>
                                                  <td>Edinburgh</td>
                                                  <td>61</td>
                                                  <td>2011/04/25</td>
                                              </tr>                                
                                          </tbody>
                                      </table>
                                  </div>
                              </div>
                          </div>
                          <div class="col-12" style="display: flex;justify-content: flex-end;">
                              <label class="col-form-label" id="js-total-price-order-detail">Total Price:</label>
                          </div>
                      </div>
                  </form>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              </div>
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
      <script src="assets/vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>
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


        function getListOrder(id) {
            return new Promise((resolve, reject) => {
              $.ajax({
                url: "/HadesShop/Order",
                type: 'GET',
                data: {
                  action:"getlistorder",
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
        function selectOrderStatus(status){
            if(status == 0){
                return 'Chuẩn bị đơn hàng';
            }else if(status == 1){
                return 'Vận chuyển';
            }else{
                return 'Hoàng Thành';
            }                   
        }
        function getOrderById(id) {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminOrders",
                        type: 'GET',
                        data: {
                            action: 'byid',
                            id: id
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
            function getListOrderDetailById(id) {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminOrders",
                        type: 'GET',
                        data: {
                            action: 'getlistorderdetailbyid',
                            id: id
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
            function getListProductOrderDetail() {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminOrders",
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
        function displayTableProductOrderDetail(arrProduct){
            const tableProductOrderDetail = document.getElementById('js-table-body-order-detail');
            tableProductOrderDetail.innerHTML =  "";
            const arrProductMap =  arrProduct.map(item => {
                return '<tr data-order-detail="'+item.MaSP+'"><td><img class="img-profile rounded-circle" style="height:2rem; width:2rem;"  src="assets/images/products/'+item.Image+'"></td><td>'+item.Name+'</td><td>'+item.Price+'</td><td>'+item.Quantity+'</td><td>'+item.Total+'</td></tr>';
            })
            tableProductOrderDetail.innerHTML =  arrProductMap.join("");
            $('#dataTableOrderDetail').DataTable();
        }
        //Data modal Order     
        const orderDetailsModal = document.getElementById('orderDetailsModal');
        if(orderDetailsModal){
                orderDetailsModal.addEventListener('show.bs.modal', event => {
                    // Button that triggered the modal
                    const button = event.relatedTarget;
                    // Extract info from data-bs-* attributes
                    const id = button.getAttribute('data-bs-id');
                    const idModal = orderDetailsModal.querySelector('#js-id-order-detail');
                    idModal.value = id;
                    // If necessary, you could initiate an Ajax request here
                    const titleHeading = orderDetailsModal.querySelector('#js-heading-order-detail');
                    console.log("id",id)     
                    console.log("idModal",idModal) 
                    console.log("titleHeading",titleHeading) 
                    const allPromise = Promise.all([getOrderById(id), getListOrderDetailById(id),getListProductOrderDetail()]);

                    allPromise.then(([orderbyid,listorderdetailbyid,listproduct]) => {
                        // [resolvedValue1, resolvedValue2,resolvedValue3]
                        console.log("orderbyid:",orderbyid); 
                        console.log("listorderdetailbyid:",listorderdetailbyid); 
                        console.log("listproduct:",listproduct); 
                        if(orderbyid != null){
                            const inputName = orderDetailsModal.querySelector('input[name=name]');
                            const inputEmail = orderDetailsModal.querySelector('input[name=email]');
                            const inputAddress = orderDetailsModal.querySelector('input[name=address]');
                            const inputPhone = orderDetailsModal.querySelector('input[name=phone]');
                            const inputDateCreate = orderDetailsModal.querySelector('input[name=datecreate]');
                            const inputTotalPrice = orderDetailsModal.querySelector('#js-total-price-order-detail');
                            inputName.value = orderbyid.TenKH;
                            inputEmail.value = orderbyid.EmailKH;
                            inputAddress.value = orderbyid.DiaChiKH;
                            inputPhone.value = orderbyid.sdtKH;
                            inputDateCreate.value = orderbyid.NgayTao;
                            inputTotalPrice.innerText = "Total Price:"+ orderbyid.ThanhTienDH;
                        }
                        if(listorderdetailbyid != null && listproduct != null){
                            let arrTableCustom = [];   
                                                  
                            const arrMap = listorderdetailbyid.map(item => {
                                const productFind = listproduct.find(productItem => productItem.MaSP == item.MaSP);                              
                                return {
                                    MaSP:productFind.MaSP,
                                    Name:productFind.TenSP,
                                    Image:productFind.AnhSP,
                                    Price:productFind.GiaSP,
                                    Quantity:item.SoLuongDat,
                                    Total:item.DonGiaDat,
                                }
                            })
                            console.log("arrMap",arrMap);
                            if(arrMap.length){
                                displayTableProductOrderDetail(arrMap);
                            }
                        }
                    }).catch(error => {
                        console.log(error); // rejectReason of any first rejected promise
                    });                     
                })
            }
        
        //Window Ready
        $(document).ready(function () {
                                    
          shoppingCartNav();
          
          if(sessionLogin != ""){
            getListOrder(sessionLogin).then( data => {
                if(data){
                    let html = '<div class="table-responsive"><table class="table table-bordered" id="dataTableOrder" width="100%" cellspacing="0"><thead><tr><th>Order Code</th><th>Name</th><th>Phone</th><th>Email</th><th>Address</th><th>Order status</th><th>Date created</th><th>Money</th><th>Action</th></tr></thead><tfoot><tr><th>Order Code</th><th>Name</th><th>Phone</th><th>Email</th><th>Address</th><th>Order status</th><th>Date created</th><th>Money</th><th>Action</th></tr></tfoot><tbody id="js-table-body">';
                    const tableResponsive = document.getElementById("js-table-responsive-inner-html");
                    const arrMap = data.map(item => {
                        return '<tr><td>'+item.MaDonDatHang+'</td><td>'+item.TenKH+'</td><td>'+item.sdtKH+'</td><td>'+item.EmailKH+'</td><td>'+item.DiaChiKH+'</td><td>'+selectOrderStatus(item.TinhTrangDonHang)+'</td><td>'+item.NgayTao+'</td><td>'+item.ThanhTienDH+'</td><td><button class="btn btn-warning btn-circle btn-sm" data-bs-toggle="modal" data-bs-target="#orderDetailsModal"  data-bs-id="'+item.MaDonDatHang+'"><i class="fa fa-cog" aria-hidden="true"></i></button></td></tr>';
                    })
                    html += arrMap.join("");
                    html += '</tbody></table></div></div></div>';                        
                    tableResponsive.innerHTML = html;
                    $('#dataTableOrder').DataTable();
                }
            }).catch(err => {
                console.log("Err getListOrder:",err)
            });
          }
          
        })

      </script>