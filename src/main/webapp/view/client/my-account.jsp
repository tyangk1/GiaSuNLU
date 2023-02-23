<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Quản lý tài khoản</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>

<body>
<jsp:include page="header.jsp"/>
<main role="main">

  <div class="container alert-group">
  </div>


    <div class="container">


        <div class="row">

            <div class="col-lg-4 pr-lg-5">


                <h2>Tài khoản của tôi</h2>

                <div class="mt-3 avatar_upload_wrap" style="width: 100px; height: 100px; display: table;">
                    <div id="avatar_preview" >
                        <img src="${sessionScope.account.avatar}">
                    </div>
                </div>

                <h5 class="mt-3 pl-1">Mã gia sư: <span class="text-success">GD3669</span></h5>

                <h5 class="pl-1">Số dư:<span class="text-primary">${sessionScope.account.coin} coin</span></h5>

                <a href="${pageContext.request.contextPath}/my-account/top-up-coin" class="btn btn-primary mb-2">Nạp xu</a><br>

                <a href="${pageContext.request.contextPath}/my-account/coin-history">Lịch sử biến động</a>

                <!-- -->

                <%--        <div class="mt-4 switch-wrap">--%>
                <%--          <label class="switch">--%>
                <%--            <input type="checkbox" checked="" id="receive_sms" onchange="change_receive_sms()">--%>
                <%--            <span class="slider round"></span>--%>
                <%--          </label>--%>
                <%--          <span class="ml-1">Nhận thông báo qua SMS</span>--%>
                <%--          <div id="receive_sms_result"></div>--%>
                <%--        </div>--%>

                <%--        <div class="mt-2 switch-wrap">--%>
                <%--          <label class="switch">--%>
                <%--            <input type="checkbox" checked="" id="receive_email" onchange="change_receive_email()">--%>
                <%--            <span class="slider round"></span>--%>
                <%--          </label>--%>
                <%--          <span class="ml-1">Nhận thông báo qua Email</span>--%>
                <%--          <div id="receive_email_result"></div>--%>
                <%--        </div>--%>

                <div class="mt-4 d-flex">
                    <i class="fas fa-caret-right text-muted mr-2 mt-1"></i>
                    <div>Cài đặt thông báo mỗi khi có lớp mới tại: <a
                            href="${pageContext.request.contextPath}/my-account/register-teach" class="d-inline-block">Đăng
                        ký lớp phù hợp</a></div>
                </div>

                <div class="mt-4 mt-lg-3 d-flex">
                    <i class="fas fa-caret-right text-muted mr-2 mt-1"></i>
                    <div><a href="/lop-phu-hop" class="d-inline-block" target="_blank">Lớp phù hợp với bạn</a></div>
                </div>

                <div class="mt-3 d-flex">
                    <i class="fas fa-caret-right text-muted mr-2 mt-1"></i>
                    <div><a href="/myaccount/mynote" class="d-inline-block">Quản lý note nhận lớp</a></div>
                </div>

                <div class="mt-3 d-flex">
                    <i class="fas fa-caret-right text-muted mr-2 mt-1"></i>
                    <div><a href="${pageContext.request.contextPath}/security" class="d-inline-block">Bảo mật tài
                        khoản</a></div>
                </div>

            </div>

            <div class="col-lg-8 mt-5 mt-lg-4">
                <%--                info--%>
                <div class="ux_card p-3 pb-4">
                    <h4 class="ux_card-title">Hồ sơ thông tin</h4>
                    <div class="mt-4 pt-1">
                        <label class="mb-3 font-weight-bold">Họ và tên :</label>
                        <p class="mb-4">${sessionScope.account.lastName}</p>
                    </div>
                    <div class="mt-4 pt-1">
                        <label class="mb-3 font-weight-bold">Email :</label>
                        <p class="mb-4">${sessionScope.account.email}</p>
                    </div>
                    <div class="mt-4 pt-1">
                        <label class="mb-3 font-weight-bold">Số điện thoai :</label>
                        <p class="mb-4">${sessionScope.account.phoneNumber}</p>
                    </div>
                    <div class="mt-4 pt-1">
                        <label class="mb-3 font-weight-bold">Ngày sinh :</label>

                        <p class="mb-4"><fmt:formatDate pattern = "yyyy-MM-dd" value = "${sessionScope.account.dateOfBirth}" /></p>
                    </div>

                    <div class="mt-3">
                        <a href="${pageContext.request.contextPath}/my-account/profile-basic"
                           class="btn btn-outline-primary">Cập nhật thông tin</a>
                    </div>
<%--                    <ul class="list-square mt-4 mb-0">--%>
<%--                        <li>--%>
<%--                            <a href="${pageContext.request.contextPath}/my-account/profile-basic">Thông tin cơ bản</a>--%>
<%--                            <i class="ml-1 fas fa-exclamation-circle text-warning"></i>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="${pageContext.request.contextPath}/my-account/profile-identification">Thẻ căn--%>
<%--                                cước</a>--%>
<%--                            <i class="ml-1 fas fa-exclamation-circle text-warning"></i>--%>
<%--                        <li>--%>
<%--                            <a href="${pageContext.request.contextPath}/my-account/tutor-kind">Vị trí gia sư</a>--%>
<%--                            <i class="ml-1 fas fa-exclamation-circle text-muted"></i>--%>
<%--                        <li>--%>
<%--                            <a href="${pageContext.request.contextPath}/my-account/experience">Kinh nghiệm gia sư</a>--%>
<%--                            <i class="ml-1 fas fa-exclamation-circle text-muted"></i>--%>
<%--                        </li>--%>
<%--                    </ul>--%>

                </div><!-- End Ux Card -->
                <%--                info--%>
                <div class="ux_card p-3 mt-4 pb-4">

                    <h4 class="ux_card-title">Đồng ý với điều khoản</h4>


                    <p class="text-danger">Bạn cần đồng ý với các điều khoản để có thể nhận lớp tại GiaSuNLU.</p>

                    <div class="mt-3">
                        <a href="${pageContext.request.contextPath}/my-account/agree-term"
                           class="btn btn-outline-primary">Bắt đầu ngay</a>
                    </div>


                    <ul class="list-square mt-4 mb-0">
                        <li>
                            Hợp đồng gia sư <i class="ml-1 fas fa-exclamation-circle text-warning"></i>
                        </li>
                        <li>
                            Chính sách học thử <i class="ml-1 fas fa-exclamation-circle text-warning"></i>
                        </li>
                        <li>
                            Tuân thủ các chuẩn mực <i class="ml-1 fas fa-exclamation-circle text-warning"></i>
                        </li>
                        <li>
                            Hiểu rõ trách nhiệm <i class="ml-1 fas fa-exclamation-circle text-warning"></i>
                        </li>
                    </ul>

                </div><!-- End Ux Card -->

                <div class="ux_card p-3 mt-4 pb-4">

                    <h4 class="ux_card-title">Đào tạo</h4>


                    <p class="text-danger">Bạn cần hoàn thành bài đào tạo về cách xử lý tình huống sau khi nhận lớp tại
                        GiaSuNLU.</p>

                    <div class="mt-3">
                        <a href="${pageContext.request.contextPath}/behavior" class="btn btn-outline-primary">Bắt đầu
                            ngay</a>
                    </div>


                </div><!-- End Ux Card -->

                <div class="ux_card p-3 mt-4 pb-4">

                    <h4 class="ux_card-title">Lớp đã nhận</h4>


                    <p>Ồ không! Bạn chưa nhận lớp nào tại GiaSuNLU.</p>

                    <div class="mt-3">
                        <a href="${pageContext.request.contextPath}/class" class="btn btn-outline-primary">Xem
                            danh sách lớp mới</a>
                    </div>


                </div><!-- End Ux Card -->

                <div class="mt-5 text-justify pr-lg-5">
                    <p class="mb-0">Thông tin của bạn sẽ được GiaSuNLU xác minh, vui lòng chỉ cập nhật thông tin đúng sự
                        thật. Nếu bạn cố ý khai báo gian lận, tài khoản của bạn sẽ bị tạm ngưng và bạn sẽ không thể nhận
                        lớp tại GiaSuNLU.</p>
                </div>

            </div>

        </div>

    </div>

</main>

<jsp:include page="footer.jsp"/>

</body>

</html>