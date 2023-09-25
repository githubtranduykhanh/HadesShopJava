<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="//theme.hstatic.net/1000306633/1000891824/14/favicon.png?v=572" type="image/png"/>
<title>Insert title here</title>
<%@include file="/configs/getbootstrap.jsp"%>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="assets/css/util.css">
<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<!--===============================================================================================-->
<!--===============================================================================================-->
<!-- Custom styles for this template-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css"
integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog=="
crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
<link rel="stylesheet" href="./assets/css/userstyle.css">
<style>
	.show-form{
		display: flex;
		transition: all 0.4s;
	}
	.hiden-form{
		display: none;
		transition: all 0.4s;
	}
</style>
</head>
<body>
	<section class="h-100 gradient-form" style="background-color: #eee;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-xl-10">
					<div class="card rounded-3 text-black show-form animated visible-false rotateIn visible-true" id="js-from-login-hades">
						<div class="row g-0 ">
							<div class="col-lg-6">
								<div class="card-body p-md-5 mx-md-4">
									<div class="text-center">
										<img width="250" height="auto" loading="lazy" itemprop="logo" src="//theme.hstatic.net/1000306633/1000891824/14/logo.png?v=572" alt="HADES STUDIO" class="img-responsive logoimg">
										<h4 class="mt-1 mb-5 pb-1">Login</h4>
										
									</div>

									<form action="Login" method="post">
										<input type="text" name="action" value="login" hidden>
										<p class="${MASSAGE != null ? 'form-control is-invalid': ''}">Please login to your account</p>
										<div id="validationServerUsernameFeedback" class="invalid-feedback">
       										 ${MASSAGE}
      									</div>
										<div class="form-outline mb-4">
										
											<input type="text" id="form2Example11" class="form-control ${ERRORUSER != null ? 'is-invalid': ''}" name="email"
												placeholder="Email" />
											<div id="validationServerUsernameFeedback" class="invalid-feedback">
       										 ${ERRORUSER}
      										</div>
										</div>

										<div class="form-outline mb-4">
											
											<input type="password" id="form2Example22" placeholder="Password" name="password"
												class="form-control ${ERRORPASSWORD != null ? 'is-invalid': ''}" />
												<div id="validationServerPasswordFeedback" class="invalid-feedback">
       										 ${ERRORPASSWORD}
      										</div>
										</div>

										<div class="text-center pt-1 mb-5 pb-1">
											<button
												class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
												type="submit">Log in</button>
											<a class="text-muted" href="#!">Forgot password?</a>
										</div>

										<div
											class="d-flex align-items-center justify-content-center pb-4">
											<p class="mb-0 me-2">Don't have an account?</p>
											<button type="button" class="btn btn-outline-danger" id="js-btn-show-register">Create
												new
											</button>
										</div>

									</form>

								</div>
							</div>
							<div class="col-lg-6 d-flex align-items-center gradient-custom-2" style="background-image: url('assets/images/DanhMuc/logo_key_back.jpg');background-size: cover;background-repeat: no-repeat;background-position: center center;">
								<div class="text-white px-3 py-4 p-md-5 mx-md-4" >
									<!-- <h4 class="mb-4">We are more than just a company</h4>
									<p class="small mb-0">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit, sed do eiusmod tempor incididunt
										ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex
										ea commodo consequat.</p> -->
									
								</div>
							</div>
						</div>
					</div>
					<div class="card rounded-3 text-black hiden-form animated visible-false rotateIn visible-true" id="js-from-register-hades">
						<div class="row g-0 ">
							<div class="col-lg-6">
								<div class="card-body p-md-5 mx-md-4">
									<div class="text-center">
										<img width="250" height="auto" loading="lazy" itemprop="logo" src="//theme.hstatic.net/1000306633/1000891824/14/logo.png?v=572" alt="HADES STUDIO" class="img-responsive logoimg">
										<h4 class="mt-1 mb-5 pb-1">Register</h4>
										
									</div>

									<form action="Login" method="post" enctype="multipart/form-data">
										<input type="text" name="action" value="register" hidden>
										<p class="${MASSAGEREGISTER != null ? 'form-control is-invalid': ''}">Please login to your account</p>
										<div id="validationServerUsernameFeedback9" class="invalid-feedback">
												${MASSAGEREGISTER}
										  </div>
										<div class="form-outline mb-4">
										
											<input type="text" class="form-control ${ERRORREGISTERNAME != null ? 'is-invalid': ''}" name="name"
												placeholder="Username" />
											<div id="validationServerRegisterName" class="invalid-feedback">
												${ERRORREGISTERNAME}
											  </div>
										</div>
										<div class="form-outline mb-4">
											
											<input type="email" placeholder="Email" name="email"
												class="form-control ${ERRORREGISTEREMAIL != null ? 'is-invalid': ''}" />
												<div id="validationServerRegisterEmail" class="invalid-feedback">
												${ERRORREGISTEREMAIL}
											  </div>
										</div>
										<div class="form-outline mb-4">
											
											<input type="password" placeholder="Password" name="password"
												class="form-control ${ERRORREGISTERPASSWORD != null ? 'is-invalid': ''}" />
												<div id="validationServerRegisterPassword" class="invalid-feedback">
												${ERRORREGISTERPASSWORD}
											  </div>
										</div>
										<div class="form-outline mb-4">
											
											<input type="text" placeholder="Phone" name="phone"
												class="form-control ${ERRORREGISTERPHONE != null ? 'is-invalid': ''}" />
												<div id="validationServerRegisterPhone" class="invalid-feedback">
												${ERRORREGISTERPHONE}
											  </div>
										</div>
										<div class="form-outline mb-4">
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
										<div class="form-outline mb-4">				
											<input class="dropify" type="file" id="js-add-product-image" name="file">
										</div>
										
										<div class="text-center pt-1 mb-5 pb-1">
											<button
												class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
												type="submit">Register</button>
										</div>

										<div
											class="d-flex align-items-center justify-content-center pb-4">
											<p class="mb-0 me-2">Have an account?</p>
											<button type="button" class="btn btn-outline-danger" id="js-btn-hiden-register">Login</button>
										</div>

									</form>

								</div>
							</div>
							<div class="col-lg-6 d-flex align-items-center gradient-custom-2" style="background-image: url('assets/images/DanhMuc/logo_key_back.jpg');background-size: cover;background-repeat: no-repeat;background-position: center center;">
								<div class="text-white px-3 py-4 p-md-5 mx-md-4" >
									<!-- <h4 class="mb-4">We are more than just a company</h4>
									<p class="small mb-0">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit, sed do eiusmod tempor incididunt
										ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex
										ea commodo consequat.</p> -->
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--===============================================================================================-->
	<script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!-- Page level plugins -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"
	integrity="sha512-8QFTrG0oeOiyWo/VM9Y8kgxdlCryqhIxVeRpWSezdRRAvarxVtwLnGroJgnVW9/XBRduxO/z1GblzPrMQoeuew=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!--===============================================================================================-->
	<script src="assets/vendor/sweetalert/sweetalert.min.js"></script>
	<script type="text/javascript">
		const MASSAGESUCCESS = `${MASSAGESUCCESS}`;
		const MASSAGEERR = `${MASSAGEERR}`;
		const provinces = document.getElementById("js-select-provinces");
        const districts = document.getElementById("js-select-districts");
        const wards = document.getElementById("js-select-wards");
		const URL = "https://vn-public-apis.fpo.vn/";
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
		//Window Ready
		$(document).ready(function () {
				if(MASSAGESUCCESS != ""){
					swal("Register Success", "Sign Up Success !", "success");
				}
				if(MASSAGEERR != ""){
					$('#js-from-login-hades').addClass('hiden-form');
					$('#js-from-login-hades').removeClass('show-form');
					$('#js-from-register-hades').addClass('show-form');		
					$('#js-from-register-hades').removeClass('hiden-form');		
				}
				$('.dropify').dropify();
				$('#js-btn-show-register').on('click',function(){
					$('#js-from-login-hades').addClass('hiden-form');
					$('#js-from-login-hades').removeClass('show-form');
					$('#js-from-register-hades').addClass('show-form');		
					$('#js-from-register-hades').removeClass('hiden-form');	
				});

				$('#js-btn-hiden-register').on('click',function(){
					$('#js-from-login-hades').addClass('show-form');
					$('#js-from-login-hades').removeClass('hiden-form');
					$('#js-from-register-hades').addClass('hiden-form');		
					$('#js-from-register-hades').removeClass('show-form');	
				});

					getSelectProvinces()
						.then(data => {
							console.log("getSelectProvinces",data);
							let html = '<option selected>Provinces/Citys</option>';							
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
										let html = '<option selected>Districts</option>';							
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
													let html = '<option selected>Wards</option>';							
													const wardsMap = data.map( item => {
														return '<option value="'+item.code+'">'+item.name_with_type+'</option>';
													})
													wards.innerHTML = html + wardsMap.join("");
												})
										})										
									})
							})
						}).catch(err =>{
							console.log("Err getSelectProvinces: ",err)
						})
				})
	</script>
</body>
</html>