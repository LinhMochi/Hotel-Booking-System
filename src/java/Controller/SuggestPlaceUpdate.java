/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.HotelSuggestPlaceDAO;
import Model.HotelSuggestPlace;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@WebServlet(name = "SuggestPlaceUpdate", urlPatterns = {"/SuggestPlaceUpdate"})
public class SuggestPlaceUpdate extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
       
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
                 response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        String place = request.getParameter("place");
        String currentpage = request.getParameter("currentpage");
      
        int category = Integer.parseInt(request.getParameter("category"));
        double distance = Double.parseDouble(request.getParameter("distance"));
     
  
        int hotelId = Integer.parseInt(request.getParameter("hotelId"));
        int id = Integer.parseInt(request.getParameter("id"));
       
        HotelSuggestPlaceDAO hgd = new HotelSuggestPlaceDAO();
        HotelSuggestPlace h = new HotelSuggestPlace();
        
        h.setPlace(place);
    
        h.setCategory(category);
        h.setDistance(distance);
    
        h.setHotelId(hotelId);
        h.setId(id);
        hgd.upDateSuggestPlace(h);
        
        response.sendRedirect("SuggestPlace?page=" + currentpage);
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
