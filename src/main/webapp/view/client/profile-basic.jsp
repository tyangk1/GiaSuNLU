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
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/my-account">Tài khoản của tôi</a></li>
                        <li class="breadcrumb-item active" aria-current="page">GD3669</li>
                    </ol>
                </nav>

                <h3 class="mb-4">Thông tin cơ bản</h3>

                <form method="POST" action="${pageContext.request.contextPath}/my-account/profile-basic" novalidate="">
                    <input type="hidden" name="_token" value="ObYY9viIpfTwZ2tMWPEdDxUTH2WsLtz7EqYDSHC6">

                    <input type="hidden" name="target" value="">


                    <div class="mt-4 pt-3">

                        <label class="mb-3 font-weight-bold">Ảnh hồ sơ:</label>


                        <p class="mb-4">Sử dụng ảnh hồ sơ rõ khuôn mặt, nền ảnh đơn giản và nghiêm túc. Ảnh chỉ bao gồm mình bạn, không bị lẫn thêm người khác.</p>

                        <div id="avatar_notice" class="text-smaller mb-3 none">
                            <span class="text-muted">Click vào ảnh để upload.</span>
                        </div>
                        <div class="mt-3 avatar_upload_wrap">
                            <figure class="figure col-md-2 col-sm-3 col-xs-12">

                                <img class="img-rounded img-responsive avatar" name="image" src="${sessionScope.account.avatar}"
                                     alt="">
                            </figure>

                            <div class="form-inline col-md-10 col-sm-9 col-xs-12">
                                <input type="button" value="Tải ảnh lên"
                                       onclick="BrowseServer();" class="btn btn-controls"/>
                                <input type="text" name="avatar" id="avatar" hidden="true"
                                       value="${sessionScope.account.avatar}">
                            </div>
                        </div>

                    </div>

                    <div class="row mt-4 pt-3">

                        <div class="col-md-4 form-group">
                            <label class="font-weight-bold text-danger">* Họ và tên:</label>
                            <input class="form-control" type="text" name="name" value="${sessionScope.account.firstName} ${sessionScope.account.lastName}" autocomplete="off" maxlength="50">
                        </div>

                        <div class="col-md-3 form-group mt-1 mt-md-0">
                            <label class="font-weight-bold text-danger">* Điện thoại:</label>

                            <div class="form-control-wrap">
                                <input class="form-control" type="tel" name="phone" value="${sessionScope.account.phoneNumber}" autocomplete="off" maxlength="15">
                            </div>
                        </div>

                        <div class="col-md-5 form-group mt-1 mt-md-0">
                            <label class="font-weight-bold">Email:</label>

                            <div class="form-control-verified">
                                <input class="form-control" type="email" name="email" value="${sessionScope.account.email}" autocomplete="off" readonly="" maxlength="100">
                                <i class=" fas fa-verified_user text-success"></i>
                            </div>

                            <p class="mt-2 mb-0 text-right pr-2"><a href="/myaccount/change-email" class="text-underline">Thay đổi email</a></p>
                        </div>

                        <div class="w-100 mt-2 mt-md-0"></div>

                        <div class="col-md-3 form-group">
                            <label class="font-weight-bold text-danger">* Giới tính:</label>
                            <select class="form-control nice " name="gender_id" id="gender_id" autocomplete="off" style="display: none;">
                                <option value="1">Lựa chọn</option>
                                <option value="1">Nam</option>
                                <option value="2">Nữ</option>
                            </select><div class="nice-select form-control nice" tabindex="0"><span class="current">Lựa chọn</span><ul class="list"><li data-value="" class="option selected">Lựa chọn</li><li data-value="1" class="option">Nam</li><li data-value="2" class="option">Nữ</li></ul></div>
                        </div>

                        <div class="col-md-3 form-group mt-1 mt-md-0">
                            <label class="font-weight-bold text-danger">* Năm sinh:</label>
                            <select class="form-control nice " name="birthday" autocomplete="off" style="display: none;">
                                <option value="2001">Chọn năm</option>
                                <option value="2004">Năm 2004</option>
                                <option value="2003">Năm 2003</option>
                                <option value="2002">Năm 2002</option>
                                <option value="2001">Năm 2001</option>
                                <option value="2000">Năm 2000</option>
                                <option value="1999">Năm 1999</option>
                                <option value="1998">Năm 1998</option>
                                <option value="1997">Năm 1997</option>
                                <option value="1996">Năm 1996</option>
                                <option value="1995">Năm 1995</option>
                                <option value="1994">Năm 1994</option>
                                <option value="1993">Năm 1993</option>
                                <option value="1992">Năm 1992</option>
                                <option value="1991">Năm 1991</option>
                                <option value="1990">Năm 1990</option>
                                <option value="1989">Năm 1989</option>
                                <option value="1988">Năm 1988</option>
                                <option value="1987">Năm 1987</option>
                                <option value="1986">Năm 1986</option>
                                <option value="1985">Năm 1985</option>
                                <option value="1984">Năm 1984</option>
                                <option value="1983">Năm 1983</option>
                                <option value="1982">Năm 1982</option>
                                <option value="1981">Năm 1981</option>
                                <option value="1980">Năm 1980</option>
                                <option value="1979">Năm 1979</option>
                                <option value="1978">Năm 1978</option>
                                <option value="1977">Năm 1977</option>
                                <option value="1976">Năm 1976</option>
                                <option value="1975">Năm 1975</option>
                                <option value="1974">Năm 1974</option>
                                <option value="1973">Năm 1973</option>
                                <option value="1972">Năm 1972</option>
                                <option value="1971">Năm 1971</option>
                                <option value="1970">Năm 1970</option>
                                <option value="1969">Năm 1969</option>
                                <option value="1968">Năm 1968</option>
                                <option value="1967">Năm 1967</option>
                                <option value="1966">Năm 1966</option>
                                <option value="1965">Năm 1965</option>
                                <option value="1964">Năm 1964</option>
                                <option value="1963">Năm 1963</option>
                                <option value="1962">Năm 1962</option>
                            </select><div class="nice-select form-control nice" tabindex="0"><span class="current">Chọn năm</span><ul class="list"><li data-value="" class="option selected">Chọn năm</li><li data-value="2004" class="option">Năm 2004</li><li data-value="2003" class="option">Năm 2003</li><li data-value="2002" class="option">Năm 2002</li><li data-value="2001" class="option">Năm 2001</li><li data-value="2000" class="option">Năm 2000</li><li data-value="1999" class="option">Năm 1999</li><li data-value="1998" class="option">Năm 1998</li><li data-value="1997" class="option">Năm 1997</li><li data-value="1996" class="option">Năm 1996</li><li data-value="1995" class="option">Năm 1995</li><li data-value="1994" class="option">Năm 1994</li><li data-value="1993" class="option">Năm 1993</li><li data-value="1992" class="option">Năm 1992</li><li data-value="1991" class="option">Năm 1991</li><li data-value="1990" class="option">Năm 1990</li><li data-value="1989" class="option">Năm 1989</li><li data-value="1988" class="option">Năm 1988</li><li data-value="1987" class="option">Năm 1987</li><li data-value="1986" class="option">Năm 1986</li><li data-value="1985" class="option">Năm 1985</li><li data-value="1984" class="option">Năm 1984</li><li data-value="1983" class="option">Năm 1983</li><li data-value="1982" class="option">Năm 1982</li><li data-value="1981" class="option">Năm 1981</li><li data-value="1980" class="option">Năm 1980</li><li data-value="1979" class="option">Năm 1979</li><li data-value="1978" class="option">Năm 1978</li><li data-value="1977" class="option">Năm 1977</li><li data-value="1976" class="option">Năm 1976</li><li data-value="1975" class="option">Năm 1975</li><li data-value="1974" class="option">Năm 1974</li><li data-value="1973" class="option">Năm 1973</li><li data-value="1972" class="option">Năm 1972</li><li data-value="1971" class="option">Năm 1971</li><li data-value="1970" class="option">Năm 1970</li><li data-value="1969" class="option">Năm 1969</li><li data-value="1968" class="option">Năm 1968</li><li data-value="1967" class="option">Năm 1967</li><li data-value="1966" class="option">Năm 1966</li><li data-value="1965" class="option">Năm 1965</li><li data-value="1964" class="option">Năm 1964</li><li data-value="1963" class="option">Năm 1963</li><li data-value="1962" class="option">Năm 1962</li></ul></div>
                        </div>

                    </div>

                    <h5 class="mt-4 text-primary">Học vấn (Đại học, cao đẳng):</h5>

                    <div class="row mt-4">

                        <div class="col-md-6 form-group">
                            <label class="font-weight-bold text-danger">* Tên trường học:</label>
                            <input class="form-control" type="text" name="school_name" value="${certificates.schoolName}" autocomplete="off" maxlength="250">
                        </div>
                        <div class="col-md-6 form-group mt-2 mt-md-0">
                            <label class="font-weight-bold text-danger">* Ngành học:</label>
                            <input class="form-control" type="text" name="major" value="${certificates.major}" autocomplete="off" maxlength="250">
                        </div>

                        <div class="w-100 mt-2"></div>

                        <div class="col-md-6 mt-3 mt-md-0">
                            <div class="row">

                                <div class="col-6 form-group">
                                    <label class="mb-2 font-weight-bold text-danger">* Bắt đầu từ:</label>

                                    <div class="form_date">
                                        <div class="form_date-month">
                                            <label class="text-muted">Tháng</label>
                                            <input class="form-control" name="start_month" type="number" min="1" max="12" value="1">
                                        </div>
                                        <div class="form_date-year">
                                            <label class="text-muted">Năm</label>
                                            <input class="form-control" name="start_year" type="number" min="1900" value="2002">
                                        </div>
                                    </div>

                                </div>
                                <div class="col-6 form-group">
                                    <label class="mb-2 font-weight-bold text-danger">* Kết thúc:</label>

                                    <div class="form_date">
                                        <div class="form_date-month">
                                            <label class="text-muted">Tháng</label>
                                            <input class="form-control" name="end_month" type="number" min="1" max="12" value="1">
                                        </div>
                                        <div class="form_date-year">
                                            <label class="text-muted">Năm</label>
                                            <input class="form-control" name="end_year" type="number" min="1900" value="2001">
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div><!-- End Row -->


                    <h5 class="mt-4 pt-2 mb-3 text-primary">Xác minh học vấn:</h5>


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

                        <p>Upload ảnh chụp Thẻ sinh viên hoặc Bằng tốt nghiệp của bạn.</p>

                        <div class="row mt-4">

                            <div class="col-md-4">

                                <label class="mb-2 font-weight-bold">Ảnh xác minh:</label>
                                <input type="file" id="student_card" class="upload_file none">
                                <div id="student_card_notice" class="text-smaller mb-3">
                                    <span class="text-muted">(Click vào ảnh để upload)</span>
                                </div>
                                <a href="javascript:upload_image('student_card')" id="student_card_btn" class="d-inline-block image-preview">
                                    <div id="student_card_preview">
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
                        <a href="/myaccount/profile" class="btn btn-secondary mr-4 btn-cancel">Quay lại</a>
                        <input type="submit" class="btn btn-primary" value="Cập nhật">
                    </div>

                </form>
            </div>

            <div class="col-lg-3 order-lg-first mt-5 mt-lg-0 ">

                <div class="mb-2 h5">
                    <a href="/myaccount/profile">Hồ sơ gia sư</a>
                </div>

                <ul class="sidebar-nav list-unstyled">
                    <li class="nav-item">
                        <a href="profile-basic.jsp" class="nav-link active"><i class="fas fa-caret-right mr-1"></i> Thông tin cơ bản <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
                    </li>
                    <li class="nav-item">
                        <a href="identification.jsp" class="nav-link "><i class="fas fa-caret-right mr-1"></i> Thẻ căn cước <i class="ml-1 fas fa-exclamation-circle text-warning"></i></a>
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
                <h5 class="text-primary">0 ₫</h5>

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
<script src="${pageContext.request.contextPath}/CKLibraries/ckfinder/ckfinder.js"></script>


<script type="text/javascript">
    function BrowseServer() {
        var finder = new CKFinder();
        finder.basePath = "/CKLibraries/ckfinder";
        finder.selectActionFunction = function (fileUrl) {
            document.getElementById('avatar').value = fileUrl;
        };
        finder.popup();
    }
</script>

</body>

</html>