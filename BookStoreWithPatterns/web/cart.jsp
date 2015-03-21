<%-- 
    Document   : cart
    Created on : Mar 16, 2015, 10:53:57 AM
    Author     : Duy Buffet
--%>

<%@page import="dao.book.BookDAO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.business.Cart"%>
<%@page import="model.book.Book"%>
<%@page import="java.util.HashMap"%>
<%@page import="model.business.ICart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ICart cart = null;
    HashMap<Integer, Integer> listBookId = null;
    if (session.getAttribute("cart") != null) {
        cart = (ICart)session.getAttribute("cart");
        listBookId = cart.getListBook();
    } else {
        response.sendRedirect("index.jsp");
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
                <div class="left_content" style="text-align: center">
                    <div class="row">
                        <div class="col-md-11">               
                        <form method="post" action="CartController?action=update">
                            <table class="table">
                                <tr>
                                    <td>Tên sách</td>
                                    <td>Tác giả</td>
                                    <td>Giá bán</td>
                                    <td>Số lượng</td>
                                    <td>Thành tiền</td>                                    
                                </tr>
                                <%
                                    Iterator it = listBookId.entrySet().iterator();
                                    Float total = 0F;
                                    while (it.hasNext()) {
                                        Map.Entry pair = (Map.Entry)it.next();   
                                        Book book = new BookDAO().getBookById((Integer)pair.getKey());
                                        int qtt = (Integer)pair.getValue();
                                        total += book.getPrice() * qtt;
                                        if (qtt > 0) {
                                %>
                                <tr>
                                    <td><%=book.getTitle().getName()%></td>
                                    <td><%=book.getAuthor().getAuthorName()%></td>
                                    <td><%=book.getPrice()%></td>
                                    <td><input name="qtt<%=book.getBookId()%>" type="number" value="<%=qtt%>" style="width: 40px; margin-top: -5px; margin-bottom: -5px;"></td>
                                    <td><%=book.getPrice() * qtt%></td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                                <tr>
                                    <td colspan="4">Tổng tiền</td>
                                    <td><%=total%></td>
                                </tr>
                            </table>
                            <div class="col-md-8">
                                <a href="<%=request.getContextPath()%>/checkout.jsp"><button class="btn btn-success" type="submit"> Thanh toán </button></a>
                                <button class="btn btn-primary" type="submit"> Cập nhật </button>
                                <a href="<%=request.getContextPath()%>/CartController?action=delete"><button class="btn btn-danger" type="button"> Xóa giỏ hàng </button></a>
                                <a href="<%=request.getContextPath()%>/index.jsp"><button class="btn btn-info" type="button"> Mua tiếp </button></a>
                            </div>
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


