<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dịch vụ</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>
<main>
    <div class="container alert-group">
    </div>

    <section class="py-4">
        <div class="container container-sm">
            <nav>
                <ol class="my-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
                    <li class="breadcrumb-item">Dịch vụ</li>
                </ol>
            </nav>

            <h1 class="h2 mt-5 mb-4">Lựa chọn dịch vụ tuyển chọn <span class="d-inline-block">gia sư</span></h1>

            <p class="text-1d05 line-height-1d7">Tất cả các trung tâm gia sư khác đều thu phí nhận lớp của gia sư. Còn GiaSuNLU hướng đến sự chuyên nghiệp. Có 3 dịch vụ tuyển chọn gia sư dành cho bạn:</p>

            <div class="row mt-5">

                <div class="col-lg-4">

                    <div class="service_box pr-lg-4" id="service_box_1">
                        <h3 class="mb-3"><span class="h5 text-600">Tuyển chọn</span> <span class="text-primary" style="font-size: 1.5rem; font-weight: 700">Miễn Phí</span></h3>
                        <p class="service_box-sub">Không thu phí của khách hàng, nhưng sẽ thu phí nhận lớp của gia sư</p>

                        <p class="mb-0 text-muted">Phí tuyển chọn gia sư:</p>

                        <div class="price text-success">
                            <span class="price-amount">0 đ</span><span class="price-text">/lớp</span>
                        </div>

                        <div class="my-4 pb-2 service_box-btn">
                            <a href="/order?service=1" class="btn btn-primary font-weight-bold px-4">Đăng ký</a>
                        </div>

                        <p class="p-icon"><span class="icon icon-alert-circle"></span> Thời gian có được gia sư sẽ lâu hơn, nhưng vẫn đảm bảo chất lượng của gia sư</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Gia sư được tuyển chọn chặt chẽ</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Hồ sơ gia sư đầy đủ</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Học thử <b class="text-primary d-inline-block">2 buổi</b></p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Bạn sẽ thanh toán học phí trực tiếp cho gia sư vào cuối mỗi tháng</p>

                    </div>

                </div><!--End Col -->

                <div class="col-lg-4 mt-5 mt-lg-0">

                    <div class="service_box pr-lg-4" id="service_box_2">
                        <h3 class="mb-3"><span class="h5 text-600">Tuyển chọn</span> <span class="text-primary" style="font-size: 1.5rem; font-weight: 700">Chuyên Nghiệp</span></h3>
                        <p class="service_box-sub">Thu phí của khách hàng, không thu phí nhận lớp của gia sư</p>

                        <p class="mb-0 text-muted">Phí tuyển chọn gia sư:</p>

                        <div class="price text-success">
                            <span class="price-amount">1.000.000 đ</span><span class="price-text">/lớp</span>
                        </div>

                        <div class="my-4 pb-2 service_box-btn">
                            <a href="/order?service=2" class="btn btn-primary font-weight-bold px-4">Đăng ký</a>
                        </div>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Thu hút được nhiều gia sư ứng tuyển, thời gian có được gia sư nhanh hơn</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Gia sư được tuyển chọn chặt chẽ</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Hồ sơ gia sư đầy đủ</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Học thử <b class="text-primary d-inline-block">2 buổi</b></p>

                        <p class="p-icon service_box-limited">
                            <span class="icon icon-check-slim"></span>
                            <span>Đổi gia sư nếu không phù hợp: </span>
                            <span class="d-inline-block">
                    <span>tối đa</span>
                    <b class="text-primary">3 gia sư</b>,
                </span>
                            <span>trong thời gian</span>
                            <span class="d-inline-block">
                    <span>tối đa</span>
                    <b class="text-primary">3 tháng</b>
                </span>
                        </p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Lịch học: tối đa <b class="text-primary d-inline-block">4 buổi</b> / tuần</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Bạn sẽ thanh toán học phí trực tiếp cho gia sư vào cuối mỗi tháng</p>

                    </div>

                </div><!--End Col -->

                <div class="col-lg-4 mt-5 mt-lg-0">

                    <div class="service_box pr-lg-4" id="service_box_3">
                        <h3 class="mb-3"><span class="h5 text-600">Tuyển chọn</span> <span class="text-primary" style="font-size: 1.5rem; font-weight: 700">Cao Cấp</span></h3>
                        <p class="service_box-sub">Thu phí của khách hàng, không thu phí nhận lớp của gia sư</p>

                        <p class="mb-0 text-muted">Phí tuyển chọn gia sư:</p>

                        <div class="price text-success">
                            <span class="price-amount">2.000.000 đ</span><span class="price-text">/lớp</span>
                        </div>

                        <div class="my-4 pb-2 service_box-btn">
                            <a href="/order?service=3" class="btn btn-primary font-weight-bold px-4">Đăng ký</a>
                        </div>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Thu hút được nhiều gia sư ứng tuyển, thời gian có được gia sư nhanh hơn</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Gia sư được tuyển chọn chặt chẽ</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Hồ sơ gia sư đầy đủ</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Học thử <b class="text-primary d-inline-block">2 buổi</b></p>

                        <p class="p-icon service_box-limited">
                            <span class="icon icon-check-slim"></span>
                            <span>Đổi gia sư nếu không phù hợp: </span>
                            <span class="d-inline-block">
                    <span>tối đa</span>
                    <b class="text-primary">3 gia sư</b>,
                </span>
                            <span>trong thời gian</span>
                            <span class="d-inline-block">
                    <span>tối đa</span>
                    <b class="text-primary">6 tháng</b>
                </span>
                        </p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Lịch học: tối đa <b class="text-primary d-inline-block">6 buổi</b> / tuần</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Tuyển chọn gia sư theo một số yêu cầu đặc biệt của bạn</p>

                        <p class="p-icon"><span class="icon icon-check-slim"></span> Bạn sẽ thanh toán học phí trực tiếp cho gia sư vào cuối mỗi tháng</p>

                    </div>

                </div><!--End Col -->

            </div><!--End Row-->
        </div>
    </section>

    <section class="section-gray py-5">
        <div class="container container-sm">

            <h2 class="mb-5 text-600 text-center">Tất cả dịch vụ đều <span class="d-inline-block">bao gồm:</span></h2>

            <div class="row graphic_block-list-4">

                <div class="col-lg-6 graphic_block">
                    <div class="graphic_block-img">
                        <img src="${url}img/page/order/tuyen-chon-gia-su-v2.png" alt="Tuyển chọn gia sư">
                    </div>
                    <div class="graphic_block-body">
                        <h3 class="mb-3 text-600">Tuyển chọn gia sư chặt chẽ</h3>
                        <p>Chúng tôi luôn làm việc trách nhiệm, tất cả gia sư đều phải trải qua bài kiểm tra và phỏng vấn để có thể nhận lớp tại GiaSuNLU.</p>
                    </div>
                </div>

                <div class="col-lg-6 graphic_block">
                    <div class="graphic_block-img">
                        <img src="${url}img/page/order/hoc-thu-gia-su-v2.png" alt="Học thử với gia sư">
                    </div>
                    <div class="graphic_block-body">
                        <h3 class="mb-3 text-600">Học thử 2 buổi</h3>
                        <p>Sau 2 buổi học đầu tiên, nếu không đồng ý nhận gia sư, bạn không phải thanh toán học phí và được đổi gia sư khác.</p>
                    </div>
                </div>

                <div class="col-lg-6 graphic_block">
                    <div class="graphic_block-img">
                        <img src="${url}img/page/order/ho-su-gia-su-v2.png" alt="Hồ sơ gia sư">
                    </div>
                    <div class="graphic_block-body">
                        <h3 class="mb-3 text-600">Hồ sơ gia sư đầy đủ</h3>
                        <p>GiaSuNLU lưu trữ đầy đủ các thông tin của gia sư. Bạn sẽ được gửi CV để xem chi tiết về thông tin gia sư mà GiaSuNLU giới thiệu đến bạn.</p>
                    </div>
                </div>

                <div class="col-lg-6 graphic_block">
                    <div class="graphic_block-img">
                        <img src="${url}img/page/order/quan-ly-ky-luat-gia-su-v2.png" alt="Quản lý kỷ luật gia sư">
                    </div>
                    <div class="graphic_block-body">
                        <h3 class="mb-3 text-600">Gia sư có kỷ luật tốt</h3>
                        <p>Luôn cố gắng để lắng nghe phản hồi của bạn, bất cứ yếu tố thiếu kỷ luật nào của gia sư cũng sẽ bị GiaSuNLU khóa tài khoản gia sư.</p>
                    </div>
                </div>

            </div><!-- End row -->
            <h2 class="mt-5 mb-3 text-600 text-center">Vẫn đang còn vướng mắc?</h2>

            <p class="text-center text-1d05">Gọi đến số <a href="tel:+84967666640">0967-6666-40</a> để được tư vấn <span class="d-inline-block">(8h-12h &amp; 13h30-17h, thứ 2-6 + sáng thứ 7).</span></p>

        </div>
    </section>

</main>

<jsp:include page="footer.jsp"/>

</body>

</html>