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
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
                                        src="https://i.pinimg.com/564x/f1/39/32/f13932f4ad04c5652aa8357ba33721ff.jpg"
                                        width="50px"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name"><b>Thanh Huệ</b></p>
            <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
        </div>
    </div>
    <hr>
    <ul class="app-menu">

        <li><a class="app-menu__item" href="./turnover.jsp"><i
                class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">Báo cáo doanh thu</span></a>
        </li>

        <li><a class="app-menu__item " href="./report_management.jsp"><i
                class='app-menu__icon bx bx-tachometer'></i><span
                class="app-menu__label">Báo cáo doanh số</span></a></li>

        <li><a class="app-menu__item " href="./table-data-tutor.jsp"><i class='app-menu__icon bx bx-id-card'></i>
            <span class="app-menu__label">Quản lý gia sư</span></a></li>

        <li><a class="app-menu__item" href="./table-data-customer.jsp"><i
                class='app-menu__icon bx bx-user-voice'></i><span
                class="app-menu__label">Quản lý khách hàng</span></a></li>

        <li><a class="app-menu__item" href="./table-data-class.jsp"><i class='app-menu__icon bx bx-task'></i><span
                class="app-menu__label">Quản lý lớp học</span></a></li>

        <li><a class="app-menu__item" href="./login.jsp"><i class='app-menu__icon bx bx-cog'></i><span
                class="app-menu__label">Đăng xuất</span></a></li>
    </ul>
</aside>

