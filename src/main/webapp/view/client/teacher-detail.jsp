<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Thông tin gia sư</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>

    <!-- <Section Start> -->
    <section class="py-4">
        <div class="container">

            <nav>
                <ol class="my-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="./teacher.jsp">Gia Sư</a></li>
                    <li class="breadcrumb-item">Thông tin chi tiết</li>
                </ol>
                <h1 class="title-underline text-primary">Thông tin gia sư </h1>
            </nav>

            <div class="row">
                <div class="col-lg-3 py-5 ">
                    <img class="img-fluid" src="${url}img/team-1.jpg" alt="">
                    <a href="./teacher-detail.jsp"></a>
                </div>
                <div class="col-lg-8 mt-4 mt-lg-0 content-inf" >

                    <h3 class=" h4 mt-4 py-4 " id="su_menh">Thông tin cá nhân</h3>

                    <div>
                        <ul class="teacher_detail">
                            <li>Họ và tên: <span>Nguyễn Thị My </span></li>
                            <li>Năm sinh: <span>20/11/2001</span></li>
                            <li>Hiện là: <span>Sinh viên năm 4 </span></li>
<%--                            <li>Hiện là: <span>Sinh viên năm 4 </span></li>--%>
                            <li>Trường: <span>Văn Lang </span></li>
                            <li>Chuyên ngành: <span>Kinh doanh quốc tế </span></li>
                            <li>Năm tốt nghiệp: <span>2023 </span></li>
                            <li>Các môn dạy: <span>Toán, tiếng việt </span></li>
                            <li>Địa điểm: <span>124 Phan Văn Trị, P.15, quận Gò Vấp </span></li>
                        </ul>
                    </div>
                    <!-- <h3 class=" h4 mt-4 py-4 " id="su_menh">Bằng cấp, chứng chỉ</h3> -->

                    <a href="/lien-he" class="btn btn-primary mt-4 font-weight-bold">Liên hệ với GiaSuNLU</a>

                    <div class="pt-3"></div>

                </div>
            </div>
        </div>
    </section>
    <!-- <Section End> -->

<jsp:include page="footer.jsp"/>

</body>

</html>