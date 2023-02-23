<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Chính sách học thử</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>

<main role="main">
    <div class="container alert-group">
    </div>

    <section class="container">

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
                <li class="breadcrumb-item active" aria-current="page">Chính sách học thử</li>
            </ol>
        </nav>

        <div class="row mt-4">
            <div class="col-lg-8 offset-lg-2">

                <h1 class="h2 mb-4">Chính sách học thử</h1>

                <p>Phụ huynh/học viên được quyền kiểm tra trình độ của gia sư qua 2 buổi học đầu tiên, sau 2 buổi này:</p>

                <ul class="list-square">
                    <li>Nếu không đồng ý nhận gia sư, phụ huynh/học viên không phải thanh toán học phí;</li>
                    <li>Nếu đồng ý và tiếp tục học, phụ huynh/học viên sẽ phải thanh toán học phí của cả 2 buổi này cho gia sư.</li>
                </ul>

                <p class="mt-4"><b>Lưu ý:</b> Chỉ học sinh/học viên mới có quyền học thử, gia sư sẽ không có quyền dạy thử. Nếu sau khi làm hợp đồng mà gia sư tự ý bỏ lớp, gia sư sẽ bị phạt 100% giá trị hợp đồng. <a class="nav-link" href="contract.jsp">Xem hợp đồng mẫu</a></p>

                <a href="new-class-list.jsp" class="btn btn-primary font-weight-bold mt-4">Xem danh sách lớp mới</a>


            </div>
        </div>

    </section>

</main>

<jsp:include page="footer.jsp"/>

</body>
</html>