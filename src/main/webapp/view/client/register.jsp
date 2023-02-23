<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<%
  String alert = (String) request.getAttribute("alert");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Đăng ký tài khoản</title>
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

        <div class="pb-3">

          <h1 class="h3 text-success text-center mb-3">Đăng ký tài khoản</h1>

<%--          <div class="mt-4 mb-3">--%>
<%--            <div class="text-center">--%>

<%--              <a href="/google-redirect" class="btn btn-outline-primary font-weight-bold px-4">--%>
<%--                <div class="d-flex">--%>
<%--                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.2em" height="1.5em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 256 262"><path d="M255.878 133.451c0-10.734-.871-18.567-2.756-26.69H130.55v48.448h71.947c-1.45 12.04-9.283 30.172-26.69 42.356l-.244 1.622l38.755 30.023l2.685.268c24.659-22.774 38.875-56.282 38.875-96.027" fill="#4285F4"></path><path d="M130.55 261.1c35.248 0 64.839-11.605 86.453-31.622l-41.196-31.913c-11.024 7.688-25.82 13.055-45.257 13.055c-34.523 0-63.824-22.773-74.269-54.25l-1.531.13l-40.298 31.187l-.527 1.465C35.393 231.798 79.49 261.1 130.55 261.1" fill="#34A853"></path><path d="M56.281 156.37c-2.756-8.123-4.351-16.827-4.351-25.82c0-8.994 1.595-17.697 4.206-25.82l-.073-1.73L15.26 71.312l-1.335.635C5.077 89.644 0 109.517 0 130.55s5.077 40.905 13.925 58.602l42.356-32.782" fill="#FBBC05"></path><path d="M130.55 50.479c24.514 0 41.05 10.589 50.479 19.438l36.844-35.974C195.245 12.91 165.798 0 130.55 0C79.49 0 35.393 29.301 13.925 71.947l42.211 32.783c10.59-31.477 39.891-54.251 74.414-54.251" fill="#EB4335"></path></svg>--%>
<%--                  <span class="ml-2">Tạo tài khoản với Google</span>--%>
<%--                </div>--%>
<%--              </a>--%>

<%--            </div>--%>
<%--            <div class="mt-2 divider-login">--%>
<%--              <span>hay tạo với</span>--%>
<%--            </div>--%>
<%--          </div>--%>
          <%
            if (alert != null) {
          %>
          <p class="alert alert-danger" role="alert">
            <%= alert %>
          </p>
          <%
            }
          %>
          <form class="check_validation" id="register_form" method="POST" action="${pageContext.request.contextPath}/register" novalidate="">
            <input type="hidden" name="_token" value="OBOZOzzZ27a1013ymexJYUcDoGRpMGOeM49BkGw5">
            <div class="form-group">

              <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fas fa-user"></i></div>
                </div>

                <input id="firstname" name="firstName" type="text" class="form-control" value="" placeholder="Họ của bạn" required="">

                <p class="invalid-feedback mb-0">Họ là bắt buộc</p>
              </div>

            </div>

            <div class="form-group">

              <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fas fa-user"></i></div>
                </div>

                <input id="lastname" name="lastName" type="text" class="form-control" value="" placeholder="Tên của bạn" required="">

                <p class="invalid-feedback mb-0">Tên là bắt buộc</p>
              </div>

            </div>

            <div class="form-group">

              <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="far fa-envelope"></i></div>
                </div>

                <input id="email" name="email" type="email" class="form-control" value="" placeholder="Địa chỉ email" required="">

                <p class="invalid-feedback mb-0">Email là bắt buộc</p>
              </div>

            </div>

            <div class="form-group">

              <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fas fa-key"></i></div>
                </div>

                <input id="password" name="password" type="password" class="form-control" placeholder="Tạo mật khẩu" required="">

                <p class="invalid-feedback mb-0">Mật khẩu là bắt buộc</p>

              </div>

            </div>

            <div class="form-group">

              <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fas fa-key"></i></div>
                </div>

                <input id="password-confirm" name="password_confirmation" type="password" class="form-control" placeholder="Xác nhận mật khẩu" required="">

              </div>

            </div>

<%--            <div class="d-flex justify-content-center mt-4">--%>
<%--              <div class="g-recaptcha" data-sitekey="6LfgknkhAAAAABXAQugTItLaoMe6aDZIIM-gtNQ0"><div style="width: 304px; height: 78px;"><div><iframe title="reCAPTCHA" src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LfgknkhAAAAABXAQugTItLaoMe6aDZIIM-gtNQ0&amp;co=aHR0cHM6Ly90dXRvci5ncm93Z3JlZW4uZWR1LnZuOjQ0Mw..&amp;hl=vi&amp;v=Km9gKuG06He-isPsP6saG8cn&amp;size=normal&amp;cb=eo6mgg6r97x0" width="304" height="78" role="presentation" name="a-txzvckh7p5ki" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div><iframe style="display: none;"></iframe></div>--%>
<%--            </div>--%>
            <div class="g-recaptcha" style="margin-top: 16px;"
                 data-sitekey="6LfgknkhAAAAABXAQugTItLaoMe6aDZIIM-gtNQ0"></div>


        </div>

            <div class="form-group mt-4 text-center">
              <button class="btn btn-lg-x btn-success font-weight-bold px-5" type="submit">Đăng Ký Ngay</button>
            </div>

            <p class="mt-4 mb-0 text-small text-muted text-center">Bằng cách tạo tài khoản, bạn đồng ý với <a href="https://www.giasunlu.edu.vn/user-policy" target="_blank">Điều khoản sử dụng</a></p>
          </form>

          <p class="my-lead mt-4 mb-0 text-center">
            <span>Bạn đã có tài khoản?</span>
            <a href="${pageContext.request.contextPath}/login" class="d-inline-block text-underline ml-2">Đăng nhập</a>
          </p>

        </div>

      </div>
    </div>
  </div>

  <style>
    @media(min-width: 700px){main,#footer{background:#f5f7f8}.small-block{width:500px;background:#fff;padding:1.5rem 2.5rem 2rem;border:1px solid #d4dbe0}}
  </style>

  <script src="https://connect.facebook.net/en_US/bundle/sdk.js/" async="" crossorigin="anonymous"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.gstatic.com/recaptcha/releases/Km9gKuG06He-isPsP6saG8cn/recaptcha__vi.js" crossorigin="anonymous" integrity="sha384-zM9CT1KiI1bfCXv/ZnNXhcfWU4ye3ImwtxGBe9civqoVjwQKHQprKBk0e4g5nOxI"></script><script src="https://www.google.com/recaptcha/api.js" async="" defer=""></script>
  <script src="https://www.google.com/recaptcha/api.js"></script>
</main>

<jsp:include page="footer.jsp"/>

</body>

</html>