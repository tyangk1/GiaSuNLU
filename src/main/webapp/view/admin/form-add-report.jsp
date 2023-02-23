<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/12/2022
  Time: 7:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <jsp:include page="header.jsp"></jsp:include>

</head>

<body class="app sidebar-mini rtl">
<style>
  .Choicefile {
    display: block;
    background: #14142B;
    border: 1px solid #fff;
    color: #fff;
    width: 150px;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    padding: 5px 0px;
    border-radius: 5px;
    font-weight: 500;
    align-items: center;
    justify-content: center;
  }

  .Choicefile:hover {
    text-decoration: none;
    color: white;
  }

  #uploadfile,
  .removeimg {
    display: none;
  }

  #thumbbox {
    position: relative;
    width: 100%;
    margin-bottom: 20px;
  }

  .removeimg {
    height: 25px;
    position: absolute;
    background-repeat: no-repeat;
    top: 5px;
    left: 5px;
    background-size: 25px;
    width: 25px;
    /* border: 3px solid red; */
    border-radius: 50%;

  }

  .removeimg::before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    content: '';
    border: 1px solid red;
    background: red;
    text-align: center;
    display: block;
    margin-top: 11px;
    transform: rotate(45deg);
  }

  .removeimg::after {
    /* color: #FFF; */
    /* background-color: #DC403B; */
    content: '';
    background: red;
    border: 1px solid red;
    text-align: center;
    display: block;
    transform: rotate(-45deg);
    margin-top: -2px;
  }
</style>

<main class="app-content">
  <div class="app-title">
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item">Danh sách bài viết</li>
      <li class="breadcrumb-item"><a href="#">Thêm mới bài viết</a></li>
    </ul>
  </div>
  <div class="row">
    <div class="col-md-12">

      <div class="tile">

        <h3 class="tile-title">Tạo mới bài viết</h3>
        <div class="tile-body">
          <form class="row">
            <div class="form-group col-md-4">
              <label class="control-label">STT</label>
              <input class="form-control" type="text">
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Mã khách hàng</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Mã bài viết</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label" >Trạng thái</label>
              <select class="form-control" id="exampleSelect2" required >
                <option>-- Chọn trạng thái --</option>
                <option>Trạng thái 1</option>
                <option>Trạng thái 2</option>
              </select>
            </div>
            <div class="form-group  col-md-12">
              <label class="control-label">Nội dung</label>
              <textarea class="form-control" ></textarea>
            </div>
          </form>
        </div>
        <button class="btn btn-save" type="button">Lưu lại</button>
        <a class="btn btn-cancel" href="./table-data-report.jsp">Hủy bỏ</a>
      </div>
    </div>
  </div>
</main>


<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>

<!-- up load ảnh  -->
<script>
  function readURL(input, thumbimage) {
    if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
      var reader = new FileReader();
      reader.onload = function (e) {
        $("#thumbimage").attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
    else { // Sử dụng cho IE
      $("#thumbimage").attr('src', input.value);

    }
    $("#thumbimage").show();
    $('.filename').text($("#uploadfile").val());
    $('.Choicefile').css('background', '#14142B');
    $('.Choicefile').css('cursor', 'default');
    $(".removeimg").show();
    $(".Choicefile").unbind('click');

  }
  $(document).ready(function () {
    $(".Choicefile").bind('click', function () {
      $("#uploadfile").click();

    });
    $(".removeimg").click(function () {
      $("#thumbimage").attr('src', '').hide();
      $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
      $(".removeimg").hide();
      $(".Choicefile").bind('click', function () {
        $("#uploadfile").click();
      });
      $('.Choicefile').css('background', '#14142B');
      $('.Choicefile').css('cursor', 'pointer');
      $(".filename").text("");
    });
  })
</script>

</body>

</html>
