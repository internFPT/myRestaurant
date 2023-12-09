<%@ page pageEncoding="UTF-8"%>
<!--header-->
<div class="header-w3l">
	<h1>Đăng nhập hệ thống SeaFoot</h1>
</div>
<!--//header-->
<!--main-->
<div class="main-w3layouts-agileinfo">
	<!--form-stars-here-->
	<div class="wthree-form">
		<h2>Điền vào biểu mẫu dưới đây để đăng nhập</h2>
		<h4 style="color: red">${message }</h4>
		<form action="/admins/users/login" method="post">
			<div class="form-sub-w3">
				<input type="text" name="id" placeholder="Username "
					value="${usd}" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
			</div>
			<div class="form-sub-w3">
				<input type="password" name="pw" placeholder="Password"
					value="${pwd}"/>
				<div class="icon-w3">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
				</div>
			</div>
			<label class="anim"> <input type="checkbox" name="rm" class="checkbox">
				<span>Ghi nhớ tài khoản?</span> <a href="#">Quên mật khẩu?</a>
			</label>
			<div class="clear"></div>
			<div class="submit-agileits">
				<input type="submit" value="Login">
			</div>
		</form>

	</div>
	<!--//form-ends-here-->

</div>
<!--//main-->
<!--footer-->
<div class="footer"></div>
<!--//footer-->
