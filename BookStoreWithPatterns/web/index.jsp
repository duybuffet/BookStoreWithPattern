<%-- 
    Document   : index
    Created on : Mar 15, 2015, 3:31:45 PM
    Author     : Duy Buffet
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.book.BookDAO"%>
<%@page import="model.book.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BookDAO dao = new BookDAO();
    ArrayList<Book> arrBook = dao.getAllBook();
%>
<!DOCTYPE html>
<html>
    <jsp:include page="includes/lib.jsp" />

    <body>
        <div id="wrap">
            <jsp:include page="includes/header.jsp" />
            <div class="center_content">
                <div class="left_content">
                    <%
                        for (Book book : arrBook) {
                    %>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading" style="text-align: center;">
                                <strong style="font-size:20px;"><%=book.getTitle().getName()%></strong>
                            </div>
                            <div class="panel-body">
                                <img src="<%=request.getContextPath()%>/cover/<%=book.getImageUrl()%>" height="150" class="col-md-6 pull-left" alt="<%=book.getTitle().getName()%>"/>
                                <!--<img src="cover/big_pic.jpg" alt="abc"/>-->
                                <p>Tác giả: <%=book.getAuthor().getAuthorName()%></p>
                                <p>Thể loại: <%=book.getCategory().getName()%></p>
                                <p>Giá: <%=book.getPrice()%></p>
                                <p>
                                    <a href="<%=request.getContextPath()%>/CartController?action=add&id=<%=book.getBookId()%>">
                                        <button class="btn btn-warning">Cho vào giỏ</button>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <div class="clear"></div>
                </div><!--end of left content-->
                <jsp:include page="includes/right-side.jsp" />
                <div class="clear"></div>

            </div><!--end of center content-->
            <jsp:include page="includes/footer.jsp" />
        </div><!--end of wrap-->
    </body>
</html>