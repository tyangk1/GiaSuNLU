<%@ page import="com.nlu.fit.giasunlu.model.Subject" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Danh sách lớp mới</title>
    <link rel="shortcut icon" type="image/png" href="${url}img/logo.png"/>
    <link href="${url}css/bootstrap.css" rel="stylesheet">
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
                <li class="breadcrumb-item active" aria-current="page">Danh sách lớp mới</li>
            </ol>
        </nav>

        <div class="row">
            <div class="col-lg-4">
                <h1 class="h2">Danh sách lớp mới</h1>
            </div>
            <div class="col-lg-8 pt-lg-3">
            </div>
        </div>
        <form method="GET" action="${pageContext.request.contextPath}/class">
            <div class="mt-4 mb-4">
                <div role="search">
                    <input type="text" class="search-input" name="keyword" placeholder="Tìm kiếm lớp gia sư ...">
                    <button type="submit" class="search-btn">
                        <i class="fas fa-search"></i>
                        <span class="lg-only">Tìm kiếm</span>
                    </button>
                </div>
            </div>

            <div>
                <h5 class="text-primary"><i class="fas fa-filter"></i> Bộ lọc</h5>
                <div role="filter" class="filters">
                    <div class="form-row filter-group">
                        <div class="col-lg-3 filter-parent">
                            <div class="filter-title">
                                <span class="filter-notice">Chọn</span> môn học
                            </div>
                            <div class="filter-menu none" style="display: none;">
                                <%
                                    List<Subject> subjects = (List<Subject>) request.getAttribute("subjects");
                                    String[] idSubjects = request.getParameterValues("idSubject");
                                    for (Subject subject : subjects) {
                                        out.println("<div>");
                                        out.print("<div class=\"form-check\" mb-2>");
                                        out.print("<input class=\"form-check-input\" type=\"checkbox\" name=\"idSubject\" value=\"" + subject.getId() + "\"");
                                        if (idSubjects != null) {
                                            for (String idSubject : idSubjects) {
                                                if (idSubject.equals(subject.getId() + "")) {
                                                    out.print(" checked");
                                                    break;
                                                }
                                            }
                                        }
                                        out.print(">");
                                        out.println(" <span class=\"checkmark\"></span>");
                                        out.println("<span>" + subject.getName() + "</span>");
                                        out.println("</div>");
                                        out.println("</div>");
                                    }
                                %>

                                <hr class="mt-2 mb-1">
                                <div class="filter-action">
                                    <span class="filter-clear">Clear</span>
                                    <span class="filter-shortened">Thu gọn <icon
                                            class="icon-angle-up ml-1"></icon></span>
                                </div>
                            </div>
                        </div>

                        <div class="mt-3 mt-lg-0 col-lg-2 filter-parent">
                            <div class="filter-title">
                                <span class="filter-notice">Chọn</span> cấp học
                            </div>
                            <% String[] levels = request.getParameterValues("level"); %>
                            <div class="filter-menu none" style="display: none;">
                                <div>
                                    <div class="form-check mb-2">
                                        <input type="checkbox" name="level" value="0" <%
                                            if (levels != null) {
                                                for (String level : levels) {
                                                    if (level.equals("0")) {
                                                        out.print(" checked");
                                                        break;
                                                    }
                                                }
                                            }
                                        %>>
                                        <span class="checkmark"></span>
                                        <span>Mầm non</span>
                                    </div>
                                </div>
                                <div>
                                    <div class="form-check mb-2">
                                        <input type="checkbox" name="level" value="1"
                                            <%

                                            if (levels != null) {
                                                for (String level : levels) {
                                                    if (level.equals("1")) {
                                                        out.print(" checked");
                                                        break;
                                                    }
                                                }
                                            }
                                        %>>
                                        <span class="checkmark"></span>
                                        <span>Cấp 1</span>
                                    </div>
                                </div>
                                <div>
                                    <div class="form-check mb-2">
                                        <input type="checkbox" name="level" value="2"  <%

                                            if (levels != null) {
                                                for (String level : levels) {
                                                    if (level.equals("2")) {
                                                        out.print(" checked");
                                                        break;
                                                    }
                                                }
                                            }
                                        %>>
                                        <span class="checkmark"></span>
                                        <span>Cấp 2</span>
                                    </div>
                                </div>
                                <div>
                                    <div class="form-check mb-2">
                                        <input type="checkbox" name="level" value="3"
                                            <%

                                            if (levels != null) {
                                                for (String level : levels) {
                                                    if (level.equals("3")) {
                                                        out.print(" checked");
                                                        break;
                                                    }
                                                }
                                            }
                                        %>>
                                        <span class="checkmark"></span>
                                        <span>Cấp 3</span>
                                    </div>
                                </div>
                                <div>
                                    <div class="form-check mb-2">
                                        <input type="checkbox" name="level" value="4"
                                            <%

                                            if (levels != null) {
                                                for (String level : levels) {
                                                    if (level.equals("4")) {
                                                        out.print(" checked");
                                                        break;
                                                    }
                                                }
                                            }
                                        %>>
                                        <span class="checkmark"></span>
                                        <span>Sau cấp 3</span>
                                    </div>
                                </div>
                                <hr class="mt-2 mb-1">
                                <div class="filter-action">
                                    <span class="filter-clear">Clear</span>
                                    <span class="filter-shortened">Thu gọn <i class="fas fa-chevron-up ml-1"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="mt-3 mt-lg-0 col-lg-2 filter-parent">
                            <select class="form-select" style="padding: 0.373em 0.75em;" name="cost" aria-label="Default select example">
                                <% String cost = request.getParameter("cost");
                                    String[] costs = {"150000", "250000", "500000"};
                                    out.print("<option value=\"all\"");

                                    out.print(">Tất cả </option>");
                                    for (String c : costs) {
                                        out.print("<option value=\"" + c + "\"");
                                        if (cost != null && cost.equals(c)) {
                                            out.print(" selected");
                                        }
                                        out.print(">" + "Dưới " + c + "</option>");
                                    }
                                %>
                            </select>
                        </div>
                        <div class="mt-3 mt-lg-0 col-lg-2 mb-3 text-right text-lg-left">
                            <button class="btn filter-btn"><i class="fas fa-filter"></i> Tiến hành lọc</button>
                        </div>

                    </div>

                </div>
            </div>
        </form>
    </section>
    <section class="container">

        <div class="row mt-3 pt-3 myclass-for-tutor-field">
            <c:if test="${classes==null || classes.isEmpty()}">
                <div class="col-12">
                    <div class="alert alert-warning" role="alert">
                        Không có lớp nào phù hợp với tiêu chí lọc của bạn
                    </div>
                </div>
            </c:if>
            <c:forEach items="${classes}" var="theClass">
                <div class="col-lg-3">
                    <div class="myclass-item text-small">
                        <div class="myclass-item-head d-flex">
                            <a href="${pageContext.request.contextPath}/class-detail?id=${theClass.getId()}" class="mr-auto" rel="nofollow">
                                <span class="font-weight-bold">${theClass.getId()}</span>
                            </a>
                        </div>
                        <div class="myclass-item-body">
                            <p class="p-icon mb-2">
                                <i class="fas fa-book text-muted text-small"></i>
                                <b>${theClass.getClassName()}</b>
                            </p>
                            <p class="p-icon mb-2">
                                <i class="fas fa-book text-muted text-small"></i>
                                <b>${theClass.getSubject().getName()}</b>
                            </p>
                            <p class="p-icon mb-2">
                                <i class="fas fa-map-marker-alt text-muted text-small"></i>${theClass.getAddress()}</p>
                            <p class="p-icon mb-2">
                                <i class="fas fa-bookmark text-muted text-small"></i>
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
                                    Cấp 4
                                </c:if>
                            </p>
                            <p class="p-icon mb-2">
                                <i class="fas fa-dollar-sign text-muted text-small"></i>
                                    ${theClass.getCost()} ₫/buổi, 1 buổi/tuần
                            </p>
                            <div class="text-right mt-3">
                                <a href="${pageContext.request.contextPath}/class-detail?id=${theClass.getId()}" class="btn btn-success" rel="nofollow">Xem
                                    chi tiết<i
                                            class="fas fa-arrow-right ml-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
</main>
<jsp:include page="footer.jsp"/>

</body>
</html>

