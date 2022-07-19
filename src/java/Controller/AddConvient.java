/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.HotelConvenientDAO;
import DAO.UserDAO;
import Model.HotelConvenient;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
@WebServlet(name = "AddConvient", urlPatterns = {"/AddConvient"})
public class AddConvient extends HttpServlet {

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
        request.getRequestDispatcher("AddConvient.jsp").forward(request, response);
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
        HotelConvenientDAO u = new HotelConvenientDAO();
        List list = u.ConvenientCategories();
        request.setAttribute("list", list);
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

        HotelConvenientDAO hd = new HotelConvenientDAO();
        HotelConvenient h = new HotelConvenient();
        h.setConvenient(request.getParameter("convient"));
        h.setCategory(request.getParameter("category"));
        h.setCategoryId(Integer.parseInt(request.getParameter("categoryId")));
        h.setRate(Integer.parseInt(request.getParameter("rate")));
        h.setHotelId(Integer.parseInt(request.getParameter("hotelId")));
        hd.create_ConvientCate(h);
        hd.create_Convient(h);
        h.setId(hd.idConvenient());
        hd.create_ConvientRate(h);
        request.getRequestDispatcher("listConvenientController").forward(request, response);
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
