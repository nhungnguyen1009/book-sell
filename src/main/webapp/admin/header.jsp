<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="dashboard-header">
    <nav class="navbar navbar-expand-lg bg-white fixed-top">
        <a class="navbar-brand" href="index.jsp">Admin JB BookStore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto navbar-right-top">
                <li class="nav-item">
                    <div id="custom-search" class="top-search-bar">
                        <input class="form-control" type="text" placeholder="Tìm kiếm..">
                    </div>
                </li>
                <li class="nav-item dropdown notification">
                    <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                    <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                        <li>
                            <div class="notification-title"> Thông báo</div>
                            <div class="notification-list">
                                <div class="list-group">
                                    <a href="#" class="list-group-item list-group-item-action active">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Quốc</span>đã chấp nhận lời mời tham gia nhóm
                                                <div class="notification-date">2 phút trước</div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="#" class="list-group-item list-group-item-action">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Phuong Anh </span>đang theo dõi bạn.
                                                <div class="notification-date">2 ngày trước</div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="#" class="list-group-item list-group-item-action">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Nhung</span> đang xem kho lưu trữ chính của bạn.
                                                <div class="notification-date">2 phút trước</div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="#" class="list-group-item list-group-item-action">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Tùng</span>đã chấp nhận lời mời của bạn.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="list-footer"> <a href="#">Xem tất cả thông tin</a></div>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown connection">
                    <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                    <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                        <li class="connection-list">
                            <div class="row">
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                    <a href="#" class="connection-item"><img src="assets/images/github.png" alt=""> <span>Github</span></a>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                    <a href="#" class="connection-item"><img src="assets/images/dribbble.png" alt=""> <span>Facbook</span></a>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                    <a href="#" class="connection-item"><img src="assets/images/dropbox.png" alt=""> <span>Gmail</span></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                    <a href="#" class="connection-item"><img src="assets/images/bitbucket.png" alt=""> <span>Google drive</span></a>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                    <a href="#" class="connection-item"><img src="assets/images/mail_chimp.png" alt=""><span>Firebase</span></a>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                    <a href="#" class="connection-item"><img src="assets/images/slack.png" alt=""> <span>SQL</span></a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="conntection-footer"><a href="#">Thêm</a></div>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown nav-user">
                    <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                    <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                        <div class="nav-user-info">
                            <h5 class="mb-0 text-white nav-user-name">Phương Anh </h5>
                            <span class="status"></span><span class="ml-2">Đang đăng nhập</span>
                        </div>
                        <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Tài khoản</a>
                        <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Cài đặt</a>
                        <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Đăng xuất</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</div>
       