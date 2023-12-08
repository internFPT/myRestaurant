<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div class="breadcrumb clearfix">
					<ul>
						<li itemtype="http://shema.org/Breadcrumb" itemscope=""
							class="home"><a title="Đến trang chủ" href="index.html"
							itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
						<li class="icon-li"><strong>Thanh toán</strong></li>
					</ul>
				</div>
				<script type="text/javascript">
					$(".link-site-more").hover(function() {
						$(this).find(".s-c-n").show();
					}, function() {
						$(this).find(".s-c-n").hide();
					});
				</script>
				<script src="app/services/orderServices.js"></script>
				<script src="app/controllers/orderController.js"></script>
				<script src="/assets/user/100004/js/orderServices.js"></script>
				<script src="/assets/user/100004/js/orderController.js"></script>
				<div class="payment-content">
					<h1 class="title">
						<span>Thanh toán</span>
					</h1>
					<div class="steps clearfix">
						<ul class="clearfix">
							<li
								class="cart active col-md-2 col-xs-12 col-sm-4 col-md-offset-3 col-sm-offset-0 col-xs-offset-0"><span><i
									class="glyphicon glyphicon-shopping-cart"></i></span><span>Giỏ
									hàng của tôi</span><span class="step-number"><a>1</a></span></li>
							<li class="payment active col-md-2 col-xs-12 col-sm-4"><span><i
									class="glyphicon glyphicon-usd"></i></span><span>Thanh toán</span><span
								class="step-number"><a>2</a></span></li>
							<li class="finish col-md-2 col-xs-12 col-sm-4"><span><i
									class="glyphicon glyphicon-ok"></i></span><span>Hoàn tất</span><span
								class="step-number"><a>3</a></span></li>
						</ul>
					</div>
					<form:form class="payment-block clearfix" modelAttribute="donHang"
						action="/dathang/thanhtoan" id="checkout-container">
						<div class="col-md-4 col-sm-12 col-xs-12 payment-step step2">
							<h4>1. Địa chỉ thanh toán và giao hàng</h4>
							<div class="step-preview clearfix">
								<h2 class="title">Thông tin thanh toán</h2>
								<div class="info-user"></div>
								<div class="form-block">
									<div class="user-login">
										<a href="dang-ky.html">Đăng ký tài khoản mua hàng</a><a
											href="dang-nhap.html">Đăng nhập</a>
									</div>
									<label>Mua hàng không cần tài khoản</label>
								</div>
								<h2 class="title">Thông tin giao hàng</h2>
								<div class="checkbox">
									<label> <input type="checkbox" /> Giao hàng địa chỉ
										khác
									</label>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-12 col-xs-12 payment-step step3">
							<h4>2. Thanh toán và vận chuyển</h4>
							<div class="step-preview clearfix">
								<h2 class="title">Vận chuyển</h2>
								<div class="form-group ">
									<select class="form-control"></select>
								</div>
								<h2 class="title">Thanh toán</h2>
								<div class="radio">
									<label> <input type="radio" value="{{item.Id}}"
										name="optionsRadios" /> {{item.Name}}
									</label>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-12 col-xs-12 payment-step step1">
							<h4>3. Thông tin đơn hàng</h4>
							<div class="step-preview">
								<div class="form-group">
									<label>Tài khoản</label>
									<form:input path="khachHang.maKhachHang" class="form-control"
										type="text" />
								</div>

								<div class="form-group">
									<label>Ngay đặt hàng</label>
									<form:input path="ngayDatHang" type="text" class="form-control" />
								</div>

								<div class="form-group">
									<label>Địa chỉ giao hàng</label>
									<form:input path="diaChi" type="text" class="form-control" />
								</div>
								<div class="form-group">
									<label>Tổng tiền</label>
									<form:input path="tongTien" type="text" class="form-control" />
								</div>

								<div class="form-group">
									<label>Ghi chú </label>
									<form:textarea path="ghiChu" rows="3" class="form-control" />
								</div>

								<div class="form-group">
									<form:button type="submit" class="btn btn-primary">Đặt hàng</form:button>
								</div>
							</div>
						</div>
					</form:form>
				</div>

			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$(".menu-quick-select ul").hide();
		$(".menu-quick-select").hover(function() {
			$(".menu-quick-select ul").show();
		}, function() {
			$(".menu-quick-select ul").hide();
		});
	});
</script>
