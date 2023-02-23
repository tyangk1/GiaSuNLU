<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Quên mật khẩu</title>
  <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>

<body>
<jsp:include page="header.jsp"/>

<main role="main">
  <div class="container alert-group">
  </div>
  <div class="container">
    <div class="d-lg-flex justify-content-center">
      <div class="small-block">

        <h1 class="h2 mb-4">Đặt lại mật khẩu</h1>


        <p>Nhập địa chỉ email mà bạn đã đăng ký tài khoản vào ô bên dưới, sau đó nhấp vào nút "Gửi yêu cầu".</p>

        <p>Bạn sẽ nhận được một email trong đó có <span style="font-weight: 600;">Link đặt lại mật khẩu</span>.</p>

        <div class="pt-3"></div>

        <form method="POST" action="${pageContext.request.contextPath}/forgot-password" class="check_validation was-validated">
          <input type="hidden" name="_token" value="OBOZOzzZ27a1013ymexJYUcDoGRpMGOeM49BkGw5">
          <div class="form-group">

            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text"><i class="far fa-envelope"></i></div>
              </div>

              <input id="email" name="email" type="email" class="form-control" value="" placeholder="Nhập địa chỉ email" required="">

            </div>

          </div>

          <div class="form-group mt-4 mb-0">
            <button type="submit" class="mt-1 btn btn-success font-weight-bold">
              Gửi yêu cầu
            </button>
          </div>
        </form>

        <div class="pt-4"></div>


        <div class="pt-4"></div>

        <p>Nếu bạn không tìm thấy email trong hộp thư đến, hãy kiểm tra thư mục spam.</p>

        <p>Nếu những nỗ lực trên bị thất bại, hãy sử dụng tính năng:</p>

        <div class="mt-3">
          <a href="/google-redirect" class="d-inline-block">
            <div class="d-flex">
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.2em" height="1.5em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 256 262"><path d="M255.878 133.451c0-10.734-.871-18.567-2.756-26.69H130.55v48.448h71.947c-1.45 12.04-9.283 30.172-26.69 42.356l-.244 1.622l38.755 30.023l2.685.268c24.659-22.774 38.875-56.282 38.875-96.027" fill="#4285F4"></path><path d="M130.55 261.1c35.248 0 64.839-11.605 86.453-31.622l-41.196-31.913c-11.024 7.688-25.82 13.055-45.257 13.055c-34.523 0-63.824-22.773-74.269-54.25l-1.531.13l-40.298 31.187l-.527 1.465C35.393 231.798 79.49 261.1 130.55 261.1" fill="#34A853"></path><path d="M56.281 156.37c-2.756-8.123-4.351-16.827-4.351-25.82c0-8.994 1.595-17.697 4.206-25.82l-.073-1.73L15.26 71.312l-1.335.635C5.077 89.644 0 109.517 0 130.55s5.077 40.905 13.925 58.602l42.356-32.782" fill="#FBBC05"></path><path d="M130.55 50.479c24.514 0 41.05 10.589 50.479 19.438l36.844-35.974C195.245 12.91 165.798 0 130.55 0C79.49 0 35.393 29.301 13.925 71.947l42.211 32.783c10.59-31.477 39.891-54.251 74.414-54.251" fill="#EB4335"></path></svg>
              <span class="ml-2">Đăng nhập bằng tài khoản Google</span>
            </div>
          </a>
        </div>

        <p class="mt-4">Hoặc sao chép link: <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/giasunlu/login-google&response_type=code
    &client_id=698498991064-09hlkni1c35t49i852epq68ri0o4p08o.apps.googleusercontent.com&approval_prompt=force">https://tutor.giasunlu.edu.vn/google-redirect</a> và dán vào trình duyệt Chrome hoặc Safari.</p>

        <div class="pt-3"></div>

        <hr>

        <p class="mt-3 mb-0">Bạn vẫn gặp trở ngại? Gọi <a href="tel:+84979516580">0979-516-580</a> để được trợ giúp (24/7).</p>

      </div>
    </div>
  </div>

  <style>
    @media(min-width: 700px){main,#footer{background:#f5f7f8}.small-block{width:600px;background:#fff;padding:1.5rem 2.5rem 2rem;border:1px solid #d4dbe0}}
  </style>
</main>

<jsp:include page="footer.jsp"/>

</body>

</html>