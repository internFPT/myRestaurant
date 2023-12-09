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
						<li><a href="/taikhoan/dangnhap"><i class="fa fa-sign-in"></i>
								Đăng nhập</a></li>
						<li><a href="/taikhoan/dangky"><i class="fa fa-key"></i>
								Đăng ký</a></li>
						<li><a href="/taikhoan/quenmatkhau"><i class="fa fa-key"></i>
								Quên mật khẩu</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-9">

				<div class="breadcrumb clearfix">
					<ul>
						<li itemtype="/home/index" itemscope="" class="home"><a
							title="Đến trang chủ" href="/home/index" itemprop="url"><span
								itemprop="title">Trang chủ</span></a></li>
						<li class="icon-li"><strong>Đăng ký tài khoản</strong></li>
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
						<span>Đăng ký tài khoản</span>
					</h1>
					<div
						class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
						<h4 style="color: red;">${message }</h4>
						<form:form class="form-horizontal" modelAttribute="form"
							action="/taikhoan/dangky" enctype="multipart/form-data">
							<h2>
								<span>Thông tin tài khoản</span>
							</h2>
							<div class="form-group">
								<label for="Code" class="col-sm-3 control-label">Tài
									khoản<span class="warning">(*)</span>
								</label>
								<div class="col-sm-9">
									<form:input path="maKhachHang" type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label for="Password" class="col-sm-3 control-label">Mật
									khẩu<span class="warning">(*)</span>
								</label>
								<div class="col-sm-9">
									<form:input path="matKhau" type="password" class="form-control" />
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
									<input type="file" name="photo_file"> <input
										type="hidden" name="imgUrl" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-4">
									<form:button type="submit" class="btn btn-primary">Đăng ký</form:button>
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
