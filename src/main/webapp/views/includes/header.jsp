<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:url var="homeUrl" value="${applicationScope.url['url.home']}"/>
<c:url var="contactUrl" value="${applicationScope.url['url.contact']}"/>
<c:url var="aboutUrl" value="${applicationScope.url['url.about']}"/>

<!--HTML-->
<header class="header position-relative">
    <!--Style-->
    <style>

        header .navbar-wrapper {
            background-color: var(--custom-bg-primary);
        }

        header .fixed-navbar.fixed-top {
            opacity: 0;
            display: none;
            transition: all ease .25s;
            background-color: var(--custom-bg-primary);
        }

        header .custom-navbar .nav-item .nav-link {
            color: white;
            display: flex;
            align-items: center;
            font-weight: 600;
            gap: 0.3rem;

            svg {
                display: none;
                width: 1.2rem;
                height: 1.2rem;
            }
        }

        header .custom-navbar .nav-item .nav-link:hover {
            opacity: 0.8;
        }

        header .custom-navbar .nav-item .nav-link.active {
            font-weight: bold;
            position: relative;
            color: white;
        }

        header .custom-navbar .nav-item .nav-link.active::after {
            content: "";
            width: 100%;
            height: 2px;
            background-color: white;
            position: absolute;
            bottom: 4px;
            left: 0;
        }

        header .dropdown:hover .dropdown-menu {
            display: block;
            margin-top: 0;
        }

        header .dropdown-menu .dropdown-item {
            background-color: transparent;
            color: white;
        }

        header .dropdown-menu .dropdown-item:hover {
            /*color: var(--custom-bg-primary);*/
            color: lightgray;
        }

    </style>

    <!--  Text uu dai  -->
    <div class="d-flex justify-content-center py-1 bg-secondary-subtle">
        <p class="small custom-text-primary fw-medium mb-0">Ưu đãi đặc biệt dành cho tài khoản mới.
            <span style="color: orangered">Giảm ngay 50%</span> cho đơn hàng đầu tiên.
        </p>
    </div>

    <!--  Search bar and other -->
    <div class="container-xl my-4">
        <div class="row align-items-center justify-content-center mx-auto col-11 col-lg-12">
            <a class="h1 text-decoration-none col-3 order-lg-0"
                    <c:url var="url" value="${applicationScope.url['url.home']}"/>
               href="${url}">
                <img src="https://www.crocodileinternational.com/img/crocodile-logo-1609222037.jpg" alt="Logo"
                     style="width: 15rem">
            </a>
            <form class="d-flex p-2 mt-2 mt-lg-0 rounded-5 col-lg col-12 order-lg-1 order-3 mx-3 bg-secondary-subtle"
                  role="search">
                <input id="search-bar" class="form-control shadow-none mx-2 border-0" style="background-color: inherit"
                       type="search"
                       placeholder="Tìm kiếm sản phẩm"
                       aria-label="Search">
                <button class="bg-transparent border-0 me-2" type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="1.3rem" height="1.3rem"
                         fill="gray">
                        <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path>
                    </svg>
                </button>
            </form>
            <!-- Account, Cart -->
            <div class="d-flex justify-content-around lh-1 text-nowrap col-3 col-lg-3 ms-auto me-5 gap-5 gap-lg-4 order-lg-2">
                <a href="<%-- TODO login.html--%>"
                   class="text-decoration-none position-relative custom-text-primary col-6">
                    <div class="d-flex align-items-center justify-content-end">
                        <div class="custom-icon" style="--size: 2rem">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-person-circle" viewBox="0 0 16 16">
                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"></path>
                                <path fill-rule="evenodd"
                                      d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"></path>
                            </svg>
                        </div>
                        <div class="ps-2">
                            <div class="small pb-1">Tài khoản</div>
                            <div class="pb-1 fw-semibold text-truncate" style="width: 10ch">Đăng nhập</div>
                        </div>
                    </div>
                </a>
                <a id="cart-toggle" class="text-decoration-none position-relative custom-text-primary col-6"
                   href="#offcanvasRight" role="button"
                   data-bs-toggle="offcanvas">
                    <div class="d-flex align-items-center justify-content-end">
                        <div class="custom-icon" style="--size: 2rem">
                            <span class="badge text-bg-danger position-absolute translate-middle rounded-pill">1</span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-bag" viewBox="0 0 16 16">
                                <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1m3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1z"></path>
                            </svg>
                        </div>
                        <div class="ps-2">
                            <div class="small pb-1">Giỏ hàng</div>
                            <div class="pb-1 fw-semibold text-truncate" style="width: 10ch">1.100.000<span>₫</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <!--  Navigation bar  -->
    <div class="navbar-wrapper">
        <div class="container-xl">
            <!-- normal navbar -->
            <nav class="navbar custom-navbar">
                <div class="d-flex flex-grow-1 justify-content-between">
                    <ul class="navbar-nav flex-grow-1 d-flex flex-row justify-content-center align-items-center gap-5 text-capitalize">
                        <li class="nav-item">
                            <a href="${homeUrl}" class="nav-link home-page ${param.activePage == 'home'? 'active' : ''}">
                                Trang chủ
                            </a>
                        </li>
                        <li class="nav-item position-relative dropdown">
                            <a href="#"
                               class="nav-link products-page ${param.activePage == 'product-list'? 'active' : ''}">
                                <div class="dropdown-toggle" data-bs-toggle="dropdown">Sản phẩm</div>
                            </a>
                            <ul class="dropdown-menu position-absolute rounded-0 custom-bg-primary-darker shadow-lg">
                                <c:forEach var="category" items="${applicationScope.categories}">
                                    <c:url var="categoryUrl" value="${applicationScope.url['url.category']}">
                                        <c:param name="id" value="${category.id}"/>
                                    </c:url>
                                    <li><a class="dropdown-item" href="${categoryUrl}">${category.name}</a></li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="${contactUrl}"
                               class="nav-link contact-page ${param.activePage == 'contact'? 'active' : ''}">
                                Liên hệ
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${aboutUrl}"
                               class="nav-link about-page ${param.activePage == 'about'? 'active' : ''}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-info-circle" viewBox="0 0 16 16">
                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"></path>
                                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"></path>
                                </svg>
                                Giới Thiệu
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- fixed top navbar -->
            <nav class="fixed-navbar fixed-top navbar custom-navbar shadow-lg px-0">
                <div class="container">
                    <div class="col-3">
                        <a href="${homeUrl}">
                            <img src="https://www.crocodileinternational.com/themes/crocs_child/assets/img/logo.svg"
                                 style="height: 2.5rem" alt="Logo">
                        </a>
                    </div>
                    <div class="col">
                        <ul class="navbar-nav flex-grow-1 d-flex flex-row justify-content-center align-items-center gap-5 text-capitalize">
                            <li class="nav-item">
                                <a href="${homeUrl}"
                                   class="nav-link home-page ${param.activePage == 'home'? 'active' : ''}">
                                    Trang chủ
                                </a>
                            </li>
                            <li class="nav-item position-relative dropdown">
                                <a href="#" class="nav-link products-page">
                                    <div class="dropdown-toggle" data-bs-toggle="dropdown">Sản phẩm</div>
                                </a>
                                <ul class="dropdown-menu position-absolute rounded-0 custom-bg-primary-darker shadow-lg">
                                    <c:forEach var="category" items="${applicationScope.categories}">
                                        <c:url var="categoryUrl" value="${applicationScope.url['url.category']}">
                                            <c:param name="id" value="${category.id}"/>
                                        </c:url>
                                        <li><a class="dropdown-item" href="${categoryUrl}">${category.name}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="${contactUrl}" class="nav-link contact-page ${param.activePage == 'contact'? 'active' : ''}">
                                    Liên hệ
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${aboutUrl}" class="nav-link about-page ${param.activePage == 'about'? 'active' : ''}">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                         class="bi bi-info-circle" viewBox="0 0 16 16">
                                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"></path>
                                        <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"></path>
                                    </svg>
                                    Giới Thiệu
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-3 d-flex justify-content-end gap-4">
                        <a role="button" class="my-auto" href="#">
                            <div class="custom-icon text-white" style="--size: 1.7rem">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="16" height="16"
                                     fill="currentColor">
                                    <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path>
                                </svg>
                            </div>
                        </a>

                        <a href="<%-- TODO: login url --%>">
                            <div class="custom-icon text-white" style="--size: 2rem">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"></path>
                                    <path fill-rule="evenodd"
                                          d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"></path>
                                </svg>
                            </div>
                        </a>
                        <a href="#offcanvasRight" role="button" data-bs-toggle="offcanvas">
                            <div class="custom-icon text-white" style="--size: 2rem">
                                <span class="badge text-bg-danger position-absolute translate-middle rounded-pill">1</span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-bag" viewBox="0 0 16 16">
                                    <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1m3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1z"></path>
                                </svg>
                            </div>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>


    <!--  Offcanvas Gio Hang  -->
    <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasRight">
        <div class="offcanvas-header">
            <div class="custom-icon me-1 position-relative" style="--size: 2rem">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                     class="bi bi-bag" viewBox="0 0 16 16">
                    <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1m3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1z"></path>
                </svg>
            </div>
            <h5 class="offcanvas-title fw-bold text-uppercase" id="offcanvasRightLabel">Giỏ hàng</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
        </div>
        <div class="offcanvas-body d-flex flex-column gap-3">
            <div class="border-bottom pb-3">
                <div class="row g-0">
                    <div class="col-2 me-3 position-relative">
                        <span class="position-absolute top-0 start-100 z-1 translate-middle badge rounded-pill bg-danger">
                            1
                        </span>
                        <div class="ratio ratio-1x1">
                            <img src="https://www.gento.vn/wp-content/uploads/2024/05/vi-da-ca-sau-nam-3.jpg"
                                 class="img-fluid border rounded-2" alt="">
                        </div>
                    </div>
                    <div class="col lh-1 my-auto">
                        <div class="w-100">
                            <div class="d-flex align-items-center">
                                <div class="me-2">
                                    <p class="fw-semibold mb-0 line-clamp-2"
                                       style="height: fit-content ;max-height: 2.5rem; line-height: 1.2">
                                        Ví gấp nam da cá sấu V7068
                                    </p>
                                    <p class="text-muted mt-1 mb-0">Da trơn</p>
                                </div>
                                <div class="ms-auto fw-medium fs-6">1.100.000<sup>₫</sup></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="p-3">
            <div class="d-flex gap-2 fw-bold">
                <p>Tổng:</p>
                <p>1.100.000<sup>₫</sup></p>
            </div>
            <a href="<%-- TODO: ../pages/cart-details.html--%>"
               class="btn custom-btn-primary mt-auto w-100 py-2 fw-medium">Xem chi
                tiết</a>
        </div>
    </div>
    <!--JavaScript-->
    <script>
        // "SCROLL EVENT" - Toggle fixed navbar
        window.addEventListener('scroll', function () {
            const fixedNavbar = $(".fixed-navbar");
            fixedNavbar.css('display', 'block');
            if (window.scrollY > 200) {
                fixedNavbar.css('opacity', '1');
            } else {
                fixedNavbar.css('display', 'none');
                fixedNavbar.css('opacity', '0');
            }
        });
    </script>
</header>