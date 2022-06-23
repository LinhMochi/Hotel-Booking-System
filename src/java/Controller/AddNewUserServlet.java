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
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duong
 */
@WebServlet(name = "AddNewUserServlet", urlPatterns = {"/AddNewUserServlet"})
public class AddNewUserServlet extends HttpServlet {

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
        UserDAO ud = new UserDAO();
        User u = new User();
        //            String dobString = request.getParameter("dob");
//            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//            java.util.Date dob = sdf.parse(dobString);
//            java.sql.Date sqlDob = new java.sql.Date(dob.getTime());
//            u.setDob(sqlDob);
        String dbo = request.getParameter("dbo");
        try {
            Date date = (Date) new SimpleDateFormat("dd/MM/yyyy").parse(dbo);
            u.setDob(date);
        } catch (ParseException ex) {
            Logger.getLogger(AddNewUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        u.setGender(Integer.parseInt(request.getParameter("gender")));
        u.setFullName(request.getParameter("name"));
        u.setEmail(request.getParameter("email"));
        u.setAddress(request.getParameter("address"));
        u.setAvatar(request.getParameter("avatar"));
        u.setPhoneNumber(request.getParameter("phoneNumber"));
        u.setPassword(request.getParameter("pass"));
        u.setRole(request.getParameter("role"));
        u.setStatus(request.getParameter("status"));
        ud.create_User(u);
//fullName, gender, dob, email, address, avatar, phoneNumber, password, role, status
        response.sendRedirect("listUserServlet");
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
