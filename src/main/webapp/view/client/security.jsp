<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bảo mật tài khoản</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>

<body>
<jsp:include page="header.jsp"/>

<main role="main" style="background: #f3f3f3">
    <div class="container alert-group">
    </div>

    <section class="container py-lg-2">

        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="bg-white victory-box px-lg-5 pt-lg-4 pb-lg-5">

                    <h1 class="h2 mb-4">Bảo mật tài khoản</h1>

                    <p class="mb-4">Đăng xuất khỏi tất cả các thiết bị khác</p>

                    <form class="check_validation was-validated" method="post" action="/logout-all" novalidate="">
                        <input type="hidden" name="_token" value="5invTcmXhcrg1nzMpbdqQLVmAbESgjq8R7loSW36">
                        <div class="row">

                            <div class="col-lg-7">
                                <div class="form-group">

                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fas fa-key"></i></div>
                                        </div>

                                        <input id="password" type="password" class="form-control" name="password" required="" placeholder="Nhập mật khẩu">

                                        <p class="invalid-feedback">Mật khẩu là bắt buộc</p>

                                    </div>

                                </div>

                            </div>
                            <div class="col-lg-5 text-right text-lg-left">
                                <input type="submit" class="btn btn-primary" value="Đăng xuất tất cả">
                            </div>

                        </div>

                    </form>

                    <p class="mt-5 mt-lg-4">Nếu bạn đã quên mật khẩu, hãy nhấp vào link <a href="/logout">Đăng xuất</a>, sau đó đến trang [Đăng nhập], nhấp vào phần [Quên mật khẩu].</p>

                    <h5 class="mt-5 mb-3">Sử dụng mật khẩu bảo mật</h5>

                    <p>Mật khẩu bảo mật phải bao gồm ít nhất 8 ký tự, trong đó bao gồm các chữ cái thường, ít nhất 1 ký tự in hoa và ít nhất 1 ký tự đặc biệt. Mật khẩu không nên bao gồm ngày sinh hoặc tên của bạn.</p>

                    <a href="change-password.jsp" class="btn btn-primary mt-4 px-4">Đến trang đổi mật khẩu</a>

                </div><!-- end wrap -->
            </div>
        </div><!-- end row -->

    </section>

</main>

<jsp:include page="footer.jsp"/>

</body>

</html>