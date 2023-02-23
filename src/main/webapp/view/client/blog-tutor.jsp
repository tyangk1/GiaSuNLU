<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Blog gia sư</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>

    <main>
        <div class="container alert-group">
        </div>


        <section class="py-4">
            <div class="container">

                <nav>
                    <ol class="my-breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
                        <li class="breadcrumb-item active"><span>Blog gia sư</span></li>
                    </ol>
                </nav>

                <div class="row">

                    <div class="col-lg-5">

                        <h1>Blog gia sư</h1>


                    </div><!-- end col -->

                    <div class="col-lg-7 mt-4 mt-lg-0">
                        <label>Danh mục chi tiết:</label>

                        <div class="mt-2 category_box-group">


                            <div class="category_box-item">
                                <a href="/danh-muc/giang-day">
                                    <h3 class="category_box-title">Giảng dạy</h3>
                                </a>
                            </div>

                            <div class="category_box-item">
                                <a href="/danh-muc/nhan-lop">
                                    <h3 class="category_box-title">Nhận lớp</h3>
                                </a>
                            </div>

                        </div>
                    </div><!-- end col -->

                </div>

                <div class="mt-5 row">


                    <div class="col-lg-12 mb-5 pr-lg-5">
                        <div class="blog-item">
                            <div class="blog-item-image">
                                <a href="/blog/luyen-giong-di-day-gia-su">
                                    <img src="${url}img/blog/luyen-giong-di-day-gia-su_400.jpg">
                                </a>
                            </div>
                            <div class="blog-item-text">
                                <a href="/blog/luyen-giong-di-day-gia-su"><h2 class="blog-item-title">Luyện giọng nói - việc quan trọng khi đi dạy gia sư</h2></a>
                                <p class="mt-1">Khi đi dạy gia sư, bên cạnh chuẩn bị kiến thức tốt, ứng xử sao cho phù hợp, thì việc điều khiển giọng nói sao cho truyền cảm cũng cực kỳ quan trọng</p>
                                <div class="mt-2">
                                    <a href="/blog/luyen-giong-di-day-gia-su" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                                    <span class="d-inline-block">Danh mục: <a href="/danh-muc/giang-day">Giảng dạy</a></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 mb-5 pr-lg-5">
                        <div class="blog-item">
                            <div class="blog-item-image">
                                <a href="/blog/tu-tin-khi-di-day-gia-su">
                                    <img src="${url}img/blog/tu-tin-di-day-gia-su_400.png">
                                </a>
                            </div>
                            <div class="blog-item-text">
                                <a href="/blog/tu-tin-khi-di-day-gia-su"><h2 class="blog-item-title">Làm sao để tự tin khi đi dạy gia sư</h2></a>
                                <p class="mt-1">Tự tin sẽ giúp truyền đạt kiến thức tốt hơn,  khiến học sinh cảm thấy tin tưởng những gì đang học. Vậy làm thế nào để bạn tự tin hơn khi đi dạy gia sư?</p>
                                <div class="mt-2">
                                    <a href="/blog/tu-tin-khi-di-day-gia-su" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                                    <span class="d-inline-block">Danh mục: <a href="/danh-muc/giang-day">Giảng dạy</a></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 mb-5 pr-lg-5">
                        <div class="blog-item">
                            <div class="blog-item-image">
                                <a href="/blog/cach-giang-day-hoc-sinh-luoi-hoc">
                                    <img src="${url}img/blog/cach-giang-day-hoc-sinh-luoi-hoc_400.png">
                                </a>
                            </div>
                            <div class="blog-item-text">
                                <a href="/blog/cach-giang-day-hoc-sinh-luoi-hoc"><h2 class="blog-item-title">Cách giảng dạy cho học sinh lười học</h2></a>
                                <p class="mt-1">Có nhiều lý do phụ huynh mời gia sư dạy. Lý do chủ yếu là bởi học sinh lười học. Vậy làm thế nào để giảng dạy tốt cho những học sinh lười học này?</p>
                                <div class="mt-2">
                                    <a href="/blog/cach-giang-day-hoc-sinh-luoi-hoc" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                                    <span class="d-inline-block">Danh mục: <a href="/danh-muc/giang-day">Giảng dạy</a></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 mb-5 pr-lg-5">
                        <div class="blog-item">
                            <div class="blog-item-image">
                                <a href="/blog/lam-the-nao-hoc-sinh-nghe-loi">
                                    <img src="${url}img/blog/lam-the-nao-hoc-sinh-nghe-loi_400.png">
                                </a>
                            </div>
                            <div class="blog-item-text">
                                <a href="/blog/lam-the-nao-hoc-sinh-nghe-loi"><h2 class="blog-item-title">Làm thế nào để học sinh nghe lời</h2></a>
                                <p class="mt-1">Một số kinh nghiệm sau đây có thể khiến cho học sinh nghe lời bạn. Điều này sẽ khiến cho việc truyền đạt kiến thức của mình trở nên dễ dàng hơn.</p>
                                <div class="mt-2">
                                    <a href="/blog/lam-the-nao-hoc-sinh-nghe-loi" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                                    <span class="d-inline-block">Danh mục: <a href="/danh-muc/giang-day">Giảng dạy</a></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 mb-5 pr-lg-5">
                        <div class="blog-item">
                            <div class="blog-item-image">
                                <a href="/blog/huong-dan-xu-ly-su-co-khi-di-day-gia-su">
                                    <img src="${url}img/blog/huong-dan-xu-ly-su-co-khi-di-day-gia-su_400.png">
                                </a>
                            </div>
                            <div class="blog-item-text">
                                <a href="/blog/huong-dan-xu-ly-su-co-khi-di-day-gia-su"><h2 class="blog-item-title">Hướng dẫn xử lý sự cố khi đi dạy gia sư</h2></a>
                                <p class="mt-1">Trong quá trình dạy gia sư, bạn có thể gặp phải những sự cố mà nếu không khéo léo, bạn sẽ khiến công việc hỏng bét. Một số kinh nghiệm xử lý thường gặp</p>
                                <div class="mt-2">
                                    <a href="/blog/huong-dan-xu-ly-su-co-khi-di-day-gia-su" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                                    <span class="d-inline-block">Danh mục: <a href="/danh-muc/giang-day">Giảng dạy</a></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 mb-5 pr-lg-5">
                        <div class="blog-item">
                            <div class="blog-item-image">
                                <a href="/blog/nhung-luu-y-cho-gia-su-day-buoi-dau">
                                    <img src="${url}img/blog/nhung-luu-y-cho-gia-su-day-buoi-dau_400.png">
                                </a>
                            </div>
                            <div class="blog-item-text">
                                <a href="/blog/nhung-luu-y-cho-gia-su-day-buoi-dau"><h2 class="blog-item-title">Những lưu ý cho gia sư khi đi dạy buổi đầu</h2></a>
                                <p class="mt-1">Buổi đầu tiên đi dạy gia sư  sẽ cảm thấy bỡ ngỡ và lo lắng. Sự chuẩn bị kỹ lưỡng của gia sư sẽ giúp buổi đầu đi dạy được suôn sẻ, tạo ấn tượng tốt.</p>
                                <div class="mt-2">
                                    <a href="/blog/nhung-luu-y-cho-gia-su-day-buoi-dau" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                                    <span class="d-inline-block">Danh mục: <a href="/danh-muc/nhan-lop">Nhận lớp</a></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 mb-5 pr-lg-5">
                        <div class="blog-item">
                            <div class="blog-item-image">
                                <a href="/blog/chon-lop-phu-hop-cho-gia-su">
                                    <img src="${url}img/blog/cach-chon-lop-gia-su-phu-hop_400.png">
                                </a>
                            </div>
                            <div class="blog-item-text">
                                <a href="/blog/chon-lop-phu-hop-cho-gia-su"><h2 class="blog-item-title">Cách chọn lớp phù hợp cho gia sư</h2></a>
                                <p class="mt-1">Nhiều bạn gia sư thường hoang mang khi lần đầu nhận lớp. GiaSuNLU xin chia sẻ cách chọn lớp phù hợp cho gia sư trong bài viết này.</p>
                                <div class="mt-2">
                                    <a href="/blog/chon-lop-phu-hop-cho-gia-su" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                                    <span class="d-inline-block">Danh mục: <a href="/danh-muc/nhan-lop">Nhận lớp</a></span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="mt-2 d-flex justify-content-center">

                </div>

            </div>
        </section>

    </main>

<jsp:include page="footer.jsp"/>

</body>

</html>