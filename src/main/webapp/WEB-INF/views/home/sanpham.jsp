<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<div id="collection">
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-md-9">

					<div class="breadcrumb clearfix">
						<ul>
							<li itemtype="http://shema.org/Breadcrumb" itemscope=""
								class="home"><a title="Đến trang chủ" href="index.html"
								itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
							<li class="icon-li"><strong>Sản phẩm</strong></li>
						</ul>
					</div>
					<script type="text/javascript">
						$(".link-site-more").hover(function() {
							$(this).find(".s-c-n").show();
						}, function() {
							$(this).find(".s-c-n").hide();
						});
					</script>

					<div class="product-content">
						<h1 title="products" class="page_heading ">Sản phẩm</h1>
						<div class="sortPagibar m-b-15 clearfix">
							<div class="pull-left">
								<div class="collection_view">
									<button type="button" title="Gird"
										class="change_view change_view_active" data-view="grid">
										<span class="icon_fallback_text"> <span
											class="fa fa-th" aria-hidden="true"></span> <span
											class="fallback-text hidden">Dạng lưới</span>
										</span>
									</button>
									<button type="button" title="List" class="change_view"
										data-view="list">
										<span class="icon_fallback_text"> <span
											class="fa fa-th-list" aria-hidden="true"></span> <span
											class="fallback-text hidden">Dạng danh sách</span>
										</span>
									</button>
								</div>
							</div>
							<div class="pull-right">

								<div class="browse-tags">
									<span class="sort-view">Sắp xếp:</span> <span
										class="custom-dropdown custom-dropdown--white"> <select
										class="selectProductSort sort-by custom-dropdown__select custom-dropdown__select--white"
										id="lbsort"
										onchange="window.location.href = this.options[this.selectedIndex].value">
											<option selected="selected" value="/home/sanpham">Mặc
												định</option>
											<option value="/home/sanphamtangdan">Giá tăng dần</option>
											<option value="/home/sanphamgiamdan">Giá giảm dần</option>
											<option value="/home/sanphamAZ">Tên sản phẩm: A to Z</option>
											<option value="/home/sanphamZA">Tên sản phẩm: Z to A</option>
									</select>
									</span>
								</div>
							</div>
						</div>
						<div class="product_list grid clearfix">
							<c:forEach var="p" items="${sanphamAll}">
								<div
									class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
									<div class="product-block product-resize m-b-20">
										<div class="product-image image-resize">
											<div class="sold-out">Hot</div>
											<a href="/sanpham/chitiet/${p.maSanPham}"> <img
												class="first-img"
												src="/assets/user/100004/images/product/${p.imgUrl}"
												alt="Cồi s&#242; điệp">
											</a>
											<div data-id="${p.maSanPham }"
												class="product-actions hidden-xs">
												<button class="btn-add-to-cart btn-cart">
													<i class="fa fa-shopping-bag" aria-hidden="true"></i>
												</button>
												<button class="btn_quickview btn-star">
													<i class="glyphicon glyphicon-heart"></i>
												</button>
												<button class="btn_quickview btn-send-open-dialog"
													data-toggle="modal" data-target="#myModal">
													<i class="glyphicon glyphicon-envelope"></i>
												</button>
											</div>
										</div>
										<div class="product-info text-center m-t-xxs-20">
											<h3 class="pro-name">
												<a href="/sanpham/chitiet/${p.maSanPham}"
													title="Cồi s&#242; điệp">${p.tenSanPham}</a>
											</h3>
											<div class="pro-prices">
												<span class="pro-price"><f:formatNumber
														value="${p.giaGoc}" pattern="#,###" />${p.donViTinh}</span>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>


							<div class="icon-loading" style="display: none;">
								<div class="uil-ring-css">
									<div></div>
								</div>
							</div>
						</div>
						<div class="paginate">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
								id="pagination">
								<div class="row">
									<a class="next page_node" href="san-pham2679.html?page=1">
										<i class="fa fa-angle-left"></i>
									</a> <span class="page_node  current">1</span> <a class="page_node"
										href="san-pham4658.html?page=2">2</a> <a
										class="next page_node" href="san-pham4658.html?page=2"> <i
										class="fa fa-angle-right"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!--Template--
--End-->
				</div>
				<div class="col-md-3">

					<div class="menu-product">
						<h3>
							<span> Sản phẩm </span>
						</h3>
						<ul class='level0'>
							<c:forEach var="c" items="${danhmucSP}">
								<li><span><a
										href='/sanpham/danhsach-danhmuc/${c.maDanhMuc}''><i
											class='fa fa-arrow-circle-right'></i> ${c.tenDanhMuc}</a></span></li>
							</c:forEach>
						</ul class='level0'>
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

