/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Linh
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

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
            HttpSession session = request.getSession(true);
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String login = request.getParameter("login");
            User user = new UserDAO().getUserByMail(email);
            if(user==null){
                request.setAttribute("message", "Email không tồn tại");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
            User u = new UserDAO().checkLogin(email, password);
            if (!user.getPassword().equals(password)) {
                request.setAttribute("message", "Email hoặc mật khẩu sai");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else {
                if (user.getStatus().equals("Banned")) {
                    request.setAttribute("message", "You have Banned");
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                } else if (user.getRole().equals("Admin")) {
                    session.setAttribute("user", user);
                    response.sendRedirect("HomeAdmin.jsp");
                } else if (user.getRole().equals("Manager")||user.getRole().equals("Customer")) {
                    session.setAttribute("user", user);
                    session.setAttribute("password", password);
                    response.sendRedirect("home");
                }
            }
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
//        processRequest(request, response);
            response.setContentType("text/html;charset=UTF-8");
            request.setAttribute("message", "na");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
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
