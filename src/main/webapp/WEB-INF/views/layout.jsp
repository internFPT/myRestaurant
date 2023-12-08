<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta charset="UTF-8" />
<title>SeaFoot Store</title>
<meta name="description" />
<meta name="keywords" />
<link href="/assets/user/100004/images/favicon.png" rel="shortcut icon"
	type="image/x-icon" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="fb:app_id" content="227481454296289" />

<meta content="vi_VN" property="og:locale" />
<meta content="website" property="og:type" />
<meta content="SeaFood Store" property="og:title" />
<meta property="og:description" />
<meta content="/assets/user/100004/images/logo.png" property="og:image" />
<meta content="http://runecom04.runtime.vn/trang-chu.html"
	property="og:url" />
<meta content="SeaFood Store" property="og:site_name" />
<style>
.loader_overlay {
	position: fixed;
	z-index: 9999;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	background-color: #fff;
	-webkit-transition: all .1s ease;
	-o-transition: all .1s ease;
	transition: all .1s ease;
	opacity: 1;
	visibility: visible;
}

.loader_overlay.loaded {
	opacity: 0;
	visibility: hidden;
	z-index: -2;
}
}
</style>
<!--CSS-->
<link href="/assets/user/100004/js/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/assets/user/100004/fonts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="/assets/user/100004/fonts/fonts-master/roboto.css">
<!--JS-->
<script src="/assets/user/100004/js/plugin42e7.js?v=582"></script>
<script src="/assets/user/100004/js/option_selection.js"></script>
<script src="/assets/user/100004/js/api.jquery.js"></script>
<!-- Đặt thẻ này vào phần đầu hoặc ngay trước thẻ đóng phần nội dung của bạn. -->
<script src="/assets/user/100004/js/platform.js" async="" defer=""></script>
<script async="" defer="defer" data-target=".product-resize"
	data-parent=".products-resize" data-img-box=".image-resize"
	src="/assets/user/100004/js/fixheightproductv242e7.js?v=582"></script>
<script src="/assets/user/100004/js/scripts42e7.js?v=582"></script>
<script src="/assets/user/100004/js/mycard.js" type="text/javascript"></script>
<script src="/assets/user/100004/js/jquery.lazyload.min.js"
	type="text/javascript"></script>

<script src="/assets/user/100004/js/angular.min.js"></script>
<script src="/assets/user/100004/js/angular-sanitize.min.js"></script>
<script type="text/javascript" src="/assets/user/100004/js/spin.min.js"></script>
<script type="text/javascript"
	src="/assets/user/100004/js/angular-spinner.min.js"></script>
<script type="text/javascript"
	src="/assets/user/100004/js/angular-loading-spinner.js"></script>
<script src="/assets/user/100004/js/appMain.js"></script>
<script src="/assets/user/100004/js/directive.js"></script>
<script src="/assets/user/100004/js/angular-summernote.js"></script>
<script src="/assets/user/100004/js/paging.js"></script>
<script src="/assets/user/100004/js/ajaxServices.js"></script>
<script src="/assets/user/100004/js/alertsServices.js"></script>

<link href="/assets/user/jqueryui/jquery-ui.min.css" rel="stylesheet">
<script src="/assets/user/jqueryui/jquery-ui.min.js"></script>

<script src="/assets/user/100004/js/estore.js"></script>
<link href="/assets/user/100004/css/style.css" rel="stylesheet"
	type="text/css" />
<link href="/assets/user/100004/css/responsive.css" rel="stylesheet"
	type="text/css" />

</head>
<body ng-app="appMain" style="" cz-shortcut-listen="true">
	<div class="loader_overlay"></div>
	<div id="opacity" class=""></div>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "../connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6&appId=227481454296289";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- header -->
	<div class="wrapper">
		<tiles:insertAttribute name="header" />
	</div>
	<!-- body -->
	<tiles:insertAttribute name="body" />

	<!-- footer -->
	<tiles:insertAttribute name="footer" />

	<div style="display: none;" id="loading-mask">
		<div id="loading_mask_loader" class="loader">
			<img alt="Loading..." src="Images/ajax-loader-main.gif" />
			<div>Please wait...</div>
		</div>
	</div>
	<a href="javascript:void(0);" class="back-to-top"><span>Top</span></a>
</body>

<!-- Mirrored from runecom04.runtime.vn/trang-chu.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 21 Aug 2020 01:45:35 GMT -->
</html>
<script type="text/javascript">
	$(".header-content").css({
		"background" : ''
	});
	$("html").addClass('');
</script>
