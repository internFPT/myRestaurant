$(document).ready(function() {

    $("tr[data-id] input").on("input", function() {
        var id = $(this).closest("tr").attr("data-id");
        var price = $(this).closest("tr").attr("data-price");
        var discount = $(this).closest("tr").attr("data-discount");
        var qty = $(this).val();
        $.ajax({
            url: `/giohang/capnhap/${id}/${qty}`,
            success: function(response) {
                $("#cart-cnt").html(response[0]);
                $("#cart-amt").html(response[1]);
            }
        });
        var amt = qty * price * (1 - discount);
        $(this).closest("tr").find("td.amt").html(amt);
    });

    $(".btn-cart-remove").click(function() {
        var id = $(this).closest("tr").attr("data-id");
        $.ajax({
            url: "/giodang/xoagiohangtheoSP/" + id,
            success: function(response) {
                $("#cart-cnt").html(response[0]);
                $("#cart-amt").html(response[1]);
            }
        });
        $(this).closest("tr").remove();
    });
    $(".btn-cart-clean").click(function() {
        $.ajax({
            url: "/giodang/xoagiohang",
            success: function(response) {
                $("#cart-cnt").html(0);
                $("#cart-amt").html(0);
                $("table>tbody").html("");
            }
        });
    });
    $(".btn-cart").click(function() {
        var idsp = $(this).closest("div").attr("data-id");
        $.ajax({
            url: "/giohang/them/" + idsp,
            success: function(response) {
                $("#cart-cnt").html(response[0]);
                $("#cart-amt").html(response[1]);
            }
        });
        var img = $(this).closest(".image-resize").find("a>img");
        var options = {
            to: '#cart-img',
            className: 'cart-fly'
        }
        var cart_css = '.cart-fly {background-image: url("' + img.attr("src") + '");background-size: 100% 100%;}';
        $("style#cart-css").html(cart_css);
        img.effect('transfer', options, 500);

    });

    $(".btn-send-open-dialog").click(function() {
        var id = $(this).closest("div").attr("data-id");
        $("#myModal #id").val(id);
    });

    $(".btn-send").click(function() {
        var form = {
            id: $("#myModal #id").val(),
            to: $("#myModal #email").val(),
            body: $("#myModal #comments").val(),
            from: $("#myModal #sender").val()
        }
        var id = $("#myModal #id").val();
        var sender = $("#myModal #sender").val();
        var email = $("#myModal #email").val();
        var comments = $("#myModal #comments").val();

        var atposition = sender.indexOf("@");
        var dotposition = sender.lastIndexOf(".");
        var atposition1 = email.indexOf("@");
        var dotposition1 = email.lastIndexOf(".");

        if (id == null || id == "") {
            alert("Lỗi gửi mail!");
        } else if (sender == null || sender == "") {
            alert("Email người gửi không được để trống!");
        } else if (atposition < 1 || dotposition < (atposition + 2) ||
            (dotposition + 2) >= sender.length) {
            alert("Email người gửi không đúng định dạng. Vui lòng nhập lại!");
        } else if (email == null || email == "") {
            alert("Email người nhận không được để trống!");
        } else if (atposition1 < 1 || dotposition1 < (atposition1 + 2) ||
            (dotposition1 + 2) >= email.length) {
            alert("Email người nhận không đúng định dạng. Vui lòng nhập lại!");
        } else if (comments == null || comments == "") {
            alert("Nội dung gửi không được để trống!");
        } else {
            $.ajax({
                url: "/sanpham/guiDenBanBe",
                data: form,
                success: function(response) {
                    if (response) {
                        $("[data-dismiss]").click();
                        alert("Đã gửi thành công!")
                    }
                }
            })
        }

    });

    $(".btn-star").click(function() {
        var maDanhMuc = $(this).closest("div").attr("data-id");
        $.ajax({
            url: "/sanpham/sanPhamYeuThich/" + maDanhMuc,
            success: function(response) {
                if (response) {
                    alert("Đã thêm vào sản phẩm yêu thích!")
                } else {
                    alert("Sản phẩm đã được yêu thích trước đó!")
                }
            }

        })
    })
});