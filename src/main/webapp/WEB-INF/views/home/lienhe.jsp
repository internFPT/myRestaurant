<%@ page pageEncoding="UTF-8"%>
<div id="page">
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-md-3">

					<script src="app/services/moduleServices.js"></script>
					<script src="app/controllers/moduleController.js"></script>
					<!--Begin-->
					<div class="box-support-online" ng-controller="moduleController"
						ng-init="initSupportOnlineController('Shop','SupportOnlines')">
						<h3>
							<span>Hỗ trợ trực tuyến</span>
						</h3>
						<div class="support-online-block">
							<div class="support-hotline">
								HOTLINE<br> <span>{{shop.Hotline}}</span>
							</div>
							<div class="support-item" ng-repeat="item in SupportOnlines">
								<div class="name">
									{{item.FullName}} <b>{{item.Phone}}</b>
								</div>
								<ul>
									<li ng-if="item.Skype!=''&&item.Skype!=null"><a
										ng-href="skype:{{item.Skype}}?chat" title="{{item.FullName}}">
											<img width="70"
											src="../www.skypeassets.com/i/scom/images/skype-buttons/chatbutton_32px.png">
									</a></li>
									<li ng-if="item.Viber!=''&&item.Viber!=null" class="social">
										<a href="tel:{{item.Viber}}" title="{{item.FullName}}"
										target="_blank"> <img src="Images/icon-viber.png"
											alt="Viber"></a> <span class="phone"><a
											href="tel:{{item.Viber}}" title="{{item.FullName}}"
											target="_blank">{{item.Viber}} </a></span>
									</li>
									<li ng-if="item.Zalo!=''&&item.Zalo!=null" class="social">
										<a href="tel:{{item.Zalo}}" title="{{item.FullName}}"
										target="_blank"> <img src="Images/icon-zalo.png"
											alt="Zalo"></a> <span class="phone"><a
											href="tel:{{item.Zalo}}" title="{{item.FullName}}"
											target="_blank">{{item.Zalo}} </a></span>
									</li>
									<li ng-if="item.Facebook!=''&&item.Facebook!=null"
										class="social"><a href="notfounda963.html"
										title="{{item.FullName}}" target="_blank"> <img
											src="Images/icon-facebook.png" alt="Facebook"></a> <span
										class="phone"><a href="notfounda963.html"
											title="{{item.FullName}}" target="_blank">{{item.FullName}}
										</a></span></li>
								</ul>
							</div>
						</div>
					</div>
					<!--End-->
					<script type="text/javascript">
    window.Shop = {"Name":"CÔNG TY TNHH PHÁT TRIỂN CÔNG NGHỆ RUNTIME","Email":"runecom04@runtime.vn","Phone":"(08) 66 85 85 38","Logo":"/Uploads/shop2005/images/logo.png","Fax":"(08) 66 85 85 38","Website":"http://www.runtime.vn","Hotline":"0908 77 00 95","Address":"5/12A Quang Trung, P.14, Q.Gò Vấp, Tp.HCM","Fanpage":"https://www.facebook.com/runtime.vn","Google":null,"Facebook":null,"Youtube":null,"Twitter":null,"IsBanner":false,"IsFixed":false,"BannerImage":null};
    window.SupportOnlines = [];
</script>
				</div>
				<div class="col-md-9">

					<div class="breadcrumb clearfix">
						<ul>
							<li itemtype="http://shema.org/Breadcrumb" itemscope=""
								class="home"><a title="Đến trang chủ" href="index.html"
								itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
							<li class="icon-li"><strong>Liên hệ</strong></li>
						</ul>
					</div>
					<script type="text/javascript">
    $(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
</script>

					<script
						src="http://maps.google.com/maps/api/js?key=AIzaSyBO93-_2pxx4UBTNduADxfoWpsFrHAFKsA&amp;sensor=true"
						type="text/javascript"></script>
					<script src="app/services/contactServices.js"></script>
					<script src="app/controllers/contactController.js"></script>
					<!--Begin-->
					<div class="contact-content clearfix"
						ng-controller="contactController"
						ng-init="initController('Shop','Maps')">
						<div class="content clearfix">
							<h1 title="liên hệ">Liên hệ</h1>
							<div class="col-md-12 col-xs-12 col-sm-12">
								<div class="map clearfix">
									<div class="map-canvas" id="map_canvas"></div>
									<div class="map-information" ng-if="Maps.length>1">
										<ul class="clearfix">
											<li ng-repeat="item in Maps">
												<div>
													<a onclick="moveToMaker({{item.Id}}); return false;"
														href="javascript:void(0)"> {{item.Name}} </a>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-7" id="col-left contactFormWrapper">
								<h3>Liên hệ với chúng tôi</h3>
								<hr class="line-left">
								<p>Nếu bạn có thắc mắc gì, có thể gửi yêu cầu cho chúng tôi,
									và chúng tôi sẽ liên lạc lại với bạn sớm nhất có thể.</p>
								<form ng-submit="sendContact()">
									<div class="form-group">
										<label for="contactFormName" class="sr-only">Tên</label> <input
											required="" id="contactFormName"
											class="form-control input-lg" ng-model="Name"
											placeholder="Tên của bạn" autocapitalize="words" value=""
											type="text">
									</div>
									<div class="form-group">
										<label for="contactFormName" class="sr-only">Số điện
											thoại</label> <input required="" id="contactFormPhone"
											class="form-control input-lg" ng-model="Phone"
											placeholder="Số điện thoại của bạn" autocapitalize="words"
											value="" type="text">
									</div>
									<div class="form-group">
										<label for="contactFormEmail" class="sr-only">Email</label> <input
											required="" name="contact[email]" placeholder="Email của bạn"
											ng-model="Email" class="form-control input-lg"
											autocorrect="off" autocapitalize="off" value="" type="email">
									</div>
									<div class="form-group">
										<label for="contactFormTitle" class="sr-only">Tiêu đề</label>
										<input required="" id="contactFormTitle"
											class="form-control input-lg" ng-model="Title"
											placeholder="Tiêu đề" value="" type="text">
									</div>
									<div class="form-group">
										<label for="contactFormMessage" class="sr-only">Nội
											dung</label>
										<textarea required="" rows="6" ng-model="Content"
											class="form-control" placeholder="Viết bình luận"
											id="contactFormMessage"></textarea>
									</div>
									<input class="btn btn-primary btn-lg" value="Gửi liên hệ"
										type="submit">
								</form>
							</div>
							<div class="col-md-5" id="col-right">
								<h3>Địa chỉ liên lạc</h3>
								<hr class="line-right">
								<h3 class="name-company">{{shop.Name}}</h3>
								<p>{{shop.Sologan}}</p>
								<ul class="info-address">
									<li class="m-b-5"><i
										class="glyphicon glyphicon-map-marker m-r-5"></i> <span>{{shop.Address}}</span>
									</li>
									<li class="m-b-5"><i
										class="glyphicon glyphicon-envelope m-r-5"></i> <span>{{shop.Email}}</span>
									</li>
									<li class="m-b-5"><i
										class="glyphicon glyphicon-phone-alt m-r-5"></i> <span>{{shop.Phone}}</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<script type="text/javascript">
        var map;
        var infowindow;
        var marker = new Array();
        var old_id = 0;
        var infoWindowArray = new Array();
        var infowindow_array = new Array();
        function initialize() {
            var defaultLatLng = new google.maps.LatLng(16.075804,108.169949);

            var myOptions = { zoom: 16, center: defaultLatLng, scrollwheel: true, mapTypeId: google.maps.MapTypeId.ROADMAP };
            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            map.setCenter(defaultLatLng);

            if (Maps.length <= 0) {
                var arrLatLng = new google.maps.LatLng(16.075804,108.169949);
                var myHtml = "<div class='map-description'> <strong>" + firstMap.Name + "</strong><br/>Địa chỉ: <span>" + firstMap.Address + "</span><br/>Điện thoại: <span>" + firstMap.Phone + "</span><br/></div>";
                infoWindowArray[firstMap.Id] = myHtml;
                loadMarker(arrLatLng, infoWindowArray[firstMap.Id], firstMap.Id);
            }

            $.each(Maps, function (index, it) {
                var arrLatLng = new google.maps.LatLng(it.PosX, it.PosY);
                var myHtml = "<div class='map-description'> <strong>" + it.Name + "</strong><br/>Địa chỉ: <span>" + it.Address + "</span><br/>Điện thoại: <span>" + it.Phone + "</span><br/></div>";
                infoWindowArray[it.Id] = myHtml;
                loadMarker(arrLatLng, infoWindowArray[it.Id], it.Id);
            });


            moveToMaker(firstMap.Id);
        }
        function loadMarker(myLocation, myInfoWindow, id) {
            marker[id] = new google.maps.Marker({ position: myLocation, map: map, visible: true });
            var popup = myInfoWindow;
            infowindow_array[id] = new google.maps.InfoWindow({ content: popup });
            google.maps.event.addListener(marker[id], 'click', function () {
                if (id == old_id) return;
                if (old_id > 0)
                    infowindow_array[old_id].close();
                infowindow_array[id].open(map, marker[id]);
                old_id = id;
            });
            google.maps.event.addListener(infowindow_array[id], 'closeclick', function () { old_id = 0; });
        }
        function moveToMaker(id) {
            var location = marker[id].position;
            map.setCenter(location);
            if (old_id > 0)
                infowindow_array[old_id].close();
            infowindow_array[id].open(map, marker[id]);
            old_id = id;
        }
    </script>
					<!--End-->
					<script type="text/javascript">
    var firstMap= {"Id":2005,"ShopId":0,"Name":"Trường Cao Đẳng FPT POLYTECHNICH ĐÀ NẴNG","Address":"137 Nguyễn Thị Thập, Thanh Khê Tây, Liên Chiểu, Đà Nẵng, Việt Nam","Phone":"(08) 66 85 85 38"};
    var Maps= [];
    window.Maps = Maps;
    window.Shop = {"Name":"Trường Cao Đẳng FPT POLYTECHNICH ĐÀ NẴNG","Phone":"(08) 66 85 85 38","Address":"137 Nguyễn Thị Thập, Thanh Khê Tây, Liên Chiểu, Đà Nẵng, Việt Nam"};
    $(document).ready(function () {
        initialize();
    });
</script>
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
	