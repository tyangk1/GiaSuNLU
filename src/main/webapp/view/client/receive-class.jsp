<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cách thức nhận lớp</title>
  <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>

<main role="main">
  <div class="container alert-group">
  </div>

  <section class="container">

    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
        <li class="breadcrumb-item active" aria-current="page">Cách thức nhận lớp</li>
      </ol>
    </nav>

    <div class="row mt-4">
      <div class="col-lg-4">

        <div class="pr-lg-5">
          <h1 class="h2 mb-3">Cách thức nhận lớp</h1>
          <p>Vui lòng thực hiện theo gợi ý sau đây để nhận lớp.</p>
        </div>

      </div>
      <div class="col-lg-8 mt-4 mt-lg-0">

        <h2 class="h4 text-primary mb-3">1. Sử dụng công cụ tìm kiếm</h2>

        <p>Bạn có thể sử dụng thanh công cụ tìm kiếm tại <a href="new-class-list.jsp">Danh sách lớp mới</a> để tìm lớp phù hợp. Các thông tin bạn có thể tìm kiếm bao gồm: mã lớp, môn học, lớp học, cấp học, khu vực (quận/huyện), yêu cầu gia sư (sinh viên, giáo viên).</p>

        <div class="my-4">
          <img src="${url}img/page/receive-class/danh-sach-lop-moi.png" alt="Danh sách lớp mới">
        </div>

        <p>Bên cạnh đó, sử dụng <b>bộ lọc</b> cũng giúp cho việc tìm kiếm lớp phù hợp trở nên dễ dàng hơn.</p>

        <h2 class="h4 text-primary mt-4 pt-3 mb-3">2. Xem kỹ thông tin về lớp</h2>

        <p>Sau khi bạn đã tìm được lớp phù hợp, hãy nhấp vào nút <b>Xem chi tiết</b> để xem kỹ về thông tin lớp. Lưu ý: bản đồ thể hiện địa chỉ lớp gia sư một cách tương đối.</p>

        <p>Hãy lưu ý kỹ về các thông tin quan trọng như địa chỉ, đặc điểm học sinh (học viên), thời gian có thể học.</p>

        <div class="my-4">
          <img src="${url}img/page/receive-class/chi-tiet-lop.png" alt="Thông tin chi tiết lớp">
        </div>

        <p>Trong phần thời gian có thể học, GiaSuNLU sử dụng khung giờ phổ thông: buổi sáng từ 8h-12h, buổi chiều từ 13h-18h, buổi tối từ 18h-22h.</p>

        <h2 class="h4 text-primary mt-4 pt-3 mb-3">3. Đăng ký nhận lớp</h2>

        <p>Sau khi đã thấy thông tin lớp phù hợp với bạn, hãy nhấp vào nút "Đăng ký nhận lớp" và làm theo hướng dẫn. Hoặc truy cập vào trang <a href="/note">Tạo note nhận lớp</a>.</p>

        <p>Các yêu cầu bắt buộc bao gồm bạn phải cập nhật thông tin đầy đủ, đồng ý với điều khoản nhận lớp, làm một bài test ngắn và sau đó tạo <b>Note nhận lớp</b>.</p>

        <div class="my-4">
          <img src="${url}img/page/receive-class/dang-ky-nhan-lop.png" alt="Đăng ký nhận lớp">
        </div>

        <p>Có 2 hình thức mà bạn có thể nhận lớp: Online và Offline. Tuy nhiên, để nhận lớp Online, bạn cần đạt được một số tiêu chuẩn của GiaSuNLU.</p>

        <h2 class="h4 text-primary mt-4 pt-3 mb-3">4. Chờ đợi phản hồi</h2>

        <p>Sau khi bạn tạo note nhận lớp, không có nghĩa là bạn sẽ được nhận lớp đó. GiaSuNLU sẽ lựa chọn gia sư phù hợp nhất và giao lớp.</p>

        <p>Sau vài ngày kể từ thời điểm tạo note nhận lớp, bạn sẽ nhận được thông báo của GiaSuNLU. Có thể bằng các phương thức gọi điện, nhắn tin hoặc email.</p>

        <p>Bạn cũng có thể theo dõi tình trạng đăng ký nhận lớp của bạn tại <a href="/myaccount/mynote">Quản lý note nhận lớp</a></p>

        <div class="my-4">
          <img src="${url}img/page/receive-class/cho-phan-hoi.png" alt="Chờ đợi phản hồi">
        </div>

        <p>Một số phản hồi sẽ lâu hơn bình thường, hãy kiên nhẫn chờ đợi sau khi bạn đã đăng ký nhận lớp.</p>

        <h2 class="h4 text-primary mt-4 pt-3 mb-3">5. Đừng thất vọng</h2>

        <p>Luôn có nhiều gia sư đăng ký cho 1 lớp. Do vậy nếu bạn không nhận được lớp, đừng thất vọng. Những gia sư đã có lịch sử nhận lớp tốt, thông tin phù hợp với lớp và đăng ký sớm hơn sẽ được ưu tiên trước.</p>

        <p>Và trên tất cả, vẫn đang còn những lớp khác. Hãy liên tục tìm kiếm lớp phù hợp với bạn tại trang <a href="new-class-list.jsp" class="text-underline">Danh sách lớp mới</a> của GiaSuNLU.</p>

        <div class="my-4">
          <img src="${url}img/page/receive-class/trang-tong-quan.png" alt="Trang tổng quan">
        </div>

        <p>Chúng tôi luôn có số lượng lớp đa dạng và mức học phí hấp dẫn, xứng đáng với kiến thức và kỹ năng giảng dạy của bạn.</p>

        <a href="new-class-list.jsp" class="btn btn-primary font-weight-bold mt-4">Xem danh sách lớp mới</a>


      </div>
    </div>

  </section>

</main>

<jsp:include page="footer.jsp"/>

</body>
</html>