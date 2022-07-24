/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ServiceDAO;
import Model.Service;
import Model.ServiceCategory;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nhat Anh
 */
@WebServlet(name = "AddServiceHotel", urlPatterns = {"/AddServiceHotel"})
public class AddServiceHotel extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddServiceHotel</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddServiceHotel at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        ServiceDAO sd = new ServiceDAO();
        ArrayList<ServiceCategory> listSv = sd.getAllServiceCategory();
        request.setAttribute("sv", listSv);
        request.getRequestDispatcher("AddService.jsp").forward(request, response);
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
        ServiceDAO sd = new ServiceDAO();
        request.setCharacterEncoding("UTF-8");
        
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String unit = request.getParameter("unit");
        Date from = Date.valueOf(request.getParameter("from"));
        Date to = Date.valueOf(request.getParameter("to"));
        int category = Integer.parseInt(request.getParameter("category"));
//        int hotelId = (int) request.getSession().getAttribute("2");
//        int hotelId = Integer.parseInt(request.getParameter("hotelId"));
        Service sc = new Service();

        sc.setName(name);
        sc.setPrice(price);
        sc.setUnit(unit);
        sc.setFrom(from);
        sc.setTo(to);
        sc.setCategory(category);
//        sc.setHotelId(hotelId);
        new ServiceDAO().AddHotelService(sc, 2);
//          request.getRequestDispatcher("AddService.jsp").forward(request, response);
         response.sendRedirect("HotelServiceManager");
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
