<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Lịch sử nạp xu</title>
  <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
</head>
<style>
  body {
    margin:0;
    padding:0;
    font-family:'Open Sans', sans-serif;
    color:#444444;
    font-size:16px;
  }
  .container {
    line-height:1.5em;
    margin:auto;
    width:95%;
    max-width:1000px;
  }
  h1, h2 {
    float:left;
    font-weight:normal;
    font-size:2em;
  }
  h2 {
    float:right;
    font-size:1.5em;
  }
  header:before,
  header:after {
    content: " "; /* 1 */
    display: table; /* 2 */
  }

  header:after {
    clear: both;
  }

  header {
    *zoom: 1;
  }
  table {
    border-collapse:collapse;
    border-spacing:0;
    width:100%;
    background:#ffffff;
  }

  th {
    background:#3c7d37;
    color:#ffffff;
  }

  td, th {
    padding:0.5em 1em;
    text-align:left;
    vertical-align:top;
  }
  #transData tr.active td {
    background:#ffff75;
  }
  tbody th {
    background:#2ea879;
  }
  tbody tr:nth-child(2n-1) {
    background:#f1fff1;
    -webkit-transition:all 100ms ease;
    -moz-transition:all 100ms ease;
    -o-transition:all 100ms ease;
    transition:all 100ms ease;
  }
  tbody tr:hover {
    background-color:#ffffbf;
    cursor:cell;
  }
  .stt{
    width: 5%;
  }
  .date, .total {
    width:15%;
  }
  .description {
    width:25%;
    text-transform:capitalize;
  }
  .method {
    width:20%;
  }
</style>
<body>
  <jsp:include page="header.jsp"/>
  <main role="main">
    <div class="container">
      <header>
        <h1>Lịch sử biến động xu</h1>
      </header>
      <div class="wrapper">
        <table>
          <thead>
          <tr>
            <th class="stt">STT</th>
            <th class="date">Ngày</th>
            <th class="total">Số xu</th>
            <th class="description">Nội dung</th>
            <th class="method">Phương thức thanh toán</th>
          </tr>
          </thead>
          <tbody id="transData">


            <c:forEach items="${list}" var="item" varStatus="myIndex" >

          <tr>
            <td class="stt"><c:out value="${myIndex.index+1}"/></td>
            <td class="date"><c:out value="${item.date}"/></td>
            <c:choose>
              <c:when test="${item.type < 1}">
                <td class="total" style="color: green">+<c:out value="${item.coin}"/></td>
              </c:when>
              <c:otherwise>
                <td class="total" style="color: red">-<c:out value="${item.coin}"/></td>
              </c:otherwise>
            </c:choose>
            <td class="description"><c:out value="${item.content}"/></td>
            <td class="method"><c:out value="${item.paymentMethod}"/></td>
          </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </main>
  <jsp:include page="footer.jsp"/>
</body>
</html>
