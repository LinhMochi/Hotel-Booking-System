/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BookedRoomDAO;
import DAO.ReservationDAO;
import DAO.ServiceDAO;
import Model.BookedRoom;
import Model.Reservation;
import Model.ReservationDetail;
import Model.Service;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ReserveDetailManager", urlPatterns = {"/reservedetailmanage","/manage/reservedetail"})
public class ReserveDetailManager extends HttpServlet {

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
        String toPage = "ReserveDetailManager.jsp";
        // get reserve id 
        
//        int reserveId = request.getParameter("reserveId").matches("[0-9]+")?Integer.parseInt(request.getParameter("reserveId")):0;
        
//        int reserveId = 20;
//        
//        if(reserveId==0) {
//            request.setAttribute("message", "Mã đơn hàng không đúng");
//            toPage = "managerreservationlist";
//        } else {
//            Reservation reservation = new ReservationDAO().getReservationInfoByReId(reserveId);
//                    
//            ArrayList<BookedRoom> brlist = new BookedRoomDAO().getBookedRoomByReId(reserveId);
//            ArrayList<Service> bslist = new ServiceDAO().getBookedService(reserveId);        
//            ReservationDetail cart = new ReservationDetail(reserveId, brlist, bslist);
//            cart.setNoDate(reservation.getArrival(), reservation.getDepartment());
//            cart.setTotal();
//            request.setAttribute("cart", cart);
//            request.setAttribute("re", reservation);
//            
//        }
//        
        request.getRequestDispatcher(toPage).forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String toPage = "ReserveDetailManage.jsp";
        // get reserve id 
        
        int reserveId = request.getParameter("reserveId").matches("[0-9]+")?Integer.parseInt(request.getParameter("reserveId")):0;
        
        
        if(reserveId==0) {
            request.setAttribute("message", "Mã đơn hàng không đúng");
            toPage = "managerreservationlist";
        } else {
            Reservation reservation = new ReservationDAO().getReservationInfoByReId(reserveId);
                    
            ArrayList<BookedRoom> brlist = new BookedRoomDAO().getBookedRoomByReId(reserveId);
            ArrayList<Service> bslist = new ServiceDAO().getBookedService(reserveId);        
            ReservationDetail cart = new ReservationDetail(reserveId, brlist, bslist);
            cart.setNoDate(reservation.getArrival(), reservation.getDepartment());
            cart.setTotal();
            request.setAttribute("cart", cart);
            request.setAttribute("re", reservation);
            
        }
            request.getRequestDispatcher(toPage).forward(request, response);
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
