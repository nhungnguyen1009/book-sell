<%@ page import="nlu.edu.fit.bookstore.utils.Utils" %><%--
  Created by IntelliJ IDEA.
  User: PHUONG ANH
  Date: 1/2/2021
  Time: 2:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav-left-sidebar sidebar-dark">
    <div class="menu-list">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="d-xl-none d-lg-none" href="#">Sản phẩm</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav flex-column">
                    <li class="nav-divider">
                        Menu
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link active" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i
                                class="fa fa-fw fa-user-circle"></i>Sản phẩm <span
                                class="badge badge-success">6</span></a>
                        <div id="submenu-1" class="collapse submenu">
                            <ul class="nav flex-column">

                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPathAdmin("product")%>">Quản lý sản phẩm</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPath("admin/product/add")%>">Thêm sản phẩm</a>
                                </li>

                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i
                                class="fa fa-fw fa-rocket"></i>Đơn hàng</a>
                        <div id="submenu-2" class="collapse submenu">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPathAdmin("order")%>">Quản lý đơn hàng <span
                                            class="badge badge-secondary">New</span></a>
                                </li>



                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i
                                class="fas fa-fw fa-chart-pie"></i>Nhân viên</a>
                        <div id="submenu-3" class="collapse submenu">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPathAdmin("staff")%>">Quản lý nhân viên</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPathAdmin("staff/add")%>">Thêm nhân viên</a>
                                </li>

                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-0" aria-controls="submenu-0"><i class="fas fa-fw fa-chart-pie"></i>Tài
                            khoản</a>
                        <div id="submenu-0" class="collapse submenu">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPathAdmin("user")%>">Quản lý Tài khoản</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPathAdmin("user/add")%>">Thêm Tài khoản</a>
                                </li>

                            </ul>
                        </div>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i
                                class="fab fa-fw fa-wpforms"></i>Nhà sản xuất</a>
                        <div id="submenu-4" class="collapse submenu">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPathAdmin("publisher")%>">Quản lý nhà sản xuất</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=Utils.fullPathAdmin("publisher/add")%>">Thêm nhà sản xuất</a>
                                </li>

                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
