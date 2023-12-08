<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
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
						<li><a href="/taikhoan/dangky"><i class="fa fa-key"></i> Đăng
								ký</a></li>
						<li><a href="/taikhoan/quenmatkhau"><i class="fa fa-key"></i>
								Quên mật khẩu</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-9">

				<div class="breadcrumb clearfix">
					<ul>
						<li itemtype="/home/index" itemscope=""
							class="home"><a title="Đến trang chủ" href="/home/index"
							itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
						<li class="icon-li"><strong>Quên mật khẩu</strong></li>
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
				<div class="foget-password-content clearfix"">
					<h1 class="title">
						<span>Quên mật khẩu</span>
					</h1>
					<div class="alert alert-info fade in">
						<button data-dismiss="alert" class="close"></button>
						<i class="fa-fw fa fa-check"></i> Điền vào tài khoản và email của
						bạn để lấy lại mật khẩu . Một Email sẽ được gửi đến địa chỉ
						này.
					</div>

					<div
						class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
						<h4 style="color: red;">${message }</h4>
						<h4 style="color: blue;">${messageAll }</h4>
						<form class="form-horizontal" action="/taikhoan/quenmatkhau" method="post">
							<div class="form-group">
								<label class="col-sm-4 control-label">Tài Khoản</label>
								<div class="col-sm-8">
									<input name="maKhachHang" type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label">Email</label>
								<div class="col-sm-8">
									<input name="email" type="email" class="form-control" />
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-8">
									<button type="submit" class="btn btn-primary">Gửi mật
										khẩu</button>
									<a href="taikhoan/dangnhap">Quay lại đăng nhập</a>
								</div>
							</div>
						</form>
					</div>
				</div>

				<script type="text/javascript">
					$(document).ready(function() {
						$("#btnRefreshCapcha").click(function() {
							GetImageCaptcha();
						});
					});
					function GetImageCaptcha() {
						var date = new Date();
						var t = date.getTime();
						$("#imgCaptcha").attr("src", "/Captcha.ashx?t=" + t);
					}
				</script>
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