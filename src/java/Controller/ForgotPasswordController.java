/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import Model.GenerateRandom;
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
@WebServlet(name = "ForgotPasswordController", urlPatterns = {"/forgotpassword"})
public class ForgotPasswordController extends HttpServlet {

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
        response.setContentType("application/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        UserDAO ud = new UserDAO();
        GmailAPI gmail = new GmailAPI();

//        if (!newpass.equals(renewpass)) {
//            request.setAttribute("invalid", "Passwords don’t match!");
//            request.getRequestDispatcher("forgotpassword").forward(request, response);
//        } else {
//            try {
//                String gmailFrom = "swp391.e2.g5@gmail.com";
//                String password = "LinhLVT2509";
//                String mailTo = request.getParameter("email");
//                String subject = "Welcome";
//                String message = "Hello " + request.getParameter("email") + ", you have successfully registered!";
//
//                //send mail
//                gmail.send(mailTo, subject, message, gmailFrom, password);
//            } catch (MessagingException ex) {
//                Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
//            }
//            ud.updateUserPassword(email, newpass);
//
//        }
        String req = request.getParameter("req");
        switch(req){
            case "get": String mailTo = request.getParameter("email");
                        if(mailTo.equals(null)) mailTo = (String)request.getSession().getAttribute("email");
                        if(!ud.checkEmail(mailTo)){// checkEmail return true if email doesn't exist
                            try {
                                String gmailFrom = "hieuhthe151387@fpt.edu.vn";
//                                        "swp391.e2.g5@gmail.com";
                                String password = "konoha013";
//                                        "LinhLVT2509";
                                String subject = "Mã OTP";
                                String otp = new GenerateRandom().getOtp();
                                String message = "Xin chào bạn, đây là mã OTP để đặt lại mật khẩu " + otp + ". Không chia sẻ code này với người khác :V";
                                
                                //send mail
                                gmail.send(mailTo, subject, message, gmailFrom, password);
                                // set email and otp to session
                                request.getSession().setAttribute("originotp",otp);
                                request.getSession().setAttribute("email", mailTo);
                                
                            } catch (MessagingException ex) {
                                Logger.getLogger(ForgotPasswordController.class.getName()).log(Level.SEVERE, null, ex);
                            }
                            response.getWriter().print("sended");
                        }else response.getWriter().print("error");
                        break;
            case "check": String otp = request.getParameter("otp");
                          String originotp = (String)request.getSession().getAttribute("originotp");
                          if(otp.equals(originotp)) response.getWriter().print("pass");
                          else response.getWriter().print("fail");
                          break;
            case "reset": String email = (String) request.getSession().getAttribute("email");
                          String newpass = request.getParameter("password");
                          request.getSession().removeAttribute("originotp");
                          request.getSession().removeAttribute("email");
                          ud.updateUserPassword(email, newpass);
                          break;
            default: break;
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
//            response.setContentType("text/html;charset=UTF-8");
//            request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
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
