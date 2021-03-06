/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import Model.User;
import SMTP.GmailAPI;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
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
@WebServlet(name = "ChangePasswordController", urlPatterns = {"/changepassword"})
public class ChangePasswordController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        UserDAO ud = new UserDAO();
        String newpass = request.getParameter("newpass");
        String renewpass = request.getParameter("renewpass");
        String email = ((User) session.getAttribute("user")).getEmail();
        GmailAPI gmail = new GmailAPI();

        if (!newpass.equals(renewpass)) {
            request.setAttribute("message", "Passwords don’t match!");
            request.getRequestDispatcher("changepassword").forward(request, response);
        } else {
//            try {
//                String gmailFrom = "swp391.e2.g5@gmail.com";     
//                String password = "LinhLVT2509";
//                String mailTo = request.getParameter("email");
//                String subject = "Welcome";
//                String message = "Hello " + request.getParameter("email") + ", you have successfully update password!";
//
//                //send mail
//                gmail.send(mailTo, subject, message, gmailFrom, password);
//            } catch (MessagingException ex) {
//                Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
//            }
            ud.updateUserPassword(email, newpass);
            session.removeAttribute("user");
            request.setAttribute("message","Đổi mật khẩu thành công");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        if(request.getSession().getAttribute("user") == null) response.sendRedirect("login");
        else request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
//        request.getSession().setAttribute("user", new User("chungna153@gmail.com"));
        
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
