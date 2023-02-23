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

        <h3>Kinh nghiệm gia sư</h3>


        <form action="/myaccount/profile/experience" method="POST" novalidate="">
          <input type="hidden" name="_token" value="ObYY9viIpfTwZ2tMWPEdDxUTH2WsLtz7EqYDSHC6">

          <input type="hidden" name="target" value="">

          <p class="mt-4">Bạn đã từng giảng dạy gia sư?</p>

          <div class="mt-3 d-flex" id="experience_choice_group">
            <div class="form-check form-check-radio">
              <span>Có</span>
              <input type="radio" name="experience_choice" value="1">
              <span class="checkmark"></span>
            </div>
            <div class="form-check form-check-radio">
              <span>Không</span>
              <input type="radio" name="experience_choice" value="0" checked="checked">
              <span class="checkmark"></span>
            </div>
          </div>

          <div class="mt-2 experience-field none" id="experience_field_1">
            <p class="mb-2">Liệt kê theo từng dòng, mỗi dòng ghi rõ gia sư môn, lớp hoặc cấp học. Ví dụ:</p>
            <div class="text-muted mb-4">
              <p class="mb-2">Gia sư môn toán, tiếng việt lớp 5</p>
              <p class="mb-2">Gia sư môn hóa lớp 8</p>
            </div>

            <textarea class="form-control" name="experience" rows="8"></textarea>
          </div>

          <div class="mt-4 experience-field " id="experience_field_0">

            <p>Bạn đã từng dạy kèm cho em trai, em gái?</p>

            <div class="mt-3 d-flex" id="family_choice_group">
              <div class="form-check form-check-radio">
                <span>Có</span>
                <input type="radio" name="family_choice" value="1">
                <span class="checkmark"></span>
              </div>
              <div class="form-check form-check-radio">
                <span>Không</span>
                <input type="radio" name="family_choice" value="0" checked="checked">
                <span class="checkmark"></span>
              </div>
            </div>

            <div class="mt-2 family-field none">

              <p class="mb-2">Liệt kê theo từng dòng, mỗi dòng ghi rõ bạn đã từng dạy kèm cho ai, môn học, lớp hoặc cấp học nào. Ví dụ:</p>
              <div class="text-muted mb-4">
                <p class="mb-2">Dạy kèm cho em trai môn toán, tiếng việt lớp 5</p>
                <p class="mb-2">Dạy kèm cho em trai môn hóa lớp 8</p>
              </div>

              <textarea class="form-control" name="family" rows="6"></textarea>
            </div>

          </div>


          <div class="mt-4 text-right">
            <a href="/myaccount/profile/tutor-kind" class="btn btn-secondary mr-4 btn-cancel">Quay lại</a>
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
            <a href="tutor-kind.jsp" class="nav-link "><i class="fas fa-caret-right mr-1"></i> Vị trí gia sư <i class="ml-1 fas fa-exclamation-circle text-muted"></i></a>
          </li>
          <li class="nav-item">
            <a href="experience.jsp" class="nav-link active"><i class="fas fa-caret-right mr-1"></i> Kinh nghiệm gia sư <i class="ml-1 fas fa-exclamation-circle text-muted"></i></a>
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