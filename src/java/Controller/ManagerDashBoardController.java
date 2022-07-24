/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.CustormerBookingDAO;
import DAO.HotelDAO;
import DAO.HotelRateDAO;
import DAO.ReservationDAO;
import DAO.RoomDAO;
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
@WebServlet(name = "ManagerDashBoardController", urlPatterns = {"/managerdashboard","/manager/dashboard"})
public class ManagerDashBoardController extends HttpServlet {

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
        
        User u = (User) request.getSession().getAttribute("user");
        
        String hotel = (String) request.getSession().getAttribute("hotelId");
        if(hotel==null) hotel = request.getParameter("hotelId");
        int hotelId = hotel==null?0:Integer.parseInt(hotel);
    
        if(new HotelDAO().isManager((u==null?0:u.getId()), hotelId)){
            
            request.setAttribute("hotelDash", new HotelDAO().getHotelByID(hotelId));
            request.setAttribute("noPending", new ReservationDAO().countPendingReservationByHotelId(hotelId));
            request.setAttribute("noCust", new CustormerBookingDAO().countCustByHotelId(hotelId));
            request.setAttribute("noRate", new HotelRateDAO().countHotelRateByHotelId(hotelId));
            request.setAttribute("noRoom", new RoomDAO().countRoomByHotelId(hotelId));
            
            request.getSession().setAttribute("hotelId", hotelId);
            request.getRequestDispatcher("ManagerDashBoard.jsp").forward(request, response);
        }else {
         response.sendRedirect("AccessDenied.jsp");
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
