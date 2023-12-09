<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<div id="cart">
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="breadcrumb clearfix">
						<ul>
							<li itemtype="http://shema.org/Breadcrumb" itemscope=""
								class="home"><a title="Đến trang chủ" href="/home/index"
								itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
							<li class="icon-li"><strong>Hoàn tất đặt hàng</strong></li>
						</ul>
					</div>
					<h3 style="color: blue; text-align: center;">Bạn đã đặn hàng
						thành công !!!</h3>
					<script type="text/javascript">
						$(".link-site-more").hover(function() {
							$(this).find(".s-c-n").show();
						}, function() {
							$(this).find(".s-c-n").hide();
						});
					</script>
					<script src="app/services/orderServices.js"></script>
					<script src="app/controllers/orderController.js"></script>
					<div class="cart-content" ng-controller="orderController"
						ng-init="initOrderCartController()">

						<div class="steps clearfix">
							<ul class="clearfix">
								<li
									class="cart active col-md-2 col-xs-12 col-sm-4 col-md-offset-3 col-sm-offset-0 col-xs-offset-0"><span><i
										class="glyphicon glyphicon-shopping-cart"></i></span><span>Giỏ
										hàng của tôi</span><span class="step-number"><a>1</a></span></li>
								<li class="payment active col-md-2 col-xs-12 col-sm-4"><span><i
										class="glyphicon glyphicon-usd"></i></span><span>Thanh toán</span><span
									class="step-number"><a>2</a></span></li>
								<li class="finish active col-md-2 col-xs-12 col-sm-4"><span><i
										class="glyphicon glyphicon-ok"></i></span><span>Hoàn
										tất</span><span class="step-number"><a>3</a></span></li>
							</ul>
						</div>
						<h1>
							<span>Danh sách sản phẩm đã mua</span>
						</h1>
						<div class="cart-block">
							<div class="cart-info table-responsive">
								<table class="table product-list">
									<thead>
										<tr>
											<th>Mã đơn hàng</th>
											<th>Ngày đặt hàng</th>
											<th>Địa chỉ nhận hàng</th>
											<th>Số tiền</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="o" items="${donhangs}">
											<tr>
												<td>${o.maDonHang }</td>
												<td>${o.ngayDatHang }</td>
												<td>${o.diaChi }</td>
												<td>${o.tongTien }</td>
												<td><a href="/dathang/chitiet/${o.maDonHang }"
													class="btn btn-sm btn-warning ">Chi tiết </a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
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