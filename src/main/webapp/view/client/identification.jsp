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

        <nav aria-label="breadcrumb ">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item"><a href="/myaccount">Tài khoản của tôi</a></li>
            <li class="breadcrumb-item active" aria-current="page">GD3669</li>
          </ol>
        </nav>

        <h3 class="mb-4">Thẻ căn cước</h3>

        <form method="POST" action="/myaccount/profile/identification" novalidate="">
          <input type="hidden" name="_token" value="ObYY9viIpfTwZ2tMWPEdDxUTH2WsLtz7EqYDSHC6">

          <input type="hidden" name="target" value="">

          <div class="row pt-2">

            <div class="col-md-3 form-group">
              <label class="font-weight-bold text-danger">* Số thẻ căn cước:</label><br>
              <label class="text-muted">(Hoặc số CMT)</label>
              <input class="form-control" type="text" name="identification_no" value="">
            </div>

            <div class="col-md-4 form-group pl-md-4 mt-4 mt-md-0">
              <label class="font-weight-bold text-danger">* Ngày cấp:</label>
              <div class="form_date">
                <div class="form_date-day">
                  <label class="text-muted">Ngày</label>
                  <input class="form-control" name="license_date_1" type="number" min="1" max="31" value="">
                </div>
                <div class="form_date-month">
                  <label class="text-muted">Tháng</label>
                  <input class="form-control" name="license_date_2" type="number" min="1" max="12" value="">
                </div>
                <div class="form_date-year">
                  <label class="text-muted">Năm</label>
                  <input class="form-control" name="license_date_3" type="number" min="1900" value="">
                </div>
              </div>
            </div>

            <div class="col-md-5 form-group mt-4 mt-md-0">
              <label class="font-weight-bold text-danger">* Hộ khẩu thường trú:</label><br>
              <label class="text-muted">(Trên thẻ căn cước)</label>
              <input class="form-control" type="text" name="residence" value="">
            </div>

          </div>


          <h5 class="mt-4 pt-2 mb-3 text-primary">Xác minh thẻ căn cước:</h5>


          <div id="how_verify_choice">
            <div>
              <div class="form-check form-check-radio mr-0 mb-0">
                <span>Xác minh khi nhận lớp tại Trung Tâm</span>
                <input type="radio" name="how_verify" value="1">
                <span class="checkmark"></span>
              </div>
            </div>
            <div class="mt-2">
              <div class="form-check form-check-radio">
                <span>Xác minh bằng cách upload ảnh</span>
                <input type="radio" name="how_verify" value="2" checked="">
                <span class="checkmark"></span>
              </div>
            </div>
          </div>

          <div class="mt-4 " id="upload_image_field">

            <p>Upload ảnh chụp 2 mặt thẻ căn cước của bạn (hoặc chứng minh thư). Ảnh sẽ được ẩn ngay khi chúng tôi xác minh thông tin.</p>

            <div class="row mt-4">

              <div class="col-md-4">

                <label class="mb-2 font-weight-bold">Ảnh mặt trước:</label>
                <input type="file" id="identify_front" class="upload_file none">
                <div id="identify_front_notice" class="text-smaller mb-3">
                  <span class="text-muted">(Click vào ảnh để upload)</span>
                </div>
                <a href="javascript:upload_image('identify_front')" id="identify_front_btn" class="d-inline-block image-preview">
                  <div id="identify_front_preview">
                    <img src="${url}img/placeholder-250.jpg">
                  </div>
                  <div class="backdrop">
                    <div class="loader"></div>
                  </div>
                </a>

              </div>
              <div class="col-md-4 offset-md-1 mt-5 mt-md-0">

                <label class="mb-2 font-weight-bold">Ảnh mặt sau:</label>
                <input type="file" id="identify_back" class="upload_file none">
                <div id="identify_back_notice" class="text-smaller mb-3">
                  <span class="text-muted">(Click vào ảnh để upload)</span>
                </div>
                <a href="javascript:upload_image('identify_back')" id="identify_back_btn" class="d-inline-block image-preview">
                  <div id="identify_back_preview">
                    <img src="${url}img/placeholder-250.jpg">
                  </div>
                  <div class="backdrop">
                    <div class="loader"></div>
                  </div>
                </a>

              </div>

            </div>

          </div><!-- End upload image field -->




          <div class="mt-5 text-right">
            <a href="/myaccount/profile/basic" class="btn btn-secondary mr-4 btn-cancel">Quay lại</a>
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
            <a href="identification.jsp" class="nav-link active"><i class="fas fa-caret-right mr-1"></i> Thẻ căn cước <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
          </li>
          <li class="nav-item">
            <a href="tutor-kind.jsp" class="nav-link "><i class="fas fa-caret-right mr-1"></i> Vị trí gia sư <i class="ml-1 fas fa-exclamation-circle text-muted"></i></a>
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