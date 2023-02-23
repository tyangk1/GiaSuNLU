<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/" var="url"/>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="header.jsp"></jsp:include>
<main class="app-content">
    <div class="row">
        <div class="col-md-12">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="#"><b>Báo cáo

                    </b></a></li>
                </ul>
                <div id="clock"></div>
            </div>
        </div>
    </div>

    <!--Left-->
    <div class="col-md-12 ">
        <div class="row">
            <!-- col-5 -->
            <div class="col-md-6">
                <div class="widget-small primary coloured-icon"><i class='icon bx bxs-user-account fa-3x'></i>
                    <div class="info">
                        <h4>Tổng khách hàng</h4>
                        <p><b>${countCustomer}</b></p>
                        <p>Tổng số tiền:<span>${costCustomer}</span></p>
                    </div>
                </div>
            </div>
            <!-- col-5-->
            <div class="col-md-6">
                <div class="widget-small info coloured-icon"><i class='icon bx bxs-user-account fa-3x'></i>
                    <div class="info">
                        <h4>Tổng gia sư </h4>
                        <p><b>${countTeacher} gia sư </b></p>
                        <p>Tổng số tiền:<span>${costTeacher}</span></p>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <!--END left-->
    <!--Right-->
    <div class="col-md-12 col-md-6">
        <div class="row">
            <div class="col-md-12 col-lg-6 ">
                <div class="tile">
                    <h3 class="tile-title">Thống kê 6 tháng doanh thu </h3>
                    <div class="embed-responsive embed-responsive-16by9">
                        <canvas class="embed-responsive-item" id="lineChartDemo"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-lg-6 ">
                <div class="tile">
                    <h3 class="tile-title">Thống kê theo năm </h3>
                    <div class="embed-responsive embed-responsive-16by9">
                        <canvas width="450" height="450" class="embed-responsive-item "
                                id="doughnut-chart"></canvas>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--END right-->
    </div>


</main>
<script src="${url}/js/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="${url}/js/popper.min.js"></script>
<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
<!--===============================================================================================-->
<script src="${url}/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="${url}/js/main.js"></script>
<!--===============================================================================================-->
<script src="${url}/js/plugins/pace.min.js"></script>
<!--===============================================================================================-->
<%--<script type="text/javascript" src="${url}/js/plugins/chart.js"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!--===============================================================================================-->
<!-- Biểu đồ 6 tháng  -->
<script>
    var chartMonthData = ${chartMonth};
    const ctx = document.getElementById('lineChartDemo');

    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: chartMonthData.labels,
            datasets: [{
                label: '$',
                data: chartMonthData.data,
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>

<!-- Biểu đồ năm  -->
<script>
    let chartYearData = ${chartYear};

    const ctxd = document.getElementById('doughnut-chart');

    new Chart(ctxd, {
        type: 'doughnut',
        data: {
            labels: chartYearData.labels,
            datasets: [{
                label: '$',
                data: chartYearData.data,
                backgroundColor: [
                    'rgb(255, 99, 132)',
                    'rgb(54, 162, 235)',
                    'rgb(255, 205, 86)'
                ],
                hoverOffset: 4
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

</script>

<script type="text/javascript">
    //Thời Gian
    function time() {
        var today = new Date();
        var weekday = new Array(7);
        weekday[0] = "Chủ Nhật";
        weekday[1] = "Thứ Hai";
        weekday[2] = "Thứ Ba";
        weekday[3] = "Thứ Tư";
        weekday[4] = "Thứ Năm";
        weekday[5] = "Thứ Sáu";
        weekday[6] = "Thứ Bảy";
        var day = weekday[today.getDay()];
        var dd = today.getDate();
        var mm = today.getMonth() + 1;
        var yyyy = today.getFullYear();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        nowTime = h + " giờ " + m + " phút " + s + " giây";
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        today = day + ', ' + dd + '/' + mm + '/' + yyyy;
        tmp = '<span class="date"> ' + today + ' - ' + nowTime +
            '</span>';
        document.getElementById("clock").innerHTML = tmp;
        clocktime = setTimeout("time()", "1000", "Javascript");

        function checkTime(i) {
            if (i < 10) {
                i = "0" + i;
            }
            return i;
        }
    }
</script>
</body>

</html>