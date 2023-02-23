<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kiểm tra tình trạng lớp</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>
<section class="py-lg-2" style="background: #f3f3f3;padding: 20px">

    <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="bg-white victory-box px-lg-5 pt-lg-5 pb-lg-5">

                <h1 class="h3 mb-3">Kiểm tra tình trạng lớp</h1>

                <p>Nhập mã lớp mà bạn muốn kiểm tra vào ô sau. Bạn có thể nhập nhiều mã lớp cùng một lúc.</p>

                <div class="mt-5 mb-5">

                    <form method="GET" action="/search">
                        <div role="search">
                            <input type="text" class="search-input" name="keyword">
                            <button type="submit" class="search-btn">
                                <i class="fas fa-search"></i>
                                <span class="lg-only">Tìm kiếm</span>
                            </button>
                        </div>
                    </form>

                </div>

                <p>Nếu bạn còn nhìn thấy thông tin lớp trên website, điều này chứng tỏ lớp bạn đang kiểm tra vẫn đang còn, và bạn có thể đăng ký nhận lớp đó.</p>

                <div class="mt-4 pt-3">
                    <a href="/danh-sach-lop-moi" class="btn btn-primary px-4">Xem danh sách lớp mới</a>
                </div>

            </div><!-- end wrap -->
        </div>
    </div><!-- end row -->
</section>

<jsp:include page="footer.jsp"/>

</body>
</html>