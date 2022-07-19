/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BookedRoomDAO;
import DAO.CityDAO;
import DAO.HotelCategoryDAO;
import DAO.HotelConvenientDAO;
import DAO.HotelDAO;
import Model.City;
import Model.Hotel;
import Model.HotelCategory;
import Model.HotelConvenientList;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "HomePageController", urlPatterns = {"/home"})
public class HomePageController extends HttpServlet {

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
        
        ArrayList<City> topCities = new CityDAO().getListCityComplete();
        ArrayList<HotelCategory> topHCs = new HotelCategoryDAO().getListCompleteHotelCategory();
        ArrayList<Hotel> suggestHotels = new HotelDAO().getSuggestHotel();
        StringBuilder hotels = new StringBuilder("");
        for(Hotel h:suggestHotels){
            hotels.append(h.getId()+", ");
        }
        HotelConvenientList cList = new HotelConvenientDAO().getRatedConvenientByHotels(hotels.toString());
        HttpSession session = request.getSession(true);
        session.setAttribute("topCities", topCities);
        session.setAttribute("topHCs", topHCs);
        session.setAttribute("suggestHotels", suggestHotels);
        session.setAttribute("cList", cList);
        String current = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date(System.currentTimeMillis()));
        session.setAttribute("pList", new BookedRoomDAO().getMaxPromotion(hotels.toString(),Date.valueOf(current),Date.valueOf(current)));        
        request.getRequestDispatcher("Home.jsp").forward(request, response);
        
         
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
