<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <jsp:include page="includes/lib.jsp" />
    <body>
        <div id="wrap">
            <jsp:include page="includes/header.jsp" />
            <div class="center_content">
                <div class="left_content" style="text-align: center">
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <form method="post" action="Login">
                                <div class="form-group">
                                    <label ><strong>Tài khoản: </strong></label>
                                    <input required type="text" class="form-control" name="username" />
                                </div>
                                <div class="form-group">
                                    <label >Mật khẩu: </label>
                                    <input required type="password" class="form-control" name="password" />
                                </div>
                                <button class="btn btn-primary" type="submit"> Đăng nhập </button>
                                <div class="clear"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <!--end of left content-->
                <jsp:include page="includes/right-side.jsp" />
                <div class="clear"></div>
            </div>
            <!--end of center content-->
            <jsp:include page="includes/footer.jsp" />
        </div>
    </body>
    <script src="js/insert-form.js"></script>
</html>

