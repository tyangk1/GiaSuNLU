<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Trang chủ</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>

<body>

<jsp:include page="/view/client/header.jsp"/>

<!-- Carousel Start -->
<div class="container-fluid p-0 pb-5 mb-5">
    <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#header-carousel" data-slide-to="1"></li>
            <li data-target="#header-carousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active" style="min-height: 300px;">
                <img class="position-relative w-100" src="${url}img/carousel-1.jpg" style="min-height: 300px; object-fit: cover;">
                <div class="carousel-caption d-flex align-items-center justify-content-center">
                    <div class="p-5" style="width: 100%; max-width: 900px;">
                        <h5 class="text-white text-uppercase mb-md-3">Trung tâm gia sư GiaSuNLU</h5>
                        <h1 class="display-3 text-white mb-md-4">Mang thành công đến với con bạn</h1>
                        <a href="tel:0342499381" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2"><i class="fas fa-phone-alt mr-2"></i>TƯ VẤN - HỌC THỬ</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="min-height: 300px;">
                <img class="position-relative w-100" src="${url}img/carousel-2.jpg" style="min-height: 300px; object-fit: cover;">
                <div class="carousel-caption d-flex align-items-center justify-content-center">
                    <div class="p-5" style="width: 100%; max-width: 900px;">
                        <h5 class="text-white text-uppercase mb-md-3">Trung tâm gia sư GiaSuNLU</h5>
                        <h1 class="display-3 text-white mb-md-4">Mang thành công đến với con bạn</h1>
                        <a href="tel:0342499381" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2"><i class="fas fa-phone-alt mr-2"></i>TƯ VẤN - HỌC THỬ</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="min-height: 300px;">
                <img class="position-relative w-100" src="${url}img/carousel-3.jpg" style="min-height: 300px; object-fit: cover;">
                <div class="carousel-caption d-flex align-items-center justify-content-center">
                    <div class="p-5" style="width: 100%; max-width: 900px;">
                        <h5 class="text-white text-uppercase mb-md-3">Trung tâm gia sư GiaSuNLU</h5>
                        <h1 class="display-3 text-white mb-md-4">Mang thành công đến với con bạn</h1>
                        <a href="tel:0342499381" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2"><i class="fas fa-phone-alt mr-2"></i>TƯ VẤN - HỌC THỬ</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Carousel End -->


<!-- About Start -->
<div class="container-fluid py-5">
    <div class="container py-5">
        <div class="row align-items-center">
            <div class="col-lg-5">
                <img class="img-fluid rounded mb-4 mb-lg-0" src="${url}img/about.jpg" alt="">
            </div>
            <div class="col-lg-7">
                <div class="text-left mb-4">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Bạn là giáo viên, sinh viên?</h5>
                </div>
                <p>Gia nhập vào đội ngũ gia sư của GiaSuNLU, nhận lớp và có thêm thu nhập từ những kiến thức, kỹ năng giảng dạy của bạn.</p>
                <div class="mt-4 pt-2">
                    <a href="${url}register.jsp" class="d-inline-block mb-3 mr-4 text-1d05"><i class="fas fa-chevron-right"></i> Đăng ký làm gia sư</a>
                    <a href="${url}login.jsp" class="d-inline-block mb-3 mr-4 text-1d05"><i class="fas fa-chevron-right"></i> Đăng nhập tài khoản</a>
                    <a href="${url}new-class-list.jsp" class="d-inline-block mb-3 text-1d05"><i class="fas fa-chevron-right"></i> Xem danh sách lớp mới</a>
                </div>
                <a href="" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Đến trang dành cho gia sư</a>
            </div>
        </div>
    </div>
</div>
<!-- About End -->


<!-- Team Start -->
<div class="container-fluid py-5">
    <div class="container pt-5 pb-3">
        <div class="text-center mb-5">
            <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Teachers</h5>
            <h1>Meet Our Teachers</h1>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-3 text-center team mb-4">
                <div class="team-item rounded overflow-hidden mb-2">
                    <div class="team-img position-relative">
                        <img class="img-fluid" src="${url}img/team-1.jpg" alt="">
                        <div class="team-social">
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="bg-secondary p-4">
                        <h5>Jhon Doe</h5>
                        <p class="m-0">Web Designer</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 text-center team mb-4">
                <div class="team-item rounded overflow-hidden mb-2">
                    <div class="team-img position-relative">
                        <img class="img-fluid" src="${url}img/team-2.jpg" alt="">
                        <div class="team-social">
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="bg-secondary p-4">
                        <h5>Jhon Doe</h5>
                        <p class="m-0">Web Designer</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 text-center team mb-4">
                <div class="team-item rounded overflow-hidden mb-2">
                    <div class="team-img position-relative">
                        <img class="img-fluid" src="${url}img/team-3.jpg" alt="">
                        <div class="team-social">
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="bg-secondary p-4">
                        <h5>Jhon Doe</h5>
                        <p class="m-0">Web Designer</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 text-center team mb-4">
                <div class="team-item rounded overflow-hidden mb-2">
                    <div class="team-img position-relative">
                        <img class="img-fluid" src="${url}img/team-4.jpg" alt="">
                        <div class="team-social">
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="bg-secondary p-4">
                        <h5>Jhon Doe</h5>
                        <p class="m-0">Web Designer</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Team End -->

<div class="container-fluid py-5">
    <div class="container py-5">
        <div class="text-center mb-5">
            <!--                <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Tại sao chọn trung tâm gia sư GiaSuNLU?</h5>-->
            <h2>Tại sao chọn trung tâm gia sư GiaSuNLU?</h2>
        </div>
        <div class="row graphic_block-list-3">
            <div class="col-lg-4 col-md-6 mb-4 graphic_block">
                <div class="graphic_block-img">
                    <img class="img-fluid" src="${url}img/phuong-phap-day-hieu-qua.svg" alt="">
                </div>
                <div class="graphic_block-body">
                    <h4>Dạy hiệu quả</h4>
                    <p>Con chỉ có thể học tốt nếu yêu thích việc học. Gia sư tại GiaSuNLU
                        luôn biết cách tạo động lực cho con, bằng các phương pháp giảng dạy thú vị, dễ hiểu và hiệu quả.</p>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4 graphic_block">
                <div class="graphic_block-img">
                    <img class="img-fluid" src="${url}img/cam-ket-tien-bo.svg" alt="">
                </div>
                <div class="graphic_block-body">
                    <h4>Tiến bộ nhanh</h4>
                    <p>Với gia sư giỏi tại GiaSuNLU, con bạn sẽ nhanh chóng học tập tiến bộ,
                        có kết quả khác biệt chỉ sau 10 buổi học: Con chăm ngoan, học tốt hơn, điểm số cao hơn.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4 graphic_block">
                <div class="graphic_block-img">
                    <img class="img-fluid" src="${url}img/hoc-thu-2-buoi.svg" alt="">
                </div>
                <div class="graphic_block-body">
                    <h4>Học thử 2 buổi</h4>
                    <p>Sau 2 buổi học thử đầu tiên,
                        nếu không hài lòng về gia sư, bạn không cần phải thanh toán học phí.
                        Tất nhiên, GiaSuNLU luôn có những gia sư khiến bạn hài lòng nhất.</p>
                </div>
            </div>
        </div>
        <div class="mt-4 pt-3 text-center">
            <a href="/dang-ky-thue-gia-su" class="btn btn-primary font-weight-bold"><i class="fas fa-arrow-right mr-2"></i> Đăng ký thuê gia sư ngay</a>
        </div>
    </div>
</div>

<section class="section-space section-gray">
    <div class="container">
        <h2 class="text-center">Những lợi ích mà bạn <span class="d-inline-block">có được:</span></h2>

        <div class="row mt-4 pt-3">

            <div class="col-lg-4">
                <p class="p-check">Không phải mất công đi lại, gia sư đến dạy trực tiếp ngay tại nhà</p>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
                <p class="p-check">Con được học 1-1, tạo nên chất lượng giảng dạy tốt nhất</p>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
                <p class="p-check">Dễ dàng quản lý giờ giấc học tập của con, không sợ con ham chơi, trốn học</p>
            </div>

            <div class="w-100 mt-lg-4"></div>

            <div class="col-lg-4 mt-4 mt-lg-0">
                <p class="p-check">Biết được tình trạng học tập của con bất cứ khi nào bạn muốn</p>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
                <p class="p-check">Không còn lo lắng mỗi khi con đối mặt với thi cử, bởi gia sư đã giúp con đã nắm vững kiến thức</p>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
                <p class="p-check">Việc học tập của con được đảm bảo, trong khi bạn không phải tốn quá nhiều công sức và thời gian</p>
            </div>

        </div>

        <div class="mt-4 pt-3 text-center">
            <a href="/dang-ky-thue-gia-su" class="btn btn-primary font-weight-bold"><i class="fas fa-arrow-right mr-2"></i> Đăng ký thuê gia sư ngay</a>
        </div>

    </div>
</section>

<section class="section-space pb-3">
    <div class="container">

        <div class="row pt-2 pb-3">

            <div class="col-lg-4">
                <h2 class="text-center text-lg-left">Dịch vụ tại GiaSuNLU</h2>
            </div>
            <div class="col-lg-8 mt-4 mt-lg-0">
                <p class="text-1d1 text-center text-lg-left">Trung tâm gia sư GiaSuNLU luôn nỗ lực để cung cấp cho bạn dịch vụ gia sư chất lượng nhất, bao gồm:</p>

                <div class="service_group mt-45">
                    <span class="icon-number">1</span>
                    <h3>Các môn phổ thông</h3>
                    <p>Bao gồm tất cả các môn trong chương trình học phổ thông: <a href="/blog/gia-su-toan">gia sư Toán</a>, Vật Lý, Hóa Học, Sinh Học, <a href="/blog/gia-su-van">Gia sư Văn</a>, Lịch Sử, Địa Lý, Tiếng Anh, <a href="/blog/gia-su-tieu-hoc">Gia sư Tiểu Học</a>, và nhiều môn học khác nữa.</p>
                </div>

                <div class="service_group mt-4">
                    <span class="icon-number">2</span>
                    <h3>Các môn ngoại ngữ</h3>
                    <p>Chủ yếu dành cho những người đã đi làm, bao gồm gia sư dạy giao tiếp các môn: <a href="/blog/gia-su-tieng-anh">Gia sư Tiếng Anh</a>, Tiếng Nhật, Tiếng Hàn, Tiếng Pháp, Tiếng Trung, Tiếng Tây Ban Nha và các môn ngoại ngữ khác.</p>
                </div>

                <div class="service_group mt-4">
                    <span class="icon-number">3</span>
                    <h3>Các môn năng khiếu</h3>
                    <p class="mb-0">Chủ yếu liên quan đến các môn nghệ thuật như: Piano, Guitar, Organ, Mỹ Thuật, Thanh Nhạc. Đối với những môn này, để bạn có được gia sư sẽ tốn nhiều thời gian hơn.</p>
                </div>
            </div>

        </div>

        <hr class="my-5 hr-diamond">

        <div class="row pt-3">

            <div class="col-lg-4">

                <div style="max-width:200px" class="d-inline-block">
                    <img src="${url}img/page/tao-dung-tuong-lai-cho-con.png" alt="Tạo dựng tương lai cho con">
                </div>

            </div><!-- End col -->

            <div class="col-lg-8 mt-5 mt-lg-0">

                <h2 class="mb-3">Tạo dựng tương lai cho con</h2>
                <p class="text-justify">Cùng trung tâm gia sư GiaSuNLU giúp con học giỏi và mang đến cho con một tương lai tốt đẹp. Dù con bạn đang ở mức học lực nào, chúng tôi đều có thể giúp bạn. Hãy liên hệ với bộ phận Quản Lý Đào Tạo để được tư vấn tốt nhất.</p>

                <div class="d-lg-flex mt-4 pt-3">
                    <a href="/dang-ky-thue-gia-su" class="btn btn-primary font-weight-bold"><span class="icon icon-arrow-right mr-2"></span> Đăng ký thuê gia sư ngay</a>
                    <div class="call-advisory mt-4 mt-lg-0 ml-lg-5">
                        <span class="icon icon-phone"></span>
                        <span> Gọi tư vấn:</span>
                        <a href="tel:+84967666640">0967-6666-40</a>	  </div>
                </div>

            </div><!-- End col -->

        </div><!-- End row -->


    </div>
</section>

<jsp:include page="/view/client/footer.jsp"/>
</body>
</html>