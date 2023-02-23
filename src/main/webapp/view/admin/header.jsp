<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/12/2022
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/" var="url"/>


<html>
<head>
    <%--        <title>header</title>--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="${url}/css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!-- or -->
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
</head>
<!-- Navbar-->
<%--    <header class="app-header">--%>
<%--        <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"--%>
<%--                                        aria-label="Hide Sidebar"></a>--%>
<%--        <!-- Navbar Right Menu-->--%>
<%--        <ul class="app-nav">--%>
<%--        </ul>--%>
<%--    </header>--%>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
                                        src="https://i.pinimg.com/564x/f1/39/32/f13932f4ad04c5652aa8357ba33721ff.jpg"
                                        width="50px"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name"><b>Trường Giang</b></p>
            <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
        </div>
    </div>
    <hr>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="${pageContext.request.contextPath}/admin/dashboard"><i
                class='app-menu__icon bx bx-tachometer'></i><span class="app-menu__label">Bảng điều khiển</span></a>
        </li>
        <li><a class="app-menu__item" href="${pageContext.request.contextPath}/admin/turnover"><i
                class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">Báo cáo doanh thu</span></a>
        </li>

        <li><a class="app-menu__item " href="${pageContext.request.contextPath}/admin/report"><i class='app-menu__icon bx bx-tachometer'></i><span
                class="app-menu__label">Báo cáo</span></a></li>

        <li><a class="app-menu__item " href="${pageContext.request.contextPath}/admin/tutor"><i class='app-menu__icon bx bx-id-card'></i>
            <span class="app-menu__label">Quản lý gia sư</span></a></li>

        <li><a class="app-menu__item" href="${pageContext.request.contextPath}/admin/customer"><i class='app-menu__icon bx bx-user-voice'></i><span
                class="app-menu__label">Quản lý khách hàng</span></a></li>

        <li><a class="app-menu__item" href="${pageContext.request.contextPath}/admin/class"><i class='app-menu__icon bx bx-task'></i><span
                class="app-menu__label">Quản lý lớp học</span></a></li>

        <li><a class="app-menu__item" href="${pageContext.request.contextPath}/admin/logout"><i class='app-menu__icon bx bx-cog'></i><span
                class="app-menu__label">Đăng xuất</span></a></li>
    </ul>
</aside>

</html>
