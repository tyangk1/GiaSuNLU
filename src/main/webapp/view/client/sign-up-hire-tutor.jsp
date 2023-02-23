<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<html>
<head>
    <title>Đăng ký thuê gia sư</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<style>
    .order_box {
        background: #fff;
        border: 1px solid #d8d8d8;
        -moz-box-shadow: 0 0 20px rgba(0,0,0,.15);
        -webkit-box-shadow: 0 0 20px rgb(0 0 0 / 15%);
        box-shadow: 0 0 20px rgb(0 0 0 / 15%);
    }
</style>
<main>
    <div class="container alert-group">
    </div>

    <section class="container">

        <div class="row my-4 pt-3 pt-lg-0 mt-lg-5 justify-content-center">
            <div class="col-lg-7">
                <div class="order_box px-lg-5 pt-lg-4 pb-lg-5">

                    <h1 class="mb-4 title-underline">Đăng ký thuê gia sư</h1>

                    <p class="mt-4 pt-1">Số điện thoại hỗ trợ: <a href="tel:+84967666640" class="px-1">0967-6666-40</a></p>

                    <form id="form_order" action="/orders" method="POST" novalidate="">
                        <input type="hidden" name="_token" value="yr5Ay93zJn9cavyH0Ec4xxfQThdpuTw7eF7ZcAeW">
                        <input type="hidden" name="service" value="1">

                        <div class="mt-4">

                            <div class="form-check form-check-radio mr-4">
                                <span>Anh</span>
                                <input type="radio" name="gender" value="1">
                                <span class="checkmark"></span>
                            </div>

                            <div class="form-check form-check-radio">
                                <span>Chị</span>
                                <input type="radio" name="gender" value="2">
                                <span class="checkmark"></span>
                            </div>

                        </div>

                        <div class="form-row">
                            <div class="col-lg-6 form-group">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Họ và tên" required="" value="">
                                <div class="invalid-feedback">Họ và tên là bắt buộc.</div>
                            </div>
                            <div class="col-lg-6 form-group">
                                <input type="tel" class="form-control" id="phone" name="phone" placeholder="Số điện thoại" pattern=".{10,50}" required="" value="">
                                <div class="invalid-feedback">Số điện thoại ít nhất 10 chữ số.</div>
                            </div>
                        </div><!--End Row-->

                        <div class="form-row">
                            <div class="col-lg-12 form-group  mt-lg-2">
                                <input type="text" class="form-control" name="address" placeholder="Số nhà, tên đường" value="">
                            </div>

                            <div class="col-lg-12 form-group mt-lg-2">
                                <input type="text" class="form-control" name="message" placeholder="Ghi chú (không bắt buộc)" value="" autocomplete="off">
                            </div>
                        </div><!--End Row-->

                        <div class="text-right">
                            <input type="submit" class="btn btn-primary px-5 mt-3 font-weight-bold" value="Đăng Ký Ngay">
                        </div>

                    </form>

                    <div class="mt-4 pt-2 text-justify">
                        <hr>
                        <p class="mb-0">Sau khi bạn đăng ký, chúng tôi sẽ gọi lại cho bạn để trao đổi thêm những thông tin cần thiết khác. Tất cả thông tin của bạn sẽ được bảo mật.</p>
                    </div>

                </div>
            </div><!--End Col -->
        </div><!--End Row-->
    </section>

</main>
<jsp:include page="footer.jsp"/>
</body>
</html>
