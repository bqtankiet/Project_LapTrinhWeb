
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="delCateUrl" value="${applicationScope.urls['admin.category.delete']}"/>
<!-- Content wrapper -->
<div class="content-wrapper">
    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4">
            <span class="text-muted fw-light">Quản lý danh mục /</span>
            Loại danh mục
        </h4>

        <!-- Bordered Table -->
        <div class="card">
            <div class="card-body">

                <div class="container">
                    <h2>Danh sách danh mục</h2>
                    <table class="table table-striped table-hover table-bordered mb-3 pt-3"
                           id="categories-table">
                        <thead class="table-primary">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên danh mục</th>
                            <th scope="col">Hình ảnh</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Tác vụ</th>

                        </tr>
                        </thead>
                        <tbody>

                        <!-- Category -->
                        <c:forEach items="${categories}" var="c">
                            <tr>
                                <th scope="row">${c.id}</th>
                                <td>${c.name}</td>
                                <td>
                                    <img style="max-height: 50px;" class="img-fluid"  src="<c:url value ="${c.image}" />" alt="">
                                </td>
                                <td>${c.active == 0 ? 'Ẩn' : 'Hiển thị'}</td>
                                <td>
                                    <div class="dropdown">
                                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown">
                                            <i class="bx bx-dots-vertical-rounded"></i>
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                    class="bx bx-edit-alt me-1"></i> Chỉnh sửa</a>
                                            <a class="dropdown-item" href="${delCateUrl}?cid=${c.id}">
                                                <i class="bx bx-trash me-1"></i>
                                                Xóa
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>

            </div>
            <!-- / Bordered Table -->
        </div>

    </div>
    <!-- Content wrapper -->
</div>