<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tính lại phí nhận lớp</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>

<main role="main">
<section class="container">

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item active" aria-current="page">Tính lại phí nhận lớp</li>
        </ol>
    </nav>

    <div class="row mt-4">
        <div class="col-lg-8 offset-lg-2">

            <h1 class="h2">Tính lại phí nhận lớp</h1>

            <p class="mt-4">Chỉ áp dụng khi gia sư không vi phạm <a href="contract.jsp">hợp đồng</a>.</p>

            <p>Trang này tổng hợp những trường hợp và điều kiện để gia sư được tính lại phí nhận lớp (dựa theo điều 5 của <a href="contract.jsp">hợp đồng</a>).</p>

            <h2 class="h5 mt-4 pt-2 mb-3">1. Lớp bị giảm số buổi học/tuần</h2>

            <p>Chỉ áp dụng khi lịch học của lớp là cố định, việc giảm số buổi học/tuần là cố định, kéo dài trên 4 tuần liên tiếp.</p>

            <p>Nếu gia sư yêu cầu được tính lại phí nhận lớp, khi việc giảm số buổi học/tuần mới chỉ là tạm thời, sẽ không kéo dài trong dài hạn (ít nhất 4 tuần liên tiếp), có thể vẫn được trung tâm hỗ trợ, nhưng sẽ bị khóa tài khoản gia sư.</p>

            <p>Phí nhận lớp = học phí/buổi × số buổi học/tuần × 4 × mức % phí nhận lớp ban đầu.</p>

            <h2 class="h5 mt-4 pt-2 mb-3">2. Lớp học kết thúc sớm</h2>

            <p>Chỉ áp dụng khi tổng số buổi gia sư đã dạy nhỏ hơn số buổi học/tuần × 4.</p>

            <p>Nếu gia sư yêu cầu được tính lại phí nhận lớp, khi tổng số buổi gia sư đã dạy lớn hơn hoặc bằng số buổi học/tuần × 4, sẽ không được chấp nhận, và có thể bị khóa tài khoản gia sư.</p>

            <p>Phí nhận lớp = học phí/buổi × tổng số buổi đã dạy thực tế × mức % phí nhận lớp ban đầu.</p>

            <h2 class="h5 mt-4 pt-2 mb-3">3. Phụ huynh/học viên hủy lớp, số buổi đã dạy nhỏ hơn hoặc bằng 2</h2>

            <p>Theo <a href="trial-study-policy.jsp">chính sách học thử</a>, phụ huynh/học viên không phải thanh toán học phí cho gia sư.</p>

            <p>Phí nhận lớp = 0 ₫.</p>

            <p>Trong trường hợp này, nếu gia sư yêu cầu phụ huynh/học viên thanh toán học phí, sẽ bị khóa tài khoản gia sư. Vui lòng đọc lại <a href="trial-study-policy.jsp">chính sách học thử</a>.</p>

            <div class="mt-5">
                <a href="contract.jsp" class="btn btn-primary mb-4 px-5">Xem hợp đồng mẫu</a>
            </div>

        </div>
    </div>

</section>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>