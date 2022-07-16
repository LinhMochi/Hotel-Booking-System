/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.HotelConvenientDAO;
import DAO.HotelDAO;
import DAO.HotelGalleryDAO;
import DAO.HotelPromotionDAO;
import DAO.HotelRateDAO;
import DAO.HotelSuggestPlaceDAO;
import DAO.ReservationDAO;
import DAO.RoomDAO;
import DAO.ServiceDAO;
import Model.Hotel;
import Model.HotelConvenient;
import Model.HotelGallery;
import Model.HotelPromotionList;
import Model.HotelRate;
import Model.HotelSuggestPlace;
import Model.Reservation;
import Model.Room;
import Model.Search;
import Model.Service;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
@WebServlet(name = "HotelDetailController", urlPatterns = {"/hoteldetail"})
public class HotelDetailController extends HttpServlet {

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
        Hotel h = 
//                new HotelDAO().getHotelDetail(2);
                (Hotel) request.getSession().getAttribute("hotel");
    
        Search s = 
//                new Search("Hà Nội", Date.valueOf("2022-07-30"), Date.valueOf("2022-08-03"), 3, 1, 2); 
                (Search) request.getSession().getAttribute("search");
        if(h == null){
            h = new HotelDAO().getHotelDetail(Integer.parseInt(request.getParameter("hotelId")));
        } 
        if( h != null &&request.getParameter("hotelId") != null){
            h = new HotelDAO().getHotelDetail(Integer.parseInt(request.getParameter("hotelId")));
        }
        if( h == null && request.getParameter("hotelId") == null ) {
            request.setAttribute("message", "Truy cập bị chặn");
        }
        
        String page = request.getParameter("page");
        if(page == null){page = "1";}
        if(request.getParameter("filter")!=null){
            ArrayList<HotelRate> hotelFeedback = new HotelRateDAO().getHotelRate(h.getId(), Integer.parseInt(page));
            request.setAttribute("endpage", h.getNoRate()/5);
            request.getSession().setAttribute("feedbacks", hotelFeedback);
            request.getRequestDispatcher("HotelDetail.jsp").forward(request, response);
        }
        ArrayList<HotelGallery> hg = new HotelGalleryDAO().getGalleryByID(h.getId());
        request.getSession().setAttribute("homegallery", hg);
        
        ArrayList<HotelConvenient> hc = new HotelConvenientDAO().getHotelConveniences(h.getId());
        request.getSession().setAttribute("convenience", hc);
        
        ArrayList<HotelConvenient> hcr = new HotelConvenientDAO().getRateConveniences(h.getId());
        request.getSession().setAttribute("ratedConvenience",hcr);
        
        ArrayList<HotelSuggestPlace> hsp = new HotelSuggestPlaceDAO().getHotelSuggestPlaceList(h.getId());
        request.getSession().setAttribute("hotelsp", hsp);
        
        ArrayList<Room> ar = new RoomDAO().getAvailableRoom(h.getId(), s);
        request.getSession().setAttribute("availableRoom",ar);
        
        ArrayList<Service> as = new ServiceDAO().getAvailableService(h.getId(), s.getArrival(), s.getDepartment());
        request.getSession().setAttribute("availableService",as);
        
        HotelPromotionList hp = new HotelPromotionDAO().getHPList(h.getId(), s.getArrival(), s.getDepartment());
        request.getSession().setAttribute("promotion", hp);
        
        ArrayList<HotelRate> hotelFeedback = new HotelRateDAO().getHotelRate(h.getId(), Integer.parseInt(page));
        request.getSession().setAttribute("feedbacks", hotelFeedback);
        
        request.getSession().setAttribute("hotel", h);
        
        request.getRequestDispatcher("HotelDetail.jsp").forward(request, response);
        
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
