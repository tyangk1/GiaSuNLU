<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Blog khách hàng</title>
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
          <li class="breadcrumb-item active"><span>Blog khách hàng</span></li>
        </ol>
      </nav>

      <div class="row">

        <div class="col-lg-5">

          <h1>Blog khách hàng</h1>


        </div><!-- end col -->

        <div class="col-lg-7 mt-4 mt-lg-0">

          <form method="get" action="/search">
            <input type="search" class="search-input" name="kw" placeholder="Tìm kiếm blog" value="">
            <button type="submit" class="search-btn">
              <i class="fas fa-search"></i>
            </button>
          </form>

          <div class="mt-4 category_box-group">


            <div class="category_box-item">
              <a href="/danh-muc/hoc-tap">
                <h3 class="category_box-title">Học tập</h3>
              </a>
            </div>

            <div class="category_box-item">
              <a href="/danh-muc/thue-gia-su">
                <h3 class="category_box-title">Thuê Gia sư</h3>
              </a>
            </div>

            <div class="category_box-item">
              <a href="/danh-muc/kien-thuc">
                <h3 class="category_box-title">Kiến thức</h3>
              </a>
            </div>

            <div class="category_box-item">
              <a href="/danh-muc/thi-cu">
                <h3 class="category_box-title">Thi cử</h3>
              </a>
            </div>

            <div class="category_box-item">
              <a href="/danh-muc/nuoi-day-con">
                <h3 class="category_box-title">Nuôi dạy con</h3>
              </a>
            </div>

          </div>

        </div><!-- end col -->

      </div>

      <div class="mt-5 row">


        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/trung-tam-gia-su-uy-tin_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Cách nhận biết trung tâm gia sư uy tín</h2></a>
              <p class="mt-1">Thuê gia sư qua trung tâm là hình thức phổ biến được nhiều cha mẹ lựa chọn. Vậy làm thế nào để cha mẹ tìm được cho mình các trung tâm uy tín, chất lượng?</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-ha-noi-v1_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Những lưu ý khi thuê gia sư tại Hà Nội</h2></a>
              <p class="mt-1">Việc thuê gia sư Hà Nội sẽ khá khó khăn, nhất là khi bạn chưa có nhiều kinh nghiệm. Dưới đây là những lưu ý giúp bạn có thể thuê được gia sư tại Hà Nội</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-day-dan-tai-nha_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Gia sư dạy đàn tại nhà</h2></a>
              <p class="mt-1">Học gia sư Piano, Guitar,... tại nhà là hình thức được nhiều phụ huynh lựa chọn. Vậy gia sư dạy đàn như thế nào? Phải lưu ý những gì để đạt hiệu quả?</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/ielts-preparation-books_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Tài liệu học Ielts đạt hiệu quả cao</h2></a>
              <p class="mt-1">Có rất nhiều tài liệu học Ielts dễ dàng tìm được trên mạng nhưng để tìm được tài liệu chất lượng, phù hợp với bạn lại không hề đơn giản.</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/kien-thuc">Kiến thức</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/hoc-gia-su-toiec-ielts_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Học gia sư Toiec, Ielts</h2></a>
              <p class="mt-1">Học gia sư là một trong những hình thức phổ biến để học Toiec, Ielts. Vậy học gia sư có lợi ích gì? So với các hình thức khác thì thế nào?</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-online_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Gia sư Online</h2></a>
              <p class="mt-1">Học gia sư Online là hình thức đang được quan tâm nhiều. Học gia sư Online hay trực tiếp tại nhà sẽ tốt hơn? Cần phải chú ý những gì để đạt hiệu quả?</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-mon-dia-ly_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Gia sư Địa Lý</h2></a>
              <p class="mt-1">Để học tốt môn này, con cần  có sự yêu thích và cách học hiệu quả. Gia Sư Địa Lý sẽ giúp con học môn Địa Lý theo cách tốt nhất, tiến bộ nhanh nhất.</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-mon-lich-su_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Gia sư Lịch Sử</h2></a>
              <p class="mt-1">Môn lịch sử bắt các con phải học thuộc lòng, dẫn đến các con dễ chán nản. Gia Sư Lịch Sử của GrowGreen sẽ giúp con học và ôn thi môn Lịch Sử hiệu quả nhất</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-mon-sinh-hoc_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Gia sư Sinh Học</h2></a>
              <p class="mt-1">Môn Sinh là môn học thú vị, mang đến nhiều cơ hội nghề nghiệp cho con sau này. Gia sư môn Sinh Học sẽ giúp con học tập môn học này một cách hiệu quả nhất.</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-luyen-chu-dep_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Gia sư luyện chữ đẹp</h2></a>
              <p class="mt-1">Viết chữ đẹp đối với học sinh có năng khiếu thì khá dễ, với một số em khác thì lại gặp khó khăn. Thuê gia sư luyện chữ đẹp là một giải pháp hiệu quả.</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-tieu-hoc_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">Cách thuê gia sư Tiểu học đạt hiệu quả cao</h2></a>
              <p class="mt-1">Cấp Tiểu học, nhiều cha mẹ cho con học gia sư để bổ sung kiến thức và hình thành ngay thói quen học tập. Vậy làm thế nào để thuê gia sư hiệu quả cao?</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-12 mb-5 pr-lg-5">
          <div class="blog-item">
            <div class="blog-item-image">
              <a href="blog-detail.html">
                <img src="${url}img/blog/gia-su-tieng-anh_400.jpg">
              </a>
            </div>
            <div class="blog-item-text">
              <a href="blog-detail.html"><h2 class="blog-item-title">6 lưu ý giúp thuê gia sư Tiếng Anh hiệu quả</h2></a>
              <p class="mt-1">Để việc thuê gia sư môn Tiếng Anh phù hợp và đạt hiệu quả, có một số vấn đề mà bạn cần phải lưu ý trong quá trình sắp xếp</p>
              <div class="mt-2">
                <a href="blog-detail.html" class="d-inline-block mr-3 mb-3">» Xem chi tiết</a>
                <span class="d-inline-block">Danh mục: <a href="/danh-muc/thue-gia-su">Thuê Gia sư</a></span>
              </div>
            </div>
          </div>
        </div>

      </div>

      <div class="mt-2 d-flex justify-content-center">
        <ul class="pagination" role="navigation">

          <li class="page-item disabled" aria-disabled="true" aria-label="« Previous">
            <span class="page-link" aria-hidden="true">‹</span>
          </li>





          <li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
          <li class="page-item"><a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=2">2</a></li>
          <li class="page-item"><a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=3">3</a></li>
          <li class="page-item"><a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=4">4</a></li>
          <li class="page-item"><a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=5">5</a></li>
          <li class="page-item"><a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=6">6</a></li>
          <li class="page-item"><a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=7">7</a></li>
          <li class="page-item"><a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=8">8</a></li>
          <li class="page-item"><a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=9">9</a></li>


          <li class="page-item">
            <a class="page-link" href="https://www.growgreen.edu.vn/blog-khach-hang?page=2" rel="next" aria-label="Next »">›</a>
          </li>
        </ul>

      </div>

    </div>
  </section>

</main>

<jsp:include page="footer.jsp"/>

</body>

</html>