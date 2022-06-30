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

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
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
        List<User> list = ud.getUsers();
        String dobString = request.getParameter("dbo");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date dob = null;
        try {
            dob = sdf.parse(dobString);
        } catch (ParseException ex) {
            Logger.getLogger(AddNewUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        java.sql.Date sqlDob = new java.sql.Date(dob.getTime());
        u.setDob(sqlDob);

//        String dbo1 = request.getParameter("gender");
//        String dbo2 = request.getParameter("name");
//        String dbo3 = request.getParameter("email");
//        String dbo4 = request.getParameter("address");
//        String dbo5 = request.getParameter("phoneNumber");
//        String dbo6 = request.getParameter("password");
//        String dbo7 = request.getParameter("role");
//        String dbo8 = request.getParameter("status");
//            String dbo = request.getParameter("dbo");
//            Date date = (Date) new SimpleDateFormat("dd-MM-yyyy").parse(dbo);
//            u.setDob((java.sql.Date) date);
        //u.setDob((Date) new SimpleDateFormat("dd-MM-yyyy").parse(request.getParameter("dbo")));
        u.setEmail(request.getParameter("email"));
        u.setAddress(request.getParameter("address"));
        u.setAvatar(request.getParameter("avatar"));
        u.setPhoneNumber(request.getParameter("phoneNumber"));
        u.setPassword(request.getParameter("password"));
        u.setRole(request.getParameter("role"));
        u.setStatus(request.getParameter("status"));
        u.setGender(Integer.parseInt(request.getParameter("gender")));
        u.setFullName(request.getParameter("name"));
        for (int i = 0; i < list.size(); i++) {
            if (request.getParameter("email").equalsIgnoreCase(list.get(i).getEmail())) {
                request.setAttribute("msg", "Email already exist!");
                request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
            }
        }
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
