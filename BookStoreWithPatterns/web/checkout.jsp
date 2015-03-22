<%-- 
    Document   : index
    Created on : Nov 16, 2014, 11:44:05 PM
    Author     : Tcat
--%>

<%@page import="dao.book.BookDAO"%>
<%@page import="model.book.Book"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="model.business.ICart"%>
<%@page import="model.user.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    User user = null;
    ICart cart = null;
    HashMap<Integer, Integer> listBookId = null;
    if (session.getAttribute("user") != null) {
        user = (User) session.getAttribute("user");
        if (session.getAttribute("cart") == null || session.getAttribute("cart").equals("")) {
            response.sendRedirect("index.jsp");
        } else {
            cart = (ICart) session.getAttribute("cart");
            listBookId = cart.getListBook();
            if (listBookId.isEmpty()) {
                response.sendRedirect("index.jsp");
            }
        }
    }
%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <jsp:include page="includes/lib.jsp" />
    <body>
        <div id="wrap">
            <jsp:include page="includes/header.jsp" />
            <div class="center_content">
                <div class="left_content">
                    <% if (user != null) {%>
                    <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Địa chỉ giao hàng</div>
                    <div class="feat_prod_box_details">
                        <div class="contact_form">
                            <div class="form_subtitle">Vui lòng nhập thông tin của bạn</div>
                            <form name="register" method="post" action="OrderController?action=add">          
                                <div class="form_row">
                                    <label class="form-group"><strong>Tên đầy đủ người nhận: </strong></label>
                                    <input required type="text" class="form-control" pattern="[A-Za-z0-9]+" name="name" />
                                </div>  
                                <div class="form_row">
                                    <label class="form-group"><strong>Địa chỉ người nhận: </strong></label>
                                    <input required type="text" class="form-control" pattern="[A-Za-z0-9]+" name="address" />
                                </div> 

                                <div class="form_row">
                                    <label class="form-group"><strong>Số điện thoại người nhận: </strong></label>
                                    <input required type="text" class="form-control" pattern="[0-9]+" name="phone" />
                                </div> 

                                <div class="form_row">
                                    <label class="form-group"><strong>Ghi chú: </strong></label>
                                    <textarea class="form-control" name="note"></textarea>
                                </div>                                 

                                <div class="col-md-11">                                       
                                    <table class="table">
                                        <tr>
                                            <td>Tên sách</td>
                                            <td>Tác giả</td>
                                            <td>Giá bán</td>
                                            <td>Số lượng</td>
                                            <td>Thành tiền</td>                                    
                                        </tr>
                                        <%
                                            Float total = 0F;
                                            if (cart != null) {
                                                Iterator it = listBookId.entrySet().iterator();
                                                while (it.hasNext()) {
                                                    Map.Entry pair = (Map.Entry) it.next();
                                                    Book book = new BookDAO().getBookById((Integer) pair.getKey());
                                                    int qtt = (Integer) pair.getValue();
                                                    total += book.getPrice() * qtt;
                                                    if (qtt > 0) {
                                        %>
                                        <tr>
                                            <td><%=book.getTitle().getName()%></td>
                                            <td><%=book.getAuthor().getAuthorName()%></td>
                                            <td><%=book.getPrice()%></td>
                                            <td><%=qtt%></td>
                                            <td><%=book.getPrice() * qtt%></td>
                                        </tr>                                        
                                        <%
                                                    }
                                                }
                                            }
                                        %>
                                        <input type="hidden" name="total" value="<%=total%>">
                                            <tr>
                                                <td colspan="4">Tổng tiền</td>
                                                <td><%=total%></td>
                                            </tr>

                                    </table>
                                </div>
                                <div class="form_row">
                                    <button class="btn btn-success">Đặt hàng</button>
                                </div> 
                            </form>     
                        </div>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Bạn cần <a style="text-decoration: underline;" href="<%=request.getContextPath()%>/login.jsp">đăng nhập</a> để hoàn tất việc đặt hàng. Nếu chưa có tài khoản, xin mời đăng ký <a style="text-decoration: underline;" href="<%=request.getContextPath()%>/register.jsp">tại đây</a>.</div>
                    <%
                        }
                    %>
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

