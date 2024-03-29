/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.HotelDAO;
import DAO.ReservationDAO;
import Model.Reservation;
import Model.User;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Linh
 */
@WebServlet(name = "ManagerReservationListController", urlPatterns = {"/managerreservationlist","/manage/reservation"})
public class ManagerReservationListController extends HttpServlet {

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
/*       
        try {
            String email = request.getParameter("email");
            String textSearchHotel = request.getParameter("textSearchHotel");
            String page;
            try {
                page = request.getParameter("page");
                if(page == null) {
                    page = "1";
                }
            } catch (Exception e) {
                page = "1";
            }
            ReservationDAO rd = new ReservationDAO();
            ArrayList<Reservation> listReservation = rd.getReservations(page, textSearchHotel, email);
            int numberOfPage = rd.countReservationWithEmail(email) % 5 == 0 ? rd.countReservationWithEmail(email) / 5 : rd.countReservationWithEmail(email) / 5 + 1;
            request.setAttribute("listReservation", listReservation);
            request.setAttribute("numberOfPage", numberOfPage);
            request.setAttribute("page", Integer.parseInt(page));
            request.getRequestDispatcher("ManagerReservationList.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManagerReservationListController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
*/      
        
            
            User user = new User(4, "Phi Thiên Lý", "sanji123@gmail.com", "0312789456");
//                    (User) request.getSession().getAttribute(("user"));
            int hotelId = 2;
//                    (int) request.getAttribute("hotelId");
            
            ReservationDAO rDAO = new ReservationDAO();
            
            boolean isManage = new HotelDAO().isManager(user.getId(),hotelId);
            
            
            if(!isManage) {
                request.getRequestDispatcher("AccessDenied.jsp").forward(request, response);
            }else{
                int page = 0;
                String p = request.getParameter("page");
                page = (p!=null)?Integer.parseInt(p):1;
                int endpage = rDAO.countReservationByHotelId(hotelId) / 5;
                
                request.setAttribute("relist", rDAO.getListReservationByHotelId(page, hotelId));
                request.setAttribute("endpage", endpage);
                request.setAttribute("page", page);
                request.getSession().setAttribute("user",user);
                request.getRequestDispatcher("ListReservation.jsp").forward(request, response);
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
//        request.getRequestDispatcher("AccessDenied.jsp").forward(request, response);
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
