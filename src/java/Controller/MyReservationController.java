/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.HotelDAO;
import DAO.ReservationDAO;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "MyReservationController", urlPatterns = {"/myreservation","/myaccount/myreservation"})
public class MyReservationController extends HttpServlet {

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
            User user = 
//                    new User(5, "Hoàng Trung", "nanhtrang013@gmail.com", "0324123456");
                    (User) request.getSession().getAttribute(("user"));

            
            ReservationDAO rDAO = new ReservationDAO();
            

            
            
            if(user==null) {
                request.getRequestDispatcher("AccessDenied.jsp").forward(request, response);
            }else{
                int page = 0;
                String p = request.getParameter("page");
                page = (p!=null)?Integer.parseInt(p):1;
                int endpage = rDAO.countMyReservation(user.getId()) / 5;
                
                request.setAttribute("relist", rDAO.getMyReservation(page, user.getId()));
                request.setAttribute("endpage", endpage);
                request.setAttribute("page", page);
                request.getSession().setAttribute("user",user);
                request.getRequestDispatcher("MyReservation.jsp").forward(request, response);
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
