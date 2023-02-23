<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Hồ sơ gia sư</title>
  <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>

<body>
<jsp:include page="header.jsp"/>
<main role="main">
  <div class="container alert-group">
  </div>


  <div class="container">

    <div class="row">

      <div class="col-lg-9 pl-lg-5">

        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item"><a href="my-account.jsp">Tài khoản của tôi</a></li>
            <li class="breadcrumb-item active" aria-current="page">Đào tạo</li>
          </ol>
        </nav>

        <h2 class="mb-4">Đào tạo về xử lý tình huống</h2>


        <p>Đây là bài đào tạo bắt buộc. Bạn cần đọc kỹ tài liệu này, sau đó nhấp vào nút bên dưới để xác nhận với GiaSuNLU rằng bạn đã đọc và hiểu rõ nội dung của bài đào tạo.</p>


        <h4 class="mt-5 mb-3">1. Gọi điện đến phụ huynh/học viên</h4>

        <p>Khi bạn nhận lớp tại GiaSuNLU, trong vòng <span class="font-weight-600">muộn nhất 2h</span> kể từ thời điểm làm hợp đồng gia sư, bạn sẽ phải chủ động gọi điện đến phụ huynh/học viên để giới thiệu về bản thân và sắp xếp lịch học thử.</p>

        <a href="/chinh-sach-hoc-thu" class="text-underline" target="_blank">Xem chính sách học thử</a>

        <div style="max-width: 600px">

          <h6 class="mt-4 mb-3">Ví dụ mẫu về cuộc gọi:</h6>

          <div class="bg-gray pt-3 pr-2 pl-3 pb-2 radius-5">

            <ul class="list-dash">

              <li>{Cháu} chào {cô} ạ. Cho {cháu} hỏi có phải là {cô A} phải không ạ?</li>
              <li class="text-muted">... phản hồi ...</li>
              <li>{Cháu} là {Nguyễn Văn B}, sinh viên trường {XYZ}. {Cháu} được Trung tâm gia sư GiaSuNLU giới thiệu đến để dạy môn {X} cho <span class="d-inline-block">{bạn lớp Y}</span> nhà {cô} ạ.</li>
              <li class="text-muted">... phản hồi ...</li>
              <li>Dạ vâng ạ. Vào hôm nào thì {cháu} có thể qua nhà {cô} để bắt đầu dạy được ạ?</li>
              <li class="text-muted">... phản hồi ...</li>

            </ul>

          </div>

        </div>

        <div class="pt-4"></div>

        <p>Trong trường hợp mà phụ huynh/học viên muốn biết thêm thông tin về bạn, ví dụ như những thành tích và kinh nghiệm, bạn chỉ cần trả lời một cách thành thật. Nếu bạn chưa từng giảng dạy gia sư qua trung tâm, nhưng đã dạy kèm cho người thân thì đó vẫn được gọi là kinh nghiệm gia sư của bạn.</p>

        <p>Bạn nên giữ cho cách nói chuyện thật tự nhiên, thể hiện được sự nhiệt tình và mong muốn giảng dạy của bạn. Trong quá trình liên hệ với phụ huynh/học viên, nếu có bất kỳ sự cố nào, hãy nhắn tin ngay lập tức đến <a target="_blank" href="" rel="nofollow">Fanpage Gia Sư GiaSuNLU</a> để được hỗ trợ.</p>

        <h5 class="mt-4 pt-3 mb-3 text-primary">Trường hợp phụ huynh/học viên không nghe máy:</h5>

        <p>Bạn chỉ nên gọi 1 cuộc duy nhất, nếu phụ huynh/học viên không nghe máy, bạn cần để lại tin nhắn cho phụ huynh/học viên. Bạn không nên gọi nhiều cuộc khi phụ huynh/học viên không nghe máy, bởi có thể tại thời điểm đó, phụ huynh/học viên có thể đang bận công việc.</p>

        <h6 class="mt-4 mb-3">Ví dụ mẫu về tin nhắn:</h6>

        <div class="bg-gray pt-3 pr-2 pl-3 pb-2 radius-5">

          <p>{Cháu} chào {cô} ạ. {Cháu} là gia sư {Nguyễn Văn B}, được Trung tâm gia sư GiaSuNLU giới thiệu đến để dạy môn {X} cho <span class="d-inline-block">{bạn lớp Y}</span> nhà {cô}. Vào hôm nào thì {cháu} có thể qua nhà {cô} để bắt đầu dạy được ạ?</p>

        </div>

        <div class="pt-4"></div>

        <p>Nếu bạn đã nhắn tin cho phụ huynh/học viên mà không nhận được tin nhắn phản hồi. Hãy gọi thêm 1 cuộc gọi nữa vào ngày kế tiếp. Nếu phụ huynh/học viên vẫn không nghe máy, hãy nhắn tin đến <a target="_blank" href="" rel="nofollow">Fanpage Gia Sư GiaSuNLU</a> để được hỗ trợ.</p>

        <h4 class="mt-5 mb-3">2. Đến gặp phụ huynh/học viên</h4>

        <p>Bạn cần đến đúng giờ, tốt nhất là nên đến sớm trước 30 phút nếu là buổi đầu tiên, mang theo chứng minh thư và thẻ sinh viên (nếu là sinh viên). Phong cách ăn mặc của bạn phải gọn gàng, lịch sự. Khi gặp phụ huynh, bạn cần chào hỏi lễ phép, lắng nghe những ý kiến của phụ huynh.</p>

        <p>Điều quan trọng, bạn bắt buộc phải mang theo tài liệu để giảng dạy. Tài liệu này phải là bản cứng (bằng giấy, có thể in hoặc viết tay), bao gồm 1 bài test nhanh để kiểm tra trình độ của học viên và 1 bài giáo án mà bạn dự định sẽ dạy trong buổi hôm đó.</p>

        <p>Bạn cần lưu ý rằng các phụ huynh không thích người khác nhận xét quá tiêu cực về con cái. Do vậy, nếu trao đổi với phụ huynh về học lực của học sinh, bạn nên sử dụng câu từ nhẹ nhàng, tinh tế.</p>

        <h4 class="mt-5 mb-3">3. Những buổi dạy tiếp theo</h4>

        <p>Bạn cần đảm bảo luôn đi dạy đúng giờ (nên đến sớm trước 15 phút), duy trì lịch dạy đều đặn và hạn chế sự gián đoạn. Nếu vì một lý do bất khả kháng, hãy gọi điện (không nên nhắn tin) báo trước với phụ huynh/học viên ít nhất 3 giờ, đồng thời giải thích với phụ huynh/học viên về nguyên nhân nghỉ, đưa ra lời xin lỗi vì đã gián đoạn lịch dạy.</p>

        <p>Cho dù bạn đã thân quen với phụ huynh/học viên, bạn vẫn cần giữ phong cách giảng dạy nhiệt tình, nghiêm túc và chuyên nghiệp. Luôn chuẩn bị giáo án trước mỗi buổi dạy, và giáo án phải là bản cứng (bằng giấy, có thể in hoặc viết tay).</p>

        <p>Tuyệt đối không sử dụng điện thoại trong quá trình dạy, hãy để chế độ im lặng. Kể cả khi bạn sử dụng điện thoại để kiểm tra kiến thức, có khả năng cao phụ huynh sẽ hiểu nhầm bạn sử dụng điện thoại cho mục đích riêng tư, và bạn sẽ rất khó có cơ hội để giải thích.</p>

        <div class="pt-4"></div>

        <hr>

        <div class="pt-3"></div>


        <form class="check_validation" method="POST" action="/myaccount/training/behavior" novalidate="">
          <input type="hidden" name="_token" value="ObYY9viIpfTwZ2tMWPEdDxUTH2WsLtz7EqYDSHC6">

          <div class="text-right">

            <p class="d-inline-block" style="max-width: 600px">Xác nhận với GiaSuNLU rằng bạn đã hoàn thành bài đào tạo về <span class="d-inline-block">cách xử lý tình huống</span> của GiaSuNLU</p>

            <input type="hidden" name="behavior" value="1">

            <div class="text-right mt-2">

              <input type="submit" value="Xác nhận" class="btn btn-default">

            </div>

          </div>

        </form>


      </div>

      <div class="col-lg-3 order-lg-first mt-5 mt-lg-0 ">

        <div class="mb-2 h5">
          <a href="/myaccount/profile">Hồ sơ gia sư</a>
        </div>

        <ul class="sidebar-nav list-unstyled">
          <li class="nav-item">
            <a href="profile-basic.jsp" class="nav-link"><i class="fas fa-caret-right mr-1"></i> Thông tin cơ bản <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
          </li>
          <li class="nav-item">
            <a href="identification.jsp" class="nav-link"><i class="fas fa-caret-right mr-1"></i> Thẻ căn cước <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
          </li>
          <li class="nav-item">
            <a href="tutor-kind.jsp" class="nav-link "><i class="fas fa-caret-right mr-1"></i> Vị trí gia sư <i class="ml-1 fas fa-exclamation-circle text-muted"></i></a>
          </li>
          <li class="nav-item">
            <a href="experience.jsp" class="nav-link"><i class="fas fa-caret-right mr-1"></i> Kinh nghiệm gia sư <i class="ml-1 fas fa-exclamation-circle text-muted"></i></a>
          </li>
        </ul>

        <div class="mt-4 h5">
          <span>Đăng ký gia sư</span>
        </div>

        <ul class="sidebar-nav list-unstyled">
          <li class="nav-item">
            <a href="/myaccount/register-teach" class="nav-link"><i class="fas fa-caret-right mr-1"></i> Đăng ký lớp phù hợp <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
          </li>
          <li class="nav-item">
            <a href="/myaccount/agree-term" class="nav-link"><i class="fas fa-caret-right mr-1"></i> Đồng ý điều khoản <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
          </li>
        </ul>

        <div class="mt-4 h5">
          <span>Đào tạo</span>
        </div>

        <ul class="sidebar-nav list-unstyled">
          <li class="nav-item">
            <a href="/myaccount/training/behavior" class="nav-link active"><i class="fas fa-caret-right mr-1"></i> Xử lý tình huống <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
          </li>
        </ul>

        <h5 class="mt-4">Số dư tài khoản</h5>
        <h5 class="text-primary">0 xu</h5>
        <a href="coin.jsp" class="btn btn-primary">Nạp xu</a>

        <div class="mt-4 pt-2 h5">
          <a href="/myaccount/mynote"><span>Note nhận lớp</span></a>
        </div>

        <div class="mt-4 h5">
          <a href="/myaccount/myclass"><span>Lớp đã nhận</span></a>
        </div>

        <div class="mt-4 h5">
          <a href="/myaccount/ticket">Báo cáo sự cố</a>
        </div>
      </div>

    </div>

  </div>

</main>

  <jsp:include page="footer.jsp"/>

</body>

</html>