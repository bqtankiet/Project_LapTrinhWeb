<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="accountUrl" value="${applicationScope.urls['admin.account']}"/>
<c:url var="categoryUrl" value="${applicationScope.urls['admin.category']}"/>
<c:url var="productUrl" value="${applicationScope.urls['admin.product']}"/>
<c:url var="orderUrl" value="${applicationScope.urls['admin.order']}"/>
<c:url var="userUrl" value="${applicationScope.urls['admin.user']}"/>

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo">
        <a class="h1 text-decoration-none col-3 order-lg-0"

           href="${accountUrl} ">
            <img src="https://www.crocodileinternational.com/img/crocodile-logo-1609222037.jpg" alt="Logo"
                 style="width: 12rem">
        </a>

    </div>

    <ul class="menu-inner py-1">
        <!-- Account setting -->
        <li class="menu-item ${param.activePage == 'account' ? 'active' : ''}">
            <a href="${accountUrl}" class="menu-link">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div>Thông tin tài khoản</div>
            </a>
        </li>

        <!-- Category manager -->
        <li class="menu-item
            ${param.activePage == 'category' || param.activePage == 'product' ? 'active open' : ''}">
            <a href="javascript:void(0);" class="menu-link menu-toggle menu-drop">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div>Quản lý danh mục</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item ${param.activePage == 'category' ? 'active' : ''}">
                    <a href="${categoryUrl}" class="menu-link">
                        <div>Loại danh mục</div>
                    </a>
                </li>
                <li class="menu-item ${param.activePage == 'product' ? 'active' : ''}">
                    <a href="${productUrl}" class="menu-link">
                        <div>Sản phẩm</div>
                    </a>
                </li>

            </ul>
        </li>

        <!-- Extended components -->
        <li class="menu-item">
            <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Extended UI">Quản lý giao diện</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="#" class="menu-link">
                        <div data-i18n="Text Divider">Hình ảnh</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="#" class="menu-link">
                        <div data-i18n="Text Divider">Hỗ trợ trực tuyến</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="#" class="menu-link">
                        <div data-i18n="Text Divider">Thông tin</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="#" class="menu-link">
                        <div data-i18n="Text Divider">Nội dung khác</div>
                    </a>
                </li>
            </ul>
        </li>


        <!-- Information Manager -->
        <li class="menu-item
        ${param.activePage == 'orderlist' ? 'active open' : ''}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-box"></i>
                <div >Quản lý thông tin</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item ${param.activePage == 'orderlist' ? 'active' : ''}">
                    <a href="${orderUrl}" class="menu-link">
                        <div >Danh sách đơn hàng</div>
                    </a>
                </li>

            </ul>
        </li>

        <!-- Account setting -->
        <li class="menu-item">
            <a href="${userUrl}" class="menu-link">
                <i class="menu-icon tf-icons bx bx-crown"></i>
                <div >Quản lý người dùng</div>
            </a>
        </li>

    </ul>
</aside>
