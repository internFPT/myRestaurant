<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<div id="product">
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-md-9">

					<div class="breadcrumb clearfix">
						<ul>
							<li itemtype="/home/index" itemscope="" class="home"><a
								title="Đến trang chủ" href="/home/index" itemprop="url"><span
									itemprop="title">Trang chủ</span></a></li>
							<li itemtype="http://shema.org/Breadcrumb" itemscope=""
								class="category17 icon-li">
								<div class="link-site-more">
									<a title=""
										href="/sanpham/danhsach-danhmuc/${sanphamCT.danhMucSanPham.maDanhMuc}"
										itemprop="url"> <span itemprop="title">${sanphamCT.danhMucSanPham.tenDanhMuc }</span>
									</a>
								</div>
							</li>
							<li class="productname icon-li"><strong>${sanphamCT.tenSanPham }</strong></li>
						</ul>
					</div>
					<script type="text/javascript">
						$(".link-site-more").hover(function() {
							$(this).find(".s-c-n").show();
						}, function() {
							$(this).find(".s-c-n").hide();
						});
					</script>

					<link href="/assets/user/100004/css/smoothproducts.css"
						rel="stylesheet" type="text/css">
					<script src="/assets/user/100004/js/smoothproducts.js"
						type="text/javascript"></script>
					<script src="/assets/user/100004/js/productServices.js"></script>
					<script src="/assets/user/100004/js/productController.js"></script>

					<div class="product-detail clearfix relative ng-scope"
						ng-controller="productController" ng-init="initController(46444)">
						<span us-spinner="{radius:5, width:3, length: 3}"
							class="ng-scope ng-hide"><div class="spinner"
								role="progressbar"
								style="position: absolute; width: 0px; z-index: 2000000000; left: 50%; top: 50%;">
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-0-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(0deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-1-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(30deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-2-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(60deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-3-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(90deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-4-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(120deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-5-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(150deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-6-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(180deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-7-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(210deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-8-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(240deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-9-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(270deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-10-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(300deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
								<div
									style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-11-12;">
									<div
										style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(330deg) translate(5px, 0px); border-radius: 1px;"></div>
								</div>
							</div></span>
						<!--Begin-->
						<div class="clearfix">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12 product-image clearfix">
									<div class="sp-loading" style="max-width: 370px">
										<img
											src="/assets/user/100004/images/product/${sanphamCT.imgUrl}"
											alt="">
									</div>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12 clearfix">
									<h1 class="name m-b-5 ng-binding">${sanphamCT.tenSanPham }</h1>
									<!-- ngIf: IsTrackingInventory==false||AllowPurchaseWhenSoldOut==true || (IsTrackingInventory&&AllowPurchaseWhenSoldOut==false&&Quantity>0) -->
									<div class="product_price p-b-10 ng-scope">
										<!-- ngIf: IsPromotion==true -->
										<!-- ngIf: IsPromotion==false -->
										<div class="ng-scope">
											<ins class="m-b-5 ng-binding">
												<f:formatNumber value="${sanphamCT.giaGoc}" pattern="#,###" />${sanphamCT.donViTinh}
											</ins>
										</div>
										<!-- end ngIf: IsPromotion==false -->
									</div>
									<div class="des p-b-10 ng-binding">
										<p>${sanphamCT.motaNgan }</p>
									</div>
									<div class="social">
										<!-- AddThis Button BEGIN -->

										<script type="text/javascript"
											src="/scripts/addthis/addthis_widget.js#pubid=ra-5334d6387b03b532"></script>
										<!-- AddThis Button END -->
									</div>
									<div id="add-item-form" class="variants clearfix m-b-10 p-b-10">
										<div class="clearfix product_quantity m-t-10 m-b-20">
											<label class="label_quantity m-b-5">Số lượng/KG</label>
											<button class="button btn_minus b-r-0"
												ng-click="DownQuantity()">-</button>
											<input name="quantity"
												class="quantity text-center ng-pristine ng-untouched ng-valid ng-valid-min"
												min="1" value="1" type="number" ng-model="InputQuantity"
												ng-init="InputQuantity=1">
											<button class="button btn_plus b-l-0" ng-click="UpQuantity()">+</button>
										</div>
										<div class="button clearfix ng-scope">
											<div data-id="${sanphamCT.maSanPham }"
												class="col-lg-6 col-sm-6 col-xs-6 col-xxs-12 p-l-0 p-r-xxs-0 m-b-10">
												<button id="add-to-cart" class="btn-cart">
													<i class="glyphicon glyphicon-shopping-cart "></i> Thêm giỏ
													hàng
												</button>
											</div>
											<div
												class="col-lg-6 col-sm-6 col-xs-6 col-xxs-12 p-r-0 p-l-xxs-0 m-b-10">
												<a id="buy-now"
													class="btn btn-primary glyphicon glyphicon-ok"
													href="/dathang/thanhtoan">Đặt Hàng</a>
											</div>
										</div>
										<div class="call">
											<p class="title">Để lại số điện thoại, chúng tôi sẽ tư
												vấn ngay sau từ 5 › 10 phút</p>
											<div class="input">
												<div class="input-group">
													<input
														class="form-control ng-pristine ng-untouched ng-valid"
														ng-model="CustomerPhone"
														onblur="if(this.value=='')this.value='Nhập số điện thoại...'"
														onfocus="if(this.value=='Nhập số điện thoại...')this.value=''"
														value="Nhập số điện thoại..." type="text"> <span
														class="input-group-btn">
														<button class="btn btn-primary" type="button"
															ng-click="callMe()">
															<i class="fa fa-phone"></i> Gọi lại cho tôi
														</button>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel"
							class="product_description product-tabs panel-group">
							<ul class="nav nav-tabs" role="tablist">
								<!-- ngRepeat: item in ProductTabs -->
								<li role="presentation" class="ng-scope active"><a
									data-toggle="tab" href="#tab1" role="tab" class="ng-binding">Chi
										tiết sản phẩm</a></li>

								<!-- end ngRepeat: item in ProductTabs -->
							</ul>
							<div class="tab-content">
								<!-- ngRepeat: item in ProductTabs -->
								<div class="tab-pane fade in ng-scope active" id="tab1">
									<div class="container-fluid rte ng-binding">
										<p>${sanphamCT.motaChiTiet }</p>

									</div>
								</div>
								<!-- end ngRepeat: item in ProductTabs -->
							</div>
						</div>
						<!--End-->
						<div class="modal fade" id="modalMyCart" tabindex="-1"
							role="dialog" aria-labelledby="modalMyCartLabel"
							aria-hidden="true">
							<div class="modal-dialog  modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">×</button>
										<h4 class="modal-title ng-binding" id="modalMyCartLabel">Bạn
											có sản phẩm trong giỏ hàng.</h4>
									</div>
									<div class="modal-body">
										<table class="table" style="width: 100%;">
											<thead>
												<tr>
													<th></th>
													<th>Tên sản phẩm</th>
													<th>Số lượng</th>
													<th>Giá tiền</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<!-- ngRepeat: item in OrderDetails -->
											</tbody>
										</table>
									</div>
									<div class="modal-footer">
										<div class="row">
											<div class="col-sm-12">
												<div class="total-price-modal">
													Tổng cộng : <span class="item-total ng-binding">₫</span>
												</div>
											</div>
										</div>
										<div class="row margin-top-10">
											<div class="col-lg-6">
												<div class="comeback text-left">
													<a href="/san-pham.html"> <i
														class="fa fa-chevron-circle-left "></i> Tiếp tục mua hàng
													</a>
												</div>
											</div>
											<div class="col-lg-6 text-right">
												<div class="buttons btn-modal-cart">
													<a class="btn btn-default" href="/thanh-toan.html"> Đặt
														hàng </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="modalCallMe" tabindex="-1"
							role="dialog" aria-labelledby="modalCallMeLabel"
							aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-body">
										<h2>Cám ơn Qúy Khách đã liên hệ đặt hàng</h2>
										<p>Shop sẽ gọi lại để tư vấn cho Quý khách hàng trong thời
											gian sớm nhất</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">OK</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product-content product-other">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#menu1"><b>Sản
										phẩm liên quan</b></a></li>
							<li><a data-toggle="tab" href="#menu2"><b>Sản phẩm
										yêu thích</b></a></li>
							<li><a data-toggle="tab" href="#menu3"><b>Sản phẩm
										đã xem</b></a></li>
						</ul>

						<div class="tab-content">
							<div id="menu1" class="tab-pane fade in active">
								<div class="product-content product-other">
									<h1 title="products" class="page_heading "></h1>
									<div class="product_list grid clearfix">
										<c:forEach var="p" items="${listSPCL}">
											<div
												class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow"
												style="visibility: visible; animation-name: zoomIn;">
												<div class="product-block product-resize m-b-20 fixheight"
													style="height: 295px;">
													<div class="product-image image-resize"
														style="height: 208px;">
														<div class="sold-out">Hot</div>
														<a href="/sanpham/chitiet/${p.maSanPham}"> <img
															class="first-img"
															src="/assets/user/100004/images/product/${p.imgUrl}"
															alt="Hàu sữa">
														</a>
														<div class="product-actions hidden-xs">
															<button class="btn-add-to-cart"
																style="margin-right: 0px;" onclick="AddToCard(46475,1)">
																<a href="javascript:void(0);"><i
																	class="fa fa-shopping-bag" aria-hidden="true"></i></a>
															</button>
															<button class="btn_quickview">
																<i class="glyphicon glyphicon-heart"></i>
															</button>
															<button class="btn_quickview" data-toggle="modal"
																data-target="#myModal">
																<i class="glyphicon glyphicon-envelope"></i>
															</button>

														</div>
													</div>
													<div class="product-info text-center m-t-xxs-20">
														<h3 class="pro-name">
															<a href="/sanpham/chitiet/${p.maSanPham}" title="Hàu sữa">${p.tenSanPham}</a>
														</h3>
														<div class="pro-prices">
															<span class="pro-price"><f:formatNumber
																	value="${p.giaGoc}" pattern="#,###" />${p.donViTinh}</span>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<div id="menu2" class="tab-pane fade">
								<div class="product-content product-other">
									<h1 title="products" class="page_heading "></h1>
									<div class="product_list grid clearfix">
										<c:forEach var="p" items="${yeuthichDS}">
											<div
												class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow"
												style="visibility: visible; animation-name: zoomIn;">
												<div class="product-block product-resize m-b-20 fixheight"
													style="height: 295px;">
													<div class="product-image image-resize"
														style="height: 208px;">
														<div class="sold-out">Hot</div>
														<a href="/sanpham/chitiet/${p.maSanPham}"> <img
															class="first-img"
															src="/assets/user/100004/images/product/${p.imgUrl}"
															alt="Hàu sữa">
														</a>
														<div class="product-actions hidden-xs">
															<div class="btn-add-to-cart" style="margin-right: 0px;"
																onclick="AddToCard(46475,1)">
																<a href="javascript:void(0);"><i
																	class="fa fa-shopping-bag" aria-hidden="true"></i></a>
															</div>
															<div class="btn_quickview">
																<a class="glyphicon glyphicon-heart"><i></i></a>
															</div>
															<div class="btn_quickview">
																<a class="quickview"
																	href="/sanpham/chitiet/${p.maSanPham}"><i
																	class="fa fa-eye"></i></a>
															</div>

														</div>
													</div>
													<div class="product-info text-center m-t-xxs-20">
														<h3 class="pro-name">
															<a href="/sanpham/chitiet/${p.maSanPham}" title="Hàu sữa">${p.tenSanPham}</a>
														</h3>
														<div class="pro-prices">
															<span class="pro-price"><f:formatNumber
																	value="${p.giaGoc}" pattern="#,###" />${p.donViTinh}</span>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<div id="menu3" class="tab-pane fade">
								<div class="product-content product-other">
									<h1 title="products" class="page_heading "></h1>
									<div class="product_list grid clearfix">
										<c:forEach var="p" items="${viewed}">
											<div
												class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow"
												style="visibility: visible; animation-name: zoomIn;">
												<div class="product-block product-resize m-b-20 fixheight"
													style="height: 295px;">
													<div class="product-image image-resize"
														style="height: 208px;">
														<div class="sold-out">Hot</div>
														<a href="/sanpham/chitiet/${p.maSanPham}"> <img
															class="first-img"
															src="/assets/user/100004/images/product/${p.imgUrl}"
															alt="Hàu sữa">
														</a>
														<div class="product-actions hidden-xs">
															<div class="btn-add-to-cart" style="margin-right: 0px;"
																onclick="AddToCard(46475,1)">
																<a href="javascript:void(0);"><i
																	class="fa fa-shopping-bag" aria-hidden="true"></i></a>
															</div>
															<div class="btn_quickview btn-star">
																<a class="glyphicon glyphicon-heart"><i></i></a>
															</div>
															<div class="btn_quickview btn-send-open-dialog">
																<a class="quickview"
																	href="/sanpham/chitiet/${p.maSanPham}"><i
																	class="fa fa-eye"></i></a>
															</div>

														</div>
													</div>
													<div class="product-info text-center m-t-xxs-20">
														<h3 class="pro-name">
															<a href="/sanpham/chitiet/${p.maSanPham}" title="Hàu sữa">${p.tenSanPham}</a>
														</h3>
														<div class="pro-prices">
															<span class="pro-price"><f:formatNumber
																	value="${p.giaGoc}" pattern="#,###" />${p.donViTinh}</span>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="menu-product">
						<h3>
							<span> Sản phẩm </span>
						</h3>
						<ul class="level0">
							<c:forEach var="c" items="${danhmucSP}">
								<li class="child"><span><a
										href="/sanpham/danhsach-danhmuc/${c.maDanhMuc}"><i
											class="fa fa-arrow-circle-right"></i> ${c.tenDanhMuc}</a></span><span
									class="open-close"><i class="fa fa-angle-down"></i></span>
							</c:forEach>
						</ul>
					</div>
					<script type="text/javascript">
						$(document)
								.ready(
										function() {
											$(
													'.menu-product li.child .open-close')
													.on(
															'click',
															function() {
																$(this)
																		.removeAttr(
																				'href');
																var element = $(
																		this)
																		.parent(
																				'li');
																if (element
																		.hasClass('open')) {
																	element
																			.removeClass('open');
																	element
																			.children(
																					'ul')
																			.slideUp();
																} else {
																	element
																			.addClass('open');
																	element
																			.children(
																					'ul')
																			.slideDown();
																}
															});
										});
					</script>
					<script src="/assets/user/100004/js/moduleServices.js"></script>
					<script src="/assets/user/100004/js/moduleController.js"></script>
					<!--Begin-->
					<div class="box-sale-policy ng-scope"
						ng-controller="moduleController"
						ng-init="initSalePolicyController('Shop')">
						<h3>
							<span>Chính sách bán hàng</span>
						</h3>
						<div class="sale-policy-block">
							<ul>
								<li>Giao hàng TOÀN QUỐC</li>
								<li>Thanh toán khi nhận hàng</li>
								<li>Đổi trả trong <span>15 ngày</span></li>
								<li>Hoàn ngay tiền mặt</li>
								<li>Chất lượng đảm bảo</li>
								<li>Miễn phí vận chuyển:<span>Đơn hàng từ 3 món trở
										lên</span></li>
							</ul>
						</div>
						<div class="buy-guide">
							<h3>Hướng Dẫn Mua Hàng</h3>
							<ul>
								<li>Mua hàng trực tiếp tại website <b class="ng-binding">
										http://www.runtime.vn</b>
								</li>
								<li>Gọi điện thoại <strong class="ng-binding">
										0908 77 00 95 </strong> để mua hàng
								</li>
								<li>Mua tại Trung tâm CSKH:<br> <strong
									class="ng-binding">5/12A Quang Trung, P.14, Q.Gò Vấp,
										Tp.HCM</strong> <a href="/ban-do.html" rel="nofollow" target="_blank">Xem
										Bản Đồ</a>
								</li>
								<li>Mua sỉ/buôn xin gọi <strong class="ng-binding">
										0908 77 00 95 </strong> để được hỗ trợ.
								</li>
							</ul>
						</div>
					</div>
					<!--End-->
					<script type="text/javascript">
						window.Shop = {
							"Name" : "CÔNG TY TNHH PHÁT TRIỂN CÔNG NGHỆ RUNTIME",
							"Email" : "runecom04@runtime.vn",
							"Phone" : "(08) 66 85 85 38",
							"Logo" : "/Uploads/shop2005/images/logo.png",
							"Fax" : "(08) 66 85 85 38",
							"Website" : "http://www.runtime.vn",
							"Hotline" : "0908 77 00 95",
							"Address" : "5/12A Quang Trung, P.14, Q.Gò Vấp, Tp.HCM",
							"Fanpage" : "https://www.facebook.com/runtime.vn",
							"Google" : null,
							"Facebook" : null,
							"Youtube" : null,
							"Twitter" : null,
							"IsBanner" : false,
							"IsFixed" : false,
							"BannerImage" : null
						};
					</script>
					<div class="box-product widget_block_sidebar">
						<div class="title_product_related widget_title_sidebar">
							<h3>Sản Phẩm Quan Tâm Nhất</h3>
						</div>

						<ul class="list_product_related widget_list_sidebar clearfix">
							<c:forEach var="p" items="${listSPQT}">
								<li class="pro-loop clearfix">
									<div class="col-md-5 col-sm-5 col-xs-5">
										<a href="/sanpham/chitiet/${p.maSanPham}" title="Cồi sò điệp">
											<img src="/assets/user/100004/images/product/${p.imgUrl}"
											alt="Cồi sò điệp">
										</a>
									</div>
									<div class="col-md-7 col-sm-7 col-xs-7">
										<a href="/sanpham/chitiet/${p.maSanPham}" title="Cồi sò điệp">
											<h3 class="product_related_name">${p.tenSanPham}</h3>
											<p class="product_related_price">
												<span class="product_related_price"><f:formatNumber
														value="${p.giaGoc}" pattern="#,###" />${p.donViTinh}</span>
											</p>
										</a>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="dialog.jsp" />
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

<div id="_atssh"
	style="visibility: hidden; height: 1px; width: 1px; position: absolute; top: -9999px; z-index: 100000;">
	<iframe id="_atssh994" title="AddThis utility frame"
		style="height: 1px; width: 1px; position: absolute; top: 0px; z-index: 100000; border: 0px; left: 0px;"
		src="http://s7.addthis.com/static/sh.92bb263c60d77a822f41d4b0.html#rand=0.9855029540057842&amp;iit=1598195329072&amp;tmr=load%3D1598195328803%26core%3D1598195328853%26main%3D1598195329064%26ifr%3D1598195329076&amp;cb=0&amp;cdn=0&amp;md=0&amp;kw=C%E1%BB%93i%20s%C3%B2%20%C4%91i%E1%BB%87p&amp;ab=-&amp;dh=runecom04.runtime.vn&amp;dr=http%3A%2F%2Frunecom04.runtime.vn%2F&amp;du=http%3A%2F%2Frunecom04.runtime.vn%2Fsan-pham%2Fcoi-so-diep.html&amp;href=http%3A%2F%2Frunecom04.runtime.vn%2Fsan-pham%2Fcoi-so-diep.html&amp;dt=C%E1%BB%93i%20s%C3%B2%20%C4%91i%E1%BB%87p&amp;dbg=0&amp;cap=tc%3D0%26ab%3D0&amp;inst=1&amp;jsl=129&amp;prod=true&amp;lng=vi&amp;ogt=site_name%2Curl%2Cimage%2Cdescription%2Ctitle%2Ctype%3Dwebsite%2Clocale&amp;pc=men&amp;pub=ra-5334d6387b03b532&amp;ssl=0&amp;sid=5f4286806d38ffd1&amp;srpl=1&amp;srf=0.01&amp;srx=1&amp;ver=300&amp;xck=0&amp;xtr=0&amp;og=locale%3Dvi_VN%26type%3Dwebsite%26title%3DC%25E1%25BB%2593i%2520s%25C3%25B2%2520%25C4%2591i%25E1%25BB%2587p%26description%3DC%25E1%25BB%2593i%2520s%25C3%25B2%2520%25C4%2591i%25E1%25BB%2587p%26image%3Dhttp%253A%252F%252Frunecom04.runtime.vn%252FUploads%252Fshop2005%252Fimages%252Fproduct%252Fcoi-so-diep-1_master.jpg%26url%3Dhttp%253A%252F%252Frunecom04.runtime.vn%252Fsan-pham%252Fcoi-so-diep.html%26site_name%3DSeaFood%2520Store&amp;csi=undefined&amp;rev=v7.9.3-wp&amp;ct=1&amp;xld=1&amp;xd=1"></iframe>
</div>
<style id="service-icons-0"></style>

<div style="display: none;" id="loading-mask">
	<div id="loading_mask_loader" class="loader">
		<img alt="Loading..." src="/Images/ajax-loader-main.gif">
		<div>Please wait...</div>
	</div>
</div>
<a href="javascript:void(0);" class="back-to-top"><span>Top</span></a>




<script type="text/javascript">
	$(".header-content").css({
		"background" : ''
	});
	$("html").addClass('');
</script>

<iframe id="nr-ext-rsicon"
	style="position: absolute; display: none; width: 50px; height: 50px; z-index: 2147483647; border-style: none; background: transparent;"></iframe>
<iframe name="oauth2relay1289132264" id="oauth2relay1289132264"
	src="https://accounts.google.com/o/oauth2/postmessageRelay?parent=http%3A%2F%2Frunecom04.runtime.vn&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.vi.GvGQknA8E1g.O%2Fam%3DwQE%2Fd%3D1%2Fct%3Dzgms%2Frs%3DAGLTcCMsrxwKQn_wxHYgIxdxdRd5qnmjng%2Fm%3D__features__#rpctoken=290859922&amp;forcesecure=1"
	tabindex="-1" aria-hidden="true"
	style="width: 1px; height: 1px; position: absolute; top: -100px;"></iframe>
<div id="eJOY__extension_root" class="eJOY__extension_root_class"
	style="all: unset;"></div>