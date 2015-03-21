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
                    <form action="UploadServlet" method="post"
                          enctype="multipart/form-data">
                        <input type="file" name="file" size="50" />
                        <br />
                        <input type="submit" value="Upload File" />
                    </form>
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
    <script src="js/insert-form.js"></script>
</html>

