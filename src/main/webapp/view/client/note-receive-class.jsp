<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Tạo note nhận lớp</title>
  <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>


<body>
<jsp:include page="header.jsp"/>

<main role="main"  style="background: #f3f3f3">
  <div class="container alert-group">
  </div>

  <section class="container">

    <div class="row justify-content-center">
      <div class="col-lg-7">
        <div class="bg-white victory-box px-lg-5 pt-lg-4 pb-lg-5">

          <h1 class="h3 text-primary">Tạo Note nhận lớp</h1>

          <form action="/note" method="get">

            <div class="d-flex mt-4">
              <input type="text" name="code" class="form-control mr-3" placeholder="Nhập mã lớp" value="">
              <input type="submit" class="btn btn-info" value="Load dữ liệu">
            </div>

          </form>

          <p class="mt-5">Nhập mã lớp mà bạn muốn nhận, sau đó nhấn vào nút Load dữ liệu.</p>

          <p class="mt-4">Hoặc bạn có thể truy cập vào trang <a href="new-class-list.jsp" class="text-underline">Danh sách lớp mới</a>, nhấp vào nút <span class="px-1">[Xem chi tiết]</span> lớp mà bạn muốn nhận, sau đó nhấp vào nút <span class="pl-1">[Đăng ký nhận lớp]</span>.</p>

          <div class="mt-4 pt-3">
            <a href="new-class-list.jsp" class="btn btn-primary px-4">Xem danh sách lớp mới</a>
          </div>

        </div><!-- end wrap -->
      </div>
    </div><!-- end row -->

  </section>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>