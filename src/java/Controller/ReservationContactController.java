/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ReservationDAO;
import DAO.UserDAO;
import Model.Hotel;
import Model.ReservationDetail;
import Model.Search;
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
@WebServlet(name = "ReservationContactController", urlPatterns = {"/reservationcontact"})
public class ReservationContactController extends HttpServlet {

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
        
        String custId = request.getParameter("custId");
        String flag = request.getParameter("flag");
        
        Search search = (Search) request.getSession().getAttribute("search");
        Hotel hotel = (Hotel) request.getSession().getAttribute("hotel");
        
        ReservationDetail cart = (ReservationDetail) request.getSession().getAttribute("cart");
        
        String custname = request.getParameter("name");
        String phoneNumber = request.getParameter("phonenumber");
        String custmail = request.getParameter("email");
        
        String status = request.getParameter("status") ==null ? "Pending":request.getParameter("status");
                
        User cust = new User();
        
        cust.setFullName(custname);
        cust.setPhoneNumber(phoneNumber);
        cust.setEmail(custmail);
        cust.setAvatar("https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg");
        

        if(custId.matches("[0-9]+")&&flag==null){// add cho 1 customer
            if(new ReservationDAO().insertReservation(Integer.parseInt(custId), search, hotel.getId(), cart,status)) request.setAttribute("notify", "Đặt phòng thành công");
            else request.setAttribute("message", "Có tk đặt phòng thất bại");
        } else {// add cho 1 guest or customer
            if(new ReservationDAO().insertReservation(cust, search, hotel.getId(), cart, status)) request.setAttribute("notify", "Đặt phòng thành công");
            else request.setAttribute("message", "Đặt phòng thất bại"+flag);          
        }
        request.getSession().removeAttribute("cart");
        request.getRequestDispatcher("home").forward(request, response);
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
        request.getRequestDispatcher("ReservationContact.jsp").forward(request, response);
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
