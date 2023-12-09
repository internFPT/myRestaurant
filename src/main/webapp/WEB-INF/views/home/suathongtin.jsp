<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="menu-account">
					<h3>
						<span> Tài khoản </span>
					</h3>
					<ul>
						<li><a href="/taikhoan/doimatkhau"><i class="fa fa-key"></i>
								Đổi mật khẩu</a></li>
						<li><a href="/taikhoan/dangxuat"><i class="fa fa-key"></i>
								Đăng xuất</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-9">

				<div class="breadcrumb clearfix">
					<ul>
						<li itemtype="/home/index" itemscope="" class="home"><a
							title="Đến trang chủ" href="/home/index" itemprop="url"><span
								itemprop="title">Trang chủ</span></a></li>
						<li class="icon-li"><strong>Sửa thông tin tài khoản</strong></li>
					</ul>
				</div>
				<script type="text/javascript">
					$(".link-site-more").hover(function() {
						$(this).find(".s-c-n").show();
					}, function() {
						$(this).find(".s-c-n").hide();
					});
				</script>
				<script src="/assets/user/100004/js/accountServices.js"></script>
				<script src="/assets/user/100004/js/accountController.js"></script>
				<div class="register-content clearfix">
					<h1 class="title">
						<span>Sửa thông tin tài khoản</span>
					</h1>
					<div
						class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
						<h4 style="color: red;">${message }</h4>
						<form:form class="form-horizontal" modelAttribute="form"
							action="/taikhoan/suathongtin" enctype="multipart/form-data">
							<h2>
								<span>Thông tin tài khoản</span>
							</h2>
							<div class="form-group">
								<label for="Code" class="col-sm-3 control-label">Tài
									khoản<span class="warning">(*)</span>
								</label>
								<div class="col-sm-9">
									<form:input path="maKhachHang" type="text" class="form-control"
										readonly="true" />
								</div>
							</div>


							<div class="form-group">
								<label for="Name" class="col-sm-3 control-label">Họ tên<span
									class="warning">(*)</span>
								</label>
								<div class="col-sm-9">
									<form:input path="hoTen" type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label for="Email" class="col-sm-3 control-label">Email<span
									class="warning">(*)</span></label>
								<div class="col-sm-9">
									<form:input path="email" type="email" class="form-control" />
								</div>
							</div>


							<div class="form-group">
								<label for="" class="col-sm-3 control-label">Điện thoại<span
									class="warning">(*)</span></label>
								<div class="col-sm-9">
									<form:input path="soDt" type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label for="" class="col-sm-3 control-label">Địa chỉ<span
									class="warning">(*)</span></label>
								<div class="col-sm-9">
									<form:input path="diaChi" type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label for="" class="col-sm-3 control-label">Ảnh</label>
								<div class="col-sm-9">
									<img alt=""
										src="/assets/user/100004/images/custormers/${form.imgUrl }"
										style="width: 80px; height: 90px"> <input type="file"
										name="photo_file"> <input type="hidden" name="imgUrl"
										class="form-control" />
								</div>
							</div>
							<form:hidden path="matKhau" />
							<form:hidden path="chungThuc" />
							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-8">
									<form:button type="submit" class="btn btn-primary">Update</form:button>
								</div>
							</div>
						</form:form>
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
