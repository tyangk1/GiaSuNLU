<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tổng quan</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>

<main role="main">
    <section class="py-4">
        <div class="container container-sm">
            <nav>
                <ol class="my-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
                    <li class="breadcrumb-item">Dành cho gia sư</li>
                    <li class="breadcrumb-item">Tổng quan</li>
                </ol>
            </nav>
        </div>
    </section>
<section class="bg-light-blue py-5">

    <div class="container py-2">

        <div class="row">

            <div class="col-lg-6 pr-lg-5">
                <img src="${url}img/homepage/kien-thuc-gia-su-2020.jpg" alt="Kiến thức gia sư">
            </div>

            <div class="col-lg-6 mt-5 mt-lg-0 d-flex align-items-center justify-content-center">

                <div class="text-center">
                    <h2 class="h3 mb-3 text-333">Gia tăng thu nhập bằng kiến thức và kỹ năng giảng dạy của bạn</h2>
                    <p class="mb-4">Mức thu nhập hấp dẫn, từ 120.000đ - 400.000đ / 1 buổi dạy.</p>
                    <div>
                        <a href="/register" class="btn btn-outline-callout mt-2">Đăng ký làm gia sư ngay<i class="fas fa-arrow-right ml-2"></i></a>
                    </div>
                </div>

            </div>
        </div><!-- End row -->

    </div>
</section>

<section class="py-5">
    <div class="container bg-step py-3">

        <div class="text-center">
            <h2 class="h3">Nhận lớp tại GiaSuNLU với <span class="d-inline-block">3 bước:</span></h2>
        </div>

        <div class="row mt-5">
            <div class="col-lg-8 offset-lg-3">

                <div class="step-group">
                    <div class="step-item pb-4">
                        <span class="icon-number">1</span>
                        <div class="step-ct">
                            <h3 class="h5 mb-3">Tìm lớp phù hợp</h3>
                            <p>Có quá nhiều lớp. Không sao cả! Sử dụng công cụ tìm kiếm hoặc bộ lọc sẽ giúp bạn dễ dàng lựa chọn lớp phù hợp.</p>
                            <p>Đến trang <a href="new-class-list.jsp" target="_blank">Danh sách lớp mới</a></p>
                        </div>
                    </div>

                    <div class="step-item pb-4">
                        <span class="icon-number">2</span>
                        <div class="step-ct">
                            <h3 class="h5 mb-3">Tạo note nhận lớp</h3>
                            <p>Sau khi đã xem chi tiết lớp, hãy nhấp vào nút [Đăng ký nhận lớp]. Phần tiếp theo rất đơn giản, các công cụ của website sẽ hướng dẫn chi tiết cho bạn.</p>
                            <p>Nếu bạn đã có mã lớp mà bạn muốn nhận, truy cập vào trang <a href="/note" target="_blank">Tạo note nhận lớp</a>.</p>
                        </div>
                    </div>

                    <div class="step-item">
                        <span class="icon-number">3</span>
                        <div class="step-ct">
                            <h3 class="h5 mb-3">Phỏng vấn nhận lớp</h3>
                            <p>GiaSuNLU muốn hiểu rõ hơn về bạn. Các phương thức có thể bao gồm gọi điện thoại hoặc phỏng vấn trực tiếp tại <span class="d-inline-block">trung tâm.</span></p>
                        </div>
                    </div>
                </div>

            </div><!-- End Col -->
        </div><!-- End Row -->

    </div>
</section>

<section class="py-5 bg-gray">
    <div class="container py-lg-3">

        <div class="text-center">
            <h2 class="h3">Tại sao chọn GiaSuNLU?</h2>
        </div>

        <div class="row mt-5">

            <div class="col-lg-4 media_block">

                <img class="media_block-img" src="${url}img/homepage/an-tam-nhan-lop_0515.png" alt="An tâm nhận lớp">

                <div class="media_block-body">
                    <h3 class="h4 mb-3">An tâm để nhận lớp</h3>
                    <p class="mb-2">Nếu bạn không vi phạm <a href="/contract" target="_blank">hợp đồng</a>, GiaSuNLU cam kết tính lại phí và hoàn phí nếu lớp bạn nhận bị hỏng hoặc bị giảm thu nhập.</p>
                    <p><a href="/chinh-sach-hoan-phi" class="text-underline">Xem chính sách hoàn phí</a></p>
                </div>

            </div>

            <div class="col-lg-4 media_block">

                <img class="media_block-img" src="${url}img/homepage/da-dang-lua-chon_0515.png" alt="Có nhiều lựa chọn">

                <div class="media_block-body">
                    <h3 class="h4 mb-3">Có nhiều sự lựa chọn</h3>
                    <p class="mb-2">Nhiều thì sẽ thoải mái hơn. Bạn có thể dễ dàng lựa chọn lớp phù hợp, tâm huyết giảng dạy và có thêm thu nhập.</p>
                    <p><a href="/danh-sach-lop-moi" class="text-underline">Xem danh sách lớp mới</a></p>
                </div>

            </div>

            <div class="col-lg-4 media_block">

                <img class="media_block-img" src="${url}img/homepage/ho-tro-tot-nhat_0515.png" alt="Hỗ trợ tốt nhất">

                <div class="media_block-body">
                    <h3 class="h4 mb-3">Hỗ trợ tốt nhất</h3>
                    <p class="mb-2">Ngay cả gia sư có nhiều kinh nghiệm nhất cũng cần được hỗ trợ. GiaSuNLU luôn sẵn lòng giải đáp và xử lý sự cố giúp bạn.</p>
                    <p><a target="_blank" href="https://m.me/giasunlu" rel="nofollow" class="text-underline">Nhắn tin đến Fanpage</a></p>
                </div>

            </div>

        </div><!-- End Row -->
    </div>
</section>

<section class="py-5">
    <div class="container py-2 pb-lg-4">

        <div class="row">

            <div class="col-lg-6 order-lg-2 pl-lg-5">
                <img src="${url}img/homepage/gia-su-khong-bi-lang-quen-fff.jpg" alt="Gia sư không bị lãng quên">
            </div>

            <div class="col-lg-6 order-lg-1 mt-5 mt-lg-0 d-flex align-items-center">

                <div>
                    <h2 class="h3 mb-3">Không còn sợ bị lãng quên nữa!</h2>
                    <p>Thật rủi ro khi xảy ra sự cố mà bạn lại mất giấy tờ nhận lớp. Đừng lo lắng! GiaSuNLU quản lý tất cả bằng dữ liệu số. Dù bạn nhận lớp cách đây lâu chừng nào đi nữa, chúng tôi đều có thể hỗ trợ bạn.</p>
                    <p>Ngoài ra, vào bất cứ khi nào, bạn đều dễ dàng xem lại thông tin lớp mà bạn đã nhận. Cả số dư và các báo cáo sự cố cũng vậy. Tất cả đều có trong <a href="/myaccount">Tài khoản gia sư của tôi</a></p>
                </div>

            </div>
        </div><!-- End row -->

    </div>
</section>

<section class="py-5 bg-gray">
    <div class="container py-4 pb-lg-3">

        <div class="row">

            <div class="col-lg-6 pt-lg-4 pl-lg-5">
                <img src="${url}img/homepage/chon-gia-su-growgreen.png" alt="Chọn gia sư GiaSuNLU">
            </div>

            <div class="col-lg-5 offset-lg-1 mt-5 mt-lg-0">

                <div>
                    <h2 class="h3 mb-3">Lựa chọn thông minh, sống <span class="d-inline-block">thông thái.</span></h2>
                    <p>Bạn sẽ chọn trung tâm gia sư nào? Chúng tôi có <a href="/contract">Hợp đồng</a> và <a href="/chinh-sach-hoan-phi">Chính sách hoàn phí</a> đảm bảo quyền lợi của gia sư. Nhưng hơn thế nữa, hãy nhìn vào công nghệ quản lý mà chúng tôi đã xây dựng — Chỉ những công ty nghiêm túc mới làm vậy.</p>
                    <p class="mt-4 pt-2"><a href="/danh-sach-lop-moi" class="btn btn-outline-callout">Xem danh sách lớp mới<i class="fas fa-arrow-right ml-2"></i></a></p>
                </div>

            </div>
        </div><!-- End row -->

    </div>
</section>

<section class="py-5 pb-lg-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2">

                <div class="text-center">
                    <h2 class="h3">Câu hỏi thường gặp</h2>
                </div>

                <div class="mt-5 text-444">

                    <div class="faq-item">
                        <h3 class="h5 mb-3">Làm thế nào để biết lớp đang còn hay đã được giao rồi?</h3>

                        <p class="mt-2">Bạn có thể truy cập vào trang <a href="/check">kiểm tra tình trạng lớp</a>, nhập mã lớp và nhấp vào nút tìm kiếm:</p>

                        <ul class="list-square pl-3">
                            <li>Nếu lớp đã được giao rồi, bạn sẽ nhận được thông báo trên trang kết quả tìm kiếm;</li>
                            <li>Nếu lớp đang còn, bạn sẽ thấy được thông tin lớp, và có thể nhấp vào để xem chi tiết được.</li>
                        </ul>

                        <p>Ngoài ra, nếu bạn đang xem được thông tin của lớp trên website, điều này có nghĩa lớp đó đang có sẵn và bạn có thể đăng ký nhận lớp này.</p>

                    </div>

                    <div class="faq-item mt-45">
                        <h3 class="h5 mb-3">Nếu phụ huynh không đồng ý nhận gia sư, thì gia sư có được đổi lớp không?</h3>

                        <p>Nếu gia sư không vi phạm <a href="/contract">hợp đồng</a>, GiaSuNLU sẽ tính lại phí nhận lớp và hoàn phí cho gia sư. Khi đó, gia sư có thể đăng ký thêm lớp mới.</p>

                        <p>Xem <a href="/tinh-lai-phi-nhan-lop">tính lại phí nhận lớp</a></p>
                    </div>

                    <div class="faq-item mt-45">
                        <h3 class="h5 mb-3">Gia sư có được nợ phí nhận lớp không?</h3>

                        <p>Trung tâm có hỗ trợ gia sư nợ phí với số tiền 50% phí nhận lớp. Để được nợ phí, gia sư có thể sẽ phải đáp ứng một số tiêu chí nhất định.</p>

                        <p>Xem <a href="/no-phi">chính sách nợ phí</a></p>
                    </div>

                    <div class="faq-item mt-45">
                        <h3 class="h5 mb-3">Lớp học bị hủy sau vài buổi dạy?</h3>

                        <p>Nếu gia sư không vi phạm <a href="/contract">hợp đồng</a>, gia sư sẽ được tính lại phí nhận lớp dựa trên số buổi thực tế mà gia sư đã giảng dạy. Phí nhận lớp còn dư sẽ được trung tâm hoàn trả lại.</p>

                        <p>Xem <a href="/tinh-lai-phi-nhan-lop">tính lại phí nhận lớp</a></p>
                    </div>

                    <div class="faq-item mt-45">
                        <h3 class="h5 mb-3">Vẫn đang còn những câu hỏi khác?</h3>

                        <p>Đừng ngần ngại! Chúng tôi luôn sẵn lòng hỗ trợ bạn. Hãy gửi tin nhắn đến <a target="_blank" href="https://m.me/giasunlu" rel="nofollow">Fanpage Gia Sư GiaSuNLU</a> để được giải đáp những thắc mắc.</p>

                        <p class="mt-45"><a target="_blank" href="https://m.me/giasunlu" rel="nofollow" class="btn btn-primary btn-sm px-3 font-weight-bold"><i class="fab fa-facebook-messenger"></i> <span>Đi tới Messenger</span></a></p>
                    </div>

                </div>

            </div><!-- End Col -->
        </div><!-- End Row -->
    </div><!-- End container -->
</section>
</main>

<jsp:include page="footer.jsp"/>

</body>

