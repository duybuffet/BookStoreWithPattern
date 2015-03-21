
<%@page import="model.user.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User u = (User) session.getAttribute("user");
%>
<%
    if (u == null) {
%>
<div id="right_tools">
    <ul>
        <li>
            <a class="register" href="<%=request.getContextPath()%>/register.jsp">
                Đăng ký
            </a>
        </li>
        <li>
            <a class="signup" href="<%=request.getContextPath()%>/login.jsp">
                Đăng nhập
            </a>
        </li>
    </ul>
</div>
<% } else {
%>
<div id="user_info">
    <p>Xin chào Thành viên</p>
    <p><%=u.getNameSurname().getFirstName()%> <%=u.getNameSurname().getMidName()%> <%=u.getNameSurname().getLastName()%> </p>
    <p><a href="<%=request.getContextPath()%>/cart/viewBookCart.jsp"><img src="<%=request.getContextPath()%>/images/cart.gif" /> Giỏ hàng</a></p>
    <p><a href="<%=request.getContextPath()%>/cart/view.jsp">Ebook đã mua</a>
    <% if(u.getPermission() > 1){
            %>
            <p><a href="<%=request.getContextPath()%>/admin">Quản trị</a>
            <%
        }
        %>
    <p><a href="<%=request.getContextPath()%>/UserController?action=logout">Đăng xuất</a>
        
</div>
<%
           }%>
<div class="header">
    <div class="logo">
        <a href="<%=request.getContextPath()%>/">
            <img src="<%=request.getContextPath()%>/images/logo.gif" alt="" title="" border="0" />
        </a>
    </div>
    <div id="menu">
        <ul>
            <li ><a href="<%=request.getContextPath()%>/index.jsp">Trang chủ</a>
            </li>
            <li><a href="<%=request.getContextPath()%>/book/view.jsp">Sách</a>
            </li>
            <li><a href="<%=request.getContextPath()%>/ebook/view.jsp">Ebook</a>
            </li>
            <li>
                <form action="ebook/search.jsp">
                    <input name="name" />
                    <input type="submit" value="tìm kiếm"/>
                </form>
            </li>
        </ul>
    </div>
</div>