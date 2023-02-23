<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<head>
<body onload="time()" class="app sidebar-mini rtl">
<%--  <div onload="time()" class="app sidebar-mini rtl"></div>--%>
<jsp:include page="header.jsp"></jsp:include>
</head>
<main class="app-content">
    <div class="row">
        <div class="col-md-12">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="#"><b>Báo cáo doanh thu    </b></a></li>
                </ul>
                <div id="clock"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <div class="widget-small primary coloured-icon"><i class='icon  bx bxs-user fa-3x'></i>
                <div class="info">
                    <h4>Tổng gia sư</h4>
                    <p><b>60 gia sư</b></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small info coloured-icon"><i class='icon bx bxs-purchase-tag-alt fa-3x' ></i>
                <div class="info">
                    <h4>Tổng khách hàng</h4>
                    <p><b>100 khách hàng</b></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small warning coloured-icon"><i class='icon fa-3x bx bxs-shopping-bag-alt'></i>
                <div class="info">
                    <h4>Tổng lớp đã giao</h4>
                    <p><b>36 lớp</b></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small danger coloured-icon"><i class='icon fa-3x bx bxs-info-circle' ></i>
                <div class="info">
                    <h4>Tổng lớp chưa giao</h4>
                    <p><b>10 lớp</b></p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="tile">
                <h3 class="tile-title">DỮ LIỆU HÀNG THÁNG</h3>
                <div class="embed-responsive embed-responsive-16by9">
                    <canvas class="embed-responsive-item" id="lineChartDemo"></canvas>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="tile">
                <h3 class="tile-title">THỐNG KÊ DOANH SỐ</h3>
                <div class="embed-responsive embed-responsive-16by9">
                    <canvas class="embed-responsive-item" id="barChartDemo"></canvas>
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
<!-- Page specific javascripts-->
<script type="text/javascript" src="${url}/js/plugins/chart.js"></script>
<script type="text/javascript">
    var data = {
        labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
        datasets: [{
            label: "Dữ liệu đầu tiên",
            fillColor: "rgba(255, 255, 255, 0.158)",
            strokeColor: "black",
            pointColor: "rgb(220, 64, 59)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "green",
            data: [20, 59, 90, 51, 56, 100, 40, 60, 78, 53, 33, 81]
        },
            {
                label: "Dữ liệu kế tiếp",
                fillColor: "rgba(255, 255, 255, 0.158)",
                strokeColor: "rgb(220, 64, 59)",
                pointColor: "black",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "green",
                data: [48, 48, 49, 39, 86, 10, 50, 70, 60, 70, 75, 90]
            }
        ]
    };


    var ctxl = $("#lineChartDemo").get(0).getContext("2d");
    var lineChart = new Chart(ctxl).Line(data);

    var ctxb = $("#barChartDemo").get(0).getContext("2d");
    var barChart = new Chart(ctxb).Bar(data);
</script>
<!-- Google analytics script-->
<!-- <script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script> -->
</body>


</html>