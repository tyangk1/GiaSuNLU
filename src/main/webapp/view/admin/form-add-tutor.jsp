<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/" var="url"/>
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


        <h3 class="tile-title">Tạo mới gia sư</h3>
        <div class="tile-body">
          <form class="row">
            <div class="form-group col-md-4">
              <label class="control-label">Mã gia sư</label>
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
              <input class="form-control" type="number" required>
            </div>
            <div class="form-group col-md-4">
              <label class="control-label">Ngày sinh</label>
              <input class="form-control" type="date">
            </div>
            <div class="form-group  col-md-3">
              <label class="control-label">Nơi sinh</label>
              <input class="form-control" type="text" required>
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
            <div class="form-group col-md-3">
              <label class="control-label">Giới tính</label>
              <select class="form-control" id="exampleSelect2" required>
                <option>-- Chọn giới tính --</option>
                <option>Nam</option>
                <option>Nữ</option>
              </select>
            </div>

    #uploadfile,
    .removeimg {
        display: none;
    }


      



            <div class="form-group  col-md-3">
              <label for="exampleSelect1" class="control-label">Công việc</label>
              <select class="form-control" id="exampleSelect1">
                <option>-- Công việc --</option>
                <option>Sinh viên</option>
                <option>Giáo viên</option>
                <option>Giáo viên đã về hưu</option>
                <option>Giảng viên</option>


              </select>
            </div>
            <div class="form-group col-md-3">
              <label class="control-label">Trinh độ</label>
              <select class="form-control" id="exampleSelect3">
                <option>-- Chọn trình độ --</option>
                <option>Tốt nghiệp Đại Học</option>
                <option>Tốt nghiệp Cao Đẳng</option>
                <option>Tốt nghiệp Phổ Thông</option>
                <option>Chưa tốt nghiệp</option>
                <option>Không bằng cấp</option>
              </select>
            </div>
            <div class="form-group col-md-12">
              <label class="control-label">Ảnh 3x4 nhân viên</label>
              <div id="myfileupload">
                <input type="file" id="uploadfile" name="ImageUpload" onchange="readURL(this);" />
              </div>
              <div id="thumbbox">
                <img height="300" width="300" alt="Thumb image" id="thumbimage" style="display: none" />
                <a class="removeimg" href="javascript:"></a>
              </div>
              <div id="boxchoice">
                <a href="javascript:" class="Choicefile"><i class='bx bx-upload'></i></a>
                <p style="clear:both"></p>
              </div>


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
            <li class="breadcrumb-item">Danh sách gia sư</li>
            <li class="breadcrumb-item"><a href="#">Thêm mới gia sư</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">

            <div class="tile">

                <h3 class="tile-title">Tạo mới gia sư</h3>
                <div class="tile-body">
                    <form class="row">
                        <div class="form-group col-md-4">
                            <label class="control-label">Mã gia sư</label>
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
                            <input class="form-control" type="number" required>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="control-label">Ngày sinh</label>
                            <input class="form-control" type="date">
                        </div>
                        <div class="form-group  col-md-3">
                            <label class="control-label">Nơi sinh</label>
                            <input class="form-control" type="text" required>
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
                        <div class="form-group col-md-3">
                            <label class="control-label">Giới tính</label>
                            <select class="form-control" id="exampleSelect2" required>
                                <option>-- Chọn giới tính --</option>
                                <option>Nam</option>
                                <option>Nữ</option>
                            </select>
                        </div>

                        <div class="form-group  col-md-3">
                            <label for="exampleSelect1" class="control-label">Công việc</label>
                            <select class="form-control" id="exampleSelect1">
                                <option>-- Công việc --</option>
                                <option>Sinh viên</option>
                                <option>Giáo viên</option>
                                <option>Giáo viên đã về hưu</option>
                                <option>Giảng viên</option>

                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label class="control-label">Trinh độ</label>
                            <select class="form-control" id="exampleSelect3">
                                <option>-- Chọn trình độ --</option>
                                <option>Tốt nghiệp Đại Học</option>
                                <option>Tốt nghiệp Cao Đẳng</option>
                                <option>Tốt nghiệp Phổ Thông</option>
                                <option>Chưa tốt nghiệp</option>
                                <option>Không bằng cấp</option>
                            </select>
                        </div>



                        <div class="form-group col-md-12">
                            <label class="control-label">Ảnh 3x4 nhân viên</label>
                            <div id="myfileupload">
                                <input type="file" id="uploadfile" name="ImageUpload" onchange="readURL(this);"/>
                            </div>
                            <div id="thumbbox">
                                <img height="300" width="300" alt="Thumb image" id="thumbimage" style="display: none"/>
                                <a class="removeimg" href="javascript:"></a>
                            </div>
                            <div id="boxchoice">
                                <a href="javascript:" class="Choicefile"><i class='bx bx-upload'></i></a>
                                <p style="clear:both"></p>
                            </div>

                        </div>
                    </form>
                </div>
                <button class="btn btn-save" type="button">Lưu lại</button>
                <a class="btn btn-cancel" href="./table-data-tutor.jsp">Hủy bỏ</a>
            </div>

          </form>
        </div>




        </div>
    </div>


    <button class="btn btn-save" type="button">Lưu lại</button>
    <a class="btn btn-cancel" href="./table-data-tutor.jsp">Hủy bỏ</a>
      </div>
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

<!-- up load ảnh  -->
<script>
    function readURL(input, thumbimage) {
        if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
            var reader = new FileReader();
            reader.onload = function (e) {
                $("#thumbimage").attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        } else { // Sử dụng cho IE
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