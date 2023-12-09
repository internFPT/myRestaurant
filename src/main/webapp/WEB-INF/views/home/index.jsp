<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<div class="slideshow">
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-9 ">

				<div class="homeslider">
					<div id="owl-slider" class="owl-carousel owl-carousel-banner">
						<c:forEach var="ab" items="${anhbiaAll}">
							<div class="item">
								<a href="#"><img
									src="/assets/user/100004/images/slide/${ab.imgUrl }" alt="1"></a>
							</div>
						</c:forEach>
					</div>
				</div>
				<!--Template--
--End-->
			</div>
		</div>
	</div>
</div>


<div class="adv">

	<section id="service">
		<div class="container m-b-30">
			<div class="row">
				<div id="service_home" class="clearfix">
					<div
						class="col-lg-4 col-md-4 col-sm-4 col-xs-6 col-xxs-12 text-center m-b-xs-10">
						<div class="service_item">
							<div class="icon icon_product">
								<img src="/assets/user/100004/images/icon_142e7.png?v=582"
									alt="">
							</div>
							<div class="description_icon">
								<span class="large-text"> Miễn phí giao hàng </span> <span
									class="small-text"> Cho hóa đơn từ 450,000đ </span>
							</div>
						</div>
					</div>
					<div
						class="col-lg-4 col-md-4 col-sm-4 col-xs-6 col-xxs-12 text-center m-b-xs-10">
						<div class="service_item">
							<div class="icon icon_product">
								<img src="/assets/user/100004/images/icon_242e7.png?v=582"
									alt="">
							</div>
							<div class="description_icon">
								<span class="large-text"> Giao hàng trong ngày </span> <span
									class="small-text"> Với tất cả đơn hàng </span>
							</div>
						</div>
					</div>
					<div
						class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center m-b-xs-10">
						<div class="service_item">
							<div class="icon icon_product">
								<img src="/assets/user/100004/images/icon_342e7.png?v=582"
									alt="">
							</div>
							<div class="description_icon">
								<span class="large-text"> Sản phẩm an toàn </span> <span
									class="small-text"> Cam kết chất lượng </span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Begin-->
	<!--End-->
</div>


<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-md-3">

				<script src="/assets/user/100004/js/moduleServices.js"></script>
				<script src="/assets/user/100004/js/moduleController.js"></script>
				<!--Begin-->
				<div class="box-adv" ng-controller="moduleController"
					ng-init="initAdvMenuController('AdvMenus')">
					<div class="sidebar_banner" ng-repeat="item in AdvMenus">
						<div class="img_banner">
							<a href="/home/sanpham"> <img ng-src="{{item.Image}}"
								data-original="{{item.Image}}" alt="{{item.Name}}"
								class="img-responsive lazy">
								<div class="figcaption"></div>
							</a>
						</div>
					</div>
				</div>
				<!--End-->
				<script type="text/javascript">
					window.AdvMenus = [
							{
								"Id" : 5695,
								"ShopId" : 2005,
								"AdvType" : 1,
								"AdvTypeName" : "Menu 2 bên",
								"Name" : "1",
								"Image" : "/assets/user/100004/images/banner_sidebar_img_1.png",
								"ImageThumbnai" : "/assets/user/100004/images/banner_sidebar_img_1.png",
								"Link" : "#",
								"IsVideo" : false,
								"Index" : 1,
								"Inactive" : false,
								"Timestamp" : "AAAAAAAoh7c="
							},
							{
								"Id" : 5696,
								"ShopId" : 2005,
								"AdvType" : 1,
								"AdvTypeName" : "Menu 2 bên",
								"Name" : "2",
								"Image" : "/assets/user/100004/images/banner_sidebar_img_2.png",
								"ImageThumbnai" : "/assets/user/100004/images/banner_sidebar_img_2.png",
								"Link" : "#",
								"IsVideo" : false,
								"Index" : 2,
								"Inactive" : false,
								"Timestamp" : "AAAAAAAoh7Y="
							} ];
				</script>
				<!-- Blog sidebar -->
				<div class="sidebar_blogs">
					<h3 title="bài viết mới" class="sidebar_title">Bài viết nổi
						bật</h3>
					<div class="blog_content">
						<div class="article_item">
							<div class="article_img">
								<a href="tin-tuc/canh-rong-bien-thit-bo-9165.html"> <img
									src="/assets/user/100004/images/news/canh-rong-bien-thit-bo.jpg"
									alt="Canh Rong Biển Thịt B&#242;"
									title="Canh Rong Biển Thịt B&#242;">
								</a>
							</div>
							<div class="article_content clearfix">
								<div class="title">
									<h4>
										<a href="tin-tuc/canh-rong-bien-thit-bo-9165.html"
											title="Canh Rong Biển Thịt B&#242;">Canh Rong Biển Thịt
											B&#242;</a>
									</h4>
								</div>
								<div class="article_meta">
									<div class="article_comment">
										<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
										luận
									</div>
									<div class="article_created">
										<i class="fa fa-calendar" aria-hidden="true"></i>
										<time datetime="16/06/2017">16/06/2017</time>
									</div>
								</div>
								<div class="des">
									<p> Bước 1: Cho tất cả rong biển vào ngâm trong nước. Sau
										khoảng 15 phút, vớt ra...                        </p>

								</div>
								<a class="readmore"
									href="tin-tuc/canh-rong-bien-thit-bo-9165.html">Đọc tiếp <i
									class="fa fa-angle-double-right" aria-hidden="true"></i>
								</a>
							</div>
						</div>
						<div class="article_item">
							<div class="article_img">
								<a href="tin-tuc/ca-hoi-nuong-giay-bac-9164.html"> <img
									src="/assets/user/100004/images/news/ca-hoi-nuong-giay-bac.jpg"
									alt="C&#225; Hồi nướng giấy bạc"
									title="C&#225; Hồi nướng giấy bạc">
								</a>
							</div>
							<div class="article_content clearfix">
								<div class="title">
									<h4>
										<a href="tin-tuc/ca-hoi-nuong-giay-bac-9164.html"
											title="C&#225; Hồi nướng giấy bạc">C&#225; Hồi nướng giấy
											bạc</a>
									</h4>
								</div>
								<div class="article_meta">
									<div class="article_comment">
										<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
										luận
									</div>
									<div class="article_created">
										<i class="fa fa-calendar" aria-hidden="true"></i>
										<time datetime="16/06/2017">16/06/2017</time>
									</div>
								</div>
								<div class="des">
									<p>Cá hồi không chỉ dùng ăn gỏi. Chúng ta còn có thể biến
										tấu phong phú hơn...          </p>

								</div>
								<a class="readmore"
									href="tin-tuc/ca-hoi-nuong-giay-bac-9164.html">Đọc tiếp <i
									class="fa fa-angle-double-right" aria-hidden="true"></i></a>
							</div>
						</div>
						<div class="article_item">
							<div class="article_img">
								<a href="tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html">
									<img
									src="/assets/user/100004/images/news/cach-che-bien-mon-ngon-tu-kho-ca-dua.jpg"
									alt="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa"
									title="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225;
									dứa">
								</a>
							</div>
							<div class="article_content clearfix">
								<div class="title">
									<h4>
										<a
											href="tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html"
											title="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa">C&#225;ch
											chế biến m&#243;n ngon từ kh&#244; c&#225; dứa</a>
									</h4>
								</div>
								<div class="article_meta">
									<div class="article_comment">
										<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
										luận
									</div>
									<div class="article_created">
										<i class="fa fa-calendar" aria-hidden="true"></i>
										<time datetime="16/06/2017">16/06/2017</time>
									</div>
								</div>
								<div class="des">
									<p>Cá Dứa một nắng đã được tẩm gia vị, do đó chỉ cần chiên
										giòn là có...</p>

								</div>
								<a class="readmore"
									href="tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html">Đọc
									tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i>
								</a>
							</div>
						</div>
						<div class="article_item">
							<div class="article_img">
								<a
									href="tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html">
									<img
									src="/assets/user/100004/images/news/cach-lam-muc-tam-bot-chien-gion-thom-ngon.jpg"
									alt="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon"
									title="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon">
								</a>
							</div>
							<div class="article_content clearfix">
								<div class="title">
									<h4>
										<a
											href="tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html"
											title="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon">C&#225;ch
											l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon</a>
									</h4>
								</div>
								<div class="article_meta">
									<div class="article_comment">
										<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
										luận
									</div>
									<div class="article_created">
										<i class="fa fa-calendar" aria-hidden="true"></i>
										<time datetime="16/06/2017">16/06/2017</time>
									</div>
								</div>
								<div class="des">
									<p>Có rất nhiều món ăn được chế biến từ những nguyên liệu
										khá phổ biến và thưởng...                              </p>

								</div>
								<a class="readmore"
									href="tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html">Đọc
									tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i>
								</a>
							</div>
						</div>
						<div class="article_item">
							<div class="article_img">
								<a href="tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html"> <img
									src="/assets/user/100004/images/news/muc-om-nuoc-dua-hat-sen.jpg"
									alt="Mực om nước dừa hạt sen" title="Mực om nước dừa hạt sen">
								</a>
							</div>
							<div class="article_content clearfix">
								<div class="title">
									<h4>
										<a href="tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html"
											title="Mực om nước dừa hạt sen">Mực om nước dừa hạt sen</a>
									</h4>
								</div>
								<div class="article_meta">
									<div class="article_comment">
										<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
										luận
									</div>
									<div class="article_created">
										<i class="fa fa-calendar" aria-hidden="true"></i>
										<time datetime="16/06/2017">16/06/2017</time>
									</div>
								</div>
								<div class="des">
									<p> 500 g mực ống tươi làm sạch và để nguyên con 150 g hạt
										sen 100 g giò sống 150 ml nước dừa Gia...                    
										        </p>

								</div>
								<a class="readmore"
									href="tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html">Đọc tiếp <i
									class="fa fa-angle-double-right" aria-hidden="true"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- End blog sidebar -->
			</div>
			<div class="col-md-9">
				<div class="product-content">
					<div class="product_home_image">
						<a href="/home/sanpham/"> <img
							src="/assets/user/100004/images/slide/image-product-home-1.jpg"
							alt="Sản phẩm tươi ngon">
							<div class="figcaption"></div>
						</a>
					</div>
					<div class="clearfix">
						<div class="section-heading">
							<h2 title="Sản phẩm tươi ngon">
								<span>Sản phẩm tươi ngon</span>
							</h2>
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
				</div>
				<div class="product_home">
					<div class="product_home_image">
						<a href="/home/sanpham/"> <img
							src="/assets/user/100004/images/slide/image-product-home-2.jpg"
							alt="Sản phẩm dinh dưỡng">
							<div class="figcaption"></div>
						</a>
					</div>
					<div class="clearfix">
						<div class="section-heading">
							<h2 title="Sản phẩm dinh dưỡng">
								<span>Sản phẩm dinh dưỡng</span>
							</h2>
						</div>
					</div>
					<div class="clearfix">
						<div class="product-list">
							<c:forEach var="p" items="${sanphamAll}">
								<div
									class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
									<div class="product-block product-resize">
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
						</div>
					</div>
				</div>
				<div class="show_more">
					Mời bạn <a href="/home/sanpham/">Xem thêm các sản phẩm Hải sản</a>
					khác
				</div>
			</div>
		</div>
	</div>
</div>



<div class="partner">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<!--Blog-->
				<section id="blog_index" class="container m-b-20">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<div class="section-heading">
								<h2 title="Tin tức nổi bật">
									<span>Tin tức nổi bật</span>
								</h2>
							</div>
						</div>
					</div>
					<div class="row">
						<div id="blog_index_list" class="owl-carousel">
							<div class="article_item">
								<div class="article_img">
									<a href="tin-tuc/canh-rong-bien-thit-bo-9165.html"> <img
										src="/assets/user/100004/images/news/canh-rong-bien-thit-bo.jpg"
										alt="Canh Rong Biển Thịt B&#242;"
										title="Canh Rong Biển Thịt B&#242;">
									</a>
								</div>
								<div class="article_content clearfix">
									<div class="title">
										<h4>
											<a href="tin-tuc/canh-rong-bien-thit-bo-9165.html"
												title="Canh Rong Biển Thịt B&#242;">Canh Rong Biển Thịt
												B&#242;</a>
										</h4>
									</div>
									<div class="article_meta">
										<div class="article_comment">
											<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
											luận
										</div>
										<div class="article_created">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<time datetime="16/06/2017">16/06/2017</time>
										</div>
									</div>
									<div class="des">
										<p> Bước 1: Cho tất cả rong biển vào ngâm trong nước. Sau
											khoảng 15 phút, vớt ra...                        </p>

									</div>
									<a class="readmore"
										href="tin-tuc/canh-rong-bien-thit-bo-9165.html">Đọc tiếp <i
										class="fa fa-angle-double-right" aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="article_item">
								<div class="article_img">
									<a href="tin-tuc/ca-hoi-nuong-giay-bac-9164.html"> <img
										src="/assets/user/100004/images/news/ca-hoi-nuong-giay-bac.jpg"
										alt="C&#225; Hồi nướng giấy bạc"
										title="C&#225; Hồi nướng giấy bạc">
									</a>
								</div>
								<div class="article_content clearfix">
									<div class="title">
										<h4>
											<a href="tin-tuc/ca-hoi-nuong-giay-bac-9164.html"
												title="C&#225; Hồi nướng giấy bạc">C&#225; Hồi nướng
												giấy bạc</a>
										</h4>
									</div>
									<div class="article_meta">
										<div class="article_comment">
											<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
											luận
										</div>
										<div class="article_created">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<time datetime="16/06/2017">16/06/2017</time>
										</div>
									</div>
									<div class="des">
										<p>Cá hồi không chỉ dùng ăn gỏi. Chúng ta còn có thể biến
											tấu phong phú hơn...          </p>

									</div>
									<a class="readmore"
										href="tin-tuc/ca-hoi-nuong-giay-bac-9164.html">Đọc tiếp <i
										class="fa fa-angle-double-right" aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="article_item">
								<div class="article_img">
									<a
										href="tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html">
										<img
										src="/assets/user/100004/images/news/cach-che-bien-mon-ngon-tu-kho-ca-dua.jpg"
										alt="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa"
										title="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa">
									</a>
								</div>
								<div class="article_content clearfix">
									<div class="title">
										<h4>
											<a
												href="tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html"
												title="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa">C&#225;ch
												chế biến m&#243;n ngon từ kh&#244; c&#225; dứa</a>
										</h4>
									</div>
									<div class="article_meta">
										<div class="article_comment">
											<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
											luận
										</div>
										<div class="article_created">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<time datetime="16/06/2017">16/06/2017</time>
										</div>
									</div>
									<div class="des">
										<p>Cá Dứa một nắng đã được tẩm gia vị, do đó chỉ cần chiên
											giòn là có...</p>

									</div>
									<a class="readmore"
										href="tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html">Đọc
										tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="article_item">
								<div class="article_img">
									<a
										href="tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html">
										<img
										src="/assets/user/100004/images/news/cach-lam-muc-tam-bot-chien-gion-thom-ngon.jpg"
										alt="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon"
										title="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon">
									</a>
								</div>
								<div class="article_content clearfix">
									<div class="title">
										<h4>
											<a
												href="tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html"
												title="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon">C&#225;ch
												l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon</a>
										</h4>
									</div>
									<div class="article_meta">
										<div class="article_comment">
											<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
											luận
										</div>
										<div class="article_created">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<time datetime="16/06/2017">16/06/2017</time>
										</div>
									</div>
									<div class="des">
										<p>Có rất nhiều món ăn được chế biến từ những nguyên liệu
											khá phổ biến và thưởng...                              </p>

									</div>
									<a class="readmore"
										href="tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html">Đọc
										tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="article_item">
								<div class="article_img">
									<a href="tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html"> <img
										src="/assets/user/100004/images/news/muc-om-nuoc-dua-hat-sen.jpg"
										alt="Mực om nước dừa hạt sen" title="Mực om nước dừa hạt sen">
									</a>
								</div>
								<div class="article_content clearfix">
									<div class="title">
										<h4>
											<a href="tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html"
												title="Mực om nước dừa hạt sen">Mực om nước dừa hạt sen</a>
										</h4>
									</div>
									<div class="article_meta">
										<div class="article_comment">
											<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
											luận
										</div>
										<div class="article_created">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<time datetime="16/06/2017">16/06/2017</time>
										</div>
									</div>
									<div class="des">
										<p> 500 g mực ống tươi làm sạch và để nguyên con 150 g hạt
											sen 100 g giò sống 150 ml nước dừa Gia...                    
											        </p>

									</div>
									<a class="readmore"
										href="tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html">Đọc tiếp
										<i class="fa fa-angle-double-right" aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="article_item">
								<div class="article_img">
									<a href="tin-tuc/tom-hap-bia-9160.html"> <img
										src="/assets/user/100004/images/news/tom-hap-bia.jpg"
										alt="T&#244;m hấp bia" title="T&#244;m hấp bia">
									</a>
								</div>
								<div class="article_content clearfix">
									<div class="title">
										<h4>
											<a href="tin-tuc/tom-hap-bia-9160.html"
												title="T&#244;m hấp bia">T&#244;m hấp bia</a>
										</h4>
									</div>
									<div class="article_meta">
										<div class="article_comment">
											<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
											luận
										</div>
										<div class="article_created">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<time datetime="16/06/2017">16/06/2017</time>
										</div>
									</div>
									<div class="des">
										<p>Nguyên liệu làm món tôm hấp bia : – Tôm sú: 1kg . Chon
											tôm không – Bia: 1 lon– Sả:                               
											            </p>

									</div>
									<a class="readmore" href="tin-tuc/tom-hap-bia-9160.html">Đọc
										tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="article_item">
								<div class="article_img">
									<a href="tin-tuc/cach-lam-lau-kim-chi-hai-san-9159.html"> <img
										src="/assets/user/100004/images/news/cach-lam-lau-kim-chi-hai-san.jpg"
										alt="C&#225;ch l&#224;m lẩu kim chi hải sản"
										title="C&#225;ch l&#224;m lẩu kim chi hải sản">
									</a>
								</div>
								<div class="article_content clearfix">
									<div class="title">
										<h4>
											<a href="tin-tuc/cach-lam-lau-kim-chi-hai-san-9159.html"
												title="C&#225;ch l&#224;m lẩu kim chi hải sản">C&#225;ch
												l&#224;m lẩu kim chi hải sản</a>
										</h4>
									</div>
									<div class="article_meta">
										<div class="article_comment">
											<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
											luận
										</div>
										<div class="article_created">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<time datetime="16/06/2017">16/06/2017</time>
										</div>
									</div>
									<div class="des">
										<p>Lẩu kimchi chua chua cay cay lại thêm vị ngọt của hải
											sản, cực kỳ tuyệt vời luôn nhé!                           
											    </p>

									</div>
									<a class="readmore"
										href="tin-tuc/cach-lam-lau-kim-chi-hai-san-9159.html">Đọc
										tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="article_item">
								<div class="article_img">
									<a
										href="tin-tuc/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-9158.html">
										<img
										src="/assets/user/100004/images/news/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay.jpg"
										alt="Mực chi&#234;n x&#249; sốt wasabi ăn một miếng l&#224; m&#234; mẩn ngay"
										title="Mực chi&#234;n x&#249; sốt wasabi ăn một miếng l&#224; m&#234; mẩn ngay">
									</a>
								</div>
								<div class="article_content clearfix">
									<div class="title">
										<h4>
											<a
												href="tin-tuc/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-9158.html"
												title="Mực chi&#234;n x&#249; sốt wasabi ăn một miếng l&#224; m&#234; mẩn ngay">Mực
												chi&#234;n x&#249; sốt wasabi ăn một miếng l&#224; m&#234;
												mẩn ngay</a>
										</h4>
									</div>
									<div class="article_meta">
										<div class="article_comment">
											<i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình
											luận
										</div>
										<div class="article_created">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<time datetime="16/06/2017">16/06/2017</time>
										</div>
									</div>
									<div class="des">
										<p>Mực chiên xù thì chẳng ai lạ lẫm gì nữa rồi, nhưng mực
											chiên xóc với sốt...                                        
											    </p>

									</div>
									<a class="readmore"
										href="tin-tuc/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-9158.html">Đọc
										tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--EndBlog-->
			</div>
		</div>
	</div>
</div>
<jsp:include page="dialog.jsp" />
