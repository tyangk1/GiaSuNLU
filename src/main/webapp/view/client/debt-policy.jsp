<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Chính sách nợ phí</title>
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
                <li class="breadcrumb-item active" aria-current="page">Chính sách nợ phí</li>
            </ol>
        </nav>

        <div class="row mt-4">
            <div class="col-lg-8 offset-lg-2">

                <h1 class="h2">Nợ phí và đặt cọc</h1>

                <p class="mt-4">GiaSuNLU có chính sách hỗ trợ cho gia sư nợ phí nhận lớp. Tuy nhiên, chính sách này chỉ áp dụng cho hình thức nhận lớp Offline và gia sư phải đạt được ít nhất một trong các điều kiện sau:</p>

                <ul class="list-square">
                    <li>Gia sư có lịch sử nhận lớp tốt</li>
                    <li>Gia sư đang để giấy tờ tại Trung Tâm</li>
                    <li>Một số trường hợp ưu tiên khác</li>
                </ul>

                <p>Do không thể sắp xếp nhân sự cho việc nhắc nợ quá hạn và để tránh rủi ro về nợ không thể thu hồi, GiaSuNLU có quyền từ chối cho gia sư nợ phí nếu cần thiết.</p>

                <h2 class="h4 mt-4 pt-2 mb-3">Cách thức hoạt động:</h2>

                <p>Trong trường hợp nợ phí, gia sư cần để lại 1 trong loại 2 giấy tờ:</p>

                <ul class="pl-4">
                    <li class="mb-1">Căn cước công dân</li>
                    <li>Hoặc giấy phép lái xe</li>
                </ul>

                <p>Ngoài ra, gia sư cần thanh toán trước tối thiểu 50% phí nhận lớp. Mức phí nhận lớp sẽ tùy theo từng lớp (xem tại trang <a href="/check">chi tiết lớp</a>).</p>

                <h2 class="h4 mt-4 pt-2 mb-3">Ví dụ:</h2>

                <table class="table table-bordered">

                    <thead>
                    <tr>
                        <th>Phí nhận lớp</th>
                        <th>Phí đặt cọc tối thiểu</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>200.000 đ</td>
                        <td>100.000 đ</td>
                    </tr>
                    <tr>
                        <td>400.000 đ</td>
                        <td>200.000 đ</td>
                    </tr>
                    <tr>
                        <td>600.000 đ</td>
                        <td>300.000 đ</td>
                    </tr>
                    <tr>
                        <td>800.000 đ</td>
                        <td>400.000 đ</td>
                    </tr>
                    <tr>
                        <td>1.000.000 đ</td>
                        <td>500.000 đ</td>
                    </tr>
                    </tbody>

                </table>

                <h2 class="h4 mt-4 pt-2">Note nhận lớp</h2>

                <p class="mt-3">Khi bạn <a href="note-receive-class.jsp">Tạo note nhận lớp</a>, bạn sẽ biết được phí nhận lớp và số tiền đặt cọc tối thiểu mà bạn cần thanh toán trước.</p>

                <p>Vào danh sách lớp mới, sử dụng bộ lọc hoặc công cụ tìm kiếm để chọn lớp phù hợp, sau đó nhấp vào nút [Xem chi tiết], đọc kỹ thông tin của lớp:</p>

                <ul class="pl-5">
                    <li class="mb-2">Xem thêm các lớp tương tự nếu lớp bạn đang xem chưa phù hợp</li>
                    <li>Nhấp vào nút [Đăng ký nhận lớp] và làm theo hướng dẫn</li>
                </ul>

                <p>Nếu bạn không tìm thấy lớp nào phù hợp với bạn, hãy <a href="/myaccount/register-teach">Đăng ký lớp phù hợp</a> để nhận thông báo các lớp mới qua Email.</p>

                <div class="mt-5">
                    <a href="/danh-sach-lop-moi" class="btn btn-primary mb-4 px-4">Xem danh sách lớp mới</a>
                </div>

            </div>
        </div>

    </section>

    <style>
        .table {
            width: 100%;
            margin-bottom: 1rem;
            background-color: transparent;
        }
        .table td, .table th {
            padding: .75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }
        .table-bordered td, .table-bordered th {
            border: 1px solid #dee2e6;
        }
    </style>

</main>

<jsp:include page="footer.jsp"/>

</body>

</html>