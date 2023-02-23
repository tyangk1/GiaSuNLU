
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<html>
<head>
    <title>Nạp xu</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>

<body>
    <style>
    .custom_value{
        opacity: 1!important;
        z-index: 1;
    }
    </style>
    <jsp:include page="header.jsp"/>
    <div class="container mt-5">
        <div class="head-coin">
            <img class="coin-img" src="${url}img/coin-794.png" alt="">
            <div class="coin-title"> Nạp Xu </div>
            <div class="coin-hr"></div>
            <a class="refresh_1 refresh_2">
                <span class="refresh_img"></span>
                <span class="refresh"> Làm mới </span>
            </a>
        </div>

        <div class="payment_logo">
            <div class="payment_logo_1">
                <div class="payment_logo_2">
                    <div class="payment_logo_3">
                        <div class="payment_logo_4">
                            <div class="payment_logo_5">
                                <div class="payment_logo_6">
                                    <img class="payment_logo_img" src="https://s6.upanh.pro/2019/09/23/paypal-logo.png">
                                </div>
                            </div>
                        </div>
                        <div class="payment_logo_4">
                            <div class="payment_logo_5">
                                <div class="payment_logo_6">
                                    <img class="payment_logo_img" src="https://cdngarenanow-a.akamaihd.net/webmain/static/payment_center/vn/menu/vn_new_atm_140x87.png">
                                </div>
                            </div>
                        </div>
                        <div class="payment_logo_4">
                            <div class="payment_logo_5">
                                <div class="payment_logo_6">
                                    <img class="payment_logo_img" src="https://cdngarenanow-a.akamaihd.net/webmain/static/payment_center/vn/menu/vnpay_pc.png">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="payment_heading">Thanh toán tiện dụng với PayPal.</div>
        </div>
        <div>
        <div class="payment_content mb-5">
            <div class="payment_content_table">
                <div class="payment_content_table_1">
                    <div class="payment_content_table_2">
                        <div class="table_price">Giá</div>
                        <div class="table_point">Thêm điểm</div>
                    </div>
                    <div class="table_trans">
                        <a class="row_table" onclick="radioClick1()">
                            <input class="select_price" type="radio" name="payment-count">
                            <div class="radio_se"></div>
                            <div class="row_value choice1 custom_value"></div>
                            <div class="row_value_1">
                                <div class="row_value_2">
                                    <span class="price_value x_price1">1</span>
                                    <span class="price_value ">$</span>
                                </div>
                                <div class="coin_value">
                                    <div>Xu ×<span class="x_coin1 ">25</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="row_table" onclick="radioClick2()">
                            <input class="select_price" type="radio" name="payment-count">
                            <div class="radio_se"></div>
                            <div class="row_value choice2"></div>
                            <div class="row_value_1">
                                <div class="row_value_2">
                                    <span class="price_value x_price2">4</span>
                                    <span class="price_value ">$</span>
                                </div>
                                <div class="coin_value">
                                    <div>Xu ×<span class="x_coin2 ">100</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="row_table" onclick="radioClick3()">
                            <input class="select_price" type="radio" name="payment-count">
                            <div class="radio_se"></div>
                            <div class="row_value choice3" ></div>
                            <div class="row_value_1">
                                <div class="row_value_2">
                                    <span class="price_value x_price3">8</span>
                                    <span class="price_value ">$</span>
                                </div>
                                <div class="coin_value">
                                    <div>Xu ×<span class="x_coin3 ">200</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="row_table" onclick="radioClick4()">
                            <input class="select_price" type="radio" name="payment-count">
                            <div class="radio_se"></div>
                            <div class="row_value choice4" ></div>
                            <div class="row_value_1">
                                <div class="row_value_2">
                                    <span class="price_value x_price4">16</span>
                                    <span class="price_value ">$</span>
                                </div>
                                <div class="coin_value">
                                    <div >Xu ×<span class="x_coin4 ">400</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="row_table" onclick="radioClick5()">
                            <input class="select_price" type="radio" name="payment-count">
                            <div class="radio_se" ></div>
                            <div class="row_value choice5" ></div>
                            <div class="row_value_1">
                                <div class="row_value_2">
                                    <span class="price_value x_price5">20 </span>
                                    <span class="price_value ">$</span>
                                </div>
                                <div class="coin_value">
                                    <div >Xu ×<span class="x_coin5 ">500</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="row_table" onclick="radioClick6()">
                            <input class="select_price" type="radio" name="payment-count">
                            <div class="radio_se"></div>
                            <div class="row_value choice6"></div>
                            <div class="row_value_1">
                                <div class="row_value_2">
                                    <span class="price_value x_price6">40</span>
                                    <span class="price_value ">$</span>
                                </div>
                                <div class="coin_value">
                                    <div >Xu ×<span class="x_coin6 ">1000</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="row_table" onclick="radioClick7()">
                            <input class="select_price" type="radio" name="payment-count">
                            <div class="radio_se"></div>
                            <div class="row_value choice7"></div>
                            <div class="row_value_1">
                                <div class="row_value_2">
                                    <span class="price_value x_price7">80 </span>
                                    <span class="price_value ">$</span>
                                </div>
                                <div class="coin_value">
                                    <div >Xu ×<span class="x_coin7 ">2000</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="middle_payment"></div>
            <div class="payment_details">
                <form method="post" action="${pageContext.request.contextPath}/authorize-payment">
<%--                    <input type = "hidden" name = "user_id" value = "${sessionScope.account.id}">--%>
                    <input type = "hidden" name = "user_id" value = "1">
                <div class="payment_detail">
                    <div class="payment_detail_title">Chi tiết giao dịch</div>
                    <div class="payment_info mb-1">
                        <div class="payment_info_1">
                            <div class="payment_info_2">
                                <div class="payment_info_2_title">Sản phẩm được chọn</div>
                                <div class="payment_info_2_value">
                                    <div class="payment_info_2_value1">
                                        <div>
                                            <img src="${url}img/coin-794.png" alt="" class="payment_info_2_img">
                                            <input class="coin_s" value="25" name="coin" type="text">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="payment_info_1">
                            <div class="payment_info_2">
                                <div class="payment_info_2_title">Giá</div>
                                <div class="payment_info_2_value">
                                    <div class="payment_info_2_value1">
                                        <input class="price_s" value="1" name="amount" type="text" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="payment_info_1">
                            <div class="payment_info_2">
                                <div class="payment_info_2_title">Phương thức thanh toán</div>
                                <div class="payment_info_2_value">
                                    <input class="payment_info_2_value1" value="PayPal" name="payment_method" type="text" >
                                </div>
                            </div>
                        </div>
                        <div class="payment_info_1">
                            <div class="payment_info_2">
                                <div class="payment_info_2_title">Tên tài khoản</div>
                                <div class="payment_info_2_value">
                                    <input class="payment_info_2_value1" value="${sessionScope.account.firstName} ${sessionScope.account.lastName}" name="user_name" type="text" >
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="submit" value="Xử lý thanh toán" class="btn btn-primary mt-4 font-weight-bold">
                </div>
                </form>>
            </div>
        </div>
    </div>
    </div>

    <jsp:include page="footer.jsp"/>

    <script>
        function radioClick1(){
            $("div.choice1").addClass("custom_value");
            $("div.choice2").removeClass("custom_value");
            $("div.choice3").removeClass("custom_value");
            $("div.choice4").removeClass("custom_value");
            $("div.choice5").removeClass("custom_value");
            $("div.choice6").removeClass("custom_value");
            $("div.choice7").removeClass("custom_value");
            let text = $("span.x_coin1").text();
            $("input.coin_s").val(text);
            let price = $("span.x_price1").text();
            $("input.price_s").val(price);
        }
        function radioClick2(){
            $("div.choice1").removeClass("custom_value");
            $("div.choice2").addClass("custom_value");
            $("div.choice3").removeClass("custom_value");
            $("div.choice4").removeClass("custom_value");
            $("div.choice5").removeClass("custom_value");
            $("div.choice6").removeClass("custom_value");
            $("div.choice7").removeClass("custom_value");
            let text = $("span.x_coin2").text();
            $("input.coin_s").val(text);
            let price = $("span.x_price2").text();
            $("input.price_s").val(price);
        }
        function radioClick3(){
            $("div.choice1").removeClass("custom_value");
            $("div.choice3").addClass("custom_value");
            $("div.choice2").removeClass("custom_value");
            $("div.choice4").removeClass("custom_value");
            $("div.choice5").removeClass("custom_value");
            $("div.choice6").removeClass("custom_value");
            $("div.choice7").removeClass("custom_value");
            let text = $("span.x_coin3").text();
            $("input.coin_s").val(text);
            let price = $("span.x_price3").text();
            $("input.price_s").val(price);
        }
        function radioClick4(){
            $("div.choice1").removeClass("custom_value");
            $("div.choice4").addClass("custom_value");
            $("div.choice3").removeClass("custom_value");
            $("div.choice2").removeClass("custom_value");
            $("div.choice5").removeClass("custom_value");
            $("div.choice6").removeClass("custom_value");
            $("div.choice7").removeClass("custom_value");
            let text = $("span.x_coin4").text();
            $("input.coin_s").val(text);
            let price = $("span.x_price4").text();
            $("input.price_s").val(price);
        }
        function radioClick5(){
            $("div.choice1").removeClass("custom_value");
            $("div.choice5").addClass("custom_value");
            $("div.choice3").removeClass("custom_value");
            $("div.choice4").removeClass("custom_value");
            $("div.choice2").removeClass("custom_value");
            $("div.choice6").removeClass("custom_value");
            $("div.choice7").removeClass("custom_value");
            let text = $("span.x_coin5").text();
            $("input.coin_s").val(text);
            let price = $("span.x_price5").text();
            $("input.price_s").val(price);
        }
        function radioClick6(){
            $("div.choice1").removeClass("custom_value");
            $("div.choice6").addClass("custom_value");
            $("div.choice3").removeClass("custom_value");
            $("div.choice4").removeClass("custom_value");
            $("div.choice5").removeClass("custom_value");
            $("div.choice2").removeClass("custom_value");
            $("div.choice7").removeClass("custom_value");
            let text = $("span.x_coin6").text();
            $("input.coin_s").val(text);
            let price = $("span.x_price6").text();
            $("input.price_s").val(price);
        }
        function radioClick7(){
            $("div.choice1").removeClass("custom_value");
            $("div.choice7").addClass("custom_value");
            $("div.choice3").removeClass("custom_value");
            $("div.choice4").removeClass("custom_value");
            $("div.choice5").removeClass("custom_value");
            $("div.choice6").removeClass("custom_value");
            $("div.choice2").removeClass("custom_value");
            let text = $("span.x_coin7").text();
            $("input.coin_s").val(text);
            let price = $("span.x_price7").text();
            $("input.price_s").val(price);
        }
    </script>
</body>
</html>
