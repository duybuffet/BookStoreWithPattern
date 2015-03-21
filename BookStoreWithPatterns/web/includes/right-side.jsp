<%@page import="model.book.Category"%>
<%@page import="model.book.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.book.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>

<!-- Nội dung cột bên phải -->
<div class="right_content">
    <!-- Khuy?n m?i -->
    <!-- Th? lo?i -->
    <div class="right_box">
        <div class="title">
            <span class="title_icon">
                <img src="<%=request.getContextPath()%>/images/bullet5.gif" alt="" title="" />
            </span>Thể loại</div>
        <ul class="list">
            <%
                CategoryDAO dao = new CategoryDAO();
                ArrayList<Category> arrCate = dao.getAllCategories();
                for (Category cate : arrCate) {
            %>
            <li>
                <a href="<%=request.getContextPath()%>/ebook/search.jsp?id=<%=cate.getId()%> "><%=cate.getName()%> </a>
            </li>
            <%
                }
            %>
        </ul>
    </div>
    <div class="right_box">
        <div class="title">
            <span class="title_icon">
                <img src="<%=request.getContextPath()%>/images/bullet4.gif" alt="" title="" />
            </span>Khuyến mại</div>
        <div class="new_prod_box">
            <a href="details.html">product name</a>
            <div class="new_prod_bg">
                <span class="new_icon">
                    <img src="<%=request.getContextPath()%>/images/promo_icon.gif" alt="" title="" />
                </span>
                <a href="details.html">
                    <img src="<%=request.getContextPath()%>/images/thumb1.gif" alt="" title="" class="thumb" border="0" />
                </a>
            </div>
        </div>
        <div class="new_prod_box">
            <a href="details.html">product name</a>
            <div class="new_prod_bg">
                <span class="new_icon">
                    <img src="<%=request.getContextPath()%>/images/promo_icon.gif" alt="" title="" />
                </span>
                <a href="details.html">
                    <img src="<%=request.getContextPath()%>/images/thumb2.gif" alt="" title="" class="thumb" border="0" />
                </a>
            </div>
        </div>
        <div class="new_prod_box">
            <a href="details.html">product name</a>
            <div class="new_prod_bg">
                <span class="new_icon">
                    <img src="<%=request.getContextPath()%>/images/promo_icon.gif" alt="" title="" />
                </span>
                <a href="details.html">
                    <img src="<%=request.getContextPath()%>/images/thumb3.gif" alt="" title="" class="thumb" border="0" />
                </a>
            </div>
        </div>
    </div>

</div>
<!--end of right content-->
