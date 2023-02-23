<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Chi tiết lớp học</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
    <link rel="stylesheet" href="${url}css/comment.css">
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
                <li class="breadcrumb-item"><a href="new-class-list.jsp">Danh sách lớp mới</a></li>
                <li class="breadcrumb-item active" aria-current="page">${theClass.getId()}</li>
            </ol>
        </nav>
        <div class="row mt-3">

            <div class="col-lg-6 mt-2 mb-5">
                <div class="pr-lg-5">
                    <h1 class="h2 mb-3">Chi tiết lớp: ${theClass.getId()}</h1>
                    <p class="mb-4 text-muted">
                        <span>Tình trạng:</span>
                        <c:if test="${theClass.getStatus() == 1}">
                            <span class="text-success">Còn nhận</span>
                        </c:if>
                        <c:if test="${theClass.getStatus() == 0}">
                            <span class="text-success">Không nhận</span>
                        </c:if>
                        <c:if test="${theClass.getStatus() == 2}">
                            <span class="text-success">Kết thúc</span>
                        </c:if>
                    </p>
                    <p class="p-icon mb-2 h4">
                        Tên lớp: ${theClass.getClassName()}
                    </p>
                    <p class="p-icon mb-2 h4">
                        Địa điểm: ${theClass.getAddress()}
                    </p>
                    <p class="p-icon mb-2 h4">
                        Học phí: ${theClass.getCost()} ₫/buổi, 1 buổi/tuần
                    </p>
                    <p class="p-icon mb-2 h4">

                        Cấp học:
                        <c:if test="${theClass.getLevel()==0}">
                            Mẫu giáo
                        </c:if>
                        <c:if test="${theClass.getLevel()==1}">
                            Cấp 1
                        </c:if>
                        <c:if test="${theClass.getLevel()==2}">
                            Cấp 2
                        </c:if>
                        <c:if test="${theClass.getLevel()==3}">
                            Cấp 3
                        </c:if>
                        <c:if test="${theClass.getLevel()==4}">
                            Sau cấp 3
                        </c:if>
                    </p>
                    <p class="p-icon mb-2 h4">
                        Môn học: ${theClass.getSubject().getName()}
                    </p>
                    <p class="mb-4"></p>
                    <div class="my-4">
                        <a href="${pageContext.request.contextPath}/class/register?id=${theClass.getId()}"
                           class="btn btn-cta py-2 px-5 font-weight-bold"
                                <c:if test="${theClass.getStatus()!=0}">
                                    disabled
                                </c:if>>
                            <span class="my-lead">Đăng ký nhận lớp</span>
                        </a>
                    </div>
                </div>
            </div><!-- End Col -->

            <div class="col-lg-6 mt-3 mt-lg-0 mb-5">
                <div class="googlemap-myclass-wrap">
                    <iframe data-address="Đại Từ" data-district="Hoàng Mai" data-province="Hà Nội"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.5211043352224!2d105.82964117512755!3d20.971738530663327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac57046165bd%3A0x8384714fc59a6d86!2zxJDhuqFpIFThu6ssIMSQ4bqhaSBLaW0sIEhvw6BuZyBNYWksIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1668265118092!5m2!1svi!2s"
                            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <p class="text-muted mt-4 mb-0">Lưu ý: bản đồ thể hiện địa chỉ lớp gia sư một cách tương đối.</p>
            </div><!-- End Col -->
        </div>
        <!-- Strat comment  -->


        <div class="row mt-3">
            <div class="h4 font-weight-bold"> Mô tả lớp học</div>
            <div class="col-lg-12 mt-3 mt-lg-0 mb-5">
                <div class="googlemap-myclass-wrap">
                    <p class="p-icon mb-2 h4">
                        ${theClass.getBriefDesc()}
                    </p>
                </div>
        </div>
        <hr>
        <!-- Strat comment  -->

        <!-- End comment -->
        <hr>

        <div class="container my-5 related_myclass_field">


            <div class="row mt-3">

            </div>
            <div class="row mt-3">
                <h3> Bình luận </h3>
                <div class="row mt-3 w-100 mb-3">

                    <div class="form-outline mb-4 col-12">
                        <textarea placeholder="Bình luận" class="form-control" id="comment" rows="3"></textarea>
                    </div>
                    <button type="button" onclick="comment()" class="btn btn-primary btn-block mb-4 p-2">Bình luận
                    </button>
                </div>

                <div id="comments" class="comment-thread w-100">
                    <!-- Comment 1 start -->
                    <details open class="comment" id="comment-1">
                        <summary>
                            <div class="comment-heading">

                                <div class="comment-info">
                                    <a href="#" class="comment-author">someguy14</a>
                                </div>
                            </div>
                        </summary>

                        <div class="comment-body">
                            <p>
                                Tôi cần tìm 1 gia sư tiếng Anh là sinh viên ngoại ngữ ( Dạy bán thời gian). Cần học
                                tiếng
                                Anh giao
                                tiếp.
                            </p>
                            <button class="btn success h6" style="color: orange;" type="button" data-toggle="reply-form"
                                    data-target="comment-1-reply-form">Phản hồi
                            </button>
                            <!-- Reply form start -->
                            <form method="POST" class="reply-form d-none" id="comment-1-reply-form">
                                <textarea name="content" placeholder="Trả lời bình luận" rows="4"></textarea>
                                <button class="btn success h6" style="color: orange;" type="submit">Đăng</button>
                                <button class="btn success h6" style="color: orange;" type="button"
                                        data-toggle="reply-form"
                                        data-target="comment-1-reply-form">Huỷ
                                </button>
                            </form>
                            <!-- Reply form end -->
                        </div>

                        <div class="replies">
                            <!-- Comment 2 start -->
                            <details open class="comment" id="comment-2">
                                <summary>
                                    <div class="comment-info">
                                        <a href="#" class="comment-author">Ngọc Nguyễn</a>
                                    </div>

                                </summary>

                                <div class="comment-body">
                                    <p>
                                        Cám ơn bạn đã để lại thông tin trên website.
                                    </p>
                                </div>
                            </details>
                        </div>
                    </details>

                    <!-- Comment 1 end -->
                </div>
            </div>
            <!-- End comment -->
            <div class="row mt-3 w-100">
                <div class="h4 font-weight-bold">Báo cáo bài viết</div>
                <div class="form-outline mb-4 col-12">
                    <textarea class="form-control" id="textAreaExample6" rows="3"></textarea>
                </div>
                <button type="button" onclick="report()" class="btn btn-primary btn-block mb-4">Gửi báo cáo</button>
            </div>
            <hr>
            <div class="container my-5 related_myclass_field">
                <h2 class="h3 mb-4">Các lớp tương tự:</h2>
                <div class="row">
                    <c:forEach items="${suggest}" var="i">
                        <div class="col-lg-3">
                            <div class="myclass-item text-small">
                                <div class="myclass-item-head d-flex">
                                    <a href="/class-detail?id=${i.getId()}" class="mr-auto" rel="nofollow">
                                        <span class="font-weight-bold">${i.getId()}</span>
                                    </a>
                                </div>
                                <div class="myclass-item-body">
                                    <p class="p-icon mb-2">
                                        <i class="fas fa-book text-muted text-small"></i>
                                        <b>${i.getClassName()}</b>
                                    </p>
                                    <p class="p-icon mb-2">
                                        <i class="fas fa-book text-muted text-small"></i>
                                        <b>${i.getSubject().getName()}</b>
                                    </p>
                                    <p class="p-icon mb-2">
                                        <i class="fas fa-map-marker-alt text-muted text-small"></i>${i.getAddress()}</p>
                                    <p class="p-icon mb-2">
                                        <i class="fas fa-bookmark text-muted text-small"></i>
                                        <c:if test="${i.getLevel()==0}">
                                            Mẫu giáo
                                        </c:if>
                                        <c:if test="${i.getLevel()==1}">
                                            Cấp 1
                                        </c:if>
                                        <c:if test="${i.getLevel()==2}">
                                            Cấp 2
                                        </c:if>
                                        <c:if test="${i.getLevel()==3}">
                                            Cấp 3
                                        </c:if>
                                        <c:if test="${i.getLevel()==4}">
                                            Cấp 4
                                        </c:if>
                                    </p>
                                    <p class="p-icon mb-2">
                                        <i class="fas fa-dollar-sign text-muted text-small"></i>
                                            ${i.getCost()} ₫/buổi, 1 buổi/tuần
                                    </p>
                                    <div class="text-right mt-3">
                                        <a href="${pageContext.request.contextPath}/class-detail?id=${i.getId()}" class="btn btn-success" rel="nofollow">Xem
                                            chi tiết<i
                                                    class="fas fa-arrow-right ml-2"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="footer.jsp"/>
<script>
    $(document).ready(function () {
        registerReply();
    });

    function registerReply() {
        $(".reply-form").submit(function (event) {

            /* stop form from submitting normally */
            event.preventDefault();
            console.log("submit");

            /* get the action attribute from the <form action=""> element */
            var $form = $(this),
                url = $form.attr('action');

            /* Send the data using post with element id name and name2*/

            $.ajax({
                type: "POST",
                url: '${pageContext.request.contextPath}/class/comment/reply',
                data: $form.serialize(),
                success: function (data) {
                    if (data === 'success') {
                        alert('Bình luận cho chúng tôi');
                        $('#textAreaExample6').val('');
                        loadComment();
                    } else {
                        alert('Bình luận không thành công');
                    }
                }
            });
        });
    }
</script>

<script>
    function report() {
        let report = $('#textAreaExample6').val();
        let id = ${theClass.getId()};
        $.ajax({
            url: '${pageContext.request.contextPath}/class/report-class',
            type: 'POST',
            data: {
                content: report,
                portId: id,
            },
            success: function (data) {
                if (data === 'success') {
                    alert('Cảm ơn bạn đã góp ý cho chúng tôi');
                    $('#textAreaExample6').val('');
                } else {
                    alert('Góp ý không thành công');
                }
            }
        })
    }
</script>

<script>
    function report() {
        let report = $('#textAreaExample6').val();
        let id = ${theClass.getId()};
        $.ajax({
            url: '${pageContext.request.contextPath}/class/report-class',
            type: 'POST',
            data: {
                content: report,
                portId: id,
                userId: ${sessionScope.account.id}
            },
            success: function (data) {
                if (data === 'success') {
                    alert('Cảm ơn bạn đã góp ý cho chúng tôi');
                    $('#textAreaExample6').val('')
                    registerReply();
                } else {
                    alert('Góp ý không thành công');
                }
            }
        })
    }
</script>
<script>

    document.addEventListener(
        "click",
        function (event) {
            var target = event.target;
            var replyForm;
            if (target.matches("[data-toggle='reply-form']")) {
                replyForm = document.getElementById(target.getAttribute("data-target"));
                replyForm.classList.toggle("d-none");
            }
        },
        false
    );

</script>
<script>
    loadComment();

    function loadComment() {
        console.log("load comment");
        $.ajax({
            url: '${pageContext.request.contextPath}/class/comment/load',
            type: 'GET',
            data: {
                classId: ${theClass.getId()},
            },
            success: function (data) {
                $('#comments').html('');

                $('#comments').html(data);
                console.log("load comment success");
                registerReply();
            }
        })
    }
</script>
<script>
    function comment() {
        let comment = $('#comment').val();
        $.ajax({
            url: '${pageContext.request.contextPath}/class/comment/add',
            type: 'POST',
            data: {
                content: comment,
                postId:${theClass.getId()},
                userId: ${sessionScope.account.id},
            },
            success: function (data) {
                if (data === 'success') {
                    alert('Cảm ơn bạn đã bình luận cho chúng tôi');
                    $('#comment').val('');
                    loadComment();
                } else {
                    alert('Bình luận không thành công');
                }
            }
        })
    }
</script>
</body>
</html>