<%-- 
    Document   : index
    Created on : Nov 16, 2014, 11:44:05 PM
    Author     : Tcat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <jsp:include page="includes/lib.jsp" />
    <body>
        <div id="wrap">
            <jsp:include page="includes/header.jsp" />
            <div class="center_content">
                <div class="left_content">
                    <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Đăng ký</div>
                    <div class="feat_prod_box_details">
                        <div class="contact_form">
                            <div class="form_subtitle">Tạo tài khoản mới</div>
                            <form name="register" method="post" action="Register">          
                                <div class="form_row">
                                    <label class="form-group"><strong>Tài khoản: </strong></label>
                                    <input required type="text" class="form-control" pattern="[A-Za-z0-9]+" name="username" />
                                </div>  
                                <div class="form_row">
                                    <label class="form-group"><strong>Mật khẩu: </strong></label>
                                    <input required type="password" class="form-control" name="password" />
                                </div> 
                                <div class="form_row">
                                    <label class="form-group"><strong>Email:</strong></label>
                                    <input required type="email" class="form-control" name="email"/>
                                </div>
                                <div class="form_row">
                                    <label class="form-group"><strong>Họ và tên: </strong></label>
                                    <input required type="text" name="firstname" size="10"/>
                                    <input required type="text" name="midname" size="10"/>
                                    <input required type="text" name="lastname" size="10"/>
                                </div>
                                <div class="form_row">
                                    <label class="form-group"><strong>Ngày sinh</strong></label>
                                    <select name="gender">
                                        <option value="1">Nam</option>
                                        <option value="2">Nử</option>
                                    </select>
                                </div>
                                <div class="form_row">
                                    <label class="form-group"><strong>Ngày sinh</strong></label>
                                </div>
                                <div class="form_row" style="float:right;margin-right:20px">
                                    <label>Ngày</label>
                                    <select name="day">
                                    </select>
                                    <label>Tháng</label>
                                    <select name="month">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    <label><strong> Năm</strong></label>
                                    <input required style="width: 90px;" type="text" name="year" size="20" />
                                </div>
                                <div class="form_row">
                                    <label class="form-group"><strong>Địa chỉ</strong></label>
                                </div>
                                <div class="form_row">
                                    <label class="form-group"><strong>Số nhà</strong></label>
                                    <input required type="text" name="house_no"/>
                                </div>
                                <div class="form_row">
                                    <label class="form-group"><strong>Phường: </strong></label>
                                    <input required type="text" name="district"/>
                                </div>
                                <div class="form_row">
                                    <label class="form-group"><strong>Thị xã, Thị trấn: </strong></label>
                                    <input required type="text" name="town"/>
                                </div>
                                <div class="form_row">
                                    <label class="form-group"><strong>Thành phố: </strong></label>
                                    <input required type="text" name="city"/>
                                </div>
                                <div class="form_row">
                                    <button class="btn btn-success">Đăng ký</button>
                                </div>   
                            </form>     
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <!--end of left content-->
                <jsp:include page="includes/right-side.jsp" />
                <div class="clear"></div>
            </div>
            <!--end of center content-->
            <jsp:include page="includes/footer.jsp" />
        </div>
    </body>
    <script src="includes/js/insert-form.js"></script>
</html>

