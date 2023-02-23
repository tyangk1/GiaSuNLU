<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url value="/view/client/" var="url"/>

<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="GiaSuNLU Templates" name="keywords">
<meta content="GiaSuNLU Templates" name="description">

<link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${url}css/style.css" rel="stylesheet">

<!-- Libraries Stylesheet -->

<link href="${url}lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>


<header>
    <div class="container-fluid d-none d-lg-block">
        <div class="row align-items-center py-4 px-xl-5">
            <div class="col-lg-3">
                <a href="" class="text-decoration-none">
                    <h1 class="m-0"><span class="text-primary">MY</span>TUTOR</h1>
                </a>
            </div>
            <div class="col-lg-3 text-right">
                <div class="d-inline-flex align-items-center">
                    <i class="fa fa-2x fa-map-marker-alt text-primary mr-3"></i>
                    <div class="text-left">
                        <h6 class="font-weight-semi-bold mb-1">Địa chỉ</h6>
                        <small>Đường số 8, Linh Trung, TP.Thủ Đức</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 text-right">
                <div class="d-inline-flex align-items-center">
                    <i class="fa fa-2x fa-envelope text-primary mr-3"></i>
                    <div class="text-left">
                        <h6 class="font-weight-semi-bold mb-1">Email</h6>
                        <small>giasunlu@gmail.com</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 text-right">
                <div class="d-inline-flex align-items-center">
                    <i class="fa fa-2x fa-phone text-primary mr-3"></i>
                    <div class="text-left">
                        <h6 class="font-weight-semi-bold mb-1">Liên hệ</h6>
                        <small>012 345 6789</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid hr-header">
        <div class="row border-top px-xl-5">
            <div class="col-lg-2 d-none d-lg-block text-center">
                <div class="align-items-center justify-content-between bg-secondary w-100 text-decoration-none" style="height: 67px; padding: 0 30px;">
                    <a class="text-primary m-0" style="font-weight: 600; font-size: 20px; line-height: 67px;" href="${pageContext.request.contextPath}/post"><i class="fa fa-book-open mr-2"></i>ĐĂNG BÀI</a>
                </div>
            </div>
            <div class="col-lg-10">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0"><span class="text-primary">MY</span>TUTOR</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav py-0">
                            <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link">Trang chủ</a>
                            <a href="${pageContext.request.contextPath}/about" class="nav-item nav-link">Giới thiệu</a>
                            <a href="${pageContext.request.contextPath}/class" class="nav-item nav-link">Lớp học</a>
                            <a href="${pageContext.request.contextPath}/teacher" class="nav-item nav-link">Gia sư</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Dành cho gia sư</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="${pageContext.request.contextPath}/overview" class="dropdown-item">Tổng
                                        quan</a>
                                    <a href="${pageContext.request.contextPath}/new-class-list" class="dropdown-item">Danh
                                        sách lớp mới</a>
                                    <a href="${pageContext.request.contextPath}/receive-class" class="dropdown-item">Cách
                                        thức nhận lớp</a>
                                    <a href="${pageContext.request.contextPath}/refund-policy" class="dropdown-item">Chính
                                        sách hoàn phí</a>
                                    <a href="${pageContext.request.contextPath}/contract" class="dropdown-item">Hợp đồng
                                        mẫu</a>
                                    <a href="${pageContext.request.contextPath}/class-status" class="dropdown-item">Kiểm
                                        tra tình trạng lớp</a>
                                    <a href="${pageContext.request.contextPath}/note-receive-class"
                                       class="dropdown-item">Tạo note nhận lớp</a>
                                    <a href="${pageContext.request.contextPath}/debt-policy" class="dropdown-item">Chính
                                        sách nợ phí</a>
                                    <a href="${pageContext.request.contextPath}/class-admission-fee"
                                       class="dropdown-item">Tính lại phí nhận lớp </a>
                                </div>
                            </div>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Blog</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="${pageContext.request.contextPath}/blog-customer" class="dropdown-item">Blog
                                        khách hàng</a>
                                    <a href="${pageContext.request.contextPath}/blog-tutor" class="dropdown-item">Blog
                                        gia sư</a>
                                </div>
                            </div>
<%--                            <a href="${pageContext.request.contextPath}/post" class="nav-item nav-link">Đăng bài</a>--%>
                            <a href="${pageContext.request.contextPath}/contact" class="nav-item nav-link">Liên hệ</a>
                        </div>
                        <c:choose>
                            <c:when test="${sessionScope.account.id==null}">
                                <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="${pageContext.request.contextPath}/login">Đăng nhập tài khoản</a>
                                <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="${pageContext.request.contextPath}/login">Đăng ký làm gia sư</a>
                            </c:when>
                            <c:otherwise>
                                <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="${pageContext.request.contextPath}/my-account">Quản lý tài khoản</a>
                                <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="${pageContext.request.contextPath}/register-teach">Đăng ký làm gia sư</a>
                                <div class="nav-item dropdown ml-4" style="margin-right: 100px">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                        <i class="fas fa-user"></i>
                                    </a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a class="dropdown-item" href="">Mã gia sư: GD3669</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/change-password">Đổi mật
                                            khẩu</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/security">Bảo mật tài
                                            khoản</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
</header>
