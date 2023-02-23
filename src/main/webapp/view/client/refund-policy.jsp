<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Chính sách hoàn phí</title>
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
        <li class="breadcrumb-item active" aria-current="page">Chính sách hoàn phí</li>
      </ol>
    </nav>

    <div class="row mt-4">
      <div class="col-lg-8 offset-lg-2">

        <h1 class="h2">Chính sách hoàn phí</h1>

        <p class="mt-4">Nếu Gia Sư <b>không</b> vi phạm một trong các <b>Điều 2</b>, <b>Điều 3</b>, <b>Điều 4</b> của <a href="contract.jsp">hợp đồng</a>, GiaSuNLU sẽ đảm bảo quyền lợi của Gia Sư khi lớp gặp sự cố. Cụ thể:</p>

        <p>GiaSuNLU sẽ xác minh thông tin với phụ huynh/học viên về sự cố của lớp, nếu thông tin là <b>đúng sự thật</b>, đồng thời Gia Sư <b>không</b> có các dấu hiệu khai báo gian lận, GiaSuNLU sẽ:</p>

        <h2 class="h5 mt-4 mb-3 text-primary">Tính lại phí nhận lớp</h2>

        <ul class="list-square">
          <li>Trường hợp phụ huynh/học viên hủy lớp (số buổi đã dạy nhỏ hơn hoặc bằng 2): Phí nhận lớp = 0 ₫. Gia Sư có thể yêu cầu GiaSuNLU giữ lại tiền đặt cọc để chuyển sang lớp mới, nếu được GiaSuNLU đồng ý.</li>
          <li>Trường hợp phụ huynh/học viên kết thúc lớp học sớm (số buổi đã dạy nhỏ hơn số buổi học/tuần × 4): Phí nhận lớp = học phí/buổi × tổng số buổi đã dạy thực tế × mức % phí nhận lớp ban đầu.</li>
          <li>Các trường hợp lớp bị giảm học phí, giảm số buổi học/tuần (điều kiện: thời gian giảm số buổi học/tuần phải dài ít nhất 4 tuần liên tiếp), sẽ dựa vào số liệu thực tế: Phí nhận lớp = học phí/buổi × số buổi học/tuần × 4 × mức % phí nhận lớp ban đầu.</li>
        </ul>

        <h2 class="h5 mt-4 mb-3 text-primary">Hoàn lại tiền đặt cọc</h2>

        <p>Số tiền còn dư sau khi tính lại phí nhận lớp, sẽ được GiaSuNLU hoàn lại cho Gia Sư. Phương thức hoàn phí sẽ do GiaSuNLU quyết định.</p>

        <p>Các trường hợp Gia Sư muốn thanh toán và lấy lại giấy tờ, Gia Sư bắt buộc phải đến trung tâm. Do việc chuyển gửi giấy tờ mang nhiều rủi ro, GiaSuNLU không chuyển gửi giấy tờ của Gia Sư qua bưu điện.</p>

        <h2 class="h5 mt-4 mb-3 text-primary">Đổi lớp mới</h2>

        <p>Khi gia sư có yêu cầu GiaSuNLU giữ lại tiền đặt cọc để chuyển sang lớp mới, GiaSuNLU sẽ đánh giá xác suất làm hỏng lớp tiếp theo của gia sư. Nếu xác suất làm hỏng lớp tiếp theo là thấp, Gia Sư sẽ được đổi lớp mới.</p>

        <p>Số tiền chênh lệch giữa 2 lớp sẽ được Gia Sư thanh toán thêm (nếu còn thiếu) hoặc GiaSuNLU hoàn lại (nếu gia sư có số dư).</p>

        <h2 class="h5 mt-4 pt-3 font-weight-bold mb-3">* Lưu ý:</h2>

        <ul class="list-square">
          <li>Các trường hợp thay đổi số buổi học/tuần mà Phụ huynh/học viên dự kiến chỉ thay đổi trong thời gian ngắn (nhỏ hơn 4 tuần) sẽ không được áp dụng tính lại phí nhận lớp;</li>
          <li>Gia sư cần nhắn tin đến Fanpage <a target="_blank" href="https://m.me/giasunlu" rel="nofollow">Gia Sư GiaSuNLU</a> để thông báo cho trung tâm, với thời gian muộn nhất 24h sau khi phát sinh các vấn đề huỷ lớp, thay đổi số buổi học/tuần, thay đổi học phí;</li>
          <li>Tất cả các thông tin liên quan đến việc tính lại phí và hoàn phí sẽ được thể hiện chi tiết trong hợp đồng gia sư. <a href="contract.jsp" class="text-underline">Xem hợp đồng mẫu</a>.</li>
        </ul>

        <div class="mt-5">
          <a href="contract.jsp" class="btn btn-success mb-4 mr-4">Xem hợp đồng mẫu</a>
          <a href="new-class-list.jsp" class="btn btn-primary mb-4">Xem danh sách lớp mới</a>
        </div>

      </div>
    </div>

  </section>

</main>

<jsp:include page="footer.jsp"/>

</body>
</html>