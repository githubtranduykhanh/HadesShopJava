<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Hades Shop - Dashboard</title>
        <%@include file="/configs/getbootstrap.jsp" %>
            <!-- Custom fonts for this template-->
            <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
            <link
                href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                rel="stylesheet" />

            <!-- Custom styles for this template-->
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css"
                integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />
            <link href="assets/css/sb-admin-2.min.css" rel="stylesheet" />
            <link href="assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" />
            <link href="assets/css/style.css" rel="stylesheet" />
    </head>

    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Hades Shop Admin <sup>2</sup></div>

                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0" />

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider" />

                <!-- Heading -->
                <div class="sidebar-heading">Interface</div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                        aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Components</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Components:</h6>
                            <a class="collapse-item" href="buttons.html">Buttons</a>
                            <a class="collapse-item" href="cards.html">Cards</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                        aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-fw fa-wrench"></i>
                        <span>Utilities</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                        data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Utilities:</h6>
                            <a class="collapse-item" href="utilities-color.html">Colors</a>
                            <a class="collapse-item" href="utilities-border.html">Borders</a>
                            <a class="collapse-item" href="utilities-animation.html">Animations</a>
                            <a class="collapse-item" href="utilities-other.html">Other</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider" />

                <!-- Heading -->
                <div class="sidebar-heading">Addons</div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                        aria-expanded="true" aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Pages</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages"
                        data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Product Pages:</h6>
                            <a class="collapse-item" onclick="loadPage(event,'ListProduct')" href="#">List Product</a>
                            <a class="collapse-item" onclick="loadPage(event,'ListColor')" href="#">List Color</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Order Pages:</h6>
                            <a class="collapse-item" onclick="loadPage(event,'ListOrder')" href="#">List Order</a>
                            <a class="collapse-item" href="Admin/AddAccount">Add Account</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Account Pages:</h6>
                            <a class="collapse-item" href="Admin/ListAccount">List Account</a>
                            <a class="collapse-item" href="Admin/AddAccount">Add Account</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">New Pages:</h6>
                            <a class="collapse-item" href="Admin/ListNew">List New</a>
                            <a class="collapse-item" href="Admin/AddNew">Add New</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Charts -->
                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Charts</span></a>
                </li>

                <!-- Nav Item - Tables -->
                <li class="nav-item">
                    <a class="nav-link" href="tables.html">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Tables</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block" />

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->
                        <form
                            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small"
                                    placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">
                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                    aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small"
                                                placeholder="Search for..." aria-label="Search"
                                                aria-describedby="basic-addon2" />
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>

                            <!-- Nav Item - Alerts -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <!-- Counter - Alerts -->
                                    <span class="badge badge-danger badge-counter">3+</span>
                                </a>
                                <!-- Dropdown - Alerts -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="alertsDropdown">
                                    <h6 class="dropdown-header">Alerts Center</h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-primary">
                                                <i class="fas fa-file-alt text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 12, 2019</div>
                                            <span class="font-weight-bold">A new monthly report is ready to
                                                download!</span>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-success">
                                                <i class="fas fa-donate text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 7, 2019</div>
                                            $290.29 has been deposited into your account!
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-warning">
                                                <i class="fas fa-exclamation-triangle text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 2, 2019</div>
                                            Spending Alert: We've noticed unusually high spending for
                                            your account.
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Show All
                                        Alerts</a>
                                </div>
                            </li>

                            <!-- Nav Item - Messages -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-envelope fa-fw"></i>
                                    <!-- Counter - Messages -->
                                    <span class="badge badge-danger badge-counter">7</span>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="messagesDropdown">
                                    <h6 class="dropdown-header">Message Center</h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="assets/img/undraw_profile_1.svg"
                                                alt="..." />
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div class="font-weight-bold">
                                            <div class="text-truncate">
                                                Hi there! I am wondering if you can help me with a
                                                problem I've been having.
                                            </div>
                                            <div class="small text-gray-500">Emily Fowler · 58m</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="assets/img/undraw_profile_2.svg"
                                                alt="..." />
                                            <div class="status-indicator"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">
                                                I have the photos that you ordered last month, how would
                                                you like them sent to you?
                                            </div>
                                            <div class="small text-gray-500">Jae Chun · 1d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="assets/img/undraw_profile_3.svg"
                                                alt="..." />
                                            <div class="status-indicator bg-warning"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">
                                                Last month's report looks great, I am very happy with
                                                the progress so far, keep up the good work!
                                            </div>
                                            <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle"
                                                src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="..." />
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">
                                                Am I a good boy? The reason I ask is because someone
                                                told me that people say this to all dogs, even if they
                                                aren't good...
                                            </div>
                                            <div class="small text-gray-500">
                                                Chicken the Dog · 2w
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Read More
                                        Messages</a>
                                </div>
                            </li>

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <c:choose>
									  <c:when test="${sessionScope['LoginName'] != null}">
									    <span class="mr-2 d-none d-lg-inline text-gray-600 small">${sessionScope['LoginName']}</span>
                                    	<img class="img-profile rounded-circle" src="assets/images/KhachHang/${sessionScope['LoginImage']}" />
									  </c:when>
									  <c:otherwise>
									    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                    	<img class="img-profile rounded-circle" src="assets/img/undraw_profile.svg" />
									  </c:otherwise>
									</c:choose>                  
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Settings
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Activity Log
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" id="js-admin-logout">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid" id="js-container">
                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                    class="fas fa-download fa-sm text-white-50"></i> Generate
                                Report</a>
                        </div>

                        <!-- Content Row -->
                        <div class="row">
                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                    Earnings (Monthly)
                                                </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                    $40,000
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                    Earnings (Annual)
                                                </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                    $215,000
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                    Tasks
                                                </div>
                                                <div class="row no-gutters align-items-center">
                                                    <div class="col-auto">
                                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                            50%
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="progress progress-sm mr-2">
                                                            <div class="progress-bar bg-info" role="progressbar"
                                                                style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pending Requests Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                    Pending Requests
                                                </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                    18
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-comments fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Content Row -->

                        <div class="row">
                            <!-- Area Chart -->
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                    <div
                                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">
                                            Earnings Overview
                                        </h6>
                                        <div class="dropdown no-arrow">
                                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                                aria-labelledby="dropdownMenuLink">
                                                <div class="dropdown-header">Dropdown Header:</div>
                                                <a class="dropdown-item" href="#">Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="chart-area">
                                            <canvas id="myAreaChart"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pie Chart -->
                            <div class="col-xl-4 col-lg-5">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                    <div
                                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">
                                            Revenue Sources
                                        </h6>
                                        <div class="dropdown no-arrow">
                                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                                aria-labelledby="dropdownMenuLink">
                                                <div class="dropdown-header">Dropdown Header:</div>
                                                <a class="dropdown-item" href="#">Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="chart-pie pt-4 pb-2">
                                            <canvas id="myPieChart"></canvas>
                                        </div>
                                        <div class="mt-4 text-center small">
                                            <span class="mr-2">
                                                <i class="fas fa-circle text-primary"></i> Direct
                                            </span>
                                            <span class="mr-2">
                                                <i class="fas fa-circle text-success"></i> Social
                                            </span>
                                            <span class="mr-2">
                                                <i class="fas fa-circle text-info"></i> Referral
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Content Row -->
                        <div class="row">
                            <!-- Content Column -->
                            <div class="col-lg-6 mb-4">
                                <!-- Project Card Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">Projects</h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="small font-weight-bold">
                                            Server Migration <span class="float-right">20%</span>
                                        </h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 20%"
                                                aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">
                                            Sales Tracking <span class="float-right">40%</span>
                                        </h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 40%"
                                                aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">
                                            Customer Database <span class="float-right">60%</span>
                                        </h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar" role="progressbar" style="width: 60%"
                                                aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">
                                            Payout Details <span class="float-right">80%</span>
                                        </h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-info" role="progressbar" style="width: 80%"
                                                aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">
                                            Account Setup <span class="float-right">Complete!</span>
                                        </h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
                                                aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Color System -->
                                <div class="row">
                                    <div class="col-lg-6 mb-4">
                                        <div class="card bg-primary text-white shadow">
                                            <div class="card-body">
                                                Primary
                                                <div class="text-white-50 small">#4e73df</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 mb-4">
                                        <div class="card bg-success text-white shadow">
                                            <div class="card-body">
                                                Success
                                                <div class="text-white-50 small">#1cc88a</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 mb-4">
                                        <div class="card bg-info text-white shadow">
                                            <div class="card-body">
                                                Info
                                                <div class="text-white-50 small">#36b9cc</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 mb-4">
                                        <div class="card bg-warning text-white shadow">
                                            <div class="card-body">
                                                Warning
                                                <div class="text-white-50 small">#f6c23e</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 mb-4">
                                        <div class="card bg-danger text-white shadow">
                                            <div class="card-body">
                                                Danger
                                                <div class="text-white-50 small">#e74a3b</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 mb-4">
                                        <div class="card bg-secondary text-white shadow">
                                            <div class="card-body">
                                                Secondary
                                                <div class="text-white-50 small">#858796</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 mb-4">
                                        <div class="card bg-light text-black shadow">
                                            <div class="card-body">
                                                Light
                                                <div class="text-black-50 small">#f8f9fc</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 mb-4">
                                        <div class="card bg-dark text-white shadow">
                                            <div class="card-body">
                                                Dark
                                                <div class="text-white-50 small">#5a5c69</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 mb-4">
                                <!-- Illustrations -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">
                                            Illustrations
                                        </h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="text-center">
                                            <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem"
                                                src="assets/img/undraw_posting_photo.svg" alt="..." />
                                        </div>
                                        <p>
                                            Add some quality, svg illustrations to your project
                                            courtesy of
                                            <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a
                                            constantly updated collection of beautiful svg images
                                            that you can use completely free and without attribution!
                                        </p>
                                        <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations
                                            on unDraw &rarr;</a>
                                    </div>
                                </div>

                                <!-- Approach -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">
                                            Development Approach
                                        </h6>
                                    </div>
                                    <div class="card-body">
                                        <p>
                                            SB Admin 2 makes extensive use of Bootstrap 4 utility
                                            classes in order to reduce CSS bloat and poor page
                                            performance. Custom CSS classes are used to create custom
                                            components and custom utility classes.
                                        </p>
                                        <p class="mb-0">
                                            Before working with this theme, you should become familiar
                                            with the Bootstrap framework, especially the utility
                                            classes.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2021</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Select "Logout" below if you are ready to end your current session.
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">
                            Cancel
                        </button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Add Produc Modal-->
        <div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabelProduct">Add Product</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="js-fromAddProduct">
                            <input name="action" value="add" hidden="true" id="js-action-product">
                            <input name="id" value="0" hidden="true" id="js-id-product">
                            <div class="row g-3">
                                <div class="col-4">
                                    <label for="js-add-product-category" class="col-form-label">Father's Product</label>
                                    <select class="form-select" aria-label="Default select example" name="category"
                                        id="js-add-product-category">
                                        <option selected>Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                                <div class="col-4">
                                    <label for="js-add-product-color" class="col-form-label">Colors</label>
                                    <select class="form-select" aria-label="Default select example" name="color"
                                        id="js-add-product-color">
                                        <option selected>Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                                <div class="col-4">
                                    <label for="js-add-product-size" class="col-form-label">Sizes</label>
                                    <select class="form-select" aria-label="Default select example" name="size"
                                        id="js-add-product-size">
                                        <option selected>Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                                <div class="col-6">
                                    <label for="js-add-product-group" class="col-form-label">Product Groups</label>
                                    <select class="form-select" aria-label="Default select example" name="group"
                                        id="js-add-product-group">
                                        <option selected>Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                                <div class="col-6">
                                    <label for="js-add-product-material" class="col-form-label">Materials</label>
                                    <select class="form-select" aria-label="Default select example" name="material"
                                        id="js-add-product-material">
                                        <option selected>Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                                <div class="col-4">
                                    <label for="js-add-product-name" class="col-form-label">Name</label>
                                    <input type="text" class="form-control" id="js-add-product-name" name="name">
                                </div>
                                <div class="col-4">
                                    <label for="js-add-product-quantity" class="col-form-label">Quantity</label>
                                    <input type="text" class="form-control" id="js-add-product-quantity"
                                        name="quantity">
                                </div>
                                <div class="col-4">
                                    <label for="js-add-product-price" class="col-form-label">Price</label>
                                    <input type="text" class="form-control" id="js-add-product-price" name="price">
                                </div>
                                <div class="col-6">
                                    <label for="js-add-product-created" class="col-form-label">Date Created</label>
                                    <input type="date" class="form-control" id="js-add-product-price" name="created">
                                </div>
                                <div class="col-6">
                                    <label for="js-add-product-cancellation" class="col-form-label">Cancellation
                                        Date</label>
                                    <input type="date" class="form-control" id="js-add-product-price"
                                        name="cancellation">
                                </div>
                                <div class="col-12">
                                    <label for="js-add-product-image" class="col-form-label">Image Product</label>
                                    <input class="dropify" type="file" id="js-add-product-image" name="file">
                                </div>
                                <div class="col-12">
                                    <label for="js-add-product-description" class="col-form-label">Description</label>
                                    <textarea id="js-add-product-description" class="form-control" rows="4" cols="50"
                                        name="description">
                                    </textarea>
                                </div>

                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" onclick="sendProduct()" class="btn btn-primary"
                            id="js-btn-send-product">Send Product</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Add Color Modal-->
        <div class="modal fade" id="addColorModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="js-heading-color" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="js-heading-color">Add Color</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="js-fromAddColor">                 
                            <input name="action" value="add" hidden="true" id="js-action-color">
                            <input name="id" value="0" hidden="true" id="js-id-color">
                            <div class="row g-3">
                                <div class="col-12">
                                    <label for="js-add-color-name" class="col-form-label">Name</label>
                                    <input type="text" class="form-control" id="js-add-color-name" name="name">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id="js-btn-send-color" onclick="sendColor()">Add Color</button>
                    </div>
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
                                <div class="col-12">
                                    
                                </div>
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
                        <button type="button" class="btn btn-primary" id="js-btn-send-order-detail">Invoicing</button>
                    </div>
                </div>
            </div>
        </div>



        <!-- Bootstrap core JavaScript-->
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="assets/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"
            integrity="sha512-8QFTrG0oeOiyWo/VM9Y8kgxdlCryqhIxVeRpWSezdRRAvarxVtwLnGroJgnVW9/XBRduxO/z1GblzPrMQoeuew=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="assets/vendor/chart.js/Chart.min.js"></script>
        <script src="assets/vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>
        <!--===============================================================================================-->
		<script src="assets/vendor/sweetalert/sweetalert.min.js"></script>
        <!-- Page level custom scripts -->
        <script src="assets/js/demo/chart-area-demo.js"></script>
        <script src="assets/js/demo/chart-pie-demo.js"></script>
        <!-- <script src="assets/js/demo/datatables-demo.js"></script> -->

        <!-- Page level handl scripts -->
        <script type="text/javascript">
            function handlLogout(){
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/Admin",
                        type: 'GET',
                        data: {
                            action: 'logout',
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
            $(document).ready(function () {
                $('#js-admin-logout').on("click", function(e){
                    e.preventDefault()
                    handlLogout().then(res => {
                        if(res == "ok"){
                            location.href = "/HadesShop/Home";
                        }
                    })
                });
            });
            const container = document.getElementById("js-container");
            const selectCategory = document.getElementById("js-add-product-category");
            const selectCategoryJQ = $("#js-add-product-category");
            const addProductModal = document.getElementById('addProductModal');
            const addColorModal = document.getElementById('addColorModal');
            const orderDetailsModal = document.getElementById('orderDetailsModal');
            const isJpg = nameImage => {
                return nameImage.match(/jpg$/i)
            }
            const isPng = nameImage => {
                return nameImage.match(/png$/i)
            }
            //Data modal Color     
            if(addColorModal){
                addColorModal.addEventListener('show.bs.modal', event => {
                    // Button that triggered the modal
                    const button = event.relatedTarget;
                    // Extract info from data-bs-* attributes
                    const action = button.getAttribute('data-bs-action');
                    // If necessary, you could initiate an Ajax request here
                    // If necessary, you could initiate an Ajax request here
                    const titleHeading = addColorModal.querySelector('#js-heading-color');
                    const btnSend = addColorModal.querySelector('#js-btn-send-color');
                    // and then do the updating in a callback.
                    const actionColor = addColorModal.querySelector('#js-action-color');
                    if(action == "edit"){
                        actionColor.value = action;
                        titleHeading.innerText = "Update Color";
                        btnSend.innerText = "Send Update";

                        const id = button.getAttribute('data-bs-id');
                        const idColor = addColorModal.querySelector('#js-id-color');
                        idColor.value = id;
                        console.log("id edit:",idColor.value);
                        getColorById(id)
                            .then(data =>{
                                console.log("getColorById", data);
                                const fromData = document.getElementById("js-fromAddColor");
                                const nameInput = fromData.querySelector('input[name="name"]');
                                nameInput.value = data.TenMau;
                            }).catch(err=>{
                                console.log("Err Color By Id:", err);
                            })
                    }else{
                        actionColor.value = action;
                        titleHeading.innerText = "Add Color";
                        btnSend.innerText = "Send Add";
                    }
                })
            }

            //Data modal Order     
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
                    const btnSend = orderDetailsModal.querySelector('#js-btn-send-order-detail');
                    console.log("id",id)     
                    console.log("idModal",idModal) 
                    console.log("titleHeading",titleHeading) 
                    console.log("btnSend",btnSend) 
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
            //Data modal Produc            
            if (addProductModal) {
                addProductModal.addEventListener('show.bs.modal', event => {
                    // Button that triggered the modal
                    const button = event.relatedTarget
                    // Extract info from data-bs-* attributes
                    const action = button.getAttribute('data-bs-action')
                    // If necessary, you could initiate an Ajax request here
                    const titleHeading = addProductModal.querySelector('#exampleModalLabelProduct');
                    const btnSend = addProductModal.querySelector('#js-btn-send-product');
                    // and then do the updating in a callback.
                    const actionProduct = addProductModal.querySelector('#js-action-product')
                    if (action == "edit") {
                        titleHeading.innerText = "Update Product";
                        btnSend.innerText = "Send Update"
                        const id = button.getAttribute('data-bs-id')
                        const idProduct = addProductModal.querySelector('#js-id-product')
                        actionProduct.value = action
                        console.log("edit Action",actionProduct.value);
                        idProduct.value = id
                        let urlImage = "";
                        getProductById(id)
                            .then(data => {
                                console.log("getProductById", data);
                                const fromData = document.getElementById("js-fromAddProduct")
                                const actionInput = fromData.querySelector('input[name="action"]');
                                const idInput = fromData.querySelector('input[name="id"]');
                                const nameInput = fromData.querySelector('input[name="name"]');
                                const quantityInput = fromData.querySelector('input[name="quantity"]');
                                const priceInput = fromData.querySelector('input[name="price"]');
                                const createdInput = fromData.querySelector('input[name="created"]');
                                const cancellationInput = fromData.querySelector('input[name="cancellation"]');
                                const fileInput = $(".dropify");
                                const descriptionInput = fromData.querySelector('textarea[name="description"]');
                                const categorySelect = fromData.querySelector('select[name="category"]');
                                const colorSelect = fromData.querySelector('select[name="color"]');
                                const sizeSelect = fromData.querySelector('select[name="size"]');
                                const groupSelect = fromData.querySelector('select[name="group"]');
                                const materialSelect = fromData.querySelector('select[name="material"]');
                                console.log("Action value", actionProduct.value);
                                console.log("Id value", idProduct.value);
                                categorySelect.value = data.MaDM;
                                colorSelect.value = data.MauID;
                                sizeSelect.value = data.SizeID;
                                groupSelect.value = data.NhomID;
                                materialSelect.value = data.ChatLieuID;
                                descriptionInput.value = data.MotaSP;
                                nameInput.value = data.TenSP;
                                quantityInput.value = data.SoLuongSP;
                                priceInput.value = data.GiaSP;
                                createdInput.value = data.NgayTao;
                                cancellationInput.value = data.NgayHuy;
                                //fileInput.attr("data-default-file", "assets/images/products/" + data.AnhSP);    
                                //fileInput.attr("data-default-file", "assets/images/products/" + data.AnhSP);     
                                // $('.dropify').dropify({
                                //defaultFile: "assets/images/products/" + data.AnhSP ,
                                //});   
                                fileInput.dropify();
                                urlImage = 'assets/images/products/' + data.AnhSP;
                                resetPreview('file', urlImage, data.AnhSP);
                            }).catch(err => {
                                console.log("Err Product By Id:", err)
                            })
                    } else {
                        actionProduct.value = action;
                        console.log("Add Action",actionProduct.value);
                        titleHeading.innerText = "Add Pruduct";
                        btnSend.innerText = "Send Add";
                    }
                    // Update the modal's content.                  
                })
            }
            function resetPreview(name, src, fname = '') {
                //let inputValue = document.getElementById('js-add-product-image').value;
                let input = $('input[name="' + name + '"]');               
                let wrapper = input.closest('.dropify-wrapper');
                let preview = wrapper.find('.dropify-preview');
                let filename = wrapper.find('.dropify-filename-inner');
                let render = wrapper.find('.dropify-render').html('');      
                  
                //inputValue = src;  
                //console.log("Input value 1: ",inputValue)    
                //console.log("Input value 2: ",input.val())                 
                wrapper.removeClass('has-error').addClass('has-preview');
                filename.html(fname);
                render.append($('<img />').attr('src', src).css('max-height', input.data('height') || ''));
                preview.fadeIn();
            }

            function getProductById(id) {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminProducts",
                        type: 'POST',
                        data: {
                            action: 'getproductbyid',
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
            function getColorById(id) {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminColors",
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

            function getListColor() {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminColors",
                        type: 'GET',
                        data: {
                            action: 'list',
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
            function getListSize() {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminSizes",
                        type: 'GET',
                        data: {
                            action: 'list',
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
            function getListMaterial() {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminMaterials",
                        type: 'GET',
                        data: {
                            action: 'list',
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
            function getListProductGroup() {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminProductGroups",
                        type: 'GET',
                        data: {
                            action: 'list',
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
            async function loadCategory() {
                let cellData = await $.ajax({
                    url: "/HadesShop/AdminProducts",
                    type: "post", //send it through get method
                    data: {
                        action: 'loadcategory'
                    },
                    success: function (data) {
                        if (data != null) {
                            selectCategoryJQ.empty();
                            data.map(item => {
                                const option = document.createElement("option");
                                option.text = item.TenDM;
                                option.value = item.MaDM;
                                selectCategory.add(option);
                            });
                        }
                    },
                    error: function (err) {
                        //Do Something to handle error
                    },
                });
                console.log("Load Category:", cellData);
                return cellData;
            }

            function loadTableProduct() {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminProducts",
                        type: "post", //send it through get method
                        data: {
                            action: 'loadtable'
                        },
                        success: function (data) {
                            if (data != null) {
                                const tableBy = document.getElementById("js-table-body");
                                let html = data.map(item => {
                                    return '<tr id="rowProduct_' + item.MaSP + '"><td><img class="img-profile rounded-circle" style="height:2rem; width:2rem;"  src="assets/images/products/' + item.AnhSP + '"></td><td>' + item.TenSP + '</td><td>' + item.GiaSP + '</td><td>' + item.NgayTao + '</td><td>' + item.NgayHuy + '</td><td style="display: flex;justify-content: space-around;"><button class="btn btn-danger btn-sm btn-circle" onclick="deleteItem(' + item.MaSP + ',' + "'product'" + ')"><i class="fas fa-trash"></i></button><button class="btn btn-warning btn-circle btn-sm" data-bs-toggle="modal" data-bs-target="#addProductModal" data-bs-action="edit" data-bs-id="' + item.MaSP + '"><i class="fa fa-cog" aria-hidden="true"></i></button></td></tr>';
                                })
                                tableBy.innerHTML = html.join("");
                                $("#dataTable").DataTable();
                                console.log("Load Table Product:", data);
                                resolve(true);
                            }
                        },
                        error: function (err) {
                            reject(err);
                        },
                    });

                })
            }
            function loadTableOrder() {
                return new Promise((resolve, reject) => {
                    $.ajax({
                        url: "/HadesShop/AdminOrders",
                        type: "GET", //send it through get method
                        data: {
                            action: 'list'
                        },
                        success: function (data) {                    
                            resolve(data);                          
                        },
                        error: function (err) {
                            reject(err);
                        },
                    });

                })
            }
            function loadTableColor() {
                $.ajax({
                    url: "/HadesShop/AdminColors",
                    type: "GET", //send it through get method
                    data: {
                        action: 'list'
                    },
                    success: function (data) {
                        if (data != null) {
                            let html = '<div class="table-responsive"><table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"><thead><tr><th>STT</th><th>Name</th><th>Action</th></tr></thead><tfoot><tr><th>STT</th><th>Name</th><th>Action</th></tr></tfoot><tbody id="js-table-body">';
                            const tableResponsive = document.getElementById("js-table-responsive-inner-html");
                            //const tableBy = document.getElementById("js-table-body");
                            const htmlArray = data.map((item,index) => {
                                return  '<tr id="rowColor_'+item.MauID+'"><td>'+(index+1)+'</td><td>'+item.TenMau+'</td><td style="display: flex;justify-content: space-around;"><button class="btn btn-danger btn-sm btn-circle" onclick="deleteItem(' + item.MauID + ',' + "'color'" + ')"><i class="fas fa-trash"></i></button><button class="btn btn-warning btn-circle btn-sm" data-bs-toggle="modal" data-bs-target="#addColorModal" data-bs-action="edit" data-bs-id="' + item.MauID + '"><i class="fa fa-cog" aria-hidden="true"></i></button></td></tr>';
                            })
                            html += htmlArray.join("");
                            html += '</tbody></table></div></div></div>';
                            tableResponsive.innerHTML = html;
                            $("#dataTable").DataTable();
                            console.log("Data:" + data);
                        }
                    },
                    error: function (err) {
                        console.log("Err loadTableColor: ",err);
                    },
                });
            }
            async function loadPage(event, urlPage) {
                event.preventDefault();
                const pageProduct = () => {
                    if (loadTableProduct()) {
                        loadCategory();
                        getListColor()
                            .then((data) => {
                                console.log("Load List Color:", data);
                                const selectColor = document.getElementById("js-add-product-color");
                                if (data != null) {
                                    let html = data.map(item => {
                                        return '<option value="' + item.MauID + '">' + item.TenMau + '</option>';
                                    })
                                    selectColor.innerHTML = html.join("");
                                }
                            })
                            .catch((err) => {
                                console.log("Err Load List Color:", err);
                            });
                        getListSize()
                            .then(data => {
                                console.log("Load List Size:", data);
                                const selectColor = document.getElementById("js-add-product-size");
                                if (data != null) {
                                    let html = data.map(item => {
                                        return '<option value="' + item.SizeID + '">' + item.TenSize + '</option>';
                                    })
                                    selectColor.innerHTML = html.join("");
                                }
                            })
                            .catch((err) => {
                                console.log("Err Load List Size:", err);
                            });
                        getListMaterial()
                            .then(data => {
                                console.log("Load List Material:", data);
                                const selectColor = document.getElementById("js-add-product-material");
                                if (data != null) {
                                    let html = data.map(item => {
                                        return '<option value="' + item.ChatLieuID + '">' + item.TenChatLieu + '</option>';
                                    })
                                    selectColor.innerHTML = html.join("");
                                }
                            })
                            .catch((err) => {
                                console.log("Err Load List Material:", err);
                            });
                        getListProductGroup()
                            .then(data => {
                                console.log("Load List ProductGroup:", data);
                                const selectColor = document.getElementById("js-add-product-group");
                                if (data != null) {
                                    let html = data.map(item => {
                                        return '<option value="' + item.NhomID + '">' + item.TenNhom + '</option>';
                                    })
                                    selectColor.innerHTML = html.join("");
                                }
                            })
                            .catch((err) => {
                                console.log("Err Load List ProductGroup:", err);
                            });
                        const defaultDi = document.getElementById("js-btn-add-product");
                        defaultDi.addEventListener("click", function () {
                            var drDestroy = $('.dropify').dropify();
                            drDestroy = drDestroy.data('dropify')
                            if (drDestroy.isDropified()) {
                                drDestroy.destroy();
                                drDestroy.init();
                            } else {
                                drDestroy.init();
                            }
                        })
                    }
                };
                const pageColor = () => {
                    loadTableColor();
                };
                const pageOrder = () => {
                    loadTableOrder().then(data => {
                        if (data != null) {
                            let html = '<div class="table-responsive"><table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"><thead><tr><th>Order Code</th><th>Name</th><th>Phone</th><th>Email</th><th>Address</th><th>Order status</th><th>Date created</th><th>Money</th><th>Action</th></tr></thead><tfoot><tr><th>Order Code</th><th>Name</th><th>Phone</th><th>Email</th><th>Address</th><th>Order status</th><th>Date created</th><th>Money</th><th>Action</th></tr></tfoot><tbody id="js-table-body">';
                            const tableResponsive = document.getElementById("js-table-responsive-inner-html");
                            const arrMap = data.map(item => {
                                return '<tr><td>'+item.MaDonDatHang+'</td><td>'+item.TenKH+'</td><td>'+item.sdtKH+'</td><td>'+item.EmailKH+'</td><td>'+item.DiaChiKH+'</td><td>'+selectOrderStatus(item.TinhTrangDonHang,item.MaDonDatHang)+'</td><td>'+item.NgayTao+'</td><td>'+item.ThanhTienDH+'</td><td><button class="btn btn-warning btn-circle btn-sm" data-bs-toggle="modal" data-bs-target="#orderDetailsModal"  data-bs-id="'+item.MaDonDatHang+'"><i class="fa fa-cog" aria-hidden="true"></i></button></td></tr>';
                            })
                            html += arrMap.join("");
                            html += '</tbody></table></div></div></div>';
                            
                            tableResponsive.innerHTML = html;
                            
                        }
                        return true
                    }).then(data => {
                        const selectOrderStatus = document.querySelectorAll('select[name=orderstatus]');
                        selectOrderStatus.forEach(elem => {
                            elem.addEventListener("change",function(e){
                                const select = e.target;
                                const code = select.getAttribute('data-order-status');
                                const value = select.value;
                                console.log("select",select);
                                console.log("code",code);
                                console.log("value",value);
                                postOpitonOrderStatus(value,code).then(data => {
                                    console.log("postOpitonOrderStatus:",data)
                                    if(data = "ok"){
                                        var text = select.options[select.selectedIndex].text;
                                        swal(text, "is update order status !", "success");
                                    }                                
                                })                              
                            })
                        })
                        $("#dataTable").DataTable();
                    });
                };
                function postOpitonOrderStatus(status,code){
                        return new Promise((resolve, reject) => {
                        $.ajax({
                            url: "/HadesShop/AdminOrders",
                            type: "POST", //send it through get method
                            data: {
                                action: 'opitonorderstatus',
                                status,
                                code
                            },
                            success: function (data) {                    
                                resolve(data);                          
                            },
                            error: function (err) {
                                reject(err);
                            },
                        });
                    })
                }
                function selectOrderStatus(status,code){
                    if(status == 0){
                        return '<select class="form-select" name="orderstatus" data-order-status="'+code+'"><option selected value="0">Chuẩn bị đơn hàng</option><option value="1">Vận chuyển</option><option value="2">Hoàn Thành</option></select>';
                    }else if(status == 1){
                        return '<select class="form-select" name="orderstatus" data-order-status="'+code+'"><option value="0">Chuẩn bị đơn hàng</option><option selected value="1">Vận chuyển</option><option value="2">Hoàn Thành</option></select>';
                    }else{
                        return '<select class="form-select" name="orderstatus" data-order-status="'+code+'"><option value="0">Chuẩn bị đơn hàng</option><option value="1">Vận chuyển</option><option selected value="2">Hoàn Thành</option></select>';
                    }                   
                }
                let cellData = await $.ajax({
                    url: "/HadesShop/Admin",
                    type: "post", //send it through get method
                    data: {
                        urlPage: urlPage,
                    },
                    success: function (data) {
                        container.innerHTML = data;
                        switch (urlPage) {
                            case "ListProduct":
                                pageProduct();
                                break;
                            case "ListColor":
                                pageColor();
                                break;
                            case "ListOrder":
                                pageOrder();
                                break;
                            default:
                                break;
                        }
                    },
                    error: function (err) {
                        //Do Something to handle error
                    },
                });
                console.log("Load Page: ", typeof (cellData) == "string" ? "Success" : cellData);
                return cellData;
            }

            async function sendProduct() {
                const file = $('#js-add-product-image');
                const fromData = document.getElementById("js-fromAddProduct")
                const actionInput = fromData.querySelector('input[name="action"]');
                const filename = $.trim(file.val());                         
                function addProductAjax (){
                    return  new Promise((resolve, reject) => {  
                        $.ajax({
                            url: "/HadesShop/AdminProducts",
                            type: "post", //send it through get method
                            data: new FormData(document.getElementById("js-fromAddProduct")),
                            enctype: 'multipart/form-data',
                            processData: false,
                            contentType: false
                            ,
                            success: function (data) {
                                resolve(data);                          
                            },
                            error: function (err) {
                                reject(err);
                            },
                        })
                    });
                } 
                function editProductAjax (){
                    return new Promise((resolve, reject) => {  
                        $.ajax({
                            url: "/HadesShop/AdminProducts",
                            type: "post", //send it through get method
                            data: new FormData(document.getElementById("js-fromAddProduct")),
                            enctype: 'multipart/form-data',
                            processData: false,
                            contentType: false
                            ,
                            success: function (data) {
                                resolve(data);                          
                            },
                            error: function (err) {
                                reject(err);
                            },
                        })
                    });
                } 
                console.log("Send action",actionInput.value);
                switch (actionInput.value) {
                    case "add":  
                        if(!isPng(filename) || isJpg(filename)){
                            swal("Image", "Vui lòng chọn file PNG hoặc JPG cảm ơn....", "warning");
                            //alert("Vui lòng chọn file PNG hoặc JPG cảm ơn....")
                            break;
                        }                    
                        await addProductAjax()
                            .then(data => {
                                if (data == "success") {   
                                    swal("Add Product", "is added to product !", "success");                           
                                    //alert("Thêm sản phẩm thành công");
                                    loadTableProduct();
                                } else {
                                    swal("Canot Add Product", "is not added to product !", "error");
                                }
                            }).catch(err => {
                                console.log("Err addProductAjax: ",err)
                            })
                        break;
                    case "edit":  
                        if(filename != ""){
                            if(!isPng(filename) || isJpg(filename)){
                                swal("Image", "Vui lòng chọn file PNG hoặc JPG cảm ơn....", "warning");
                                //alert("Vui lòng chọn file PNG hoặc JPG cảm ơn....")
                                break;
                            }
                        }                     
                        await editProductAjax()
                            .then(data =>  {
                                if (data == "success") {                              
                                    //alert("Sua sản phẩm thành công");
                                    swal("Edit Product", "is edit to product !", "success");      
                                    loadTableProduct();
                                } else {
                                    swal("Edit Product", "is edit to product !", "error");  
                                    //alert("Sua sản phẩm thất bại");
                                }
                            }).catch(err => {
                                console.log("Err addProductAjax: ",err)
                            });                     
                        break;
                    default:
                        break;
                }                          
                
            }

            async function sendColor() {
                const fromData = document.getElementById("js-fromAddColor")
                const actionInput = fromData.querySelector('input[name="action"]');
                const idInput = fromData.querySelector('input[name="id"]');
                console.log("Input value:",idInput.value);
                function editColorAjax (){
                    return new Promise((resolve, reject) => {  
                        $.ajax({
                            url: "/HadesShop/AdminColors",
                            type: "post", //send it through get method
                            data: new FormData(document.getElementById("js-fromAddColor")),
                            enctype: 'multipart/form-data',
                            processData: false,
                            contentType: false
                            ,
                            success: function (data) {
                                resolve(data)
                            },
                            error: function (err) {
                                reject(err);
                            },
                        })
                    });
                } 
                function addColorAjax (){
                    return new Promise((resolve, reject) => {  
                        $.ajax({
                            url: "/HadesShop/AdminColors",
                            type: "post", //send it through get method
                            data: new FormData(document.getElementById("js-fromAddColor")),
                            enctype: 'multipart/form-data',
                            processData: false,
                            contentType: false
                            ,
                            success: function (data) {
                                resolve(data)
                            },
                            error: function (err) {
                                reject(err);
                            },
                        })
                    });
                } 
                switch (actionInput.value) {
                    case "add":
                        await addColorAjax()
                                .then( data => {
                                    if (data == "success") {                              
                                        alert("Thêm màu thành công");
                                        loadTableColor();
                                    } else {
                                        alert("Thêm màu thất bại");
                                    }
                                }).catch(err => {
                                    console.log("Err addColorAjax: ",err)
                                }) 
                        break;
                    case "edit":
                        await editColorAjax()
                                .then( data => {
                                    if (data == "success") {                              
                                        alert("Sửa màu thành công");
                                        loadTableColor();
                                    } else {
                                        alert("Sửa màu thất bại");
                                    }
                                }).catch(err => {
                                    console.log("Err editColorAjax: ",err)
                                })
                        break;
                    default:
                        break;
                }      
            }

            async function deleteItem(id, page) {
                let pageURL = "";
                let rowDelete = "";
                switch (page) {
                    case "product":
                        pageURL = "AdminProducts";
                        rowDelete = "#rowProduct_";
                        break;
                    case "color":
                        pageURL = "AdminColors";
                        rowDelete = "#rowColor_";
                        break;
                    default:
                        break;
                }

                const res = () => new Promise((resolve, reject) => {
                    $.ajax({
                        url: '/HadesShop/' + pageURL + '',
                        type: 'POST',
                        data: {
                            action: 'delete',
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
                swal("Do you want to delete?", {
                    dangerMode: true,
                    buttons: true,
                }).then(isDelete => {
                    if(isDelete){
                        const resSuccess = res()
                            .then(data => {
                                if (data == "success") {
                                    swal("Delete", "is datete !", "success");
                                    //alert("Xóa thành công :))");
                                    $(rowDelete + id + "").remove();
                                    //loadTableProduct();
                                } else {
                                    swal("Delete", "is datete !", "error");
                                    //alert("Xóa thất bại !!!");
                                }
                            }).catch(err => {
                                console.log("Err deleteItem" + pageURL+":",err);
                            })
                    }
                });
                
            }

        </script>
    </body>

    </html>