/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.user;

import dao.user.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.user.Address;
import model.user.NameSurname;
import model.user.User;

/**
 *
 * @author Duy Buffet
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            request.setCharacterEncoding("UTF-8");
            String username = (String) request.getParameter("username");
            String pass = (String) request.getParameter("password");
            String email = (String) request.getParameter("email");
            String firstname = (String) request.getParameter("firstname");
            String midname = (String) request.getParameter("midname");
            String lastname = (String) request.getParameter("lastname");
            String day = (String) request.getParameter("day");
            String month = (String) request.getParameter("month");
            String year = (String) request.getParameter("year");
            String dob = year + "-" + month + "-" + day;
            String house_no = (String) request.getParameter("house_no");
            String town = (String) request.getParameter("town");
            String district = (String) request.getParameter("district");
            String city = (String) request.getParameter("city");
            int gender = Integer.parseInt((String) request.getParameter("gender"));
            Address add = new Address(house_no,town,district,city);
            NameSurname name_surname = new NameSurname(firstname,midname,lastname);
            User u = new User(username,pass,email,dob,gender,add,name_surname);
            UserDAO dao = new UserDAO();
            dao.addUser(u);
            response.sendRedirect("index.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
