<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
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
							<li class="icon-li"><strong>Giỏ hàng</strong></li>
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
					<div class="cart-content" ng-controller="orderController"
						ng-init="initOrderCartController()">
						<h1>
							<span>Giỏ hàng của tôi</span>
						</h1>
						<div class="cart-block">
							<div class="cart-info table-responsive">
								<table class="table product-list">
									<thead>
										<tr>
											<th></th>
											<th>Tên sản phẩm</th>
											<th>Giá Gốc</th>
											<th>Số lượng</th>
											<th>Thành tiền</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="p"
											items="${sessionScope['scopedTarget.cartService'].items }">
											<tr data-id="${p.maSanPham }" data-price="${p.giaGoc } "
												data-discount="${p.khuyenMai }">
												<td class="image"><a href=""> <img ng-src=""
														class="img-responsive" /></a></td>
												<td class="des"><a href=""></a> <span>${p.tenSanPham }</span></td>
												<td class="price">${p.giaGoc }</td>
												<td><input value="${p.soLuong }" type="number" min="1" max="10"
													style="width: 70px" /></td>
												<td class="amount amt">${p.soLuong*p.giaGoc *(1-p.khuyenMai) }</td>
												<td>
													<button class="btn btn-sm btn-warning btn-cart-remove">
														<i class="glyphicon glyphicon-trash"></i>
													</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="clearfix text-right">
								<%-- <span><b>Tổng thanh toán:</b></span> <span class="pay-price" id="cart-amt">
									<f:formatNumber value="${cart.amount}" pattern="#,###" />vnd
								</span> --%>
							</div>
							<div class="button text-right">
								<a class="comeback btn-cart-clean" style="background-color: red">Xóa
									giỏ hàng</a> <a class="comeback" href="/home/sanpham"
									onclick="window.history.back()">Tiếp tục mua hàng</a> <a
									class="button-default" id="checkout" href="/dathang/thanhtoan">Tiến
									hành thanh toán</a>
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