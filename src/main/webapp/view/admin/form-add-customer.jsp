<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<head>
 <jsp:include page="header.jsp"></jsp:include>
</head>

<body onload="time()" class="app sidebar-mini rtl"></body>
<!-- Navbar-->
<main class="app-content">
  <div class="app-title">
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item">Danh sách khách hàng</li>
      <li class="breadcrumb-item"><a href="#">Thêm mới khách hàng</a></li>
    </ul>
  </div>
  <div class="row">
    <div class="col-md-12">

      <div class="tile">

        <h3 class="tile-title">Tạo mới khách hàng</h3>
        <div class="tile-body">

          <form class="row">
            <div class="form-group col-md-4">
              <label class="control-label">Mã Khách hàng</label>
              <input class="form-control" type="text">
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Họ và tên</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Địa chỉ email</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Địa chỉ thường trú</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group  col-md-4">
              <label class="control-label">Số điện thoại</label>
              <input class="form-control" type="number" maxlength="10" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Ngày sinh</label>
              <input class="form-control" type="date">
            </div>
            <div class="form-group col-md-3">
              <label class="control-label">Giới tính</label>
              <select class="form-control" id="exampleSelect2" required>
                <option>-- Chọn giới tính --</option>
                <option>Nam</option>
                <option>Nữ</option>
              </select>
            </div>
            <div class="form-group col-md-3">
              <label class="control-label">Số CMND</label>
              <input class="form-control" type="number" required>
            </div>
            <div class="form-group col-md-3">
              <label class="control-label">Ngày cấp</label>
              <input class="form-control" type="date" required>
            </div>
            <div class="form-group col-md-3">
              <label class="control-label">Nơi cấp</label>
              <input class="form-control" type="text" required>
            </div>
          </form>
        </div>
        <button class="btn btn-save" type="button">Lưu lại</button>
        <a class="btn btn-cancel" href="./table-data-customer.jsp">Hủy bỏ</a>
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