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
							class="home"><a title="Đến trang chủ" href="/home/index"
							itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
						<li class="icon-li"><strong>Thông tin đơn hàng</strong></li>
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
						<span>Thông tin đơn hàng chi tiết của bạn</span>
					</h1>
					<form:form class="payment-block clearfix" modelAttribute="donHang"
						action="/dathang/thanhtoan" id="checkout-container">
						<div class="col-md-6 col-sm-12 col-xs-12 payment-step step2">
							<h4>1. Chi tiết đơn hàng</h4>
							<div class="step-preview clearfix">
								<!-- <h2 class="title">Thông tin thanh toán</h2>
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
								</div> -->
								<table class="table product-list">
									<thead>
										<tr>
											<th>Mã đơn hàng</th>
											<th>Mã sản phẩm</th>
											<th>Giá sản phẩm</th>
											<th>Khuyến mãi</th>
											<th>Số lượng</th>
											<th>Số tiền</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="d" items="${details}">
											<tr>
												<td>${d.donHang.maDonHang }</td>
												<td>${d.sanPham.maSanPham }</td>
												<td>${d.giaBan }</td>
												<td>${d.khuyenMai }</td>
												<td>${d.soLuong }</td>
												<td>${d.soLuong * d.giaBan*(1-d.khuyenMai) }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-md-6 col-sm-12 col-xs-12 payment-step step1">
							<h4>2. Thông tin đơn hàng</h4>
							<div class="step-preview">
								<div class="form-group">
									<label>Mã đơn hàng</label>
									<form:input path="maDonHang" class="form-control"
										readonly="true" />
								</div>

								<div class="form-group">
									<label>Tài khoản</label>
									<form:input path="khachHang.maKhachHang" class="form-control"
										readonly="true" />
								</div>

								<div class="form-group">
									<label>Ngay đặt hàng</label>
									<form:input path="ngayDatHang" readonly="true"
										class="form-control" />
								</div>

								<div class="form-group">
									<label>Địa chỉ giao hàng</label>
									<form:input path="diaChi" readonly="true" class="form-control" />
								</div>
								<div class="form-group">
									<label>Tổng tiền</label>
									<form:input path="tongTien" readonly="true"
										class="form-control" pattern="#,###" />
								</div>

								<div class="form-group">
									<label>Ghi chú </label>
									<form:textarea path="ghiChu" readonly="true" rows="3"
										class="form-control" />
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
