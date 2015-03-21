<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="footer">
    <div class="left_footer">
        <img src="<%=request.getContextPath()%>/images/footer_logo.gif" alt="" title="" />
        <br />
    </div>
    <div class="right_footer">
        <a href="<%=request.getContextPath()%>/index.jsp">Trang chủ</a>
        <a href="<%=request.getContextPath()%>/book/view.jsp">Sách</a>
        <a href="<%=request.getContextPath()%>/ebook/view.jsp">Ebook</a>
        <a href="#">Liên hệ</a>

    </div>
</div>
<script>
    var url = window.location.href.toLowerCase();
    $("#menu ul li a").each(function () {
        if (url.indexOf(this.href.toLowerCase()) > -1) {
            $(this).parent().addClass("selected");
        }
    });
</script>