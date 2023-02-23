<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Đổi mật khẩu</title>
  <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>

<body>
<jsp:include page="header.jsp"/>
<main role="main" style="background: #f3f3f3;">
  <div class="container alert-group">
  </div>

  <section class="container py-lg-2">

    <div class="row justify-content-center">
      <div class="col-lg-6">
        <div class="bg-white victory-box px-lg-5 pt-lg-4 pb-lg-5">

          <h1 class="h3 mb-4">Thay đổi mật khẩu</h1>

          <form method="post" action="/change-password" class="check_validation" novalidate="">
            <input type="hidden" name="_token" value="5invTcmXhcrg1nzMpbdqQLVmAbESgjq8R7loSW36">
            <div class="form-group mb-4">
              <label for="current_password">Nhập mật khẩu cũ của bạn</label>

              <div class="input-group mt-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fas fa-key"></i></div>
                </div>

                <input id="current_password" type="password" class="form-control" name="current_password" placeholder="Nhập mật khẩu cũ" required="">

                <p class="invalid-feedback mb-0">Mật khẩu cũ là bắt buộc</p>
              </div>
            </div>

            <p>Nếu bạn đã quên mật khẩu cũ, hãy <a href="/logout">Đăng xuất</a>, sau đó đến trang [Đăng nhập], nhấp vào phần [Quên mật khẩu].</p>

            <div class="form-group mt-4 mb-4">

              <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fas fa-key"></i></div>
                </div>

                <input id="new_password" type="password" class="form-control" name="new_password" placeholder="Tạo mật khẩu mới" required="">

                <p class="invalid-feedback mb-0">Mật khẩu mới là bắt buộc</p>
              </div>
            </div>

            <div class="form-group mb-4">

              <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fas fa-key"></i></div>
                </div>

                <input id="new_password_confirmation" type="password" class="form-control" name="new_password_confirmation" placeholder="Xác nhận mật khẩu mới" required="">

                <p class="invalid-feedback mb-0">Xác nhận mật khẩu mới là bắt buộc</p>
              </div>

            </div>

            <div class="mt-3 form-group mb-0 text-right">
              <input type="submit" class="mt-2 btn btn-success font-weight-bold" value="Thay đổi">
            </div>

          </form>

        </div><!-- end wrap -->
      </div>
    </div><!-- end row -->

  </section>


</main>

<jsp:include page="footer.jsp"/>

</body>

</html>