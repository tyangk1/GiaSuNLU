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
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="my-account.jsp">Tài khoản của tôi</a></li>
                        <li class="breadcrumb-item active" aria-current="page">GD3669</li>
                    </ol>
                </nav>

                <h3 class="mb-4">Đăng ký lớp phù hợp</h3>



                <p class="mb-4 pb-3">Bạn sẽ nhận được thông báo mỗi khi có lớp gia sư mới, phù hợp với những thông tin sau:</p>


                <form class="check_validation" method="POST" action="/myaccount/register-teach" novalidate="">
                    <input type="hidden" name="_token" value="ObYY9viIpfTwZ2tMWPEdDxUTH2WsLtz7EqYDSHC6">

                    <h5 class="text-primary">1. Môn học bạn có thể dạy</h5>

                    <div class="mt-4">

                        <label class="font-weight-bold">Các môn tự nhiên:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Toán Học</span>
                                <input type="checkbox" name="teach_subjects[]" value="1">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Vật Lý</span>
                                <input type="checkbox" name="teach_subjects[]" value="2">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Hoá Học</span>
                                <input type="checkbox" name="teach_subjects[]" value="3">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Sinh Học</span>
                                <input type="checkbox" name="teach_subjects[]" value="4">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tin học</span>
                                <input type="checkbox" name="teach_subjects[]" value="22">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <div class="mt-2">

                        <label class="font-weight-bold">Các môn xã hội:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Ngữ Văn</span>
                                <input type="checkbox" name="teach_subjects[]" value="5">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tiếng Việt</span>
                                <input type="checkbox" name="teach_subjects[]" value="13">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lịch Sử</span>
                                <input type="checkbox" name="teach_subjects[]" value="7">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Địa Lý</span>
                                <input type="checkbox" name="teach_subjects[]" value="8">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Luyện Chữ Đẹp</span>
                                <input type="checkbox" name="teach_subjects[]" value="10">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <div class="mt-2">

                        <label class="font-weight-bold">Các môn ngoại ngữ:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tiếng Anh</span>
                                <input type="checkbox" name="teach_subjects[]" value="6">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tiếng Nhật</span>
                                <input type="checkbox" name="teach_subjects[]" value="14">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tiếng Hàn</span>
                                <input type="checkbox" name="teach_subjects[]" value="15">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tiếng Pháp</span>
                                <input type="checkbox" name="teach_subjects[]" value="21">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tiếng Trung</span>
                                <input type="checkbox" name="teach_subjects[]" value="16">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tiếng Tây Ban Nha</span>
                                <input type="checkbox" name="teach_subjects[]" value="19">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Ngoại ngữ khác</span>
                                <input type="checkbox" name="teach_subjects[]" value="11">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <div class="mt-2">

                        <label class="font-weight-bold">Các môn năng khiếu:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Piano</span>
                                <input type="checkbox" name="teach_subjects[]" value="17">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Guitar</span>
                                <input type="checkbox" name="teach_subjects[]" value="18">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Organ</span>
                                <input type="checkbox" name="teach_subjects[]" value="20">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Mỹ thuật</span>
                                <input type="checkbox" name="teach_subjects[]" value="23">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Thanh nhạc</span>
                                <input type="checkbox" name="teach_subjects[]" value="24">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <h5 class="mt-4 text-primary">2. Lớp học bạn có thể dạy</h5>

                    <div class="mt-4">

                        <label class="font-weight-bold">Cấp THPT:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Luyện Thi Đại Học</span>
                                <input type="checkbox" name="teach_levels[]" value="1">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 12</span>
                                <input type="checkbox" name="teach_levels[]" value="2">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 11</span>
                                <input type="checkbox" name="teach_levels[]" value="3">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 10</span>
                                <input type="checkbox" name="teach_levels[]" value="4">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <div class="mt-2">

                        <label class="font-weight-bold">Cấp THCS:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 9</span>
                                <input type="checkbox" name="teach_levels[]" value="5">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 8</span>
                                <input type="checkbox" name="teach_levels[]" value="6">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 7</span>
                                <input type="checkbox" name="teach_levels[]" value="7">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 6</span>
                                <input type="checkbox" name="teach_levels[]" value="8">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <div class="mt-2">

                        <label class="font-weight-bold">Cấp Tiểu Học:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 5</span>
                                <input type="checkbox" name="teach_levels[]" value="9">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 4</span>
                                <input type="checkbox" name="teach_levels[]" value="10">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 3</span>
                                <input type="checkbox" name="teach_levels[]" value="11">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 2</span>
                                <input type="checkbox" name="teach_levels[]" value="12">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Lớp 1</span>
                                <input type="checkbox" name="teach_levels[]" value="13">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <div class="mt-2">

                        <label class="font-weight-bold">Cấp học khác:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Mầm Non</span>
                                <input type="checkbox" name="teach_levels[]" value="14">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Người đi làm</span>
                                <input type="checkbox" name="teach_levels[]" value="15">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <h5 class="mt-4 text-primary">3. Khu vực bạn có thể dạy</h5>

                    <div class="mt-4">

                        <label class="font-weight-bold">Quận:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Ba Đình</span>
                                <input type="checkbox" name="districts[]" value="1">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Bắc Từ Liêm</span>
                                <input type="checkbox" name="districts[]" value="2">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Cầu Giấy</span>
                                <input type="checkbox" name="districts[]" value="5">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Đống Đa</span>
                                <input type="checkbox" name="districts[]" value="6">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Hà Đông</span>
                                <input type="checkbox" name="districts[]" value="7">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Hai Bà Trưng</span>
                                <input type="checkbox" name="districts[]" value="8">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Hoàn Kiếm</span>
                                <input type="checkbox" name="districts[]" value="9">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Hoàng Mai</span>
                                <input type="checkbox" name="districts[]" value="12">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Long Biên</span>
                                <input type="checkbox" name="districts[]" value="10">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Nam Từ Liêm</span>
                                <input type="checkbox" name="districts[]" value="11">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Tây Hồ</span>
                                <input type="checkbox" name="districts[]" value="14">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Thanh Xuân</span>
                                <input type="checkbox" name="districts[]" value="13">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <div class="mt-2">

                        <label class="font-weight-bold">Huyện:</label>
                        <div class="mt-1">


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Ba Vì</span>
                                <input type="checkbox" name="districts[]" value="30">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Chương Mỹ</span>
                                <input type="checkbox" name="districts[]" value="28">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Đan Phượng</span>
                                <input type="checkbox" name="districts[]" value="22">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Đông Anh</span>
                                <input type="checkbox" name="districts[]" value="19">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Gia Lâm</span>
                                <input type="checkbox" name="districts[]" value="18">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Hoài Đức</span>
                                <input type="checkbox" name="districts[]" value="21">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Mê Linh</span>
                                <input type="checkbox" name="districts[]" value="33">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Mỹ Đức</span>
                                <input type="checkbox" name="districts[]" value="23">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Phúc Thọ</span>
                                <input type="checkbox" name="districts[]" value="34">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Quốc Oai</span>
                                <input type="checkbox" name="districts[]" value="27">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Sóc Sơn</span>
                                <input type="checkbox" name="districts[]" value="29">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Sơn Tây</span>
                                <input type="checkbox" name="districts[]" value="20">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Thạch Thất</span>
                                <input type="checkbox" name="districts[]" value="24">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Thanh Oai</span>
                                <input type="checkbox" name="districts[]" value="26">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Thanh Trì</span>
                                <input type="checkbox" name="districts[]" value="17">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Thường Tín</span>
                                <input type="checkbox" name="districts[]" value="32">
                                <span class="checkmark"></span>
                            </div>


                            <div class="form-check w-auto mr-4 reg_teach_item">
                                <span>Ứng Hòa</span>
                                <input type="checkbox" name="districts[]" value="35">
                                <span class="checkmark"></span>
                            </div>


                        </div>

                    </div>

                    <h5 class="mt-4 text-primary">4. Tỉnh / Thành phố</h5>
                    <div class="mt-4">
                        <ul class="mt-3 list-inline">
                            <li class="list-inline-item">Hà Nội</li>
                        </ul>
                    </div>


                    <div class="mt-4 text-right">
                        <a href="/myaccount/profile/experience" class="btn btn-secondary mr-4 btn-cancel">Quay lại</a>
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
                        <a href="experience.jsp" class="nav-link"><i class="fas fa-caret-right mr-1"></i> Kinh nghiệm gia sư <i class="ml-1 fas fa-exclamation-circle text-muted"></i></a>
                    </li>
                </ul>

                <div class="mt-4 h5">
                    <span>Đăng ký gia sư</span>
                </div>

                <ul class="sidebar-nav list-unstyled">
                    <li class="nav-item">
                        <a href="/myaccount/register-teach" class="nav-link active"><i class="fas fa-caret-right mr-1"></i> Đăng ký lớp phù hợp <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
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