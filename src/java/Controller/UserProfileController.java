    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.User;
import DAO.AccountDAO;


/**
 *
 * @author DELL
 */
public class UserProfileController extends HttpServlet {

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
            HttpSession session = request.getSession();
            User a = (User) session.getAttribute("account");
            String option = request.getParameter("option");
            if (option.equals("1")) {
                String user = request.getParameter("user");
                User check = new UserDAO().checkUserExist(user);
                if (check != null) {
                    response.sendRedirect("info");
                } else {
                    new UserDAO().manageAccount(a.getId(), user, 1);
                    session.removeAttribute("account");
                    a.setEmail(user);
                    session.setAttribute("account", a);
                    response.sendRedirect("info"); 
                }
            } else {
                String check = request.getParameter("old-pass");
                String pass = request.getParameter("new-pass");
                String repass = request.getParameter("re-pass");
                if (!check.equals(a.getPassword()) || !pass.equals(repass)) {
                    response.sendRedirect("info");
                } else {
                    new UserDAO().manageAccount(a.getId(), pass, 2);
                    session.removeAttribute("account");
                    response.sendRedirect("login");
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
