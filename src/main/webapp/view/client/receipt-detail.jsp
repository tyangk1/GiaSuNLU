<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Chi tiết thanh toán</title>
  <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>

<style>
  table {
    width: 800px;
    font-size: 16px;
    line-height: 1.6;
    font-weight: bold;
    border-spacing: 0;
    position: relative;
    left: 415px;
    margin-left: -242px;
  }
  tr {
    color: #d4d4d4;
  }
  th:first-child, td:first-child{
    text-align: left;
    color: #979797;
  }
  th:last-child, td:last-child{
    text-align: right;
    color: #4F4F4F;
  }
  th, td{
    font-weight: bold;
    color: #D6D6D6;
  }
  .receipt-box {
     padding: 50px 0;
    border: 1px solid #d8d8d8;
    -moz-box-shadow: 0 0 20px rgba(0,0,0,.15);
    -webkit-box-shadow: 0 0 20px rgb(0 0 0 / 15%);
    box-shadow: 0 0 20px rgb(0 0 0 / 15%);
  }
</style>

<body>
<jsp:include page="header.jsp"/>
<main role="main">
  <div class="container text-center receipt-box">
    <h2>Thanh toán thành công. Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi</h2>
    <div class="receipt mt-5">
      <h3 class="mt-3 mb-3">Chi tiết hoá đơn:</h3>
      <table>
        <tbody>
        <tr>
          <td>Bên cung cấp dịch vụ</td>
          <td>GIASUNLU</td>
        </tr>
        <tr>
          <td>Người sử dụng dịch vụ</td>
          <td>${payer.firstName} ${payer.lastName}</td>
        </tr>
        <tr>
          <td>Mô tả</td>
          <td>${transaction.description}</td>
        </tr>
        <tr>
          <td>Ước tính</td>
          <td>${transaction.amount.details.subtotal} USD</td>
        </tr>
        <tr>
          <td>Thuế</td>
          <td>${transaction.amount.details.tax} USD</td>
        </tr>
        <tr>
          <td>Tổng cộng</td>
          <td>${transaction.amount.total} USD</td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>
