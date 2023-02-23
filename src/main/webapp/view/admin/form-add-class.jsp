<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<head>

 <jsp:include page="header.jsp"></jsp:include>
</head>

<body onload="time()" class="app sidebar-mini rtl"></body>

<main class="app-content">
  <div class="app-title">
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item">Danh sách lớp</li>
      <li class="breadcrumb-item"><a href="#">Thêm mới lớp</a></li>
    </ul>
  </div>
  <div class="row">
    <div class="col-md-12">

      <div class="tile">

        <h3 class="tile-title">Tạo mới lớp</h3>
        <div class="tile-body">

          <form class="row">
            <div class="form-group col-md-4">
              <label class="control-label">Mã lớp</label>
              <input class="form-control" type="text">
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Mã KH</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Thông tin lớp</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Yêu cầu</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Thời gian có thể học</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Tổng tiền</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group  col-md-4">
              <label class="control-label">Tình trạng</label>
              <select class="form-control" id="exampleSelect2" required>
                <option>-- Chọn tình trạng --</option>
                <option>Đang còn</option>
                <option>Đã giao</option>
              </select>
            </div>
          </form>
        </div>
        <button class="btn btn-save" type="button">Lưu lại</button>
        <a class="btn btn-cancel" href="./table-data-class.jsp">Hủy bỏ</a>
      </div>
    </div>
  </div>
</main>

<!-- Essential javascripts for application to work-->
<script src="${url}/js/jquery-3.2.1.min.js"></script>
<script src="${url}/js/popper.min.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="${url}/js/plugins/pace.min.js"></script>

</body>

</html>