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
          <ol class="breadcrumb ">
            <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item"><a href="my-account.jsp">Tài khoản của tôi</a></li>
            <li class="breadcrumb-item active" aria-current="page">GD3669</li>
          </ol>
        </nav>

        <h3 class="mb-4">Đồng ý với điều khoản</h3>


        <p>Tích vào <b>4 ô bên dưới</b>, sau đó nhấp vào nút <b>"cập nhật"</b> để đồng ý với các điều khoản nhận lớp của GiaSuNLU:</p>



        <form class="check_validation" method="POST" action="/myaccount/agree-term" novalidate="">
          <input type="hidden" name="_token" value="ObYY9viIpfTwZ2tMWPEdDxUTH2WsLtz7EqYDSHC6">

          <input type="hidden" name="target" value="">

          <h5 class="mt-5 mb-3">1. Hợp đồng gia sư</h5>

          <p>Chi tiết hợp đồng xem tại <a href="/contract" target="_blank">Hợp đồng mẫu</a>.</p>

          <div class="form-check-separate mt-4">


            <div class="form-check">
              <input type="checkbox" name="contract" value="1">
              <span class="checkmark"></span>
            </div>


            <span>Tôi đã đọc, hiểu rõ, và đồng ý với các điều khoản trong hợp đồng.</span>

          </div>

          <h5 class="mt-5 mb-3">2. Chính sách học thử</h5>

          <p>Phụ huynh/học viên được quyền kiểm tra trình độ của gia sư qua 2 buổi học đầu tiên, sau 2 buổi này:</p>

          <ul class="list-square">
            <li>Nếu <b>không</b> đồng ý nhận gia sư, phụ huynh/học viên <b>không</b> phải thanh toán học phí;</li>
            <li>Nếu đồng ý và tiếp tục học, phụ huynh/học viên sẽ thanh toán học phí của cả 2 buổi này cho gia sư.</li>
          </ul>

          <div class="form-check-separate mt-4">


            <div class="form-check">
              <input type="checkbox" name="trial" value="1">
              <span class="checkmark"></span>
            </div>


            <span>Tôi chấp nhận chính sách này.</span>

          </div>

          <h5 class="mt-5 mb-3">3. Tuân thủ các chuẩn mực</h5>

          <p>Những chuẩn mực về cách cư xử và hành vi, bao gồm:</p>

          <ul class="list-square">
            <li>Đi dạy đúng giờ;</li>
            <li>Đảm bảo lịch học cho học viên;</li>
            <li>Lễ phép, lịch sự;</li>
            <li>Giảng dạy nhiệt tình, tận tâm.</li>
          </ul>

          <div class="form-check-separate mt-4">


            <div class="form-check">
              <input type="checkbox" name="attitude" value="1">
              <span class="checkmark"></span>
            </div>


            <span>Tôi sẽ tuân thủ những chuẩn mực trên.</span>

          </div>

          <h5 class="mt-5 mb-3">4. Hiểu rõ trách nhiệm</h5>

          <div class="form-check-separate">


            <div class="form-check">
              <input type="checkbox" name="liability" value="1">
              <span class="checkmark"></span>
            </div>


            <span>Tôi đã đủ (hoặc trên) 18 tuổi, hiểu rõ những trách nhiệm của mình khi nhận lớp.</span>

          </div>


          <div class="mt-5 text-right">
            <a href="/myaccount/register-teach" class="btn btn-secondary mr-4 btn-cancel">Huỷ</a>
            <input type="submit" class="btn btn-primary" value="Cập nhật">
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
            <a href="/myaccount/agree-term" class="nav-link active"><i class="fas fa-caret-right mr-1"></i> Đồng ý điều khoản <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
          </li>
        </ul>

        <div class="mt-4 h5">
          <span>Đào tạo</span>
        </div>

        <ul class="sidebar-nav list-unstyled">
          <li class="nav-item">
            <a href="/myaccount/training/behavior" class="nav-link "><i class="fas fa-caret-right mr-1"></i> Xử lý tình huống <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
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