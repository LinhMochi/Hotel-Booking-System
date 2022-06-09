/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import Model.User;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import SMTP.GmailAPI;
import java.sql.Date;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Linh
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {

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
        request.setCharacterEncoding("utf-8");
        GmailAPI gmail = new GmailAPI();
        UserDAO ud = new UserDAO();
        User u = new User();
        int check = 0;
        u.setEmail(request.getParameter("email"));
        u.setPassword(request.getParameter("password"));
        u.setFullName(request.getParameter("fullName"));
        u.setDob(Date.valueOf(request.getParameter("dob")));
        u.setAddress((request.getParameter("address")+","+request.getParameter("city")).trim());
        u.setPhoneNumber(request.getParameter("phone"));
        u.setAvatar(request.getParameter("url-image"));
        u.setGender(Integer.parseInt(request.getParameter("gender")));
        u.setRole("Customer");
        u.setStatus("Active");
        check = ud.create_User(u);
        if(check==0){
            request.setAttribute("message", "Tạo tài khoản thành công");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
//            try {
//                    String gmailFrom = "swp391.e2.g5@gmail.com";
//                    String password = "LinhLVT2509";
//                    String [] name = request.getParameter("fullName").split("\\s+");
//                    String mailTo = request.getParameter("email");
//                    String subject = "Welcome";
//                    String message = "Xin chào " + name[name.length-1] + ", Bạn đã tạo tài khoản thành công tại Hbooker!";
//                    //send mail
//                    gmail.send(mailTo, subject, message, gmailFrom, password);
//                } 
//            catch (MessagingException ex) {
//                    Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
//            }
        } else{
            request.setAttribute("message", "Email đã tồn tại! Đăng ký không thành công");
            request.getRequestDispatcher("register.jsp").forward(request, response);
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
