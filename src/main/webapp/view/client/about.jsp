<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Giới thiệu</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
    <jsp:include page="header.jsp"/>

<main>
    <div class="container alert-group">
    </div>

    <section class="py-4">
        <div class="container">

            <nav>
                <ol class="my-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
                    <li class="breadcrumb-item">Giới thiệu</li>
                </ol>
            </nav>

            <div class="row">

                <div class="col-lg-3 pt-3">

                    <ul class="list-angle pl-0">
                        <li><i class="fas fa-chevron-right mr-2"></i><a href="#so_luoc">Giới thiệu sơ lược</a></li>
                        <li><i class="fas fa-chevron-right mr-2"></i><a href="#su_menh">Sứ mệnh</a></li>
                        <li><i class="fas fa-chevron-right mr-2"></i><a href="#tam_nhin">Tầm nhìn & phát triển</a></li>
                    </ul>

                </div>
                <div class="col-lg-8 mt-4 mt-lg-0">

                    <h1 class="title-underline text-primary">Giới thiệu về GiaSuNLU</h1>

                    <h2 class="mt-5 mb-3" id="so_luoc">Giới thiệu sơ lược</h2>

                    <p>Trung tâm gia sư GiaSuNLU là dự án được xây dựng bởi Công ty TNHH Công Nghệ Starline và Công ty TNHH GiaSuNLU Việt Nam. Trong đó, Starline cung cấp hệ thống công nghệ quản lý mạnh mẽ và hiện đại. Grow Green chịu trách nhiệm về kiến thức chuyên môn.</p>

                    <p>Bên cạnh thế mạnh của mỗi công ty, Trung tâm GiaSuNLU còn có đội ngũ nhân viên được đào tạo bài bản, có đầy đủ kiến thức và kỹ năng tuyển chọn nhân sự trong ngành giáo dục.</p>

                    <div class="my-4 py-2">
                        <img src="${url}img/trung-tam-gia-su.jpg" alt="Giới thiệu về GiaSuNLU">
                    </div>

                    <p>Hiện tại, GiaSuNLU là trung tâm gia sư chất lượng, chuyên nghiệp và có hệ thống quản lý gia sư hiện đại số 1 tại Hà Nội và Việt Nam.</p>

                    <p>Chiến lược kinh doanh của GiaSuNLU rất đơn giản:</p>

                    <ul class="list-square">
                        <li>Chất lượng hàng đầu</li>
                        <li>Chăm sóc khách hàng tuyệt vời</li>
                        <li>Đảo đảm <a href="refund-policy.jsp" target="blank_">quyền lợi của gia sư</a>.</li>
                    </ul>

                    <p>Bạn có thể dễ dàng thấy được khác biệt giữa GiaSuNLU so với các trung tâm gia sư khác. GiaSuNLU đã chuyên nghiệp hóa thành công dịch vụ gia sư, mang đến cho khách hàng và gia sư sự tin tưởng cao nhất.</p>

                    <h2 class="mt-5 mb-3" id="su_menh">Sứ mệnh</h2>

                    <h3 class="h4 mt-4 text-primary">1. Đối với khách hàng</h3>

                    <p>GiaSuNLU cung cấp cho khách hàng dịch vụ <a href="/dang-ky-thue-gia-su">tuyển chọn gia sư</a> uy tín, chất lượng. Gia sư luôn đảm bảo tiêu chuẩn, đã được GiaSuNLU phỏng vấn và có lưu trữ hồ sơ đầy đủ. Sự tiến bộ của học sinh và mức độ hài lòng của khách hàng là những yếu tố mà chúng tôi luôn nỗ lực tối ưu hóa.</p>

                    <h3 class="h4 mt-4 text-primary">2. Đối với gia sư</h3>

                    <p>GiaSuNLU cung cấp cho gia sư những cơ hội việc làm với mức lương luôn xứng đáng. Đồng thời, thông tin lớp học luôn được hiển thị chi tiết và đầy đủ trước khi gia sư đồng ý nhận lớp. Quyền lợi của gia sư khi lớp bị hỏng hoặc có sự cố cũng luôn được đảm bảo.</p>

                    <p>Tại GiaSuNLU, gia sư luôn có thể dễ dàng tìm lớp dạy phù hợp trên <a href="#" target="blank_">Website dành riêng cho gia sư</a>.</p>

                    <h3 class="h4 mt-4 text-primary">3. Đối với nhân viên</h3>

                    <p>GiaSuNLU mang đến cho đội ngũ nhân viên một môi trường làm việc cống hiến, thu nhập tốt và chế độ đãi ngộ đầy đủ. Kèm theo đó, GiaSuNLU luôn chú trọng đến việc đào tạo, nâng cao trình độ và kỹ năng làm việc của đội ngũ nhân viên.</p>

                    <h3 class="h4 mt-4 text-primary">4. Đối với cộng đồng</h3>

                    <p>GiaSuNLU muốn đóng góp vào sự phát triển của Quốc Gia thông qua trợ giúp các em học sinh có được cơ hội giáo dục tốt và gia tăng thu nhập cho gia sư: những Sinh Viên và Giáo Viên có kiến thức, kỹ năng giảng dạy tốt.</p>

                    <h3 class="h4 mt-4 text-primary">5. Đối với đối tác</h3>

                    <p>GiaSuNLU luôn tôn trọng đối tác và các nhà cung cấp. Trên cơ sở cùng hợp tác, cùng phát triển. Chúng tôi luôn sẵn sàng giúp đỡ đối tác để tạo thành một liên kết vững mạnh trong cơ sở kinh doanh của chúng tôi.</p>

                    <h2 class="mt-5 mb-3" id="tam_nhin">Tầm nhìn &amp; phát triển</h2>

                    <p>Với nguồn lực mạnh mẽ về công nghệ và chuyên môn, Trung tâm gia sư GiaSuNLU sẽ tiếp tục được đầu tư và xây dựng để mang đến cho khách hàng dịch vụ gia sư chất lượng, hiệu quả và tin cậy.</p>

                    <p>Hiện tại, Trung tâm gia sư GiaSuNLU mới chỉ hoạt động tại khu vực Thành phố Thủ Đức. Kế hoạch hoạt động tại toàn bộ Việt Nam đang được xây dựng và sẽ sớm được thực hiện trong tương lai.</p>

                    <div class="my-4 py-2">
                        <img src="${url}img/tam-nhin-va-phat-trien-growgreen.jpg" alt="Tầm nhìn và phát triển GiaSuNLU">
                    </div>

                    <p class="mt-4">Bạn cần tìm hiểu thêm về GiaSuNLU, đừng ngại ngần. Hãy liên hệ với GiaSuNLU và nhận sự hỗ trợ tốt nhất.</p>

                    <a href="/lien-he" class="btn btn-primary mt-4 font-weight-bold">Liên hệ với GiaSuNLU</a>

                    <div class="pt-3"></div>

                </div>
            </div>

        </div>
    </section>

</main>


    <jsp:include page="footer.jsp"/>

</body>

</html>