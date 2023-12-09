<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
<div class="header">
	<script src="/assets/user/100004/js/login.js" type="text/javascript"></script>
	<section class="top-link clearfix">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="nav navbar-nav topmenu-contact pull-left">
						<li><i class="fa fa-phone"></i> <span>Hotline: 0335
								685 482</span></li>
					</ul>

					<c:choose>
						<c:when test="${empty sessionScope.khachHang}">
							<ul
								class="nav navbar-nav navbar-right topmenu  hidden-xs hidden-sm">
								<li class="account-login"><a href="/taikhoan/dangnhap"><i
										class="fa fa-sign-in"></i> Đăng nhập </a></li>
								<li class="account-register"><a href="/taikhoan/dangky"><i
										class="fa fa-key"></i> Đăng ký </a></li>
							</ul>
						</c:when>
						<c:otherwise>
							<ul
								class="nav navbar-nav navbar-right topmenu  hidden-xs hidden-sm">
								<li class="order-cart"><a href="/dathang/danhsach"><i
										class="fa fa-shopping-cart"></i> Đơn hàng</a></li>
								<li class="account-login"><a href="/taikhoan/dangxuat"><i
										class="fa fa-sign-in"></i> Đăng xuất </a></li>
								<li class="account-register"><a
									href="/taikhoan/suathongtin"><i class="fa fa-key"></i> Cập
										nhập tài khoản </a></li>
								<li class="account-register"><a href="/taikhoan/doimatkhau"><i
										class="fa fa-key"></i>Đổi mật khẩu </a></li>

							</ul>
						</c:otherwise>
					</c:choose>
					<div class="show-mobile hidden-lg hidden-md">
						<div class="quick-user">
							<div class="quickaccess-toggle">
								<i class="fa fa-user"></i>
							</div>
							<div class="inner-toggle">
								<c:choose>
									<c:when test="${empty sessionScope.khachHang}">
										<ul class="login links">
											<li><a href="/taikhoan/dangky"><i
													class="fa fa-sign-in"></i> Đăng ký</a></li>
											<li><a href="/taikhoan/dangnhap"><i
													class="fa fa-key"></i> Đăng nhập</a></li>
											<li><a href="/taikhoan/dangnhap"><i
													class="fa fa-key"></i> Quên mật khẩu</a></li>
										</ul>
									</c:when>
									<c:otherwise>
										<ul class="login links">
											<li><a href="/taikhoan/dangnhap"><i
													class="fa fa-key"></i> Đăng xuất</a></li>
											<li><a href="/taikhoan/dangnhap"><i
													class="fa fa-key"></i> Đổi mật khẩu</a></li>
											<li><a href="/taikhoan/dangnhap"><i
													class="fa fa-key"></i> Cập nhập tài khoản</a></li>
											<li><a href="/dathang/danhsach"><i class="fa fa-key"></i>
													Đơn hàng</a></li>
											<li><a href="/dathang/sanphamdamua"><i
													class="fa fa-key"></i> Sản phẩm đã mua</a></li>
										</ul>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="quick-access">
							<div class="quickaccess-toggle">
								<i class="fa fa-list"></i>
							</div>
							<div class="inner-toggle">
								<ul class="links">
									<li><a id="mobile-wishlist-total"
										href="/DoanSpringMVC/kiem-tra-don-hang" class="wishlist"><i
											class="fa fa-pencil-square-o"></i> Kiểm tra đơn hàng</a></li>
									<li><a href="/DoanSpringMVC/gio-hang" class="shoppingcart"><i
											class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Template--


	<!-- Header -->
	<header id="header">
		<div id="header_main">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-8">
						<!--logo-->

						<h1 class="pull-left">
							<a href="/home/index" class="logo"
								title="Hệ thống phân phối hản sản toàn quốc">
								<img src="/assets/user/100004/images/logo.png"
								alt="Hệ thống phân phối hản sản toàn quốc"
								title="Hệ thống phân phối hản sản toàn quốc">
							</a>
						</h1>

						<!-- end logo -->
					</div>
					<div class="col-lg-6 col-md-5 col-sm-4 hidden-xs">
						<!-- Search -->
						<div class="search_box">
							<div class="search_wrapper">

								<form action="/sanpham/list-by-keywords" method="post">
									<input value="${param.keywords}" name="keywords"
										class="index_input_search"
										placeholder="Nhập từ khóa tìm kiếm..." />
									<button class="btn_search_submit btn " type="submit"
										id="btnsearch">
										<span>Tìm ngay</span>
									</button>
								</form>
							</div>
						</div>
						<!-- End Search -->
					</div>
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<!-- Cart -->
						<div class="cart_header">
							<a href="/home/giohang" title="Giỏ hàng"> <span
								class="cart_header_icon"><img id="cart-img"
									src="/assets/user/100004/images/cart42e7.png" /></span> <span
								class="box_text"> <strong class="cart_header_count">Giỏ
										hàng <span id="cart-cnt">${cart.count}</span>
								</strong> <span class="cart_price" id="cart-amt"><f:formatNumber
											value="${cart.amount}" pattern="#,###" />vnd</span>
							</span>
							</a>
							<div class="cart_clone_box">
								<div class="cart_box_wrap hidden">
									<div class="cart_item original clearfix">
										<div class="cart_item_image"></div>
										<div class="cart_item_info">
											<p class="cart_item_title">
												<a href="#" title=""></a>
											</p>
											<span class="cart_item_quantity"></span> <span
												class="cart_item_price"></span> <span class="remove"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="cart_header_top_box">
								<div class="cart_empty">Giỏ hàng của bạn.</div>
								<a></a>
							</div>
						</div>
						<!-- End Cart -->
						<!-- Account -->
						<div class="user_login">
							<c:choose>
								<c:when test="${empty sessionScope.khachHang}">
									<div class="user_login_icon">
										<img src="/assets/user/100004/images/user42e7.png" />
									</div>
									<div class="box_text">
										<strong>Tài khoản</strong>
									</div>
								</c:when>
								<c:otherwise>
									<div class="user_login_icon">
										<img
											src="/assets/user/100004/images/custormers/${sessionScope.ImgUrlSS}"
											style="border-radius: 50%;" />
									</div>
									<div class="box_text">
										<strong>${sessionScope.MaKhachHangSS}</strong>
									</div>
								</c:otherwise>
							</c:choose>
							<div class="user_box">
								<c:choose>
									<c:when test="${empty sessionScope.khachHang}">
										<ul class="login links">
											<li><a href="/taikhoan/dangky"> Đăng ký</a></li>
											<li><a href="/taikhoan/dangnhap"> Đăng nhập</a></li>
											<li><a href="/taikhoan/quenmatkhau">Quên mật khẩu</a></li>
										</ul>
									</c:when>
									<c:otherwise>
										<ul class="login links">
											<li><a href="/taikhoan/dangxuat"> Đăng xuất</a></li>
											<li><a href="/taikhoan/doimatkhau"> Đổi mật khẩu</a></li>
											<li><a href="/taikhoan/suathongtin"> Cập nhập tài
													khoản</a></li>
											<li><a href="/dathang/sanphamdamua"></i> Sản phẩm đã mua</a></li>
										</ul>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<!-- End account -->
					</div>
				</div>
			</div>
		</div>
		<div id="header_mobile">
			<div class="container">
				<div class="row">
					<!-- Menu mobile -->
					<button type="button" class="navbar-toggle collapsed"
						id="trigger_click_mobile">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<div id="mobile_wrap_menu" class="visible-xs visible-sm">
						<div class="user_mobile">
							<div class="icon_user_mobile">
								<img
									src="<c:url value="/assets/user/100004/images/user_mobile.png"/>"
									alt="account">
							</div>
							<div class="login_mobile">

								<a href="/taikhoan/dangnhap" class="login-btn">Đăng nhập </a><a
									href="/taikhoan/dangky" class="login-btn"> / Đăng ký</a>
							</div>
							<div class="close_menu"></div>
						</div>
						<div class="content_menu">
							<ul>
								<li class="level0"><a class='' href='/home/index'><span>Trang
											chủ</span></a></li>
								<li class="level0"><a class='' href='/home/gioithieu'><span>Giới
											thiệu</span></a></li>
								<li class="level0"><a class='' href='/home/sanpham'><span>Sản
											phẩm</span></a></li>
								<li class="level0"><a class='' href='/home/tintuc'><span>Tin
											tức</span></a></li>
								<li class="level0"><a class='' href='/home/lienhe'><span>Liên
											hệ</span></a></li>
							</ul>
						</div>
					</div>
					<!-- End menu mobile -->
					<div class="pull-right mobile-menu-icon-wrapper">
						<!-- Logo mobile -->
						<div class="logo logo-mobile">

							<a href="/home/index"
								title="Hệ thống phân phối hản sản toàn quốc">
								<img src="/assets/user/100004/images/logo.png"
								alt="Hệ thống phân phối hản sản toàn quốc">
							</a>
						</div>
						<!-- End Logo mobile -->
						<!-- Cart mobile -->
						<div class="cart_header" id="cart-target">
							<a href="gio-hang.html" title="Giỏ hàng">
								<div class="cart_header_icon">
									<img src="/assets/user/100004/images/user42e7.png" />
								</div>
								<div class="box_text">
									<strong class="cart_header_count"><span>0</span></strong>
								</div>
							</a>
						</div>
						<!-- End Cart mobile -->
					</div>
					<div class="clearfix"></div>
					<!-- Search mobile -->
					<div class="search_mobile col-md-12">
						<div class="search_box">
							<div class="search_wrapper">
								<input type="text" name="keywords" class="index_input_search"
									id="txtsearch2"
									onblur="if(this.value=='')this.value='Nhập từ khóa tìm kiếm...'"
									onfocus="if(this.value=='Nhập từ khóa tìm kiếm...')this.value=''"
									value="Nhập từ khóa tìm kiếm..." />
								<button class="btn_search_submit btn " type="button"
									id="btnsearch2">
									<span><i class="fa fa-search"></i></span>
								</button>
							</div>
						</div>
					</div>
					<!-- End search mobile -->
				</div>
			</div>
		</div>
	</header>
	<!-- End header -->
	<script type="text/javascript">
		$("#btnsearch").click(function() {
			SearchProduct();
		});
		$("#btnsearch2").click(function() {
			SearchProduct2();
		});
		$("#txtsearch").keydown(function(event) {
			if
									(event.keyCode==
									13) {
				SearchProduct();
			}
		});
		$("#txtsearch2").keydown(function(event) {
			if
									(event.keyCode==
									13) {
				SearchProduct2();
			}
		});
		function
									SearchProduct() {
			var key=$( '#txtsearch').val();
			if
									(key== '' || key== 'Tìm
									kiếm...') {
				$('#txtsearch').focus();
				return;
			}
			window.location='list-by-keywords'
									;
		}
		function SearchProduct2() {
			var key=$(
									'#txtsearch2').val();
			if (key== '' || key== 'Tìm
									kiếm...') {
				$('#txtsearch2').focus();
				return;
			}
			window.location='list-by-keywords';
		}
	</script>
	<!--Template--
--End-->
	<!-- TODO -->
	<!-- Main menu -->
	<nav class="navbar-main">
		<div id="mb_mainnav">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-12 col-xs-12 vertical_menu">
						<div id="mb_verticle_menu" class="menu-quick-select">
							<div class="title_block">
								<span>Danh mục sản phẩm</span>
							</div>
							<div id="menuverti" class="block_content navbar_menuvertical">
								<!-- todo -->
								<ul class='nav_verticalmenu'>
									<c:forEach var="c" items="${danhmucSP}">
										<li class="level0"><a class=''
											href='/sanpham/danhsach-danhmuc/${c.maDanhMuc}'> <img
												class='icon-menu'
												src='/assets/user/100004/images/icon/${c.imgUrl}'
												alt='Nghao - Sò - Ốc'> <span>${c.tenDanhMuc}</span>
										</a>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<nav class="col-md-9 col-sm-12 col-xs-12 p-l-0">
						<ul class='menu nav navbar-nav menu_hori'>
							<li class="level0"><a class='' href='/home/index'><span>Trang
										chủ</span></a></li>
							<li class="level0"><a class='' href='/home/gioithieu'><span>Giới
										thiệu</span></a></li>
							<li class="level0"><a class='' href='/home/sanpham'><span>Sản
										phẩm</span></a></li>
							<li class="level0"><a class='' href='/home/tintuc'><span>Tin
										tức</span></a></li>
							<li class="level0"><a class='' href='/home/lienhe'><span>Liên
										hệ</span></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</nav>
	<!-- End main menu -->
	<script type="text/javascript">
											$(document)
													.ready(
															function() {
																var str = location.href
																		.toLowerCase();
																$(
																		"ul.menu li a")
																		.each(
																				function() {
																					if (str
																							.indexOf(this.href
																									.toLowerCase()) >= 0) {
																						$(
																								"ul.menu li")
																								.removeClass(
																										"active");
																						$(
																								this)
																								.parent()
																								.addClass(
																										"active");
																					}
																				});
															});
										</script>
	<style id="cart-css"></style>