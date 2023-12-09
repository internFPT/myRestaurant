<%@ page pageEncoding="utf-8"%>
<!-- Trigger the modal with a button -->
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Gửi thông tin sản phẩm cho bạn bè</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>Email Người Gửi</label> <input id="sender" type="email"
						class="form-control"></input>
				</div>
				<div class="form-group">
					<label>Email Người Nhận</label> <input id="email" type="email"
						class="form-control"></input>
				</div>
				<div class="form-group">
					<label>Nội Dung</label>
					<textarea id="comments" rows="3" class="form-control"></textarea>
				</div>
				<input type="hidden" id="id">
			</div>
			<div class="modal-footer">
				<button class="btn btn-default btn-send">Gửi</button>
				<button class="btn btn-default" data-dismiss="modal">Đóng</button>
			</div>
		</div>

	</div>
</div>