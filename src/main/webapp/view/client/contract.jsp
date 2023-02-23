<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Hợp đồng mẫu</title>
  <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>

<section class="py-lg-2" style="background: #f3f3f3;padding: 20px">

  <div class="row justify-content-center">
    <div class="col-lg-9">
      <div class="bg-white victory-box px-lg-5 pt-lg-5 pb-lg-5">

        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item active" aria-current="page">Hợp đồng mẫu</li>
          </ol>
        </nav>

        <h1 class="h3 mb-3">Hợp đồng mẫu</h1>

        <p>Đây là phiên bản HTML của hợp đồng mẫu, giúp bạn có thể xem các điều khoản trên điện thoại di động một cách dễ dàng hơn. Bạn có thể xem file PDF gốc tại <a href="/pdf/contract_giasunlu_v11.pdf" target="_blank">Hợp đồng mẫu PDF</a>.</p>

        <div class="my-5">
          <img src="img/page/contract/hop-dong-mau_v11.png" alt="Hợp đồng gia sư mẫu">
        </div>

        <h2 class="h4 mt-5 mb-3 text-success">Định nghĩa các bên:</h2>

        <p><b>Bên A</b> là Trung Tâm Gia Sư GiaSuNLU, có tư cách pháp nhân là Công Ty TNHH GiaSuNLU Việt Nam.</p>

        <p><b>Bên B</b> là Gia Sư: người chịu trách nhiệm giảng dạy tại nhà phụ huynh/học viên.</p>

        <h2 class="h4 mt-5 mb-3 text-success">Các điều khoản:</h2>

        <h3 class="h5 mt-4 mb-3 text-primary">Điều 1: Nội dung hợp đồng</h3>

        <p>Bên A giới thiệu bên B đến phụ huynh/học viên để giảng dạy, với các thông tin dưới đây:</p>

        <p>Phụ huynh/học viên, Số điện thoại, Địa chỉ, Môn học, Lớp học, Số buổi học/tuần, Thời lượng: 2h/buổi, Học phí/buổi.</p>

        <p>Thời gian Bên B (gia sư) có thể dạy.</p>

        <!-- -->

        <h3 class="h5 mt-4 mb-3 text-primary">Điều 2: Nghĩa vụ của Bên B</h3>

        <p class="c-item"><span class="c-number">1)</span> Trong vòng <b>tối đa 2h</b> kể từ thời điểm nhận hợp đồng, Bên B phải liên hệ với phụ huynh/học viên.</p>

        <p class="c-item"><span class="c-number">2)</span> Khi đến gặp tại buổi đầu tiên, Bên B phải <b>gửi</b> cho phụ huynh/học viên <b>giấy giới thiệu gia sư</b>. Trong trường hợp nhận lớp online, Bên B phải <b>in</b> giấy giới thiệu gia sư được đính kèm trong email.</p>

        <p class="c-item"><span class="c-number">3)</span> Khi đến gặp tại buổi đầu tiên, Bên B phải xuất trình cho phụ huynh/học viên xem bản gốc (hoặc bản sao, ảnh chụp) các loại giấy tờ: Thẻ sinh viên (nếu là sinh viên), Thẻ giáo viên (nếu là giáo viên), Thẻ căn cước công dân.</p>

        <p class="c-item"><span class="c-number">4)</span> Bên B phải chuẩn bị giáo trình, giáo án trước khi giảng dạy. Đồng thời đảm bảo được lịch học và thời gian giảng dạy cho phụ huynh/học viên. (Nếu vì lý do bất khả kháng, Bên B phải báo trước cho phụ huynh/học viên <b>ít nhất 2 giờ</b>).</p>

        <p class="c-item"><span class="c-number">5)</span> Bên B phải thông báo cho Bên A trong thời gian <b>tối đa 24h</b>, kể từ thời điểm phát sinh các sự cố: không liên hệ được với phụ huynh/học viên; phụ huynh/học viên không sắp xếp được lịch học; phụ huynh/học viên thông báo giảm số buổi học/tuần, giảm học phí, tạm dừng lớp, hủy lớp; các sự cố nghiêm trọng khác.</p>

        <p class="c-item"><span class="c-number">6)</span> Bên B lưu số điện thoại của Bên A (<b>0967-888-280</b>) để Bên A tiện liên hệ nếu lớp xảy ra sự cố. Trường hợp Bên B không nghe điện thoại, Bên B phải gọi lại cho bên A <b>muộn nhất 4h</b> kể từ khi có cuộc gọi nhỡ.</p>

        <p class="c-item"><span class="c-number">7)</span> Bên B không được chuyển giao lớp học cho người khác.</p>

        <!-- -->

        <h3 class="h5 mt-4 mb-3 text-primary">Điều 3: Chính sách học thử của <span class="d-inline-block">học sinh/học viên</span></h3>

        <div class="c-item">
          <p><span class="c-number">1)</span> Nội dung chính sách:</p>

          <p>Học sinh/học viên được quyền học thử với gia sư qua 2 buổi học đầu tiên. Sau 2 buổi này:</p>

          <ul class="list-dash mb-3">
            <li>Nếu <b>không</b> đồng ý nhận gia sư, phụ huynh/học viên <b>không</b> phải thanh toán học phí;</li>
            <li>Nếu đồng ý và tiếp tục học, phụ huynh/học viên <b>sẽ thanh toán</b> học phí của cả 2 buổi này cho gia sư.</li>
          </ul>
        </div>

        <p class="c-item"><span class="c-number">2)</span> Bên B (gia sư) phải có nghĩa vụ truyền đạt rõ ràng chính sách này đến phụ huynh/học viên. Chính sách này có trong giấy giới thiệu gia sư, Bên B phải đưa cho phụ huynh/học viên giữ trong buổi gặp mặt đầu tiên. Nếu Bên B <b>nhận lớp online</b>, Bên B <b>phải tự in</b> giấy giới thiệu gia sư (đính kèm trong email).</p>

        <!-- -->

        <h3 class="h5 mt-4 mb-3 text-primary">Điều 4: Phạt hợp đồng</h3>

        <p>Bên B sẽ bị phạt 100% giá trị hợp đồng, nếu xảy ra 1 trong các trường hợp sau:</p>

        <p class="c-item"><span class="c-number">1)</span> Bên B không thực hiện đầy đủ nghĩa vụ của mình thuộc <b>Điều 2</b> hoặc <b>Điều 3</b>;</p>

        <p class="c-item"><span class="c-number">2)</span> Bên B tuyên bố mình không thể giảng dạy tốt, khiến lớp bị hủy;</p>

        <p class="c-item"><span class="c-number">3)</span> Bên B không sắp xếp được lịch dạy, khiến lớp bị hủy hoặc bị giảm số buổi/tuần;</p>

        <p class="c-item"><span class="c-number">4)</span> Bên B có thái độ, cách cư xử không đúng chuẩn mực, khiến lớp bị hủy;</p>

        <p class="c-item"><span class="c-number">5)</span> Lớp bị hủy hoặc bị giảm số buổi/tuần do những lý do cá nhân xuất phát từ Bên B (Bên B viện cớ nhà xa, không tiện xe bus, di chuyển đến địa điểm khác, Bên B khai báo thông tin không đúng sự thật, ...);</p>

        <p class="c-item"><span class="c-number">6)</span> Bên B tự ý bỏ lớp (kể cả các trường hợp lớp bị giảm số buổi học/tuần, lớp gặp sự cố) mà không có sự cho phép của Bên A.</p>

        <p>Lưu ý: Trong trường hợp Bên B nợ phí, nếu Bên B bị phạt hợp đồng, Bên B vẫn phải thanh toán đầy đủ và đúng hạn số phí nhận lớp cho Bên A theo <b>Điều 6</b> của hợp đồng.</p>

        <!-- -->

        <h3 class="h5 mt-4 mb-3 text-primary">Điều 5: Nghĩa vụ của bên A</h3>

        <p>Nếu Bên B <b>không</b> vi phạm một trong các <b>Điều 2</b>, <b>Điều 3</b>, <b>Điều 4</b> của hợp đồng, Bên A sẽ đảm bảo quyền lợi của Bên B khi lớp gặp sự cố. Cụ thể:</p>

        <p>Bên A sẽ xác minh thông tin với phụ huynh/học viên về sự cố của lớp, nếu thông tin là <b>đúng sự thật</b>, đồng thời Bên B <b>không</b> có các dấu hiệu khai báo gian lận, Bên A sẽ:</p>

        <div class="c-item">
          <p><span class="c-number">1)</span> Tính lại phí nhận lớp</p>

          <p class="c-item"><span class="c-number">a.</span> Trường hợp phụ huynh/học viên hủy lớp (số buổi đã dạy nhỏ hơn hoặc bằng 2): Phí nhận lớp <span class="d-inline-block">= 0 ₫.</span></p>

          <p class="c-item"><span class="c-number">b.</span> Trường hợp phụ huynh/học viên kết thúc lớp học sớm (số buổi đã dạy nhỏ hơn số buổi học/tuần × 4): Phí nhận lớp = học phí/buổi × tổng số buổi đã dạy thực tế × mức % phí nhận lớp ban đầu.</p>

          <p class="c-item"><span class="c-number">c.</span> Các trường hợp lớp bị giảm học phí, giảm số buổi học/tuần (điều kiện: thời gian giảm số buổi học/tuần phải <b>kéo dài ít nhất 4 tuần liên tiếp</b>), sẽ dựa vào số liệu thực tế: Phí nhận lớp = học phí/buổi × số buổi học/tuần × 4 × mức % phí nhận lớp ban đầu.</p>
        </div>

        <p class="c-item"><span class="c-number">2)</span> Số tiền còn dư sau khi tính lại phí nhận lớp, sẽ được Bên A hoàn lại cho Bên B.</p>

        <!-- -->

        <h3 class="h5 mt-4 mb-3 text-primary">Điều 6: Phí nhận lớp</h3>

        <p>Tất cả bao gồm: phí quản lý gia sư, xác minh thông tin, làm hợp đồng, tư vấn phụ huynh/học viên, quản lý thông tin lớp học, xử lý các sự cố phát sinh.</p>

        <p>Bên B thanh toán cho Bên A số tiền: ......... Số tiền đã đặt cọc trước: ......... Còn thiếu: ......... Hẹn ngày ......... sẽ thanh toán đầy đủ.</p>

        <p>Sau 30 ngày kể từ thời điểm làm hợp đồng, số tiền đặt cọc sẽ được chuyển thành phí nhận lớp.</p>

        <!-- -->

        <h3 class="h5 mt-4 mb-3 text-primary">Điều 7: Thời gian có hiệu lực của hợp đồng</h3>

        <p>Hợp đồng có hiệu lực đến hết ngày ......... (30 ngày kể từ ngày làm hợp đồng). Tuy nhiên khi hết thời hạn này, nếu Bên B đang còn nợ phí nhận lớp, Bên B vẫn phải thanh toán đầy đủ cho Bên A.</p>

        <p class="mt-5 text-center text-muted">------------------------------- Hết -------------------------------</p>

        <div class="mt-5 text-center">
          <a href="/" class="btn btn-primary px-4">Quay về trang tổng quan</a>
        </div>

      </div>
    </div>
  </div><!-- end row -->
</section>

<jsp:include page="footer.jsp"/>

</body>
</html>