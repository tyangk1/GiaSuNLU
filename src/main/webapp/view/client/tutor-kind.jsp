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

        <h3>Vị trí gia sư</h3>


        <form action="/myaccount/profile/tutor-kind" method="POST" novalidate="">
          <input type="hidden" name="_token" value="ObYY9viIpfTwZ2tMWPEdDxUTH2WsLtz7EqYDSHC6">

          <input type="hidden" name="target" value="">

          <div class="mt-4">
            <div class="mt-2" id="tutor_kind_choice">
              <div class="form-check form-check-radio">
                <span>Sinh Viên</span>
                <input type="radio" name="tutor_kind" value="1" checked="checked">
                <span class="checkmark"></span>
              </div>
              <div class="form-check form-check-radio">
                <span>Giáo Viên</span>
                <input type="radio" name="tutor_kind" value="2">
                <span class="checkmark"></span>
              </div>
            </div>
          </div>

          <div class="mt-3 tutor-kind-field " id="tutor_kind_field_1">
            <h5>Những thành tích mà bạn đạt được:</h5>

            <div class="form-check-separate mt-4">
              <div class="form-check">
                <input type="checkbox" name="toggle_score" value="1" onclick="toggle_input_checkbox('toggle_score','achieved_score_wrap')">
                <span class="checkmark"></span>
              </div>
              <span>Có môn đạt 8 điểm trở lên khi thi Đại học</span>
            </div>

            <div id="achieved_score_wrap" class="mt-3 none">

              <p class="text-muted mb-2">Không tính điểm cộng ưu tiên. Chỉ liệt kê các môn thi tuyển Đại học.</p>
              <p class="text-muted">Ví dụ: Tổng điểm 24,5. Toán 7,5; Lý 8; Hóa 9</p>

              <input type="text" maxlength="220" name="achieved_score" class="mb-5 form-control" value="" id="score_checker_input" onkeyup="score_typing_checker()" style="max-width: 600px">

              <input type="hidden" name="check_old_score" value="">
              <input type="hidden" name="check_score_int" value="0">
              <input type="hidden" name="check_score_length" value="0">
              <input type="hidden" name="check_score_max_length" value="0">
            </div>

            <div class="form-check-separate mt-4">
              <div class="form-check">
                <input type="checkbox" name="toggle_good" value="1" onclick="toggle_input_checkbox('toggle_good','achieved_good_wrap')">
                <span class="checkmark"></span>
              </div>
              <span>Đạt giải trong kỳ thi học sinh giỏi từ cấp quận, huyện trở lên</span>
            </div>

            <div id="achieved_good_wrap" class="mt-3 none">

              <p class="text-muted">Liệt kê từng dòng: Đạt giải ... thi HSG môn ... lớp ... cấp QG/ Tỉnh/ TP/ Huyện</p>

              <textarea maxlength="600" rows="4" id="achieved_good" name="achieved_good" class="mt-3 mb-4 form-control" style="max-width: 600px"></textarea>

            </div>

            <div class="form-check-separate mt-4">
              <div class="form-check">
                <input type="checkbox" name="toggle_special" value="1" onclick="toggle_input_checkbox('toggle_special','achieved_special')">
                <span class="checkmark"></span>
              </div>
              <span>Cấp 3 học tại trường chuyên của tỉnh, thành phố</span>
            </div>

            <input type="text" maxlength="220" id="achieved_special" name="achieved_special" class="mt-3 mb-4 form-control none" value="" placeholder="Môn chuyên - Tên trường - Tỉnh/ TP" style="max-width: 600px">

            <div class="form-check-separate mt-4">
              <div class="form-check">
                <input type="checkbox" name="toggle_certificate" value="1" onclick="toggle_input_checkbox('toggle_certificate','achieved_certificate')">
                <span class="checkmark"></span>
              </div>
              <span>Bạn có chứng chỉ ngoại ngữ</span>
            </div>

            <input type="text" maxlength="220" id="achieved_certificate" name="achieved_certificate" class="mt-3 mb-4 form-control none" value="" placeholder="Liệt kê các chứng chỉ" style="max-width: 600px">

            <div class="form-check-separate mt-4">
              <div class="form-check">
                <input type="checkbox" name="toggle_scholarship" value="1" onclick="toggle_input_checkbox('toggle_scholarship','achieved_scholarship')">
                <span class="checkmark"></span>
              </div>
              <span>Bạn đã từng đạt học bổng ở trường Đại học</span>
            </div>

            <input type="text" maxlength="220" id="achieved_scholarship" name="achieved_scholarship" class="mt-3 mb-4 form-control none" value="" placeholder="Mô tả chi tiết" style="max-width: 600px">

            <div class="form-check-separate mt-4">
              <div class="form-check">
                <input type="checkbox" name="toggle_other" value="1" onclick="toggle_input_checkbox('toggle_other','achieved_other')">
                <span class="checkmark"></span>
              </div>
              <span>Bạn còn thành tích nổi bật khác</span>
            </div>

            <input type="text" maxlength="220" id="achieved_other" name="achieved_other" class="mt-3 form-control none" value="" style="max-width: 600px">
          </div>

          <div class="mt-3 tutor-kind-field none" id="tutor_kind_field_2">

            <p>Để trống cả 2 ô sau, nếu bạn chưa từng giảng dạy tại bất kỳ trường học, trung tâm dạy thêm hoặc trung tâm ngoại ngữ nào.</p>

            <h6 class="mt-4">Nơi giảng dạy hiện tại:</h6>

            <input type="text" maxlength="220" class="mt-4 form-control" name="teachplace_current" value="" style="max-width: 600px">

            <h6 class="mt-4">Nơi giảng dạy trước đây:</h6>

            <div class="mt-4 form-group">
              <textarea class="form-control" name="teachplace_old" rows="2" style="max-width: 600px"></textarea>
            </div>
          </div>


          <div class="mt-5 text-right">
            <a href="/myaccount/profile/identification" class="btn btn-secondary mr-4 btn-cancel">Quay lại</a>
            <input type="submit" class="btn btn-primary" value="Tiếp theo">
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
            <a href="tutor-kind.jsp" class="nav-link active"><i class="fas fa-caret-right mr-1"></i> Vị trí gia sư <i class="ml-1 fas fa-exclamation-circle text-muted"></i></a>
          </li>
          <li class="nav-item">
            <a href="experience.jsp" class="nav-link "><i class="fas fa-caret-right mr-1"></i> Kinh nghiệm gia sư <i class="ml-1 fas fa-exclamation-circle text-muted"></i></a>
          </li>
        </ul>

        <div class="mt-4 h5">
          <span>Đăng ký gia sư</span>
        </div>

        <ul class="sidebar-nav list-unstyled">
          <li class="nav-item">
            <a href="/myaccount/register-teach" class="nav-link "><i class="fas fa-caret-right mr-1"></i> Đăng ký lớp phù hợp <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
          </li>
          <li class="nav-item">
            <a href="/myaccount/agree-term" class="nav-link "><i class="fas fa-caret-right mr-1"></i> Đồng ý điều khoản <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
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